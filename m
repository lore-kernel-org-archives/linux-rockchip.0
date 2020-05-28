From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v6 13/16] driver: usb: drop legacy rockchip xhci driver
Date: Thu, 28 May 2020 16:29:51 +0200
Message-ID: <2039347.PpgexNvhO1@phil>
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
 <20200526033435.20235-1-frank.wang@rock-chips.com>
 <20200526033435.20235-4-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200526033435.20235-4-frank.wang@rock-chips.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Frank Wang <frank.wang@rock-chips.com>
Cc: marex@denx.de, bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com, sjg@chromium.org, kever.yang@rock-chips.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, marek.belisko@gmail.com, william.wu@rock-chips.com, jianing.ren@rock-chips.com, chenjh@rock-chips.com, wmc@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 26. Mai 2020, 05:34:32 CEST schrieb Frank Wang:
> We have changed to use dwc3 generic driver for usb3.0 host, so the
> legacy Rockchip's xHCI driver is not needed, and drop it.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

this needs to be adapted for
commit f7ae49fc4f36 ("common: Drop log.h from common header")
which added a
	#include <log.h>
to xhci-rockchip.c


Heiko
