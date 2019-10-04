From: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 4/4] mfd: rk808: use DEFINE_RES_IRQ for rk808 rtc alarm
 irq
Date: Fri, 4 Oct 2019 13:06:28 +0100
Message-ID: <20191004120628.GC18429@dell>
References: <20190917081256.24919-1-heiko@sntech.de>
 <20190917081256.24919-4-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190917081256.24919-4-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, d.schultz@phytec.de, linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com, tony.xie@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Tue, 17 Sep 2019, Heiko Stuebner wrote:

> Do not open code the definition, instead use the nice DEFINE_RES_IRQ
> macro for it.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  drivers/mfd/rk808.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
