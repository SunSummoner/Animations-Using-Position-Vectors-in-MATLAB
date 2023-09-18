function varargout = Kritika(varargin)
%KRITIKA M-file for Kritika.fig
%      KRITIKA, by itself, creates a new KRITIKA or raises the existing
%      singleton*.
%
%      H = KRITIKA returns the handle to a new KRITIKA or the handle to
%      the existing singleton*.
%
%      KRITIKA('Property','Value',...) creates a new KRITIKA using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to Kritika_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      KRITIKA('CALLBACK') and KRITIKA('CALLBACK',hObject,...) call the
%      local function named CALLBACK in KRITIKA.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Kritika

% Last Modified by GUIDE v2.5 20-Jul-2022 01:38:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Kritika_OpeningFcn, ...
                   'gui_OutputFcn',  @Kritika_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before Kritika is made visible.
function Kritika_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for Kritika
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Kritika wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Kritika_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Sphere1button.
function Sphere1button_Callback(hObject, eventdata, handles)
Sphere()
% hObject    handle to Sphere1button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
Differential()
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Flower1button.
function Flower1button_Callback(hObject, eventdata, handles)
Flower()
% hObject    handle to Flower1button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
Sphere2()
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
ode1()
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Flower2button.
function Flower2button_Callback(hObject, eventdata, handles)
Flower2()
% hObject    handle to Flower2button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
