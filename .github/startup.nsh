echo -off

for %i in 0 1 2 3 4 5 6 7 8 9 A B C D E F then
    if exist FS%i:Drtm.efi then
        echo "Starting Drtm tests"
        FS%i:Drtm.efi
        if %lasterror% == 0 then
            goto Done
        else
            echo "Error occurred while running Drtm tests"
        endif
    endif
endfor
echo "Error: Load Drtm.efi to run the tests"
:Done
