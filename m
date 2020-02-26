From: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 2/5] mfd: rk808: Ensure suspend/resume hooks always
 work
Date: Wed, 26 Feb 2020 10:32:34 +0000
Message-ID: <20200226103234.GF3494@dell>
References: <cover.1578789410.git.robin.murphy@arm.com>
 <e2cd9aa88c96f69fd931d606e0e70784c3020551.1578789410.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <e2cd9aa88c96f69fd931d606e0e70784c3020551.1578789410.git.robin.murphy@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: linux-kernel@vger.kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, smoch@web.de
List-Id: linux-rockchip.vger.kernel.org

On Sun, 12 Jan 2020, Robin Murphy wrote:

> The RK809/RK817 suspend/resume hooks should not have to depend on
> whether this driver owns the pm_power_off hook, and thus the global
> rk808_i2c_client is set - indeed, the GPIO-based control is really
> only relevant when PSCI firmware is in charge of power rather than
> the kernel. As driver model callbacks, they have an appropriate
> device argument to hand, so can just always use that.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/mfd/rk808.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
