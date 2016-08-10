function varargout = slepianGraph(varargin)

% SLEPIANGRAPH MATLAB code for slepianGraph.fig
%      SLEPIANGRAPH, by itself, creates a new SLEPIANGRAPH or raises the existing
%      singleton*.
%
%      H = SLEPIANGRAPH returns the handle to a new SLEPIANGRAPH or the handle to
%      the existing singleton*.
%
%      SLEPIANGRAPH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SLEPIANGRAPH.M with the given input arguments.
%
%      SLEPIANGRAPH('Property','Value',...) creates a new SLEPIANGRAPH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before slepianGraph_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to slepianGraph_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help slepianGraph

% Last Modified by GUIDE v2.5 04-Aug-2016 13:21:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @slepianGraph_OpeningFcn, ...
                   'gui_OutputFcn',  @slepianGraph_OutputFcn, ...
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


% --- Executes just before slepianGraph is made visible.
function slepianGraph_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to slepianGraph (see VARARGIN)



% Choose default command line output for slepianGraph
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes slepianGraph wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = slepianGraph_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double

filePath = get(hObject,'String');
disp(filePath);
handles.edit2 = filePath;

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

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double

graphTitle = get(hObject,'String');
disp(graphTitle);
handles.edit3 = graphTitle;


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

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


xAxisLabel = get(hObject,'String');
disp(xAxisLabel);
handles.edit4 = xAxisLabel;


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

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


yAxisLabel = get(hObject,'String');
disp(yAxisLabel);
handles.edit5 = yAxisLabel;


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

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


zAxisLabel = get(hObject,'String');
disp(zAxisLabel);
handles.edit6 = zAxisLabel;


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

% --- Executes on button press in pushbutton3.
%erase button
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hPlotData = plot(sin(0:0.1:10));
delete(hPlotData);


% --- Executes on button press in pushbutton1.
%set button
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

userChoice = get(handles.popupmenu1, 'Value');

userFilePath = get(handles.edit2, 'String');
%userFilePath = strjoin(userFilePath);

userGraphTitle = get(handles.edit3, 'String');
userXAxisLabel = get(handles.edit4, 'String');
userYAxisLabel = get(handles.edit5, 'String');
userZAxisLabel = get(handles.edit6, 'String');

userXRangeMax = get(handles.edit8, 'String');
userXRangeMax = str2double(userXRangeMax);

userYRangeMax = get(handles.edit9, 'String');
userYRangeMax = str2double(userYRangeMax);

userXRangeMin = get(handles.edit12, 'String');
userXRangeMin = str2double(userXRangeMin);

userYRangeMin = get(handles.edit13, 'String');
userYRangeMin = str2double(userYRangeMin);

userZRangeMin = get(handles.edit15, 'String');
userZRangeMin = str2double(userZRangeMin);

userZRangeMax = get(handles.edit14, 'String');
userZRangeMax = str2double(userZRangeMax);

disp(userChoice);
disp(userFilePath);
disp(userGraphTitle);
disp(userXAxisLabel);
disp(userYAxisLabel);
disp(userZAxisLabel);
disp(userXRangeMax);
disp(userYRangeMax);
disp(userXRangeMin);
disp(userYRangeMin);
disp(userZRangeMin);
disp(userZRangeMax);

switch userChoice;
case 2 % User selects Accelerator.
    
    accel = xlsread(userFilePath);
    x1 = accel(1:1);
    time1 = (accel(:,1)-x1)/1000;

    ax1 = accel(:,2);
    ay1 = accel(:,3);
    az1 = accel(:,4);

    plot(time1,ax1,'r', time1,ay1,'g', time1,az1,'bl');
    xlabel(userXAxisLabel);
    ylabel(userYAxisLabel);
    title(userGraphTitle);
    xlim([userXRangeMin,userXRangeMax]);
    ylim([userYRangeMin,userYRangeMax]);
     
