function varargout = Escalon(varargin)
% ESCALON MATLAB code for Escalon.fig
%      ESCALON, by itself, creates a new ESCALON or raises the existing
%      singleton*.
%
%      H = ESCALON returns the handle to a new ESCALON or the handle to
%      the existing singleton*.
%
%      ESCALON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ESCALON.M with the given input arguments.
%
%      ESCALON('Property','Value',...) creates a new ESCALON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Escalon_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Escalon_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Escalon

% Last Modified by GUIDE v2.5 15-Nov-2018 02:26:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Escalon_OpeningFcn, ...
                   'gui_OutputFcn',  @Escalon_OutputFcn, ...
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


% --- Executes just before Escalon is made visible.
function Escalon_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Escalon (see VARARGIN)

% Choose default command line output for Escalon
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Escalon wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Escalon_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in mostrar.
function mostrar_Callback(hObject, eventdata, handles)
% hObject    handle to mostrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Gr�fica escal�n
global gs;
s=tf('s');
t=0:0.1:100;
escalon = (gs);
axes(handles.axes1);
step(escalon, t, 'r');







% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
