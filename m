From: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v9 11/11] Documentation: gpu: todo: Add dw-mipi-dsi
 consolidation plan
Date: Tue, 09 Jun 2020 20:44:26 +0300
Message-ID: <87sgf4i16t.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
References: <20200609162700.953260-1-adrian.ratiu@collabora.com>
 <20200609162700.953260-12-adrian.ratiu@collabora.com>
 <CAKMK7uGLQCj_oJcbXynt_1bmwBQy6ncUgc49DPejyfCtb68e_g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; format=flowed
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAKMK7uGLQCj_oJcbXynt_1bmwBQy6ncUgc49DPejyfCtb68e_g-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Daniel Vetter <daniel.vetter-/w4YWyX8dFk@public.gmane.org>
Cc: Linux ARM <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, devicetree <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Philippe CORNU <philippe.cornu-qxv4g6HH51o@public.gmane.org>, Yannick FERTRE <yannick.fertre-qxv4g6HH51o@public.gmane.org>, Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, dl-linux-imx <linux-imx-3arQi8VN3Tc@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, 09 Jun 2020, Daniel Vetter <daniel.vetter-/w4YWyX8dFk@public.gmane.org> wrote:
> On Tue, Jun 9, 2020 at 6:25 PM Adrian Ratiu 
> <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote: 
>> 
>> This documents the longer-term plan to cleanup the dw-mipi-dsi 
>> bridge based drivers after the regmap refactor and i.MX6 driver 
>> have landed. 
>> 
>> The goal is to get the entire bridge logic in one place and 
>> continue the refactorings under the drm/bridge tree. 
>> 
>> Cc: Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org> Cc: 
>> Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> Cc: Sam 
>> Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org> Cc: Daniel Vetter 
>> <daniel.vetter-/w4YWyX8dFk@public.gmane.org> Signed-off-by: Adrian Ratiu 
>> <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> 
> 
> This cc's the world, but not dri-devel. Can you pls resubmit 
> with that added? 

Yes, sorry about omitting dri-devel, it was unintentional. Will 
resubmit the same version.

Adrian

>
> Thanks, Daniel
>
>> ---
>>  Documentation/gpu/todo.rst | 25 +++++++++++++++++++++++++
>>  1 file changed, 25 insertions(+)
>>
>> diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
>> index 658b52f7ffc6c..2b142980a4b16 100644
>> --- a/Documentation/gpu/todo.rst
>> +++ b/Documentation/gpu/todo.rst
>> @@ -548,6 +548,31 @@ See drivers/gpu/drm/amd/display/TODO for tasks.
>>
>>  Contact: Harry Wentland, Alex Deucher
>>
>> +Reorganize dw-mipi-dsi bridge-based host-controller drivers
>> +-----------------------------------------------------------
>> +
>> +The Synopsys DW MIPI DSI bridge is used by a number of SoC platform drivers
>> +(STM, Rockchip, i.MX) which don't cleanly encapsulate their bridge logic which
>> +gets split between the Synopsys bridge (drm/bridge/synopsys/dw-mipi-dsi.c) and
>> +platform drivers like drm/imx/dw_mipi_dsi-imx6.c by passing around the bridge
>> +configuration regmap, creating new bridges / daisy chaining in platform drivers,
>> +duplicating encoder creation, having too much encoder logic instead of using the
>> +simple encoder interface and so on.
>> +
>> +The goal of this rework is to make the dw-mipi-dsi driver a better encapsulated
>> +bridge by moving all bridge-related logic under drm/bridge, including the SoC
>> +bindings which chain to the core Synopsys code under drm/bridge/dw-mipi-dsi/
>> +from which they can be further consolidated and cleaned up.
>> +
>> +If this goal proves to be impossible then drm_bridge might not be the correct
>> +abstraction for these host controllers and unifying their logic into a helper
>> +library encapsulating a drm_encoder might be more desirable, in other words to
>> +move away from drm_bridge entirely.
>> +
>> +Contact: Adrian Ratiu, Daniel Vetter, Laurent Pinchart
>> +
>> +Level: Intermediate
>> +
>>  Bootsplash
>>  ==========
>>
>> --
>> 2.27.0
>>
>
>
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
