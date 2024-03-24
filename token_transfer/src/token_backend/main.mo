import Icrc1Ledger "canister:icrc1_ledger_canister";
import Error "mo:base/Error";
import Blob "mo:base/Blob";
import Option "mo:base/Option";
import Result "mo:base/Result";
import Debug "mo:base/Debug";

actor{

type Account ={
 owner : Principal;
 subaccount : ?[Nat8]
};

type TransferArgs = {
  amount : Nat;
  toAccaunt : Account;
};

public shared ({caller}) func transfer(args:TransferArgs) : async Result.Result<Icrc1Ledger.BlockIndex, Text>{

  Debug.print(
    "Transfering" 
    # debug_show(args.amount)
    # " token to account"
    #  debug_show(args.toAccaunt)
  );
};

let transferArg : Icrc1Ledger.TransferArgs = {
  memo = null;
  amount = args.amount;
  from_subaccount = null;
  fee = null;
  to = args.toAccaunt;
  created_at_time = null;
};

try{
  let transferResult = await Icrc1Ledger.icrc1_transfer(transferArgs);
  switch(trasferResult){
    case(#Err(transferError)){
      #err("Couldn't transfer funds\n" # debug_show(transferError))
    };
    case (#Ok(blockIndex)){return #ok blockIndex}
  };
} catch(error:Error){
  #err("Reject message: " #Error.message(error))
};


};

/*
dfx deploy icrc1_ledger_canister --argument "(variant { Init =
record {
     token_symbol = \"ICRC1\";
     token_name = \"L-ICRC1\";
     minting_account = record { owner = principal \"${MINTER}\" };
     transfer_fee = 10_000;
     metadata = vec {};
     initial_balances = vec { record { record { owner = principal \"${DEFAULT}\"; }; 10_000_000_000; }; };
     archive_options = record {
         num_blocks_to_archive = 1000;
         trigger_threshold = 2000;
         controller_id = principal
         */