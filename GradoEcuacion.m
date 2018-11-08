function varargout = GradoEcuacion(varargin)
% GRADOECUACION MATLAB code for GradoEcuacion.fig
%      GRADOECUACION, by itself, creates a new GRADOECUACION or raises the existing
%      singleton*.
%
%      H = GRADOECUACION returns the handle to a new GRADOECUACION or the handle to
%      the existing singleton*.
%
%      GRADOECUACION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRADOECUACION.M with the given input arguments.
%
%      GRADOECUACION('Property','Value',...) creates a new GRADOECUACION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GradoEcuacion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GradoEcuacion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GradoEcuacion

% Last Modified by GUIDE v2.5 07-Nov-2018 10:02:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GradoEcuacion_OpeningFcn, ...
                   'gui_OutputFcn',  @GradoEcuacion_OutputFcn, ...
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



% --- Executes just before GradoEcuacion is made visible.
function GradoEcuacion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GradoEcuacion (see VARARGIN)
img1=imread('fondo-grado-ecuacion.jpg');
image(img1)
axis off

img2=imread('ok.jpg');
set(handles.pushbutton1,'CData',img2)



% Choose default command line output for GradoEcuacion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GradoEcuacion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GradoEcuacion_OutputFcn(hObject, eventdata, handles) 
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
global ys;
global us;
if isempty(ys) || isempty(us)
    errordlg('Campo(s) vacio(s)','Error')
elseif ys > 5 || us > 5 
    errordlg('El grado de los polinomios es muy alto!','Error')      
elseif ys < 0 || us < 0
    errordlg('Grado no permitido!','Error')
%%else
    %%set(hObject.text7, 'string', 'Hola!');
    %%Principal;
end






function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ys;
ys=str2double(get(hObject,'String'));

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global us;
us=str2double(get(hObject,'String'));

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
