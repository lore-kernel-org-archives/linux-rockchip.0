From: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v9 00/11] Genericize DW MIPI DSI bridge and add i.MX 6
 driver
Date: Wed, 01 Jul 2020 09:35:27 +0300
Message-ID: <87lfk3kaj4.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
References: <20200609174959.955926-1-adrian.ratiu@collabora.com>
 <c6f10db1-7f56-a156-36a1-125e764c8c1a@baylibre.com>
Mime-Version: 1.0
Content-Type: text/plain; format=flowed
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <c6f10db1-7f56-a156-36a1-125e764c8c1a-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Neil Armstrong <narmstrong-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>
Cc: Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Philippe CORNU <philippe.cornu-qxv4g6HH51o@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Yannick FERTRE <yannick.fertre-qxv4g6HH51o@public.gmane.org>, Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, linux-imx-3arQi8VN3Tc@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Neil,

On Mon, 29 Jun 2020, Neil Armstrong <narmstrong-rdvid1DuHRBWk0Htik3J/w@public.gmane.org> 
wrote:
> Hi Adrian, 
> 
> On 09/06/2020 19:49, Adrian Ratiu wrote: 
>> [Re-submitting to cc dri-devel, sorry about the noise]  Hello 
>> all,  v9 cleanly applies on top of latest next-20200609 tree. 
>> v9 does not depend on other patches as the last binding doc has 
>> been merged.   All feedback up to this point has been 
>> addressed. Specific details in individual patch changelogs. 
>> The biggest changes are the deprecation of the Synopsys DW 
>> bridge bind() API in favor of of_drm_find_bridge() and .attach 
>> callbacks, the addition of a TODO entry which outlines future 
>> planned bridge driver refactorings and a reordering of some 
>> i.MX 6 patches to appease checkpatch.   The idea behind the 
>> TODO is to get this regmap and i.MX 6 driver merged and then do 
>> the rest of refactorings in-tree because it's easier and the 
>> refactorings themselves are out-of-scope of this series which 
>> is adding i.MX 6 support and is quite big already, so please, 
>> if there are more refactoring ideas, let's add them to the TODO 
>> doc. :) I intend to tackle those after this series is merged to 
>> avoid two complex inter-dependent simultaneous series. 
> 
> This has been around here for a long time and you seem to have 
> addressed all the reviews. 
> 
>>  As always more testing is welcome especially on Rockchip and 
>> STM SoCs. 
> 
> It has been tested on STM, but I'd like a feedback on RK 
> platform before applying the bridge parts. 
> 
> Can the imx & stm patches be applied separately ? 
>

Yes the IMX and STM patches can be applied separately, they just 
both depend on the common regmap patches.

The binding API removal change which directly touches RK can also 
be applied separately, but unfortunately I do not have access to a 
RK board with a DSI display to test it (or the bridge regmap logic 
on RK btw...), I just "eye-balled" the RK code based on the public 
docs and it LGTM.

> Neil
>
>> 
>> Big thank you to everyone who has contributed to this up to now,
>> Adrian
>> 
>> Adrian Ratiu (11):
>>   drm: bridge: dw_mipi_dsi: add initial regmap infrastructure
>>   drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
>>   drm: bridge: dw_mipi_dsi: add dsi v1.01 support
>>   drm: bridge: dw_mipi_dsi: remove bind/unbind API
>>   dt-bindings: display: add i.MX6 MIPI DSI host controller doc
>>   ARM: dts: imx6qdl: add missing mipi dsi properties
>>   drm: imx: Add i.MX 6 MIPI DSI host platform driver
>>   drm: stm: dw-mipi-dsi: let the bridge handle the HW version check
>>   drm: bridge: dw-mipi-dsi: split low power cfg register into fields
>>   drm: bridge: dw-mipi-dsi: fix bad register field offsets
>>   Documentation: gpu: todo: Add dw-mipi-dsi consolidation plan
>> 
>>  .../display/imx/fsl,mipi-dsi-imx6.yaml        | 112 +++
>>  Documentation/gpu/todo.rst                    |  25 +
>>  arch/arm/boot/dts/imx6qdl.dtsi                |   8 +
>>  drivers/gpu/drm/bridge/synopsys/Kconfig       |   1 +
>>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 713 ++++++++++++------
>>  drivers/gpu/drm/imx/Kconfig                   |   8 +
>>  drivers/gpu/drm/imx/Makefile                  |   1 +
>>  drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 399 ++++++++++
>>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |   7 +-
>>  drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  16 +-
>>  10 files changed, 1059 insertions(+), 231 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
>>  create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c
>> 
