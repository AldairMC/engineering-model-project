function varargout = PolosCeros(varargin)
% POLOSCEROS MATLAB code for PolosCeros.fig
%      POLOSCEROS, by itself, creates a new POLOSCEROS or raises the existing
%      singleton*.
%
%      H = POLOSCEROS returns the handle to a new POLOSCEROS or the handle to
%      the existing singleton*.
%
%      POLOSCEROS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in POLOSCEROS.M with the given input arguments.
%
%      POLOSCEROS('Property','Value',...) creates a new POLOSCEROS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PolosCeros_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PolosCeros_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PolosCeros

% Last Modified by GUIDE v2.5 15-Nov-2018 02:18:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PolosCeros_OpeningFcn, ...
                   'gui_OutputFcn',  @PolosCeros_OutputFcn, ...
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


% --- Executes just before PolosCeros is made visible.
function PolosCeros_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PolosCeros (see VARARGIN)

% Choose default command line output for PolosCeros
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PolosCeros wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PolosCeros_OutputFcn(hObject, eventdata, handles) 
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
    global gs;
    axes(handles.axes1);
    pzmap(gs);
    xlabel('Eje Real');
    title('');
    ylabel('Eje Imaginario');



% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.output);
