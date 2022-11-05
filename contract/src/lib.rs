/*
 * Example smart contract written in RUST
 *
 * Learn more about writing NEAR smart contracts with Rust:
 * https://near-docs.io/develop/Contract
 *
 */

use near_sdk::borsh::{self, BorshDeserialize, BorshSerialize};
use near_sdk::collections::Vector;
use near_sdk::serde::{Deserialize, Serialize};
use near_sdk::{env, near_bindgen, AccountId, PanicOnDefault};

// Define the default message

// Define the contract structure
#[derive(BorshDeserialize, BorshSerialize, Serialize, Deserialize)]
#[serde(crate = "near_sdk::serde")]
pub struct Entry {
    pub sender: AccountId,
    pub title: String,
    pub description: String,
    pub public_url: String,
    pub id: u64,
    pub votes: u128,
}

#[near_bindgen]
#[derive(PanicOnDefault, BorshDeserialize, BorshSerialize)]
pub struct Contract {
    pub list: Vector<Entry>,
}
// Implement the contract structure
#[near_bindgen]
impl Contract {
    #[init]
    pub fn new() -> Self {
        Self {
            list: Vector::new(b"u"),
        }
    }

    pub fn add_entry(&mut self, title: String, description: String, url: String) {
        let entry = Entry {
            sender: env::predecessor_account_id(),
            title,
            description,
            public_url: url,
            id: self.list.len() + 1,
            votes: 0u128,
        };
        self.list.push(&entry);
    }

    pub fn upvote_entry(&mut self, index: u64) {
        let mut entry = self.list.get(index).unwrap();
        entry.votes += 1u128;
        self.list.replace(index, &entry);
    }

    pub fn get_enteries(&self) -> Vec<Entry> {
        return self.list.to_vec();
    }
}
