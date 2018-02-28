From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] soc: rockchip: power-domain: remove PM clocks
Date: Wed, 28 Feb 2018 12:59:14 +0100
Message-ID: <4580848.piTrlVmp9H@diego>
References: <20180228111113.13639-1-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180228111113.13639-1-jeffy.chen@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jeffy Chen <jeffy.chen@rock-chips.com>, wxt@rock-chips.com
Cc: linux-kernel@vger.kernel.org, tfiga@chromium.org, dmitry.torokhov@gmail.com, robin.murphy@arm.com, Elaine Zhang <zhangqing@rock-chips.com>, linux-rockchip@lists.infradead.org, Geert Uytterhoeven <geert+renesas@glider.be>, linux-arm-kernel@lists.infradead.org, Ulf Hansson <ulf.hansson@linaro.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Jeffy,

Am Mittwoch, 28. Februar 2018, 12:11:13 CET schrieb Jeffy Chen:
> Currently we are adding all of the attached devices' clocks as pm clocks
> and enable them when powering on the power domain.
> 
> This seems unnecessary, because those clocks are already controlled in
> the devices' drivers with better error handling.
> 
> Tested on my chromebook minnie(rk3288) and chromebook kevin(rk3399).
> 
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>

Looks ok to me and does not seem to interfere with the synchronous
reset that still stays intact.

@Ceasar: any objections?


Heiko
