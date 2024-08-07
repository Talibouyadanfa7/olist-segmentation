
# Customer Segmentation for E-commerce

This repository contains notebooks for cleaning and exploratory data analysis (EDA) of e-commerce data and for customer segmentation. The objective is to understand customer behavior and segment customers for targeted marketing strategies.

## Table of Contents
- [Introduction](#introduction)
- [Dependencies](#dependencies)
- [Installation](#installation)
- [Notebooks](#notebooks)
  - [1. Data Cleaning and EDA](#1-data-cleaning-and-eda)
  - [2. Customer Segmentation](#2-customer-segmentation)
- [How to Run](#how-to-run)
- [Results](#results)
- [Contributing](#contributing)
- [License](#license)

## Introduction
In the competitive world of e-commerce, understanding customer behavior is crucial for business success. Customer segmentation helps in dividing customers into distinct groups based on their behaviors and characteristics, enabling personalized marketing strategies.

## Dependencies
The project requires the following Python libraries:
- pandas
- numpy
- matplotlib
- seaborn
- plotly
- scikit-learn
- yellowbrick
- kmodes

You can install these dependencies using `python -r install requirements.txt`:
\`\`\`bash
python -r install requirements.txt
\`\`\`

## Installation
Clone this repository to your local machine:
\`\`\`bash
git clone https://Papadanfa@bitbucket.org/Papadanfa/olist-ecommerce.git
cd e-commerce-customer-segmentation
\`\`\`

## Folder Structure
The folder structure of the project is as follows:
```
customer segmentation/
├── assets/
│   ├── sujet.PNG 
├── notebooks/
│   ├── e-commerce-cleaning-and-eda.ipynb  contient Analyse exploratoire de donnée
│   ├── e-commerce-customers-segmentation.ipynb contient le clustering par kmeans
├── reports/
│   ├── olist_customer_profiling.html  contient le report avec MLFLOW
├── settings/
│   ├── __init__.py  
│   ├── params.py contient les parametres
├── src/
│   ├── __init__.py
│   ├── olist_functions.py #contient les fonciton surtout make dataset pour la stabilite des cluster
│   ├── utils.py
├── tests/
│   ├── test_datasets.py pour les tests
├── .gitignore
├── .pylintrc
├── README.md
├── requirements.txt
```


## Notebooks

### 1. Data Cleaning and EDA
File: \`e-commerce-cleaning-and-eda.ipynb\`

This notebook performs data cleaning and exploratory data analysis on the e-commerce dataset. The main steps include:
- Loading the dataset
- Handling missing values
- Data normalization and transformation
- Visualizing data distributions and relationships

### 2. Customer Segmentation
File: \`e-commerce-customers-segmentation.ipynb\`

This notebook focuses on clustering customers into distinct segments based on their purchasing behavior. The main steps include:
- Data preprocessing
- Dimensionality reduction using PCA
- Clustering using K-Means
- Evaluating cluster quality using various metrics
- Visualizing clusters

## How to Run
1. Make sure you have installed all the dependencies.
2. Open the notebooks using Jupyter Notebook or JupyterLab:
   \`\`\`bash
   jupyter notebook e-commerce-cleaning-and-eda.ipynb
   jupyter notebook e-commerce-customers-segmentation.ipynb
   \`\`\`
3. Run the cells in the notebooks sequentially to perform data cleaning, EDA, and customer segmentation.

## Results
The analysis results in multiple customer segments, each characterized by different purchasing behaviors. These segments can be used for targeted marketing campaigns to improve customer engagement and sales.

## Contributing
Contributions are welcome! Please open an issue or submit a pull request for any improvements or additions.

## License
This project is licensed under the MIT License - see the LICENSE file for details.
"""

