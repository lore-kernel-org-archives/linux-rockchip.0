From: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: USB3 regression in RK3399
Date: Thu, 22 Feb 2018 10:10:14 +0100
Message-ID: <c8e1bd5a-19ff-9d1c-7e78-b7e605fd1e6b@collabora.com>
References: <CAAMcf8B5zpgbTsCu9t0rs9+jWkwRdO2C+KbF+NOt3ZTQx36aZA@mail.gmail.com>
 <14336855.DpIqxNeK64@phil>
 <CAAMcf8B5ffH-5Q3+PcjWwu5UeDk4ESZR0BNczaED+vnPLwge0w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAAMcf8B5ffH-5Q3+PcjWwu5UeDk4ESZR0BNczaED+vnPLwge0w-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: William wu <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Vincente,

On 22/02/18 00:04, Vicente Bergas wrote:
> On Wed, Feb 21, 2018 at 11:17 PM, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
>> Hi Vicente,
>>
>> Am Mittwoch, 21. Februar 2018, 22:58:35 CET schrieb Vicente Bergas:
>>> testing on the Sapphire board, which uses the RK3399 SoC, a regression
>>> has been found in v4.16-rc2 wrt v4.15.4 regarding the USB3 type-A port:
>>> In v4.15.4 it works in USB2-only mode.
>>> In v4.16-rc2 it does not work.
>>>
>>> It has been tested with a USB2 hub with 3 devices connected:
>>> a keyboard (USB1.1), a mouse (USB2) and a rtlwifi dongle (USB2).
>>>
>>> It has also been tested with a USB3-to-SATA converter. This one is not
>>> working in v4.15.4 nor in v4.16-rc2.
>>>
>>> I have also tried the 6-patch series from Enric Balletbo i Serra
>>> "[PATCH v3 3/6] phy: rockchip-typec: enable usb3 host during usb3 phy power on"
>>> with the same result.
>>>
>>> During boot, the following message appears a few times:
>>> "dwc3: failed to initialize core"
>>>
>>> The kernel configuration is:
>>> https://archlinuxarm.org/packages/aarch64/linux-aarch64-rc/files/config
>>>
>>> Is that a configuration issue, a bug in the kernel or something else?
>>> If it is a configuration issue, what should be changed?
>>> If it is a bug, can it be fixed?
>>
>> Hmm, I'd guess the main issue would be a missing typec-phy driver
>> in your kernel (see drivers/phy/rockchip/phy-rockchip-typec.c
>>
>> But even with this driver, I realize that we'll be missing the extcon
>> driver telling the driver about the cable state. ChromeOS devices
>> get the cable-state from the embedded controller via the extcon
>> interface and while other boards seem to use the fusb302 chip
>> for power-delivery, the driver currently does not seem to
>> utilize the extcon interface for something like this.
>>
>> Also, right now the rockchip typec-phy does fail probing when no
>> extcon is detected, but shouldn't it just fall back to working in host-
>> mode if it cannot get the extcon, or the device just routes everything
>> to a standard usb3 port?
>>
>> Heiko
> 
> Hi Heiko,
> by comparison the kernel configuration that works (partially,
> usb2-only) with v4.15.4 is
> https://archlinuxarm.org/packages/aarch64/linux-aarch64/files/config
> all the parameters CONFIG_*TYPEC*, CONFIG_*FUSB302*,
> CONFIG_*PHY*ROCKCHIP* and CONFIG_*EXTCON* are the same among the two.
> So, I suspect the difference should lay somewhere else.
> Has Type-C anything to do with Type-A?
> 
> Regards,
>   Vicente.
> 

I suspect that what Heiko says is right and typec-phy fails probing. Could you
copy your dmesg output somewhere?

Thanks,
  Enric
