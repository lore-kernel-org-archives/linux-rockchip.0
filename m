From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v2] dt-bindings: convert rockchip-drm.txt to
 rockchip-drm.yaml
Date: Tue, 21 Jan 2020 17:00:34 +0100
Message-ID: <633202b7-31cb-a2ff-9461-631652cd94c0@gmail.com>
References: <6371f95f-8bf8-47c9-021e-b23006f25405@collabora.com>
 <573dc6d1-5857-f3ba-a392-67351db727b5@gmail.com>
 <7c79efd2-f5b0-6736-19b0-4d116714f887@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <7c79efd2-f5b0-6736-19b0-4d116714f887-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Dafna Hirschfeld <dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: airlied-cv59FeDIM0c@public.gmane.org, dafna3-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, daniel-/w4YWyX8dFk@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 1/21/20 4:26 PM, Dafna Hirschfeld wrote:
> 
> 
> On 21.01.20 16:11, Johan Jonker wrote:
>> Hi Dafna,
>>
>>
>>>
>>>
>>> On 21.01.20 15:03, Rob Herring wrote:
>>>> On Tue, Jan 21, 2020 at 6:35 AM Dafna Hirschfeld
>>>> <dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
>>>>>
>>>>> convert the binding file rockchip-drm.txt to yaml format.
>>>>> This was tested and verified with:
>>>>> make dt_binding_check
>>>>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
>>>>>
>>>>
>>>> Also, make sure just 'make dt_binding_check' passes as that checks the
>>>> example against all schemas.
>>>
>>> But this also checks the other schemas in general, and when running it,
>>> it fails because of bugs in other schemas.
>>
>>
>>> For example with arm=ARM I get:
>>
>> Use:
>>
>> # enable Rockchip arm in menuconfig
>> make ARCH=arm menuconfig
>>
>> make ARCH=arm dt_binding_check
>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
>>
>>
>> and not:
>> arm=ARM
>>
> yes, sorry, this is what I did. When running with the DT_SCHEMA_FILES
> set then it passes both on ARM and ARM64
> but when this variable is not set I get the above error.

# for Intel use:
make dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml


# for Rockchip use:
make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml

Also change:

example:
  Reduce some spaces here.

Also remove "|" from description.

See:
description: |
  A more detailed multi-line description of the binding.

  Details about the hardware device and any links to datasheets can go here.

  Literal blocks are marked with the '|' at the beginning. The end is
marked by
  indentation less than the first line of the literal block. Lines also
cannot
  begin with a tab character.

> 
> Dafna
> 
>>
>>>
>>>     DTC    
>>> Documentation/devicetree/bindings/clock/qcom,gcc.example.dt.yaml
>>> Error:
>>> Documentation/devicetree/bindings/clock/qcom,gcc.example.dts:111.28-29
>>> syntax error
>>> FATAL ERROR: Unable to parse input tree
>>>
>>> Dafna
>>>
>>>>
>>>>> make dtbs_check
>>>>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
>>>>>
>>>>>
>>
