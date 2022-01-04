import pandas as pd

def import_csv():
    # import metadata file
    # header is at line 0, and index is defined col 'run'
    run_table = pd.read_csv ('Data/SraRunTable.csv', header=0, index_col='Run') 
    print (run_table)


def main():
    import_csv()

if __name__ == "__main__":
    main()