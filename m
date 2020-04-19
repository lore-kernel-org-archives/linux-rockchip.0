From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2] dt-bindings: display: convert rockchip rk3066 hdmi
 bindings to yaml
Date: Sun, 19 Apr 2020 14:11:55 +0200
Message-ID: <2cf39dcb-1057-5c52-02bd-cc81607414cd@gmail.com>
References: <20200403133630.7377-1-jbx6244@gmail.com>
 <5903181.62QgbpdqVa@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <5903181.62QgbpdqVa@phil>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: hjc@rock-chips.com, airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 4/19/20 2:08 PM, Heiko Stuebner wrote:
> Hi Johan,
> 
> Am Freitag, 3. April 2020, 15:36:30 CEST schrieb Johan Jonker:
>> Current dts files with 'hdmi' nodes for rk3066 are manually verified.
>> In order to automate this process rockchip,rk3066-hdmi.txt
>> has to be converted to yaml.
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> 
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
>> @@ -0,0 +1,140 @@
>> +# SPDX-License-Identifier: GPL-2.0
> 
> checkpatch complains about the licensing:
> 
> -:100: WARNING:SPDX_LICENSE_TAG: DT binding documents should be licensed (GPL-2.0-only OR BSD-2-Clause)
> #100: FILE: Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml:1:
> +# SPDX-License-Identifier: GPL-2.0
> 
> please consider adapting the license accordingly

This is a conversion of a existing document. => GPL-2.0

> 
> Thanks
> Heiko
> 
> 
