# Amazon_Vine_Analysis

#### Overview <br>
In this project, I am analyzing Amazon reviews written by members of the paid Amazon Vine program for a specific product category. For context, the Amazon Vine Program is service that allows manufacturers and publishers to receive reviews for their products.

Using the Amazon Reviews dataset as a resource, I picked videso games to analyze. I used  PySpark to perform the ETL process to extract the dataset, transform the data, connect to an AWS RDS instance, and load the transformed data into pgAdmin. Then I determined if there is any bias toward favorable reviews from Vine members in the video games dataset using SQL.<br>


#### Results: Using bulleted lists and images of DataFrames as support, address the following questions:br>

* How many Vine reviews and non-Vine reviews were there?<br>
There were 94 Vine Reviews and 40,471 non-Vine Reviews in the clean dataset.
* How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?<br>
Of the 5 star reviews, there were 48 Vine reviews and 15,663 non-Vine reviews.
* What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?<br>
51% of the Vine reviews were 5 stars, while 39% of non-Vine reviews were 5 stars.

#### Summary: In your summary, state if there is any positivity bias for reviews in the Vine program. Use the results of your analysis to support your statement. Then, provide one additional analysis that you could do with the dataset to support your statement.<br>

In Summary, although there vine reviews make up less than 1% of all helpful reviews, I think there is a bias for reviews in the Vine program. This is because the more than half of the vine reviews for this particular dataset, video games, have five stars wile only 39% of non-vine reviews give this product a five star rating.<br> 
Another analysis I can to using this dataset would be to get a distribution of the ratings. If the distribution skews to the higher ratings coming from the vine reviews while the non-paid reviews skews to the lower ratings, then it would support the bias statement that I am concluding.
