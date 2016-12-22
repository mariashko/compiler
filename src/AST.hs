module AST
       ( Module (..)
       , TopLevelDecl (..)
       , Expr (..)
       , BindingName (..)
       , ParamsList (..)
       , LiteralValue (..)
       ) where

type Module = [TopLevelDecl]

data TopLevelDecl = FuncDecl BindingName ParamsList [Expr]
                  | ExternFunc BindingName ParamsList
                  deriving (Show)

data Expr = Literal LiteralValue
          | Binding BindingName
          | FuncCall [Expr]
          deriving (Show)

type BindingName = (String, String)

type ParamsList = [BindingName]

data LiteralValue = IntegerLiteral Integer
                  deriving (Show)
