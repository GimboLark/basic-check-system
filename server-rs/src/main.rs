use server_rs::{Selection,Selections,Food};
use std::{fs::File, io::prelude::*};
use serde_json;

fn main() -> std::io::Result<()> {
    // Example Selection
    let sel_001 = Selection {
        id: "sel_001".to_string(),
        name: "Size".to_string(),
        selected: false,
        price: 10.0,
    };
    let sel_002 = Selection {
        id: "sel_002".to_string(),
        name: "Medium".to_string(),
        selected: true,
        price: 12.0,
    };
    let sel_003 = Selection {
        id: "sel_003".to_string(),
        name: "Large".to_string(),
        selected: false,
        price: 15.0,
    };

    // Example Selections
    let selections = Selections {
        id: "sel_group_001".to_string(),
        description: "Choose your size".to_string(),
        must_choose: true,
        radio_or_checkbox: true,
        selection_count_limit: Some(1),
        selections: Some(vec![sel_001.clone(), sel_002.clone(), sel_003.clone()]),
    };

    // Example Food
    let food_001 = Food {
        id: "food_001".to_string(),
        img: "example.com/image.jpg".to_string(),
        name: "Pizza".to_string(),
        description: "Delicious pizza with various toppings".to_string(),
        base_price: 8.0,
        selections: selections.clone(), // Using the selections from above for simplicity
    };
    //dbg!(&food_001);

    eprint!("Calculated Price: {}\n",&food_001.calculate_price());

    let json_pizza = serde_json::to_string_pretty(&food_001)?;

    eprint!("{}\n",json_pizza);

    let mut file = File::create("food.json")?;
    file.write_all(json_pizza.as_bytes())?;

    Ok(())
}
