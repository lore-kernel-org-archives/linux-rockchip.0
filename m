From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [DO NOT MERGE] [PATCH v4 8/8] roc-rk3399-pc: Enable bootcount
Date: Thu,  9 Jan 2020 14:22:22 +0530
Message-ID: <20200109085222.22670-9-jagan@amarulasolutions.com>
References: <20200109085222.22670-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200109085222.22670-1-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Enable bootcount suport for ROC-RK3399-PC board.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/roc-pc-rk3399_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index b30ca55107..e4b26b037b 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -55,3 +55,4 @@ CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
 CONFIG_WDT=y
+CONFIG_BOOTCOUNT_LIMIT=y
-- 
2.18.0.321.gffc6fa0e3
