From: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 2/4] mfd: rk808: fix rk817 powerkey integration
Date: Fri, 4 Oct 2019 13:05:19 +0100
Message-ID: <20191004120519.GB18429@dell>
References: <20190917081256.24919-1-heiko@sntech.de>
 <20190917081256.24919-2-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190917081256.24919-2-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, d.schultz@phytec.de, linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com, tony.xie@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Tue, 17 Sep 2019, Heiko Stuebner wrote:

> The pwrkey integration seems to stem from the vendor kernel, as the
> compatible is wrong and also the order of key-irqs is swapped.
> 
> So fix these issues to make the pwrkey on rk817 actually work.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  drivers/mfd/rk808.c | 14 +++-----------
>  1 file changed, 3 insertions(+), 11 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
