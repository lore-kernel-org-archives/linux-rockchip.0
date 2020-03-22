From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH] net: stmmac: dwmac-rk: fix error path in rk_gmac_probe
Date: Sat, 21 Mar 2020 19:59:47 -0700 (PDT)
Message-ID: <20200321.195947.2027395800786640789.davem@davemloft.net>
References: <20200321143619.91533-1-kernel@esmil.dk>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200321143619.91533-1-kernel@esmil.dk>
Sender: linux-kernel-owner@vger.kernel.org
To: kernel@esmil.dk
Cc: netdev@vger.kernel.org, david.wu@rock-chips.com, peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Emil Renner Berthing <kernel@esmil.dk>
Date: Sat, 21 Mar 2020 15:36:19 +0100

> Make sure we clean up devicetree related configuration
> also when clock init fails.
> 
> Fixes: fecd4d7eef8b ("net: stmmac: dwmac-rk: Add integrated PHY support")
> Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>

Applied and queued up for -stable, thank you.
