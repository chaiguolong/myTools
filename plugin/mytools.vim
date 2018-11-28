let s:save_cpo = &cpo
set cpo&vim

if exists('g:myTools_loaded')
    finish
endif

let g:myTools_loaded = 1

command! -nargs=*
            \ MyToolsExec
            \ call mytools#TestMethod(<q-args>)

command! -nargs=*
            \ MyToolsTestMain
            \ call mytools#TestMain(<q-args>)

command! -nargs=0
            \ MyToolsTestAll
            \ call mytools#TestAllMethods()

command! -nargs=0
            \ MyToolsTestMaven
            \ call mytools#MavenTest()

command! -nargs=0
            \ MyToolsTestMavenAll
            \ call mytools#MavenTestAll()

command! -nargs=? -complete=file
            \ MyToolsNewTestClass
            \ call mytools#NewTestClass(expand("%:t:r"))

command! -nargs=0
            \ MyToolsServerCompile
            \ call mytools#Compile()


command! -nargs=0
            \ MyToolsServerCompilePro
            \ call mytools#CompilePro1()



command! -nargs=0
            \ JUGenerateM
            \ call mytools#GenerateTestMethods()




let &cpo = s:save_cpo
unlet s:save_cpo
