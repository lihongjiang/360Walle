for /f "usebackq delims=" %%a in (%1) do (
    set content=%%a
    if not "!content:~0,1!" == "[" (
        for /f "delims=; tokens=1" %%b in ("!content!") do (
            set content=%%b
            for /f "delims== tokens=1-2" %%i in ("!content!") do (
                set key=%%i
                    set key=!key: =!
                set value=%%j
                    set value=!value: =!
                set !key!=!value!
            )
        )
    )
)