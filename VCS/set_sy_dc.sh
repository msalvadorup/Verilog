## Clean
rm -f .synopsys_dc.setup


## dc_shell environment
echo "set_app_var search_path \"\$search_path mapped lib cons rtl\"" >> .synopsys_dc.setup
echo "set_app_var target_library saed90nm_typ.db" >> .synopsys_dc.setup
echo "set_app_var link_library \"* \$target_library\"" >> .synopsys_dc.setup


## VCS Environment
## License
export LM_LICENSE_FILE=27000@10.158.16.12

## VCS
export VCS_HOME=/nfs/cad/synopsys/vcs-mx/H-2013.06-SP1/
export VCS_BIN=/nfs/cad/synopsys/vcs-mx/H-2013.06-SP1/bin

## SYN
export SYN_BIN=/nfs/cad/synopsys/syn/I-2013.12/bin

## PATH
export PATH=$VCS_BIN:$SYN_BIN:$PATH
