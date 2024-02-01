Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20AF1C4828D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 18:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+PrlUVfffFMgNJf+iHiGRqUoCHG3Sm69wofCoAz5zVY=; b=LB9kvvJzCQ5v8x
	dvMb69E99h1cI7y8nJVZEHHIlENEoKVqSQXmQT3YEQnJF18I+pm5hOJQ7xhMM71DvHN47jZC3btQE
	ayRx8oJV0pxpCdJQcn9GL3TonH4SiMPQ06yVFOoetln+S4v4hf9wnanR8R8Mop6e/N785YDfOHHJj
	3A3omQR3loTUWvBtlFieXBKAjdrkqko0cclumkoL0+RCsE0hfcunfzyyHYWnrsIjoilPSDrDYcWw4
	a61fVjZX4fd0VqikGxCSf5NZf/RN91XoUEipIBlsLfRc+LuHPZ7Yjjkbf7zYMpP1Z0F2jjQnAXTts
	2XN9bmoC3+1mUeE+Pxeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVbTI-00000008wMj-0R60;
	Thu, 01 Feb 2024 18:07:32 +0000
Received: from mail.someserver.de ([116.202.193.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVbTE-00000008wDA-0WtM;
	Thu, 01 Feb 2024 18:07:29 +0000
Received: from localhost (unknown [195.162.191.218])
	by mail.someserver.de (Postfix) with ESMTPSA id F41BCA2267;
	Thu,  1 Feb 2024 19:07:17 +0100 (CET)
From: Christina Quast <contact@christina-quast.de>
Date: Thu, 01 Feb 2024 19:07:00 +0100
Subject: [PATCH v2 3/3] net: phy: add Rust Rockchip PHY driver
MIME-Version: 1.0
Message-Id: <20240201-rockchip-rust-phy_depend-v2-3-c5fa4faab924@christina-quast.de>
References: <20240201-rockchip-rust-phy_depend-v2-0-c5fa4faab924@christina-quast.de>
In-Reply-To: <20240201-rockchip-rust-phy_depend-v2-0-c5fa4faab924@christina-quast.de>
To: Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
 Wedson Almeida Filho <wedsonaf@gmail.com>, 
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Benno Lossin <benno.lossin@proton.me>, 
 Andreas Hindborg <a.hindborg@samsung.com>, 
 Alice Ryhl <aliceryhl@google.com>, 
 FUJITA Tomonori <fujita.tomonori@gmail.com>, 
 Trevor Gross <tmgross@umich.edu>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Christina Quast <contact@christina-quast.de>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706810819; l=6330;
 i=contact@christina-quast.de; s=20240130; h=from:subject:message-id;
 bh=TIHsrpiXhvakc3QpotZKPzxEDzOuO24UX7NpNCsypps=;
 b=8X+Cl8CgP8FACgRIhTspxgnky8uPVFD6oK9+YPkEb03a9uYnKVWs2Fjil6lGl/w6frseON75r
 cp6NdHHykN+DubHZ8prPcfHHGD5OQHP108x7AX4hJtENdpJQ/MTXYUM
X-Developer-Key: i=contact@christina-quast.de; a=ed25519;
 pk=aoQfinjbnr265vCkIZdYteLDcmIqLBhY1m74WfFUU9E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_100728_582856_1484C637 
X-CRM114-Status: GOOD (  15.10  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is the Rust implementation of drivers/net/phy/rockchip.c. The
features are equivalent. You can choose C or Rust version kernel
configuration.

Signed-off-by: Christina Quast <contact@christina-quast.de>
---
 drivers/net/phy/Kconfig          |   8 +++
 drivers/net/phy/Makefile         |   4 ++
 drivers/net/phy/rockchip_rust.rs | 131 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 143 insertions(+)

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 9e2672800f0b..8b73edb7e836 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -362,6 +362,14 @@ config ROCKCHIP_PHY
 	help
 	  Currently supports the integrated Ethernet PHY.
 
+config ROCKCHIP_RUST_PHY
+	bool "Rust driver for Rockchip Ethernet PHYs"
+	depends on RUST_PHYLIB_ABSTRACTIONS && ROCKCHIP_PHY
+	help
+	  Uses the Rust reference driver for Rockchip PHYs (rockchip_rust.ko).
+	  The features are equivalent. It supports the integrated Ethernet PHY.
+
+
 config SMSC_PHY
 	tristate "SMSC PHYs"
 	select CRC16
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 6097afd44392..045d2913bf2e 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -94,7 +94,11 @@ obj-$(CONFIG_NXP_TJA11XX_PHY)	+= nxp-tja11xx.o
 obj-$(CONFIG_QSEMI_PHY)		+= qsemi.o
 obj-$(CONFIG_REALTEK_PHY)	+= realtek.o
 obj-$(CONFIG_RENESAS_PHY)	+= uPD60620.o
+ifdef CONFIG_ROCKCHIP_RUST_PHY
+obj-$(CONFIG_ROCKCHIP_PHY)	+= rockchip_rust.o
+else
 obj-$(CONFIG_ROCKCHIP_PHY)	+= rockchip.o
+endif
 obj-$(CONFIG_SMSC_PHY)		+= smsc.o
 obj-$(CONFIG_STE10XP)		+= ste10Xp.o
 obj-$(CONFIG_TERANETICS_PHY)	+= teranetics.o
diff --git a/drivers/net/phy/rockchip_rust.rs b/drivers/net/phy/rockchip_rust.rs
new file mode 100644
index 000000000000..17a1f94da8c1
--- /dev/null
+++ b/drivers/net/phy/rockchip_rust.rs
@@ -0,0 +1,131 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (C) 2024 Christina Quast <contact@christina-quast.de>
+
+//! Rust Rockchip PHY driver
+//!
+//! C version of this driver: [`drivers/net/phy/rockchip.c`](./rockchip.c)
+use kernel::{
+    c_str,
+    net::phy::{self, DeviceId, Driver},
+    prelude::*,
+    uapi,
+};
+
+kernel::module_phy_driver! {
+    drivers: [PhyRockchip],
+    device_table: [
+        DeviceId::new_with_driver::<PhyRockchip>(),
+    ],
+    name: "rust_asix_phy",
+    author: "FUJITA Tomonori <fujita.tomonori@gmail.com>",
+    description: "Rust Asix PHYs driver",
+    license: "GPL",
+}
+
+
+const MII_INTERNAL_CTRL_STATUS: u16 = 17;
+const SMI_ADDR_TSTCNTL: u16 = 20;
+const SMI_ADDR_TSTWRITE: u16 = 23;
+
+const MII_AUTO_MDIX_EN: u16 = bit(7);
+const MII_MDIX_EN: u16 = bit(6);
+
+const TSTCNTL_WR: u16 = bit(14) | bit(10);
+
+const TSTMODE_ENABLE: u16 = 0x400;
+const TSTMODE_DISABLE: u16 = 0x0;
+
+const WR_ADDR_A7CFG: u16 = 0x18;
+
+struct PhyRockchip;
+
+impl PhyRockchip {
+   /// Helper function for helper_integrated_phy_analog_init
+    fn helper_init_tstmode(dev: &mut phy::Device) -> Result {
+        // Enable access to Analog and DSP register banks
+        dev.write(SMI_ADDR_TSTCNTL, TSTMODE_ENABLE)?;
+        dev.write(SMI_ADDR_TSTCNTL, TSTMODE_DISABLE)?;
+        dev.write(SMI_ADDR_TSTCNTL, TSTMODE_ENABLE)
+    }
+
+    /// Helper function for helper_integrated_phy_analog_init
+    fn helper_close_tstmode(dev: &mut phy::Device) -> Result {
+        dev.write(SMI_ADDR_TSTCNTL, TSTMODE_DISABLE)
+    }
+
+    /// Helper function for rockchip_config_init
+    fn helper_integrated_phy_analog_init(dev: &mut phy::Device) -> Result {
+        Self::helper_init_tstmode(dev)?;
+        dev.write(SMI_ADDR_TSTWRITE, 0xB)?;
+        dev.write(SMI_ADDR_TSTCNTL, TSTCNTL_WR | WR_ADDR_A7CFG)?;
+        Self::helper_close_tstmode(dev)
+    }
+
+    /// Helper function for config_init
+    fn helper_config_init(dev: &mut phy::Device) -> Result {
+        let val = !MII_AUTO_MDIX_EN & dev.read(MII_INTERNAL_CTRL_STATUS)?;
+        dev.write(MII_INTERNAL_CTRL_STATUS, val)?;
+        Self::helper_integrated_phy_analog_init(dev)
+    }
+
+    fn helper_set_polarity(dev: &mut phy::Device, polarity: u8) -> Result {
+        let reg = !MII_AUTO_MDIX_EN & dev.read(MII_INTERNAL_CTRL_STATUS)?;
+        let val = match polarity as u32 {
+            // status: MDI; control: force MDI
+            uapi::ETH_TP_MDI => Some(reg & !MII_MDIX_EN),
+            // status: MDI-X; control: force MDI-X
+            uapi::ETH_TP_MDI_X => Some(reg | MII_MDIX_EN),
+            // uapi::ETH_TP_MDI_AUTO => control: auto-select
+            // uapi::ETH_TP_MDI_INVALID => status: unknown; control: unsupported
+            _ => None,
+        };
+        if let Some(v) = val {
+            if v != reg {
+                return dev.write(MII_INTERNAL_CTRL_STATUS, v);
+            }
+        }
+        Ok(())
+
+    }
+}
+
+#[vtable]
+impl Driver for PhyRockchip {
+    const FLAGS: u32 = 0;
+    const NAME: &'static CStr = c_str!("Rockchip integrated EPHY");
+    const PHY_DEVICE_ID: DeviceId = DeviceId::new_with_custom_mask(0x1234d400, 0xfffffff0);
+
+    fn link_change_notify(dev: &mut phy::Device) {
+    // If mode switch happens from 10BT to 100BT, all DSP/AFE
+    // registers are set to default values. So any AFE/DSP
+    // registers have to be re-initialized in this case.
+        if dev.state() == phy::DeviceState::Running && dev.speed() == uapi::SPEED_100 {
+            if let Err(e) = Self::helper_integrated_phy_analog_init(dev) {
+                pr_err!("rockchip: integrated_phy_analog_init err: {:?}", e);
+            }
+        }
+    }
+
+    fn soft_reset(dev: &mut phy::Device) -> Result {
+        dev.genphy_soft_reset()
+    }
+
+    fn config_init(dev: &mut phy::Device) -> Result {
+        PhyRockchip::helper_config_init(dev)
+    }
+
+    fn config_aneg(dev: &mut phy::Device) -> Result {
+        PhyRockchip::helper_set_polarity(dev, dev.mdix())?;
+        dev.genphy_config_aneg()
+    }
+
+    fn suspend(dev: &mut phy::Device) -> Result {
+        dev.genphy_suspend()
+    }
+
+    fn resume(dev: &mut phy::Device) -> Result {
+        let _ = dev.genphy_resume();
+
+        PhyRockchip::helper_config_init(dev)
+    }
+}

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
