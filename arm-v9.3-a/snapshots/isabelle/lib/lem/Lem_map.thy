chapter \<open>Generated by Lem from \<open>map.lem\<close>.\<close>

theory "Lem_map" 

imports
  Main
  "Lem_bool"
  "Lem_basic_classes"
  "Lem_function"
  "Lem_maybe"
  "Lem_list"
  "Lem_tuple"
  "Lem_set"
  "Lem_num"

begin 



\<comment> \<open>\<open>open import Bool Basic_classes Function Maybe List Tuple Set Num\<close>\<close>
\<comment> \<open>\<open>open import {hol} `finite_mapTheory` `finite_mapLib`\<close>\<close>

\<comment> \<open>\<open>type map 'k 'v\<close>\<close>



\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open> Map equality.                                                              \<close>\<close>
\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>

\<comment> \<open>\<open>val mapEqual : forall 'k 'v. Eq 'k, Eq 'v => map 'k 'v -> map 'k 'v -> bool\<close>\<close>
\<comment> \<open>\<open>val mapEqualBy : forall 'k 'v. ('k -> 'k -> bool) -> ('v -> 'v -> bool) -> map 'k 'v -> map 'k 'v -> bool\<close>\<close>


\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open> Map type class                                                             \<close>\<close>
\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>

