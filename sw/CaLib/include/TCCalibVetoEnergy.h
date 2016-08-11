/*************************************************************************
 * Author: Dominik Werthmueller
 *************************************************************************/

//////////////////////////////////////////////////////////////////////////
//                                                                      //
// TCCalibVetoEnergy                                                    //
//                                                                      //
// Calibration module for the Veto energy.                              //
//                                                                      //
//////////////////////////////////////////////////////////////////////////


#ifndef TCCALIBVETOENERGY_H
#define TCCALIBVETOENERGY_H

#include "TCCalib.h"

class TCFileManager;
class TLine;
class TFile;
class TH2;

class TCCalibVetoEnergy : public TCCalib
{

private:
    TCFileManager* fFileManager;        // file manager
    Double_t fPeak;                     // proton peak position
    Double_t fPeakMC;                   // proton MC peak position
    TLine* fLine;                       // mean indicator line
    TH2* fMCHisto;                      // MC histogram
    TFile* fMCFile;                     // MC ROOT file

    virtual void Init();
    virtual void Fit(Int_t elem);
    virtual void Calculate(Int_t elem);

    void FitSlice(TH2* h, Int_t elem);

public:
    TCCalibVetoEnergy();
    virtual ~TCCalibVetoEnergy();

    ClassDef(TCCalibVetoEnergy, 0) // Veto energy calibration
};

#endif

