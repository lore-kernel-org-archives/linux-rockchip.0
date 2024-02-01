Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A29EFC48286
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 18:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nyo/cKxwQB9sQX8dFD5yns9HV9fJUfx6Rh/BMZypgr4=; b=G4z+eegG4io0fD
	K6qONfVupibKQnHdeV/r7HRbaM7D9ozYm1tZ39R72FZk0B0ByLhd9XaLT/orKOjU0EDi+M/ykA+6A
	CC+drUCxAAEfah88YK4AN44JFPksF8u53NGH+AHjJQfbN60j/NulqawWs3JlJIrc0aVlMtKmteXee
	Zqku3L5uEvyyOLmBx37wgKwtJ+oWP3kNaIsISS2XJLS/kBdbzV91V2jz+g4r9uQNFgcOJRptofmSV
	s2XETNNFRBklqyESLBWU9dPfGPoTAIiKERel+Dimnm1btH85UkgZ3ZoyRRiNCTM8bVcrBBDzSgEzo
	AjmVGF0YsBjmKdlKyfFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVbTB-00000008wGq-00eA;
	Thu, 01 Feb 2024 18:07:25 +0000
Received: from mail.someserver.de ([2a01:4f8:241:f700:8fb:afff:fef5:f64e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVbT5-00000008wC7-3pEJ;
	Thu, 01 Feb 2024 18:07:21 +0000
Received: from localhost (unknown [195.162.191.218])
	by mail.someserver.de (Postfix) with ESMTPSA id 8B6DAA2250;
	Thu,  1 Feb 2024 19:07:15 +0100 (CET)
From: Christina Quast <contact@christina-quast.de>
Date: Thu, 01 Feb 2024 19:06:59 +0100
Subject: [PATCH v2 2/3] rust: phy: add some phy_driver and genphy_
 functions
MIME-Version: 1.0
Message-Id: <20240201-rockchip-rust-phy_depend-v2-2-c5fa4faab924@christina-quast.de>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706810819; l=2422;
 i=contact@christina-quast.de; s=20240130; h=from:subject:message-id;
 bh=lj9jzLLyVHFhew0Zi2auFkzyMGCjvKyZGt3bltSvs9k=;
 b=aBY8aB9sq9C6dAXsUFZ7GKm0DaKOL3Rg4HPRhXog0o3VGGiSAUmMpGA4nPU0r6SNJlN/kCQ8Q
 6lt+pqrQgCmB3oQRdIWJxLCdbPCslYHVrYtUjsrYQoPoH+xjpDn+Imd
X-Developer-Key: i=contact@christina-quast.de; a=ed25519;
 pk=aoQfinjbnr265vCkIZdYteLDcmIqLBhY1m74WfFUU9E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_100720_168129_5E20190D 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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

Those functions are need for the rockchip_rust.rs implementation.

Added functions:
genphy_config_aneg
config_init

Getter functions for mdix and speed.

Signed-off-by: Christina Quast <contact@christina-quast.de>
---
 rust/kernel/net/phy.rs | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/rust/kernel/net/phy.rs b/rust/kernel/net/phy.rs
index e457b3c7cb2f..373a4d358e9f 100644
--- a/rust/kernel/net/phy.rs
+++ b/rust/kernel/net/phy.rs
@@ -95,6 +95,22 @@ pub fn phy_id(&self) -> u32 {
         unsafe { (*phydev).phy_id }
     }
 
+    /// Gets the current crossover of the PHY.
+    pub fn mdix(&self) -> u8 {
+        let phydev = self.0.get();
+        // SAFETY: The struct invariant ensures that we may access
+        // this field without additional synchronization.
+        unsafe { (*phydev).mdix }
+    }
+
+    /// Gets the speed of the PHY.
+    pub fn speed(&mut self) -> u32 {
+        let phydev = self.0.get();
+        // SAFETY: The struct invariant ensures that we may access
+        // this field without additional synchronization.
+        unsafe { (*phydev).speed as u32 }
+    }
+
     /// Gets the state of PHY state machine states.
     pub fn state(&self) -> DeviceState {
         let phydev = self.0.get();
@@ -300,6 +316,15 @@ pub fn genphy_read_abilities(&mut self) -> Result {
         // So it's just an FFI call.
         to_result(unsafe { bindings::genphy_read_abilities(phydev) })
     }
+
+    /// Writes BMCR
+    pub fn genphy_config_aneg(&mut self) -> Result {
+        let phydev = self.0.get();
+        // SAFETY: `phydev` is pointing to a valid object by the type invariant of `Self`.
+        // So it's just an FFI call.
+        // second param = false => autoneg not requested
+        to_result(unsafe { bindings::__genphy_config_aneg(phydev, false) })
+    }
 }
 
 /// Defines certain other features this PHY supports (like interrupts).
@@ -583,6 +608,12 @@ fn soft_reset(_dev: &mut Device) -> Result {
         Err(code::ENOTSUPP)
     }
 
+    /// Called to initialize the PHY,
+    /// including after a reset
+    fn config_init(_dev: &mut Device) -> Result {
+        Err(code::ENOTSUPP)
+    }
+
     /// Probes the hardware to determine what abilities it has.
     fn get_features(_dev: &mut Device) -> Result {
         Err(code::ENOTSUPP)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
