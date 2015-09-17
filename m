From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 1/3] clocksource: rockchip: Make the driver more readability and compatible
Date: Thu, 17 Sep 2015 11:43:44 +0200
Message-ID: <1595765.iIuZsGWCYG@diego>
References: <1442476272-31723-1-git-send-email-wxt@rock-chips.com> <55FA83D5.9010504@linaro.org> <55FA87AA.4040807@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <55FA87AA.4040807@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <caesar.upstream@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, Caesar Wang <wxt@rock-chips.com>, linux-rockchip@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am Donnerstag, 17. September 2015, 17:28:10 schrieb Caesar Wang:
> >> The problem was different semantics of dsb on btw arm32 and arm64,
> >> Here we can convert the dsb with insteading of dsb(sy).
> > 
> > What happens to ARM32 then ?
> 
> The dsb() is ok for ARM32, the ARM32/64 are OK if we can convert the
> dsb() to dsb(sy).
> I believe all drivers with 'dsb()' have same issue on ARM64 platform.

correct ... I read this up in the ARM docs 2 days ago too for something.

The "sy" param is the default, which you are allow to omit, so on arm32 dsb() 
and dsb(sy) are the same.


Heiko
