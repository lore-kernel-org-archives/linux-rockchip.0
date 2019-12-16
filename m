From: Lee Jones <lee.jones@linaro.org>
Subject: Re: [RFCv1 1/8] mfd: rk808: Refactor shutdown functions
Date: Mon, 16 Dec 2019 11:11:50 +0000
Message-ID: <20191216111150.GA2369@dell>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
 <20191206184536.2507-2-linux.amoon@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191206184536.2507-2-linux.amoon@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Anand Moon <linux.amoon@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Robin Murphy <robin.murphy@arm.com>, Daniel Schultz <d.schultz@phytec.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, 06 Dec 2019, Anand Moon wrote:

> From: Daniel Schultz <d.schultz@phytec.de>
> 
> Since all shutdown functions have almost the same code, all logic
> from the shutdown functions can be refactored to a new function
> "rk808_update_bits", which can update a register by a given address
> and bitmask and value.
> 
> link: https://lore.kernel.org/patchwork/patch/937404/
> Cc: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> [rebased on latest kernel]
> Modified the API to set the value.
> This changes were submited with below patch.
> [0] https://lore.kernel.org/patchwork/patch/937404/
> ---
>  drivers/mfd/rk808.c | 87 ++++++++++++++-------------------------------
>  1 file changed, 26 insertions(+), 61 deletions(-)

Not sure what's happening with these (competing?) patch-sets.  I'm not
planning on getting involved until you guys have arrived at and agreed
upon a single solution.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
