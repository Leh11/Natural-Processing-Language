main(){
    unsigned int count = 0;
    int sum = 0;
    int limit = 0;

    if(count < 10){
        sum++;
    }

    if(sum >= limit){
        limit--;
    }else{
        sum += sum + limit;
        sum -= sum - limit;
    }
    count++;
    
}