\<comment> \<open>\<open>class ( MapKeyType 'a )
  val {ocaml;coq} mapKeyCompare : 'a -> 'a -> ordering
end\<close>\<close>

\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open> Empty maps                                                                 \<close>\<close>
\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>

\<comment> \<open>\<open>val empty : forall 'k 'v. MapKeyType 'k => map 'k 'v\<close>\<close>
\<comment> \<open>\<open>val emptyBy : forall 'k 'v. ('k -> 'k -> ordering) -> map 'k 'v\<close>\<close>


\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open> Insertion                                                                  \<close>\<close>
\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>

\<comment> \<open>\<open>val insert    : forall 'k 'v. MapKeyType 'k => 'k -> 'v -> map 'k 'v -> map 'k 'v\<close>\<close>


\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open> Singleton                                                                  \<close>\<close>
\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>

\<comment> \<open>\<open>val singleton : forall 'k 'v. MapKeyType 'k => 'k -> 'v -> map 'k 'v\<close>\<close>



\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open> Emptyness check                                                            \<close>\<close>
\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>

\<comment> \<open>\<open>val null  : forall 'k 'v. MapKeyType 'k, Eq 'k, Eq 'v => map 'k 'v -> bool\<close>\<close>


\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open> lookup                                                                     \<close>\<close>
\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>

\<comment> \<open>\<open>val lookupBy : forall 'k 'v. ('k -> 'k -> ordering) -> 'k -> map 'k 'v -> maybe 'v\<close>\<close>

\<comment> \<open>\<open>val lookup          : forall 'k 'v. MapKeyType 'k => 'k -> map 'k 'v -> maybe 'v\<close>\<close>

\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open> findWithDefault                                                            \<close>\<close>
\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>

\<comment> \<open>\<open>val findWithDefault : forall 'k 'v. MapKeyType 'k => 'k -> 'v -> map 'k 'v -> 'v\<close>\<close>

\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open> from lists                                                                 \<close>\<close>
\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>

\<comment> \<open>\<open>val fromList  : forall 'k 'v. MapKeyType 'k => list ('k * 'v) -> map 'k 'v\<close>\<close>
\<comment> \<open>\<open>let fromList l=  foldl (fun m (k,v) -> insert k v m) empty l\<close>\<close>


\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open> to sets / domain / range                                                   \<close>\<close>
\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>

\<comment> \<open>\<open>val toSet : forall 'k 'v. MapKeyType 'k, SetType 'k, SetType 'v => map 'k 'v -> set ('k * 'v)\<close>\<close> 
\<comment> \<open>\<open>val toSetBy : forall 'k 'v. (('k * 'v) -> ('k * 'v) -> ordering) -> map 'k 'v -> set ('k * 'v)\<close>\<close>


\<comment> \<open>\<open>val domainBy : forall 'k 'v. ('k -> 'k -> ordering) -> map 'k 'v -> set 'k\<close>\<close>
\<comment> \<open>\<open>val domain : forall 'k 'v. MapKeyType 'k, SetType 'k => map 'k 'v -> set 'k\<close>\<close>


\<comment> \<open>\<open>val range : forall 'k 'v. MapKeyType 'k, SetType 'v => map 'k 'v -> set 'v\<close>\<close>
\<comment> \<open>\<open>val rangeBy : forall 'k 'v. ('v -> 'v -> ordering) -> map 'k 'v -> set 'v\<close>\<close>


\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open> member                                                                     \<close>\<close>
\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>

\<comment> \<open>\<open>val member          : forall 'k 'v. MapKeyType 'k, SetType 'k, Eq 'k => 'k -> map 'k 'v -> bool\<close>\<close>

\<comment> \<open>\<open>val notMember       : forall 'k 'v. MapKeyType 'k, SetType 'k, Eq 'k => 'k -> map 'k 'v -> bool\<close>\<close>

\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open> Quantification                                                             \<close>\<close>
\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>

\<comment> \<open>\<open>val any : forall 'k 'v. MapKeyType 'k, Eq 'v => ('k -> 'v -> bool) -> map 'k 'v -> bool\<close>\<close> 
\<comment> \<open>\<open>val all : forall 'k 'v. MapKeyType 'k, Eq 'v => ('k -> 'v -> bool) -> map 'k 'v -> bool\<close>\<close> 

\<comment> \<open>\<open>let all P m=  (forall k v. (P k v && ((Instance_Basic_classes_Eq_Maybe_maybe.=) (lookup k m) (Just v))))\<close>\<close>


\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open> Set-like operations.                                                       \<close>\<close>
\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open>val deleteBy         : forall 'k 'v. ('k -> 'k -> ordering) -> 'k -> map 'k 'v -> map 'k 'v\<close>\<close>
\<comment> \<open>\<open>val delete           : forall 'k 'v. MapKeyType 'k => 'k -> map 'k 'v -> map 'k 'v\<close>\<close>
\<comment> \<open>\<open>val deleteSwap      : forall 'k 'v. MapKeyType 'k => map 'k 'v -> 'k -> map 'k 'v\<close>\<close>

\<comment> \<open>\<open>val union          : forall 'k 'v. MapKeyType 'k => map 'k 'v -> map 'k 'v -> map 'k 'v\<close>\<close>

\<comment> \<open>\<open>val unions           : forall 'k 'v. MapKeyType 'k => list (map 'k 'v) -> map 'k 'v\<close>\<close>


\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open> Maps (in the functor sense).                                               \<close>\<close>
\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>

\<comment> \<open>\<open>val map             : forall 'k 'v 'w. MapKeyType 'k => ('v -> 'w) -> map 'k 'v -> map 'k 'w\<close>\<close>

\<comment> \<open>\<open>val mapi : forall 'k 'v 'w. MapKeyType 'k => ('k -> 'v -> 'w) -> map 'k 'v -> map 'k 'w\<close>\<close>

\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open> Cardinality                                                                \<close>\<close>
\<comment> \<open>\<open> -------------------------------------------------------------------------- \<close>\<close>
\<comment> \<open>\<open>val size  : forall 'k 'v. MapKeyType 'k, SetType 'k => map 'k 'v -> nat\<close>\<close>

\<comment> \<open>\<open> instance of SetType \<close>\<close>
definition map_setElemCompare  :: \<open>(('d*'c)set \<Rightarrow>('b*'a)set \<Rightarrow> 'e)\<Rightarrow>('d,'c)Map.map \<Rightarrow>('b,'a)Map.map \<Rightarrow> 'e \<close>  where 
     \<open> map_setElemCompare cmp x y = (
  cmp (map_to_set x) (map_to_set y))\<close> 
  for  "cmp"  :: "('d*'c)set \<Rightarrow>('b*'a)set \<Rightarrow> 'e " 
  and  "x"  :: "('d,'c)Map.map " 
  and  "y"  :: "('b,'a)Map.map "

end