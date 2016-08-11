/*************************************************************************
 * Author: Dominik Werthmueller
 *************************************************************************/

//////////////////////////////////////////////////////////////////////////
//                                                                      //
// AddMoreRuns.C                                                        //
//                                                                      //
// Add more runs to an existing calibration database.                   //
//                                                                      //
//////////////////////////////////////////////////////////////////////////


//______________________________________________________________________________
void AddMoreRuns()
{
    // load CaLib
    gSystem->Load("libCaLib.so");

    // macro configuration: just change here for your needs and leave
    // the other parts of the code unchanged
    const Char_t rawfilePath[]      = "/mnt/storage1/2016-08_Recoil_Pol";
    const Char_t target[]           = "LD2";
    const Int_t newFirstRun         = 14566;          // 0 to keep current first run
    const Int_t newLastRun          = 14951;          // 0 to keep current first run
    const Char_t calibName[]        = "Deuterium_Aug_16";

    // add more raw files to the database
    TCMySQLManager::GetManager()->AddRunFiles(rawfilePath, target, "CBTaggTAPS");
    TCMySQLManager::GetManager()->AddRunFiles(rawfilePath, target, "CBTaggTAPSPed");

    // set new run range
    TCMySQLManager::GetManager()->ChangeCalibrationRunRange(calibName, newFirstRun, newLastRun);

    gSystem->Exit(0);
}

