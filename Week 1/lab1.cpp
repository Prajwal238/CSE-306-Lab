#include <iostream>

using namespace std;

int main()
{
    int state=0,c=0;
    string input;
    char curr;
    cout<<"Enter a String: ";
    cin>>input;
    cout<<"Entered String is: "<<input <<"\n";
    
    while((curr=input[c++])!='\0'){
        cout<<"Current character is: "<< curr<<"\n";
        switch(state){
            
            case 0:
                if(curr=='a')
                    state = 1;
                else if(curr=='b')
                    state = 3;
                else{
                    cout<<"Invalid character"<<"\n";
                    exit(0);
                }
                break;
            case 1:
                if(curr=='a')
                    state = 0;
                else if(curr=='b')
                    state = 2;
                else{
                    cout<<"Invalid character"<<"\n";
                    exit(0);
                }
                break;
            case 2:
                if(curr=='a')
                    state = 3;
                else if(curr=='b')
                    state = 1;
                else{
                    cout<<"Invalid character"<<"\n";
                    exit(0);
                }
                break;
            case 3:
                if(curr=='a')
                    state = 2;
                else if(curr=='b')
                    state = 0;
                else{
                    cout<<"Invalid character"<<"\n";
                    exit(0);
                }
                break;
        }
    }
    if(state==0)
        cout<<"Input string is accepted"<<"\n";
    else
        cout<<"Input string not accepted"<<"\n";
    return 0;
}
