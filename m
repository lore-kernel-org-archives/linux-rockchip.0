From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v4] dt-bindings: rockchip-vpu: Convert bindings to
 json-schema
Date: Tue, 21 Apr 2020 15:36:35 +0200
Message-ID: <0b82a3f1-3b09-15d6-927c-fac1d4a7f631@gmail.com>
References: <20200326191343.1989-1-ezequiel@collabora.com>
 <12f6d7cf-6af6-4f54-3188-65e73b703a72@gmail.com>
 <9328212d-139f-6a0e-7d0c-3a5529a392f2@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <9328212d-139f-6a0e-7d0c-3a5529a392f2@gmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: ezequiel@collabora.com, devicetree@vger.kernel.org, hverkuil@xs4all.nl, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, mark.rutland@arm.com, robh@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Also add

L:	linux-rockchip@lists.infradead.org

to all Rockchip related MAINTAINERS items.

On 4/21/20 3:19 PM, Johan Jonker wrote:
> Hi,
> 
> Question for the media maintainers Hans & Co. :
> 
> What's nxp,imx8mq-vpu.yaml doing under rga?
> Why is rockchip-vpu.yaml inserted under rga instead of vpu?
> 
> Johan
> 
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index f0e7b4d17fcc..0cfd86594b0b 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -14471,7 +14471,8 @@ M:	Jacob Chen <jacob-chen@iotwrt.com>
>>  M:	Ezequiel Garcia <ezequiel@collabora.com>
>>  L:	linux-media@vger.kernel.org
>>  S:	Maintained
>> -F:	Documentation/devicetree/bindings/media/rockchip-rga.txt
>> +F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
>> +F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>>  F:	drivers/media/platform/rockchip/rga/
> 
> HANTRO VPU CODEC DRIVER
> M:	Ezequiel Garcia <ezequiel@collabora.com>
> M:	Philipp Zabel <p.zabel@pengutronix.de>
> L:	linux-media@vger.kernel.org
> L:	linux-rockchip@lists.infradead.org
> S:	Maintained
> F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> F:	Documentation/devicetree/bindings/media/rockchip-vpu.txt
> F:	drivers/staging/media/hantro/
> 
> ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
> M:	Jacob Chen <jacob-chen@iotwrt.com>
> M:	Ezequiel Garcia <ezequiel@collabora.com>
> L:	linux-media@vger.kernel.org

Add list

> S:	Maintained
> F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> F:	drivers/media/platform/rockchip/rga/
> 

ROCKCHIP VIDEO DECODER DRIVER
M:	Ezequiel Garcia <ezequiel@collabora.com>
L:	linux-media@vger.kernel.org

Add list

S:	Maintained
F:	drivers/staging/media/rkvdec/
F:	Documentation/devicetree/bindings/media/rockchip,vdec.yaml

ROCKCHIP ISP V1 DRIVER
M:	Helen Koike <helen.koike@collabora.com>
L:	linux-media@vger.kernel.org

Add list

S:	Maintained
F:	drivers/staging/media/rkisp1/
