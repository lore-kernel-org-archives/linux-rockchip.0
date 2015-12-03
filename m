From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v3 0/8] phy: rockchip-usb: correct pll handling and
 usb-uart
Date: Thu, 3 Dec 2015 11:35:52 +0530
Message-ID: <565FDBC0.6040207@ti.com>
References: <1447968149-10979-1-git-send-email-heiko@sntech.de>
 <5501584.6tGbRU8HS3@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <5501584.6tGbRU8HS3@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org, arnd-r2nGTMty4D4@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, romain.perier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wednesday 02 December 2015 09:02 PM, Heiko St=FCbner wrote:
> Hi Kishon,
> =

> Am Donnerstag, 19. November 2015, 22:22:21 schrieb Heiko Stuebner:
>> changes in v3:
>> - rebase on top of Julias of_node_put fix
>> - address comments from Kishon Vijay Abraham
>>   - position of the devm_action in the first patch
>>   - separate compatible-addition into separate patch
>>   - don't rephrase comment when moving stuff around
>> - address Doug's comment and keep clk-tree change and assigned-clocks
>>   setting together
>> - add Doug's review-tag to patches 5,6,7
>> changes in v2:
>> - add Doug's review-tag to patches 1 and 3
>> - address comment and add the missing transistional rk_phy->base
>>   assignment in patch2
> =

> do you have any further comments for this series?

Nope. However I'd like to have ACK from the clock maintainer (Mike turquett=
e?)
for "phy: rockchip-usb: expose the phy-internal PLLs".

Thanks
Kishon
> =

> =

> Thanks
> Heiko
> =

>> Patch 1 might be nice to go in as fix together with Julia's patch?
>>
>> Patches 2-7 fix a long-standing issue with the clock-tree of Rockchip So=
Cs
>> namely our ignorance of the usbphy-internal pll that creates the needed
>> 480MHz but is also a supply-clock back to the core clock-controller in
>> Rockchip SoCs.
>>
>> Till now that was worked around using a virtual clock in the cru itself,
>> but that is of course ignorant of other parts then disabling the phy
>> behind the cru's back, thus breaking potential users of these clocks.
>>
>>
>> Patch 8, while not associated with the new pll handling, also builds
>> on the groundwork introduced there and adds support for the function
>> repurposing one of the phys as passthrough for uart-data. This enables
>> attaching a ttl converter to the D+ and D- pins of an usb cable to
>> receive uart data this way, when it is not really possible to attach
>> a regular serial console to a board.
>>
>> One point of critique in my first iteration [0] of this was, that
>> due to when the reconfiguration happens we may miss parts of the logs
>> when earlycon is enabled. So far early_initcall gets used as the
>> unflattened devicetree is necessary to set this up. Doing this for
>> example in the early_param directly would require parsing the flattened
>> devicetree to get needed nodes and properties.
>>
>> I still maintain that if you're working on anything before smp-bringup
>> you should use a real dev-board instead or try to solder uart cables
>> on hopefully available test-points :-) .
>>
>>
>> In any case, if patch 8 causes to much headache, it could be dropped
>> to not hinder the earlier 7 patches.
>>
>> [0] http://comments.gmane.org/gmane.linux.ports.arm.rockchip/715
>>
>> Heiko Stuebner (8):
>>   phy: rockchip-usb: fix clock get-put mismatch
>>   phy: rockchip-usb: introduce a common data-struct for the device
>>   phy: rockchip-usb: move per-phy init into a separate function
>>   phy: rockchip-usb: add compatible values for rk3066a and rk3188
>>   phy: rockchip-usb: expose the phy-internal PLLs
>>   ARM: dts: rockchip: add clock-cells for usb phy nodes
>>   clk: rockchip: fix usbphy-related clocks
>>   phy: rockchip-usb: add handler for usb-uart functionality
>>
>>  .../devicetree/bindings/phy/rockchip-usb-phy.txt   |   6 +-
>>  Documentation/kernel-parameters.txt                |   6 +
>>  arch/arm/boot/dts/rk3066a.dtsi                     |   2 +
>>  arch/arm/boot/dts/rk3188.dtsi                      |   2 +
>>  arch/arm/boot/dts/rk3288-veyron.dtsi               |   2 +-
>>  arch/arm/boot/dts/rk3288.dtsi                      |   3 +
>>  drivers/clk/rockchip/clk-rk3188.c                  |  11 +-
>>  drivers/clk/rockchip/clk-rk3288.c                  |  16 +-
>>  drivers/phy/phy-rockchip-usb.c                     | 458
>> ++++++++++++++++++--- 9 files changed, 417 insertions(+), 89 deletions(-)
> =
