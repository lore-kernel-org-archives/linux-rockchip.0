From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v6 8/8] rockchip: make sure timer5 is enabled on rk3036 platforms
Date: Thu, 05 Nov 2015 00:35 +0100
Message-ID: <2496205.49bBo1tRVl@phil>
References: <1446639503-11763-1-git-send-email-zhengxing@rock-chips.com> <1446639957-12030-1-git-send-email-zhengxing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1446639957-12030-1-git-send-email-zhengxing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Xing Zheng <zhengxing@rock-chips.com>
Cc: linux@arm.linux.org.uk, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 4. November 2015, 20:25:57 schrieb Xing Zheng:
> The timer5 supplies the architected timer and thus as has to run when
> the system clocksource and clockevents drivers are registered.
> 
> ---
> 
> Changes in v6:
> Signed-off-by: Xing Zheng <zhengxing@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>


This patch can work standalone, so I took the liberty of applying it to my soc 
branch for 4.5 already, so you don't need to resend it in future versions.

I fixed up the subject "ARM: rockchip:...", and moved the Signed-off-by to the 
correct position above the "---".
