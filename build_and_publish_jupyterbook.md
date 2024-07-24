# How to build and publish jupyter-book
Reference: https://jupyterbook.org/en/stable/intro.html
## Build the book's HTML

```
jupyter-book build mybookname/
```

This will generate a fully-functioning HTML site using a static site generator. The site will be placed in the _build/html folder, something like this:

```
mybookname
 └──_build
    └── html
       ├── _images
       ├── _static
       ├── index.html
       ├── intro.html
       ...
```
If you encounter some errors, you can solve it according to the information offered.

**Notes**: It's better not to gitignore `_build`, because it's useful when using `ghp-import` to publish the book as GitHub Pages.

### Preview the HTML

Open file `mybookname/_build/index.html`.

## Compile the book in the preferred kernel

You may find that the outputs of the HTML are not satisfactory because of the lack of necessary Python packages. This happens because the code in the jupyterbook is not executed in the proper Python environment(or kernel). So we should configure the kernel that the code should be executed in.

1. In the preferred python environment where you can execute the codes successfully, make sure that the package `ipykernel` is installed.

2. Add this environment to the jupyter kernel. Please replace `myenv` and `Python(myenv)` according to your needs.

    ```
    python -m ipykernel install --user --name=myenv --display-name "Python (myenv)"
    ```

    If you already have a proper jupyter kernel to execute the code, you can skip step 1 and 2.

3.  Open the `.ipynb` with text editor. Find this part and change the `display_name` and `name`.

    ```
    "metadata": {
        "kernelspec": {
            "display_name": "Python (myenv)",
            "language": "python",
            "name": "myenv"
        }
    }
    ```

    Make sure that every `.ipynb` in your book is configured with proper kernel.

## Publish the book as GitHub Pages

1. Install `ghp-import`.

    ```
    pip install ghp-import
    ```
2.  Choose `/mybookname` directory.

3.  Under the `master` branch.

    ```
    ghp-import -n -p -f _build/html
    ```