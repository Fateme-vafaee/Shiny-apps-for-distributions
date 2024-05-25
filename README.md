# Shiny-apps-for-distributions
<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>



<!-- PROJECT LOGO -->
<br />
<div align="center">

<h3 align="center">Fibonacci sequence </h3>

  <p align="center">
    Department of Bioinformatics, IBB, University of Tehran
    <br />
  </p>
</div>


<div align="center">
  <img src="Logo.png" alt="Alt text">
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#Overview">Overview</a>
    </li>
    <li><a href="#Methods">Methods Implemented</a></li>
    <li><a href="#Installation">Installation</a></li>
    <li><a href="#Usage">Usage</a></li>
    <li><a href="#Complexity_Analysis">Complexity Analysis</a></li>
    <li><a href="#Languages_Used">Languages Used</a></li>
    <li><a href="#Contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
# Fibonacci Series Implementations in R

## Overview
This repository contains several implementations of algorithms to compute the Fibonacci series in R. Each method showcases a different programming approach or mathematical technique, demonstrating various trade-offs in time and space complexity.

## Methods Implemented
1. **Recursive Implementation**: A straightforward approach using the classic recursive definition of Fibonacci numbers.
2. **Dynamic Programming (Bottom-Up Approach)**: Utilizes memoization to store previously calculated values, reducing the computational overhead.
3. **Matrix Exponentiation**: Leverages the power of matrix exponentiation to calculate Fibonacci numbers.
4. **Optimized Matrix Exponentiation**: Improves the matrix exponentiation approach by using fast exponentiation to reduce the time complexity significantly.

## Installation
To run these scripts, you need R installed on your machine. You can download and install R from [CRAN](https://cran.r-project.org/). After installing R, you can clone this repository to your local machine:
```bash
git clone https://github.com/yourusername/fibonacci-series-r.git
cd fibonacci-series-r
```



<h2 id='Usage'>Usage</h2>
<p>
Each Fibonacci calculation method is implemented in a separate R script. You can execute each script directly from the R command line or through an R script execution command in the terminal. For example:
</p>

Rscript Recursive_Fibonacci.R


<h2 id='Complexity_Analysis'>Complexity Analysis</h2>
<h3>Recursive Implementation</h3>
<strong>Time Complexity:</strong> Exponential, specifically O(2^n), as each function call spawns two more calls.<br>
<strong>Space Complexity:</strong> O(n) due to the depth of the recursion stack.<br>
<h3>Dynamic Programming</h3>
<strong>Time Complexity:</strong> O(n), as it computes each Fibonacci number once.<br>
<strong>Space Complexity:</strong> O(n) for storing the Fibonacci sequence up to n.<br>
<h3>Matrix Exponentiation</h3>
<strong>Time Complexity:</strong> O(n^3) due to matrix multiplication in each loop iteration.<br>
<strong>Space Complexity:</strong> O(1), constant space for storing matrices.<br>
<h3>Optimized Matrix Exponentiation</h3>
<strong>Time Complexity:</strong> O(log n) because of fast exponentiation.<br>
<strong>Space Complexity:</strong> O(1), as it requires a fixed amount of space for matrices.<br>


<h2 id = 'Contributing'>Contributing</h2>
<p>
Contributions to this project are welcome. You can contribute by improving the code efficiency, adding new features, or fixing bugs. Please initiate a pull request or open an issue if you have suggestions or feedback.
</p>
<h2 id="Languages_Used"> Languages Used</h2>
R Packages 
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

vafaeeshaarbaf@gmail.com


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

Department of Bioinformatics, IBB, University of Tehran

<p align="right">(<a href="#readme-top">back to top</a>)</p>





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo_name.svg?style=for-the-badge
[contributors-url]: https://github.com/github_username/repo_name/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo_name.svg?style=for-the-badge
[forks-url]: https://github.com/github_username/repo_name/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo_name.svg?style=for-the-badge
[stars-url]: https://github.com/github_username/repo_name/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo_name.svg?style=for-the-badge
[issues-url]: https://github.com/github_username/repo_name/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo_name.svg?style=for-the-badge
[license-url]: https://github.com/github_username/repo_name/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/linkedin_username
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com
