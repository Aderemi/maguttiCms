<?php
namespace App\maguttiCms\Builders;


use Illuminate\Database\Eloquent\Builder;

/**
 * Class MaguttiCmsBuilder
 * @package App\maguttiCms\Builders
 */
class MaguttiCmsBuilder extends Builder
{
    public  function status($status){
        return $this->where('is_active',$status);
    }
    public  function active(){
        return $this->status(1);
    }
    public  function inactive(){
        return $this->where('is_active','!=',1)->orWhereNull('is_active');
    }
    public function published() {
        return $this->where('pub', 1);
    }
}