case 3 % User selects Gyroscope.
    Fgyro = xlsread(userFilePath);
    x1 = Fgyro(1:1);

    time1 = (Fgyro(:,1)-x1)/1000;

    gyroX1 = Fgyro(:,2);
    gyroY1 = Fgyro(:,3);
    gyroZ1 = Fgyro(:,4);
    
    plot(time1,gyroX1,'r', time1,gyroY1,'g', time1,gyroZ1, 'bl');
    
    xlabel(userXAxisLabel);
    ylabel(userYAxisLabel);
    title(userGraphTitle);
   
    xlim([userXRangeMin,userXRangeMax]);
    ylim([userYRangeMin,userYRangeMax]);
   
   
case 4 % User selects threeD.
    Fgyro1 = xlsread(userFilePath);

    x1 = Fgyro1(1:1);
    time1 = (Fgyro1(:,1)-x1)/1000;

    ax1 = Fgyro1(:,2);
    ay1 = Fgyro1(:,3);
    az1 = Fgyro1(:,4);

    intx1 = cumsum(ax1)/100;
    inty1 = cumsum(ay1)/100;
    intz1 = cumsum(az1)/100;
    plot3(intx1,inty1,intz1);
    xlabel(userXAxisLabel);
    ylabel(userYAxisLabel);
    zlabel(userZAxisLabel);
    title(userGraphTitle);
    xlim([userXRangeMin,userXRangeMax]);
    ylim([userYRangeMin,userYRangeMax]);
    zlim([userZRangeMin,userZRangeMax]);
   
case 5 % User selects EMG.
    EMG = xlsread(userFilePath);
    x1 = EMG(1:1);

    time1 = (EMG(:,1)-x1)/1000;

    emgX1 = EMG(:,2);
    
    plot(time1,emgX1,'r');
    
    xlabel(userXAxisLabel);
    ylabel(userYAxisLabel);
    title(userGraphTitle);
   
    xlim([userXRangeMin,userXRangeMax]);
    ylim([userYRangeMin,userYRangeMax]);
    
end

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1

% Determine the selected data set.
contents = get(hObject,'Value');

% Set current data to the selected data set.
switch contents;
case 2 % User selects Accelerator.
   %handles.current_data = handles.Accelerator;
   choice = get(handles.popupmenu1, 'Value');
   
   disp(choice);
  
   
case 3 % User selects Gyroscope.
   %handles.current_data = handles.Gyroscope;
   
   fprintf('Gyroscope');
   
case 4 % User selects threeD.
   %handles.current_data = handles.threeD;
   fprintf('threeD');
   
case 5 % User selects EMG.
   %handles.current_data = handles.threeD;
   fprintf('EMG');
end
% Save the handles structure.
guidata(hObject,handles)





% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double

yRangeMax = get(hObject,'String');
yRangeMax = str2double(yRangeMax);
disp(yRangeMax);
handles.edit9 = yRangeMax;


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



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double

xRangeMin = get(hObject,'String');
xRangeMin = str2double(xRangeMin);
disp(xRangeMin);
handles.edit12 = xRangeMin;


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

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double

yRangeMin = get(hObject,'String');
yRangeMin = str2double(yRangeMin);
disp(yRangeMin);
handles.edit13 = yRangeMin;


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

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double

zRangeMax = get(hObject,'String');
zRangeMax = str2double(zRangeMax);
disp(zRangeMax);
handles.edit14 = zRangeMax;




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



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double

zRangeMin = get(hObject,'String');
zRangeMin = str2double(zRangeMin);
disp(zRangeMin);
handles.edit15 = zRangeMin;


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

SAVEuserGraphTitle = get(handles.edit3, 'String');
SAVEuserXAxisLabel = get(handles.edit4, 'String');
SAVEuserYAxisLabel = get(handles.edit5, 'String');
SAVEuserZAxisLabel = get(handles.edit6, 'String');

    F=getframe(handles.axes1); %select axes in GUI
    figure(); %new figure
    image(F.cdata); %show selected axes in new figure
    title(SAVEuserGraphTitle);
    xlabel(SAVEuserXAxisLabel);
    ylabel(SAVEuserYAxisLabel);
    zlabel(SAVEuserZAxisLabel);
 
    
