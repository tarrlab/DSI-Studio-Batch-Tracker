% This script controls the GUI objects in BatchFiberTrackingGUI.fig. The GUI presents the user with three radio buttons to choose from
% Each opens a different version of the batch tracking GUI - one that tracks between pre-defined pairs of ROIs, one that 
% tracks from a primary ROI to all others selected, and on that tracks between all possible combinations of ROIs.

% ===================================================================================== %
% = XXXXXXXXXXXXXXXXXXXXXXXXXXX DO NOT EDIT CODE BELOW XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX = %
% = 						  						 Code generated by GUIDE															  = %

function varargout = BatchFiberTrackingGUI(varargin)
  % BATCHFIBERTRACKINGGUI M-file for BatchFiberTrackingGUI.fig
  %      BATCHFIBERTRACKINGGUI, by itself, creates a new BATCHFIBERTRACKINGGUI or raises the existing
  %      singleton*.
  %
  %      H = BATCHFIBERTRACKINGGUI returns the handle to a new BATCHFIBERTRACKINGGUI or the handle to
  %      the existing singleton*.
  %
  %      BATCHFIBERTRACKINGGUI('CALLBACK',hObject,eventData,handles,...) calls the local
  %      function named CALLBACK in BATCHFIBERTRACKINGGUI.M with the given input arguments.
  %
  %      BATCHFIBERTRACKINGGUI('Property','Value',...) creates a new BATCHFIBERTRACKINGGUI or raises the
  %      existing singleton*.  Starting from the left, property value pairs are
  %      applied to the GUI before BatchFiberTrackingGUI_OpeningFcn gets called.  An
  %      unrecognized property name or invalid value makes property application
  %      stop.  All inputs are passed to BatchFiberTrackingGUI_OpeningFcn via varargin.
  %
  %      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
  %      instance to run (singleton)".
  %
  % See also: GUIDE, GUIDATA, GUIHANDLES
  
  % Edit the above text to modify the response to help BatchFiberTrackingGUI
  
  % Last Modified by GUIDE v2.5 09-Feb-2012 13:30:39
  
  %%%  BEGIN INITIALIZATION CODE: DO NOT EDIT   %%%
  gui_Singleton = 1;
  gui_State = struct('gui_Name',       mfilename, ...
  'gui_Singleton',  gui_Singleton, ...
  'gui_OpeningFcn', @BatchFiberTrackingGUI_OpeningFcn, ...
  'gui_OutputFcn',  @BatchFiberTrackingGUI_OutputFcn, ...
  'gui_LayoutFcn',  [] , ...
  'gui_Callback',   []);
  if nargin && ischar(varargin{1})
  gui_State.gui_Callback = str2func(varargin{1});
  end
  
  if nargout
  [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
  else
  gui_mainfcn(gui_State, varargin{:});
  end
	%%%   END INITIALIZATION CODE   %%%
  
% = XXXXXXXXXXXXXXXXXXXXXXXXXXX END DO NOT EDIT SECTION XXXXXXXXXXXXXXXXXXXXXXXXXXXXX = %
% ===================================================================================== %

% ===================================================================================== %
% =																	 OPENING FUNCTION 									  						=	%
% =										Executes just before window is made visible.  									=	%
% ===================================================================================== %

% ------------------------------ GENERATED BY GUIDE ------------------------------- %
function BatchFiberTrackingGUI_OpeningFcn(hObject, eventdata, handles, varargin)
  % Choose default command line output for roi_pairs
  handles.output = hObject;

  % Update handles structure
  guidata(hObject, handles);

  % UIWAIT makes BatchFiberTrackingGUI wait for user response (see UIRESUME)
  % uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = BatchFiberTrackingGUI_OutputFcn(hObject, eventdata, handles) 

  % Get default command line output from handles structure
  varargout{1} = handles.output;
% --------------------------------------------------------------------------------- %


% --- Executes when user presses "Okay" button.
function open_GUI_Callback(hObject, eventdata, handles)

  if (get(handles.roi_pairs_button,'Value') == get(handles.roi_pairs_button,'Max'))
  % The ROI Pairs Radio button is selected
  % Delete the window
  delete(handles.figure1);
  % Move into the Batch Tracking GUI directory
  cd 'Batch Tracking GUI';
  % Run the roi_pairs.m script
  roi_pairs
  elseif (get(handles.primary_roi_button,'Value') == get(handles.primary_roi_button,'Max'))
  delete(handles.figure1);
  cd 'Batch Tracking GUI';
  primary_roi
  else
  delete(handles.figure1);
  cd 'Batch Tracking GUI';
  roi_combinations
  end

% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)

  delete(hObject);
