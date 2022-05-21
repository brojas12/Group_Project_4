# Overview:
        The purpose of our machine learning model is to create an effective breast cancer prediction system that allows people 
        to identify whether their tumor is benign or malignant. We chose this topic to create awareness about the dangers of 
        breast cancer and help identify a cancerous tumor in the early stages. Our goal is to enable individuals to identify 
        whether their tumor is benign or malignant based on the tumor’s characteristics such as size, compactness, and concavity. 
        The source data used in our machine learning model is data of 569 Fine-Needle Aspirate (FNA) samples from breast tumors, 
        with records of 10 cell nuclear morphology attributes, was taken from the University of Wisconsin. The question we 
        hope to answer using our machine learning model is, whether there were pairs of attributes could accurately diagnose 
        breast tumor cell aspirates are benign(non-cancerous) or malignant (cancerous). The explanatory variable is the diagnosis 
        of the tumor cell (malignant or benign), and the predictor variables are radius (µm), texture (grayscale value), 
        perimeter (µm), area(µm2), smoothness (µm), compactness, concavity (µm), concave points, symmetry (µm), and fractal 
        dimension (µm), all of which are the mean values. If the majority of the tumor cells are malignant, then the tumor 
        is cancerous.


### Description of preliminary data preprocessing.

The dataset we chose for our machine learning needed only minimal changes to produce a clean dataset for us to analyze and come up with an agreeable topic. We dropped the ID column and any rows containing null values. Additionally, we changed the diagnosis column of ‘Benign’ to 1 and ‘Malignant’ to 2. Lastly, the original data set provided the mean, standard error, and the “worst” (the average of the largest three values). For the project, we agreed to only use the mean values for all the attributes. 

### Description of preliminary feature engineering and preliminary feature selection, including the decision-making process.

Using Seaborn and Matplotlib, we were able to infer that feature to focus on using a heatmap. 

The figure to the down below provides the correlation of all our features against themselves by shading does of high correlation closer to the color Purple and those with less correlation white or light red. 

![](Resources/Corr_plot.PNG)

The results draw our attention to the hot spots where we can eliminate features that are vs themselves, since those would clearly have a high correlation. 

Here’s a list of the tables we will build using what we found from the heatmap:

    •	Area mean vs Radius mean
    
    •	Radius worst vs Perimeter mean
    
    •	Texture worst vs Texture mean
    
    •	Radius mean vs Area worst

### Description of how data was split into training and testing sets

We created a linear regression model with mean measurements. We then split the data into two-thirds for training and one-third for testing to prevent the model from being over fit. We used the training data to create a linear regression model and the testing data to verify the accuracy of the regression model by assessing the predictability of the decision tree. The accuracy of the model was calculated by summing up the true positives and negatives and dividing by the number of all observations. Our model displayed an accuracy of 97%.

### Explanation of model choice, including limitations and benefits

SciKitLearn will be used using a linear regression model to train and test the data. Our output labels will predict whether a breast tumor cell aspirates is benign(non-cancerous) or malignant (cancerous). The benefit of using a linear regression is that while it is important to predict the clinical outcome of a patient, it is also important quantify the influence of other features into account in an interpretable way. The linear regression model forces the prediction to be a linear combination of features, which is both its greatest strength and its greatest limitation. All of which make for an interpretable model. Furthermore, linear models are easy to quantify and describe. 
 
### Link to our google slides. 
https://docs.google.com/presentation/d/1nloKANql0XLSAcbbhwOkxPS1bKMR0A9y9f3WLgYX0CE/edit?usp=sharing
