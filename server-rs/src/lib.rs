use serde::{Serialize, Deserialize};

#[derive(Debug, Serialize, Deserialize, Clone)]
pub struct Selection {
	pub id: String,
	pub name: String,
	pub selected: bool,
	pub price: f32,
}

#[derive(Debug, Serialize, Deserialize, Clone)]
pub struct Selections {
	pub id: String,
	pub description: String,
	pub must_choose: bool,
	pub radio_or_checkbox: bool,
	pub selection_count_limit: Option<u32>,
	pub selections: Option<Vec<Selection>>,
}

#[derive(Debug, Serialize, Deserialize)]
pub struct Food {
	pub id: String,
	pub img: String, // TODO: url of img
	pub name: String,
	pub description: String,
	pub base_price: f32,
	pub selections : Selections,	
}

impl Food {
	pub fn calculate_price(&self) -> f32 {
        if let Some(ref selections) = self.selections.selections {
            let selections_price: f32 = selections
                .iter()
                .filter(|sel| sel.selected)
                .map(|sel| sel.price)
                .sum();

            return self.base_price + selections_price;
        }

        self.base_price
    }
}