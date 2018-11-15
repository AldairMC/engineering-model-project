function varargout = Principal(varargin)
% PRINCIPAL MATLAB code for Principal.fig
%      PRINCIPAL, by itself, creates a new PRINCIPAL or raises the existing
%      singleton*.
%
%      H = PRINCIPAL returns the handle to a new PRINCIPAL or the handle to
%      the existing singleton*.
%
%      PRINCIPAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRINCIPAL.M with the given input arguments.
%
%      PRINCIPAL('Property','Value',...) creates a new PRINCIPAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Principal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Principal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Principal

% Last Modified by GUIDE v2.5 15-Nov-2018 02:13:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Principal_OpeningFcn, ...
                   'gui_OutputFcn',  @Principal_OutputFcn, ...
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


% --- Executes just before Principal is made visible.
function Principal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Principal (see VARARGIN)
axes(handles.axes3);
img1=imread('s5.jpg');
imshow(img1)
axis off

axes(handles.axes4);
img2=imread('s4.jpg');
imshow(img2)
axis off

axes(handles.axes5);
img3=imread('s3.jpg');
imshow(img3)
axis off

axes(handles.axes6);
img4=imread('s2.jpg');
imshow(img4)
axis off

axes(handles.axes7);
img5=imread('s1.jpg');
imshow(img5)
axis off

axes(handles.axes8);
img8=imread('s5.jpg');
imshow(img8)
axis off

axes(handles.axes9);
img9=imread('s4.jpg');
imshow(img9)
axis off

axes(handles.axes10);
img10=imread('s3.jpg');
imshow(img10)
axis off

axes(handles.axes11);
img11=imread('s2.jpg');
imshow(img11)
axis off

axes(handles.axes12);
img12=imread('s1.jpg');
imshow(img12)
axis off


imbtn2=imread('ok.jpg');
set(handles.pushbutton2,'CData',imbtn2)

imbtn3=imread('ok.jpg');
set(handles.pushbutton3,'CData',imbtn3)

imbtn4=imread('clear.jpg');
set(handles.pushbutton4,'CData',imbtn4)

imbtn5=imread('cancel.jpg');
set(handles.pushbutton5,'CData',imbtn5)


set(handles.edit1, 'Enable', 'off')
set(handles.edit2, 'Enable', 'off')
set(handles.edit3, 'Enable', 'off')
set(handles.edit4, 'Enable', 'off')
set(handles.edit5, 'Enable', 'off')
set(handles.edit6, 'Enable', 'off')
set(handles.edit7, 'Enable', 'off')
set(handles.edit8, 'Enable', 'off')
set(handles.edit9, 'Enable', 'off')
set(handles.edit10, 'Enable', 'off')
set(handles.edit11, 'Enable', 'off')
set(handles.edit12, 'Enable', 'off')
set(handles.pushbutton3, 'Enable', 'off');

% Choose default command line output for Principal
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Principal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Principal_OutputFcn(hObject, eventdata, handles) 
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



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ysCinco;
ysCinco=str2double(get(hObject,'String'));
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
global ysCuatro;
ysCuatro=str2double(get(hObject,'String'));
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



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ysTres;
ysTres=str2double(get(hObject,'String'));
% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ysDos;
ysDos=str2double(get(hObject,'String'));
% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ysUno;
ysUno=str2double(get(hObject,'String'));
% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ysCero;
ysCero=str2double(get(hObject,'String'));
% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global usCinco;
usCinco=str2double(get(hObject,'String'));
% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global usCuatro;
usCuatro=str2double(get(hObject,'String'));
% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global usTres;
usTres=str2double(get(hObject,'String'));
% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global usDos;
usDos=str2double(get(hObject,'String'));
% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global usUno;
usUno=str2double(get(hObject,'String'));
% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global usCero;
usCero=str2double(get(hObject,'String'));
% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ys;
ys=str2double(get(hObject,'String'));

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global us;
us=str2double(get(hObject,'String'));
% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ys;
global us;


if isempty(ys) 
    errordlg('Campo vacio','Error');
elseif isempty(us)
    errordlg('Campo vacio','Error');
elseif us >= ys
    errordlg('El grado de U(s) debe ser menor al grado de Y(s)','Error');
    set(handles.edit14, 'string', '');
elseif ys > 5 || us > 5 
    errordlg('El grado de los polinomios es muy alto!','Error');      
