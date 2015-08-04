From: Stephen Boyd <sboyd@codeaurora.org>
Subject: Re: [PATCH v3 1/2] clk: rockchip: add pclk_pd_pmu to the list of
 rk3288 critical clocks
Date: Tue, 04 Aug 2015 12:44:33 -0700
Message-ID: <55C11621.1000609@codeaurora.org>
References: <1438670487-27598-1-git-send-email-hl@rock-chips.com> <1588782.u2WKR6eVuV@diego> <55C113CF.2000601@codeaurora.org> <10063547.S7PvqCkF78@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <10063547.S7PvqCkF78@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?ISO-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>
Cc: Lin Huang <hl@rock-chips.com>, dianders@chromium.org, linux-rockchip@lists.infradead.org, mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 08/04/2015 12:40 PM, Heiko St=FCbner wrote:
> Am Dienstag, 4. August 2015, 12:34:39 schrieb Stephen Boyd:
>> On 08/04/2015 01:54 AM, Heiko St=FCbner wrote:
>>> Hi,
>>>
>>> Am Dienstag, 4. August 2015, 14:41:26 schrieb Lin Huang:
>>>
>>> I guess this patch then would need a
>>>
>>> From: Heiko Stuebner <heiko@sntech.de>
>>>
>>> at this point to override the author then.
>> Sounds right. Please resend the patch properly. Also, is there a 2/2=
? I
>> never got it.
> Patch 2/2 is a pinctrl change, that actually depends in this patch.
> Improved clock-handling in the pinctrl driver caused the pd_pmu clock=
 to get
> deactivated.
>
> So, perhaps it might be even better to get an Ack from the clock main=
tainer
> and merge both patches through the pinctrl tree?
>
>
> In which case Linus Walleij should also be included as recipient of t=
his patch
> when resending.

Ok that's fine. We can ack it and you can take it through pinctrl if ne=
eded.

--=20
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
