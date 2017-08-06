From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] ARM: rockchip: select ARCH_DMA_ADDR_T_64BIT for LPAE
Date: Sun, 06 Aug 2017 13:19:14 +0200
Message-ID: <1843978.TRc7q2v5pW@phil>
References: <1501581355-3538-1-git-send-email-huangtao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1501581355-3538-1-git-send-email-huangtao@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Tao Huang <huangtao@rock-chips.com>
Cc: Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 1. August 2017, 17:55:55 CEST schrieb Tao Huang:
> Rockchip RK3288 has some 64-bit capable DMA and therefore needs
> dma_addr_t to be a 64-bit size. One user is the Mali GPU.
> 
> Signed-off-by: Tao Huang <huangtao@rock-chips.com>

applied for 4.14


Thanks
Heiko