elseif ys < 0 || us < 0
    errordlg('Grado no permitido!','Error');
else
    switch ys
        case 0
            set(handles.edit6, 'Enable', 'on');
        case 1
            set(handles.edit5, 'Enable', 'on');
            set(handles.edit6, 'Enable', 'on');

        case 2
            set(handles.edit4, 'Enable', 'on');
            set(handles.edit5, 'Enable', 'on');
            set(handles.edit6, 'Enable', 'on');

        case 3
            set(handles.edit3, 'Enable', 'on');
            set(handles.edit4, 'Enable', 'on');
            set(handles.edit5, 'Enable', 'on');
            set(handles.edit6, 'Enable', 'on');

        case 4
            set(handles.edit2, 'Enable', 'on');
            set(handles.edit3, 'Enable', 'on');
            set(handles.edit4, 'Enable', 'on');
            set(handles.edit5, 'Enable', 'on');
            set(handles.edit6, 'Enable', 'on');

        case 5
            set(handles.edit1, 'Enable', 'on');
            set(handles.edit2, 'Enable', 'on');
            set(handles.edit3, 'Enable', 'on');
            set(handles.edit4, 'Enable', 'on');
            set(handles.edit5, 'Enable', 'on');
            set(handles.edit6, 'Enable', 'on');

    end

    switch us
        case 0
            set(handles.edit12, 'Enable', 'on');
        case 1
            set(handles.edit11, 'Enable', 'on');
            set(handles.edit12, 'Enable', 'on');
            
        case 2
            set(handles.edit10, 'Enable', 'on');
            set(handles.edit11, 'Enable', 'on');
            set(handles.edit12, 'Enable', 'on');
            
        case 3
            set(handles.edit9, 'Enable', 'on');
            set(handles.edit10, 'Enable', 'on');
            set(handles.edit11, 'Enable', 'on');
            set(handles.edit12, 'Enable', 'on');
            
        case 4
            set(handles.edit8, 'Enable', 'on');
            set(handles.edit9, 'Enable', 'on');
            set(handles.edit10, 'Enable', 'on');
            set(handles.edit11, 'Enable', 'on');
            set(handles.edit12, 'Enable', 'on');
            
        case 5
            set(handles.edit7, 'Enable', 'on');
            set(handles.edit8, 'Enable', 'on');
            set(handles.edit9, 'Enable', 'on');
            set(handles.edit10, 'Enable', 'on');
            set(handles.edit11, 'Enable', 'on');
            set(handles.edit12, 'Enable', 'on');
            
    end
    
    set(handles.pushbutton2, 'Enable', 'off');
    set(handles.edit13, 'Enable', 'off');
    set(handles.edit14, 'Enable', 'off');
    set(handles.pushbutton3, 'Enable', 'on');
end



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ys;
global us;
global gs;
global p;
global z;
global k;
global u numerador;
global y denominador;

switch ys
    case 1
        s1=str2double(get(handles.edit5, 'String'));
        s0=str2double(get(handles.edit6, 'String'));
        y = [s1 s0];
    case 2
        s2=str2double(get(handles.edit4, 'String'));
        s1=str2double(get(handles.edit5, 'String'));
        s0=str2double(get(handles.edit6, 'String'));
        y = [s2 s1 s0];
    case 3
        s3=str2double(get(handles.edit3, 'String'));
        s2=str2double(get(handles.edit4, 'String'));
        s1=str2double(get(handles.edit5, 'String'));
        s0=str2double(get(handles.edit6, 'String'));
        y = [s3 s2 s1 s0];
    case 4
        s4=str2double(get(handles.edit2, 'String'));
        s3=str2double(get(handles.edit3, 'String'));
        s2=str2double(get(handles.edit4, 'String'));
        s1=str2double(get(handles.edit5, 'String'));
        s0=str2double(get(handles.edit6, 'String'));
        y = [s4 s3 s2 s1 s0];
    case 5
        s5=str2double(get(handles.edit1, 'String'));
        s4=str2double(get(handles.edit2, 'String'));
        s3=str2double(get(handles.edit3, 'String'));
        s2=str2double(get(handles.edit4, 'String'));
        s1=str2double(get(handles.edit5, 'String'));
        s0=str2double(get(handles.edit6, 'String'));
        y = [s5 s4 s3 s2 s1 s0];
    case 0
        s0=str2double(get(handles.edit6, 'String'));
        y = s0;
