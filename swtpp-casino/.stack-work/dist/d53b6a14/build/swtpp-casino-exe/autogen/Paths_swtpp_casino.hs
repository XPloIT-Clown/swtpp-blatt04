{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -Wno-missing-safe-haskell-mode #-}
module Paths_swtpp_casino (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Users\\johan\\OneDrive\\Desktop\\swtpp-blatt04\\swtpp-casino\\.stack-work\\install\\9cb0f2fe\\bin"
libdir     = "C:\\Users\\johan\\OneDrive\\Desktop\\swtpp-blatt04\\swtpp-casino\\.stack-work\\install\\9cb0f2fe\\lib\\x86_64-windows-ghc-9.0.2\\swtpp-casino-0.1.0.0-BgnY2GcJHXzDL2rS4sgxfK-swtpp-casino-exe"
dynlibdir  = "C:\\Users\\johan\\OneDrive\\Desktop\\swtpp-blatt04\\swtpp-casino\\.stack-work\\install\\9cb0f2fe\\lib\\x86_64-windows-ghc-9.0.2"
datadir    = "C:\\Users\\johan\\OneDrive\\Desktop\\swtpp-blatt04\\swtpp-casino\\.stack-work\\install\\9cb0f2fe\\share\\x86_64-windows-ghc-9.0.2\\swtpp-casino-0.1.0.0"
libexecdir = "C:\\Users\\johan\\OneDrive\\Desktop\\swtpp-blatt04\\swtpp-casino\\.stack-work\\install\\9cb0f2fe\\libexec\\x86_64-windows-ghc-9.0.2\\swtpp-casino-0.1.0.0"
sysconfdir = "C:\\Users\\johan\\OneDrive\\Desktop\\swtpp-blatt04\\swtpp-casino\\.stack-work\\install\\9cb0f2fe\\etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "swtpp_casino_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "swtpp_casino_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "swtpp_casino_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "swtpp_casino_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "swtpp_casino_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "swtpp_casino_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
