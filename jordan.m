function varargout = jordan(varargin)
% JORDAN MATLAB code for jordan.fig
%      JORDAN, by itself, creates a new JORDAN or raises the existing
%      singleton*.
%
%      H = JORDAN returns the handle to a new JORDAN or the handle to
%      the existing singleton*.
%
%      JORDAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in JORDAN.M with the given input arguments.
%
%      JORDAN('Property','Value',...) creates a new JORDAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before jordan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to jordan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help jordan

% Last Modified by GUIDE v2.5 17-Nov-2018 19:40:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @jordan_OpeningFcn, ...
                   'gui_OutputFcn',  @jordan_OutputFcn, ...
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


% --- Executes just before jordan is made visible.
function jordan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to jordan (see VARARGIN)

% Choose default command line output for jordan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes jordan wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = jordan_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gs numerador denominador;
a = gs
num1 = numerador
den1 = denominador


jordan(a)