end

switch us
    case 1
        s1=str2double(get(handles.edit11, 'String'));
        s0=str2double(get(handles.edit12, 'String'));
        u = [s1 s0];
    case 2
        s2=str2double(get(handles.edit10, 'String'));
        s1=str2double(get(handles.edit11, 'String'));
        s0=str2double(get(handles.edit12, 'String'));
        u = [s2 s1 s0];
    case 3
        s3=str2double(get(handles.edit9, 'String'));
        s2=str2double(get(handles.edit10, 'String'));
        s1=str2double(get(handles.edit11, 'String'));
        s0=str2double(get(handles.edit12, 'String'));
        u = [s3 s2 s1 s0];
    case 4
        s4=str2double(get(handles.edit8, 'String'));
        s3=str2double(get(handles.edit9, 'String'));
        s2=str2double(get(handles.edit10, 'String'));
        s1=str2double(get(handles.edit11, 'String'));
        s0=str2double(get(handles.edit12,'String'));
        u = [s4 s3 s2 s1 s0];
    case 5
        s5=str2double(get(handles.edit7, 'String'));
        s4=str2double(get(handles.edit8, 'String'));
        s3=str2double(get(handles.edit9, 'String'));
        s2=str2double(get(handles.edit10, 'String'));
        s1=str2double(get(handles.edit11, 'String'));
        s0=str2double(get(handles.edit12, 'String'));
        u = [s5 s4 s3 s2 s1 s0];
    case 0
        s0=str2double(get(handles.edit12, 'String'));
        u = s0; 
end
numerador=u;
denominador=y;
gs=tf(u,y);  
t=evalc('gs');
set(handles.text7,'string',t);
%Polos y ceros
[z,p,k]=tf2zp(u,y); 
set(handles.text11, 'string', z);
set(handles.text12, 'string', p);
set(handles.text19, 'string', k);
%Establilidad del sistema
a=0;
for i=1:length(p) 
    if p(i) < 0
       a=a+1;
    end
    if a > 1
        b='El sistemas es estable';
    else
        b='El sistemas es inestable';
    end
end
set(handles.text16, 'string', b);
%Grafica funcion 
    %axes(handles.axes16);
    %step(gs);
%Grafica polos y ceros 
    %axes(handles.pzmap);
    %pzmap(gs);
    

%Sobre Paso


%Tiempo de acentamiento








 


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in gradoDos.
function gradoDos_Callback(hObject, eventdata, handles)
% hObject    handle to gradoDos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global denominador numerador newFunction gs k;

if length(denominador) > 2
    for i=1:2
       auxMinimo = min(denominador);
       grado2(i)=auxMinimo;
       denominador(denominador == auxMinimo) = [];
    end
    
    for i=1:length(denominador)
        auxMinimo = denominador(i);
        numerador(numerador == round(auxMinimo)) = [];
    end
   
    [num,den]=zp2tf(numerador, grado2, k);
    newFunction = tf(num,den);
    t=evaluc('newFunction');
    set(handles.text22, 'string', t);
else
    newFunction = gs
    sset(handles.text22, 'string', newFunction);
end



% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in errores.
function errores_Callback(hObject, eventdata, handles)
% hObject    handle to errores (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gs;
s=tf('s');
%Error y constante de posici�n 
kp=dcgain(gs);
eKp=1/(1+kp);
set(handles.text49, 'string', kp);
set(handles.text50, 'string', eKp);
%Error y constante de velocidad
kv=dcgain(s*gs);
eKv=1/kv;
set(handles.text51, 'string', kv);
set(handles.text52, 'string', eKv);
%Error y constante de aceleraci�n
ka=dcgain(s^2*gs);
eKa=1/ka;
set(handles.text53, 'string', ka);
set(handles.text54, 'string', eKa);


% --- Executes on button press in rampa.
function rampa_Callback(hObject, eventdata, handles)
% hObject    handle to rampa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Interfaz rampa
Rampa


% --- Executes on button press in escalon.
function escalon_Callback(hObject, eventdata, handles)
% hObject    handle to escalon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Interfaz escalon
Escalon


% --- Executes on button press in pzmap.
function pzmap_Callback(hObject, eventdata, handles)
% hObject    handle to pzmap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Grafica polos y ceros 
PolosCeros
    
