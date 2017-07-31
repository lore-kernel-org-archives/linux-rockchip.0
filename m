From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] ARM: rockchip: enable ZONE_DMA for non 64-bit capable peripherals
Date: Tue, 01 Aug 2017 00:58:36 +0200
Message-ID: <2708680.lC38ejFIoa@phil>
References: <1501224002-9966-1-git-send-email-huangtao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1501224002-9966-1-git-send-email-huangtao@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Tao Huang <huangtao@rock-chips.com>
Cc: Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 28. Juli 2017, 14:40:02 CEST schrieb Tao Huang:
> Most IP cores on ARM Rockchip platforms can only address 32 bits of
> physical memory for DMA. Thus ZONE_DMA should be enabled when LPAE
> is activated.
> 
> Signed-off-by: Tao Huang <huangtao@rock-chips.com>

applied for 4.14


Thanks
Heiko
