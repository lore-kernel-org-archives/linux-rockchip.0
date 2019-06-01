From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [U-Boot] [PATCH v8 3/3] rockchip: rk3399: Add Rock PI 4 support
Date: Sat, 1 Jun 2019 10:41:22 +0800
Message-ID: <aebcc149-86b7-d30c-9f45-4c32d6c5c6d8@rock-chips.com>
References: <20190517102941.29145-1-jagan@amarulasolutions.com>
 <20190517102941.29145-3-jagan@amarulasolutions.com>
 <CAMty3ZBmwk-j3c4ST30CthhY4cvEfdeNA-0gbg3zfSeieNPP7g@mail.gmail.com>
 <06a24c7e-6617-4a10-8ad9-2e7f8041253c@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <06a24c7e-6617-4a10-8ad9-2e7f8041253c-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org



On 05/27/2019 02:39 PM, Kever Yang wrote:
> Hi Jagan,
>
>
> On 05/25/2019 02:28 AM, Jagan Teki wrote:
>> On Fri, May 17, 2019 at 4:00 PM Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org> wrote:
>>> Add initial support for Rock PI 4 board.
>>>
>>> Specification
>>> - Rockchip RK3399
>>> - LPDDR4
>>> - eMMC
>>> - SD card slot
>>> - RTL8211E 1Gbps
>>> - HDMI In/Out, DP, MIPI DSI/CSI
>>> - PCIe M.2
>>> - USB 2.0, USB-3.0
>>> - USB C Type
>>>
>>> Commit details of rk3399-rock-pi-4.dts sync from Linux 5.1-rc2:
>>> "arm64: dts: rockchip: add ROCK Pi 4 DTS support"
>>> (sha1: 1b5715c602fda7b812af0e190eddcce2812e5417)
>>>
>>> Signed-off-by: Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
>>> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
>>> ---
>>> Changes for v8:
>>> - Add TPL support
>>> - Now the bootchain is
>>>   rkbin (TPL) -> SPL -> U-Boot proper
>> Seems like Kever is busy or off (I ping him privately) and these
>> patches are supposed to merge during RC's. I'm planning merge in
>> tomorrow or day after, let me know if any concerns?
>>
> Sorry, I'm on business trip for the last whole week, and I'm back now.
>
> Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Applied to u-boot-rockchip/master, thanks!

>
> Thanks,
> - Kever
>
>
> _______________________________________________
> U-Boot mailing list
> U-Boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
> https://lists.denx.de/listinfo/u-boot
