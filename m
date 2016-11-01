From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 0/2] soc: rockchip: fix probe error path in power-domain driver
Date: Tue, 01 Nov 2016 23:50:48 +0100
Message-ID: <3287084.B8mS2I86W8@phil>
References: <1473977679-18649-1-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1473977679-18649-1-git-send-email-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, tomeu.vizoso@collabora.com, wxt@rock-chips.com, rjw@rjwysocki.net
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 16. September 2016, 00:14:37 CET schrieb Heiko Stuebner:
> A recent change to generic power-domains revealed that the rockchip
> driver cannot safely fail it's probe. Also pm_genpd_init creates a
> situation where a probe error leads to the generic power-domains
> accessing already freed data.
> 
> The reason for us finding this issue (holes in power-domain lists), will
> get fixed in the generic power-domains, but the fixes below will only
> work after the newly added genpd-removal code got merged.
> 
> 
> Therefore I hope to remember to send the two patches below as fix after
> 4.9-rc1.
> 
> Alternatively Rafael could include them into his branch directly.

I've applied now both in a fixes branch for 4.9 and plan on sending it through 
arm-soc later this week.
