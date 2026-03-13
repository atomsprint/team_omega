//
//  BookDatabase.swift
//  Omega_castle
//
//  Created by 鈴木久美 on 2026/03/13.
//

import Foundation

let bookDatabase: [Book] = [
    // 5-6歳
    Book(age: "5-6", gender: "both", title: "The Very Hungry Caterpillar", author: "Eric Carle"),
    Book(age: "5-6", gender: "both", title: "Goodnight Moon", author: "Margaret Wise Brown"),
    Book(age: "5-6", gender: "both", title: "Where the Wild Things Are", author: "Maurice Sendak"),
    Book(age: "5-6", gender: "both", title: "Brown Bear, Brown Bear, What Do You See?", author: "Bill Martin Jr."),
    Book(age: "5-6", gender: "both", title: "If You Give a Mouse a Cookie", author: "Laura Numeroff"),
    Book(age: "5-6", gender: "both", title: "Corduroy", author: "Don Freeman"),
    
    // 7-8歳
    Book(age: "7-8", gender: "boy", title: "Magic Tree House #1", author: "Mary Pope Osborne"),
    Book(age: "7-8", gender: "boy", title: "Captain Underpants", author: "Dav Pilkey"),
    Book(age: "7-8", gender: "boy", title: "Dog Man", author: "Dav Pilkey"),
    Book(age: "7-8", gender: "girl", title: "Junie B. Jones", author: "Barbara Park"),
    Book(age: "7-8", gender: "boy", title: "Nate the Great", author: "Marjorie Weinman Sharmat"),
    Book(age: "7-8", gender: "both", title: "Frog and Toad Are Friends", author: "Arnold Lobel"),
    Book(age: "7-8", gender: "boy", title: "Henry and Mudge", author: "Cynthia Rylant"),
    Book(age: "7-8", gender: "girl", title: "Amelia Bedelia", author: "Peggy Parish"),
    Book(age: "7-8", gender: "both", title: "Charlotte's Web", author: "E.B. White"),
    
    // 9-10歳
    Book(age: "9-10", gender: "boy", title: "Diary of a Wimpy Kid", author: "Jeff Kinney"),
    Book(age: "9-10", gender: "boy", title: "Percy Jackson #1", author: "Rick Riordan"),
    Book(age: "9-10", gender: "girl", title: "Matilda", author: "Roald Dahl"),
    Book(age: "9-10", gender: "both", title: "The Tale of Despereaux", author: "Kate DiCamillo"),
    Book(age: "9-10", gender: "girl", title: "Because of Winn-Dixie", author: "Kate DiCamillo"),
    Book(age: "9-10", gender: "both", title: "Frindle", author: "Andrew Clements"),
    Book(age: "9-10", gender: "boy", title: "Holes", author: "Louis Sachar"),
    Book(age: "9-10", gender: "both", title: "The BFG", author: "Roald Dahl"),
    Book(age: "9-10", gender: "both", title: "Harry Potter #1", author: "J.K. Rowling"),
    
    // 11-12歳
    Book(age: "11-12", gender: "both", title: "Wonder", author: "R.J. Palacio"),
    Book(age: "11-12", gender: "both", title: "The Giver", author: "Lois Lowry"),
    Book(age: "11-12", gender: "boy", title: "Hatchet", author: "Gary Paulsen"),
    Book(age: "11-12", gender: "girl", title: "Anne of Green Gables", author: "L.M. Montgomery"),
    Book(age: "11-12", gender: "girl", title: "Little Women", author: "Louisa May Alcott"),
    Book(age: "11-12", gender: "girl", title: "The Secret Garden", author: "Frances Hodgson Burnett"),
    Book(age: "11-12", gender: "both", title: "Bridge to Terabithia", author: "Katherine Paterson"),
    Book(age: "11-12", gender: "both", title: "Roll of Thunder, Hear My Cry", author: "Mildred D. Taylor"),
    Book(age: "11-12", gender: "boy", title: "Maniac Magee", author: "Jerry Spinelli"),
    Book(age: "11-12", gender: "girl", title: "Esperanza Rising", author: "Pam Muñoz Ryan")
]

// フィルタリング用の関数
func getRecommendedBooks(age: String, gender: String) -> [Book] {
    return bookDatabase.filter { book in
        let ageMatch = book.age == age
        let genderMatch = book.gender == "both" || book.gender == gender
        return ageMatch && genderMatch
    }
}
