From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] phy-rockchip-pcie: remove deassert of phy_rst from exit callback
Date: Fri, 28 Oct 2016 10:31:00 +0200
Message-ID: <2348307.ygIaYT7LcH@phil>
References: <1476333733-9696-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1476333733-9696-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Jeffy Chen <jeffy.chen@rock-chips.com>, Wenrui Li <wenrui.li@rock-chips.com>, Brian Norris <briannorris@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 13. Oktober 2016, 12:42:13 CEST schrieb Shawn Lin:
> The deassert of phy_rst from exit callback is incorrect as when
> doing phy_exit, we expect the phy_rst is on asserted state which was
> done by power_off callback, but not deasserted state. Meanwhile when
> disabling clk_pciephy_ref, the assert/deassert signal can't actually
> take effect on the phy. So let's fix it anyway.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

looks ok to have that removed, as any future phy_init call will make sure it 
gets asserted anyway.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
