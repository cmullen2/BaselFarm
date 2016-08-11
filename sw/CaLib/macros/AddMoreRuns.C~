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
    const Char_t rawfilePath[]      = "/usr/caracal_scratch0/data/A2/D-Butanol/May_16";
    const Char_t target[]           = "D-Butanol";
    const Int_t newFirstRun         = 13307;          // 0 to keep current first run
    const Int_t newLastRun          = 14210;          // 0 to keep current first run
    const Char_t calibName[]        = "D-Butanol_May_16";

    // add more raw files to the database
    TCMySQLManager::GetManager()->AddRunFiles(rawfilePath, target, "CBTaggTAPS");
    TCMySQLManager::GetManager()->AddRunFiles(rawfilePath, target, "CBTaggTAPSPed");

    // set new run range
    TCMySQLManager::GetManager()->ChangeCalibrationRunRange(calibName, newFirstRun, newLastRun);

    gSystem->Exit(0);
}

