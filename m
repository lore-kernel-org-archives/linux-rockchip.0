From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH 1/2] net: stmmac: change Kconfig menu entry to
 STMMAC/DWMAC
Date: Fri, 26 Jun 2020 13:21:01 -0700 (PDT)
Message-ID: <20200626.132101.413123758768311075.davem@davemloft.net>
References: <20200626120527.10562-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200626120527.10562-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: jbx6244@gmail.com
Cc: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com, kuba@kernel.org, mcoquelin.stm32@gmail.com, heiko@sntech.de, linux-rockchip@lists.infradead.org, netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Johan Jonker <jbx6244@gmail.com>
Date: Fri, 26 Jun 2020 14:05:26 +0200

> When a Rockchip user wants to enable support for
> the ethernet controller one has to search for
> something with STMicroelectronics.
> Change the Kconfig menu entry to STMMAC/DWMAC,
> so that it better reflects the options it enables.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

I'm not OK with this.  It's called internally stmmac
beause it's based upon an ST Microelectronics chipset.

This is what happens when we have several sub drivers
based upon a top-level common chipset "library".

The problem you have is that just knowing the driver
doesn't tell you the dependencies, but that's a larger
scope generic problem that needs a high level solution
rather then something we should be hacking around with
name adjustments here and there.
