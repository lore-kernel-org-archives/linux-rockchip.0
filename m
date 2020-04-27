From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH 5/8] pci: Add Rockchip PCIe controller driver
Date: Mon, 27 Apr 2020 18:19:37 +0100
Message-ID: <9c00b50f-cf17-9c4e-4c75-b6e85668f9a2@arm.com>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
 <20200425110354.12381-6-jagan@amarulasolutions.com>
 <016196137a6060e1@bloch.sibelius.xs4all.nl>
 <CAMty3ZC+DiW2gGjN3rWcrwHPXZfxuGhjJN-1caUXW-Ry7VNR+A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAMty3ZC+DiW2gGjN3rWcrwHPXZfxuGhjJN-1caUXW-Ry7VNR+A-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Mark Kettenis <mark.kettenis-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Cc: Patrick Wildt <patrick-Er2xLVyhcs+zQB+pC5nmwQ@public.gmane.org>, U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Suniel Mahesh <sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2020-04-25 8:36 pm, Jagan Teki wrote:
> On Sun, Apr 26, 2020 at 12:23 AM Mark Kettenis <mark.kettenis-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org> wrote:
>>
>>> From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
>>> Date: Sat, 25 Apr 2020 16:33:51 +0530
>>>
>>> Add Rockchip PCIe controller driver for rk3399 platform.
>>>
>>> Driver support Gen1 by operating as a Root complex.
>>>
>>> Thanks to Patrick for initial work.
>>
>> Tried to get this to work on my firefly-rk3399 which made me notice
>> some shortcomings:
>>
>> 1. The vpcie1v8 and vpcie0v9 supplies are optional, just like the
>>     vpcie3v3 supply.

FWIW those are "non-optional" in Linux in the sense that supplies to the 
PCIE_AVDD_0V9 and PCIE_AVDD_1V8 pins of the SoC must physically exist, 
even if they aren't described. If U-Boot doesn't have the same "create a 
dummy regulator if none is specified" behaviour then you might need some 
slightly different logic there.

The 3.3V and 12V supplies on the other hand may legitimately not be part 
of the board at all, depending on whether it implements a full-size 
slot, a mini-PCI/M.2 socket, a hard-wired endpoint chip, or just the 
data and clock signal pairs exposed on some non-standard connector.

Robin.
