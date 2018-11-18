function varargout = Intro(varargin)
% INTRO MATLAB code for Intro.fig
%      INTRO, by itself, creates a new INTRO or raises the existing
%      singleton*.
%
%      H = INTRO returns the handle to a new INTRO or the handle to
%      the existing singleton*.
%
%      INTRO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTRO.M with the given input arguments.
%
%      INTRO('Property','Value',...) creates a new INTRO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Intro_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Intro_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Intro

% Last Modified by GUIDE v2.5 17-Nov-2018 20:56:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Intro_OpeningFcn, ...
                   'gui_OutputFcn',  @Intro_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before Intro is made visible.
function Intro_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Intro (see VARARGIN)

axes(handles.axes9);
img1=imread('cuc.jpg');
imshow(img1)
axis off

axes(handles.axes8);
img2=imread('oscar.jpg');
imshow(img2)
axis off

axes(handles.axes7);
img3=imread('fil.jpg');
imshow(img3)
axis off

axes(handles.axes6);
img4=imread('yo.jpg');
imshow(img4)
axis off


imbtn2=imread('go.jpg');
set(handles.pushbutton2,'CData',imbtn2)

% Choose default command line output for Intro
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Intro wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Intro_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Principal
close(handles.output);
