From: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 1/5] mfd: rk808: Always use poweroff when requested
Date: Wed, 26 Feb 2020 10:32:22 +0000
Message-ID: <20200226103222.GE3494@dell>
References: <cover.1578789410.git.robin.murphy@arm.com>
 <233bf172a5310658d703b11be6e637d6c4d46338.1578789410.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <233bf172a5310658d703b11be6e637d6c4d46338.1578789410.git.robin.murphy@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: linux-kernel@vger.kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, smoch@web.de
List-Id: linux-rockchip.vger.kernel.org

On Sun, 12 Jan 2020, Robin Murphy wrote:

> From: Soeren Moch <smoch@web.de>
> 
> With the device tree property "rockchip,system-power-controller" we
> explicitly request to use this PMIC to power off the system. So always
> register our poweroff function, even if some other handler (probably
> PSCI poweroff) was registered before.
> 
> This does tend to reveal a warning on shutdown due to the Rockchip I2C
> driver not implementing an atomic transfer method, however since the
> write to DEV_OFF takes effect immediately the I2C completion interrupt
> is moot anyway, and as the very last thing written to the console it is
> only visible to users going out of their way to capture serial output.
> 
> Signed-off-by: Soeren Moch <smoch@web.de>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> [ rm: note potential warning in commit message ]
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/mfd/rk808.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
