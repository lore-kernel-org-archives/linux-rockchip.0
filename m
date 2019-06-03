From: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v8 0/5] support a new rk80x pmic-variants (rk817 and
 rk809)
Date: Mon, 3 Jun 2019 08:24:00 +0100
Message-ID: <20190603072400.GD4797@dell>
References: <20190508143713.27954-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190508143713.27954-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: broonie@kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, tony.xie@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Wed, 08 May 2019, Heiko Stuebner wrote:

> I've picked up and rebased Tony's patch-series for rk809 and rk817.
> From the last iteration it looks like the regulator-portion did
> fall through the cracks, the other patches seem to be sufficiently
> reviewed/acked.
> 
> The regulator-patch could either just be picked alone to the regulator-
> tree or with an Ack go through the mfd tree with the other patches.
> 
> 
> Original cover-letter + changelog follows:
> 
> Most of functions and registers of the rk817 and rk808 are the same,
> so they can share allmost all codes.
> 
> Their specifications are as follows:
>   1) The RK809 and RK809 consist of 5 DCDCs, 9 LDOs and have the same
> registers
>      for these components except dcdc5.
>   2) The dcdc5 is a boost dcdc for RK817 and is a buck for RK809.
>   3) The RK817 has one switch but The Rk809 has two.

Looks like this set is still lacking a Regulator Ack.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
