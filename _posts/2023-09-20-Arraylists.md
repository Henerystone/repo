---
toc: true
comments: true
layout: post
title: Arrays and Arraylists
type: hax
courses: {csa: {week: 4}}
---

## Definition:
> An Array is a collection of items of the same type, stored in sequence at memory locations.
> An Array is used to store data and is used in almost every programming language out there.
> In Java, an Arraylist is an Array that can be modified and they are more flexible and versatile.

## Examples:
<img src="https://user-images.githubusercontent.com/96998793/269510107-819ca302-d4c4-470d-b294-5ffd4ed918b9.png">
<br>
<img width="1000" alt="image" src="https://github.com/Henerystone/ws2/assets/96998793/96588323-07c4-4d84-87b4-2257e16b0319">
<br>

## FRQ Question:
<img width="1000" alt="image" src="https://github.com/Henerystone/ws2/assets/96998793/38b21c5a-38d5-40bf-9c47-ca70f1ab7bc2">
<img width="1000" alt="image" src="https://github.com/Henerystone/ws2/assets/96998793/e14c3d0e-bebf-45b1-b50c-8ba1d6c5e372">
<img width="1000" alt="image" src="https://github.com/Henerystone/ws2/assets/96998793/d80cfc7f-b6d0-4f34-a11a-7a4b493ed914">
<img width="1000" alt="image" src="https://github.com/Henerystone/ws2/assets/96998793/86e911ac-8d6e-4044-ac04-d51ea6044459">
## Explaination:
> First, We must read the question and understand what it is telling us.
> Next, We figure out the solution via our understanding:

```java
public double getAverageRating()
{
 int sum = 0;

 for (Review r : allReviews)
 {
 sum += r.getRating();
 }
 return (double) sum / allReviews.length;
}

public ArrayList<String> collectComments()
{
 ArrayList<String> commentList = new ArrayList<String>();
 for (int i = 0; i < allReviews.length; i++)
 {
 String comment = allReviews[i].getComment();
 if (comment.indexOf("!") >= 0)
 {
 String last =
 comment.substring(comment.length() – 1);
 if (!last.equals("!") && !last.equals("."))
 {
 comment += ".";
 }
 commentList.add(i + "-" + comment);
 }
 }
 return commentList;
} 

```
<br>

> This code defines a method named `getAverageRating()` that calculates and returns the average rating for a collection of reviews. Here's a breakdown of what the code does:

1. It initializes an integer variable called `sum` with an initial value of 0. This variable will be used to accumulate the sum of all the ratings.

2. It enters a for-each loop that iterates over a collection of reviews stored in the `allReviews` array or list (assuming `allReviews` is an array or list of `Review` objects).

3. Inside the loop, for each `Review` object `r` in the `allReviews` collection, it retrieves the rating for that particular review using the `getRating()` method of the `Review` object and adds it to the `sum`. This step effectively accumulates the sum of all ratings in the collection.

4. After the loop completes, it calculates the average rating by dividing the `sum` by the number of reviews in the `allReviews` collection. To ensure that the result is a decimal value (a double), it explicitly casts `sum` to a `double` before performing the division.

5. Finally, it returns the calculated average rating as a double.

In summary, this code computes the average rating for a collection of reviews by iterating through the reviews, summing up their ratings, and then dividing the sum by the number of reviews. It returns the average rating as a decimal (double) value.

- The second part:
> This code defines a method named `collectComments()` that processes an array (or list) of reviews, performs some modifications to their comments, and then returns a list of formatted comments as strings. Let's break down what this code does step by step:

1. It initializes an empty ArrayList of strings called `commentList`. This ArrayList will be used to store the processed comments.

2. It enters a for loop that iterates through the elements of an array called `allReviews`. The loop variable `i` represents the index of the current review in the array.

3. Inside the loop, it retrieves the comment associated with the current review using the `getComment()` method and stores it in a string variable called `comment`.

4. It checks if the `comment` contains an exclamation mark ('!') using the `indexOf("!")` method. If an exclamation mark is found in the comment, it proceeds to modify it.

5. It extracts the last character of the `comment` using the `substring()` method. This character is stored in a string variable called `last`.

6. It checks if `last` is not equal to an exclamation mark ('!') and not equal to a period ('.'). If `last` is neither '!' nor '.', it appends a period ('.') to the end of the `comment`.

7. It constructs a new string by concatenating the index `i`, a hyphen ('-'), and the modified `comment`. This new string is then added to the `commentList` ArrayList.

8. The loop continues to the next review, repeating the process for each review in the `allReviews` array.

9. After processing all the reviews, the method returns the `commentList` ArrayList, which contains the formatted comments.

In summary, this code processes a collection of reviews, checks if each review's comment contains an exclamation mark ('!'), and ensures that the comment ends with a period ('.') if it doesn't already. It then constructs a string in the format "index-comment" and adds it to an ArrayList. The method ultimately returns the ArrayList of formatted comments.