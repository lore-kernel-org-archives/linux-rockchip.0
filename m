From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH netdev] net: stmmac: dwmac-rk: Don't fail if phy
 regulator is absent
Date: Fri, 30 Aug 2019 14:17:28 -0700 (PDT)
Message-ID: <20190830.141728.336807562506579224.davem@davemloft.net>
References: <20190829031724.20865-1-wens@kernel.org>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190829031724.20865-1-wens@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: wens@kernel.org
Cc: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com, heiko@sntech.de, wens@csie.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 29 Aug 2019 11:17:24 +0800

> From: Chen-Yu Tsai <wens@csie.org>
> 
> The devicetree binding lists the phy phy as optional. As such, the
> driver should not bail out if it can't find a regulator. Instead it
> should just skip the remaining regulator related code and continue
> on normally.
> 
> Skip the remainder of phy_power_on() if a regulator supply isn't
> available. This also gets rid of the bogus return code.
> 
> Fixes: 2e12f536635f ("net: stmmac: dwmac-rk: Use standard devicetree property for phy regulator")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Applied and queued up for -stable.

> On a separate note, maybe we should add this file to the Rockchip
> entry in MAINTAINERS?

Yes, probably.

Thanks.
