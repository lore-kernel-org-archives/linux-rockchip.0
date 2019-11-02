From: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Split rk3399-roc-pc for with and
 without mezzanine board.
Date: Sat, 2 Nov 2019 16:51:02 +0100
Message-ID: <30fd5275-6219-3068-dc22-6ae147baef4e@fivetechno.de>
References: <075b3fa6-dab7-5fec-df68-b53f32bf061b@fivetechno.de>
 <CAMty3ZDSK4mJk0bkQ_e3m1=Ar+NnGZS7q8zFYJJHtZY3HeBkfw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAMty3ZDSK4mJk0bkQ_e3m1=Ar+NnGZS7q8zFYJJHtZY3HeBkfw@mail.gmail.com>
Content-Language: de-DE
Sender: linux-kernel-owner@vger.kernel.org
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-kernel <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Jagan,

Am 01.11.19 um 18:18 schrieb Jagan Teki:
> On Fri, Nov 1, 2019 at 10:24 PM Markus Reichl <m.reichl@fivetechno.de> wrote:
>>
>> For rk3399-roc-pc is a mezzanine board available that carries M.2 and
>> POE interfaces. Use it with a separate dts.
> 
> Thanks for the patch. Indeed have an impression to go this via overlay
> rather than a separate dts since it is HAT for base board, does it
> make sense? or is this the way it is handling in rockchip dts files?

Please see discussion here:
http://lists.infradead.org/pipermail/linux-rockchip/2019-November/027592.html

Btw. it looks like there is an upcoming roc-pc-plus board with sound and other 
peripherals on board. That could probably use the proposed rk3399-roc-pc.dtsi,
too. 


> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
