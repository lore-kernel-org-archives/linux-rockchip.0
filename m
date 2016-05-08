From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] ARM: dts: rk3288: add SPI flash node for veyron
Date: Sun, 08 May 2016 23:22:47 +0200
Message-ID: <2761761.rShBrpNQKd@phil>
References: <1462496564-76530-1-git-send-email-computersforpeace@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1462496564-76530-1-git-send-email-computersforpeace@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <computersforpeace@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 5. Mai 2016, 18:02:44 schrieb Brian Norris:
> This is a standard binding for describing SPI flash that can be
> identified by reading their JEDEC ID. Let's use it.
> 
> Tested on Veyron Jaq.
> 
> Signed-off-by: Brian Norris <computersforpeace@gmail.com>

I've adapted the subject to
	ARM: dts: rockchip: add SPI flash node for rk3288-veyron

and applied the patch to a temporary dts32-branch for 4.8


Thanks
Heiko
