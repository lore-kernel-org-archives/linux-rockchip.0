Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C757C4828D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 18:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ke3KtG8Ji+JqGo5VHcnpOFWh61wPQxX6PoB5WDKY2Vw=; b=UkCQ26+ReR0vp6
	0K7/VhirVVB4WzwVvn5mJ6hy+4VC7E8plxDOdJXf8BoQKx+8RvXCjcWxHXilXiV8L7nzvANvBxWaM
	x0GtaJGooJmxm/uADUfsuhmWO0eI4UXBqDdvdZeinhSLAJvv5ZIMr1Hxzu2qt+V6kOpI1JKX3gJP+
	Ae4hfYHdqMSlVg+RLfgDlv3JKIXxmZB5xs+fqgSEmxkIIS5fAXvVaKuIqLL9GthfVOyp6RLXW5Oo/
	xMCqnHo1pDSAxBjkuXIN9v1dwMYul9ZylvGHQ7EdwZRn6avvcd0Obc65wa5hw7qhWhATodrA2/gFt
	/7UthmFEgUqXVRB6K4VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVbTC-00000008wHy-1K2O;
	Thu, 01 Feb 2024 18:07:26 +0000
Received: from mail.someserver.de ([2a01:4f8:241:f700:8fb:afff:fef5:f64e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVbT5-00000008wBt-40P1;
	Thu, 01 Feb 2024 18:07:21 +0000
Received: from localhost (unknown [195.162.191.218])
	by mail.someserver.de (Postfix) with ESMTPSA id 2965DA21AE;
	Thu,  1 Feb 2024 19:07:13 +0100 (CET)
From: Christina Quast <contact@christina-quast.de>
Date: Thu, 01 Feb 2024 19:06:58 +0100
Subject: [PATCH v2 1/3] DONOTMERGE: rust: prelude: add bit function
MIME-Version: 1.0
Message-Id: <20240201-rockchip-rust-phy_depend-v2-1-c5fa4faab924@christina-quast.de>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706810819; l=1166;
 i=contact@christina-quast.de; s=20240130; h=from:subject:message-id;
 bh=I9yo8gFF9g6Nktp5khK01f/99bXfCpCeui/xCrTFEX0=;
 b=PD/auZkWvS/a6RAELm9LZMt+cqhgGaqOca8QQUD5tdAWmf0dbh8OFZXYaJmqZgB58v2xzsXPY
 6aq5k52d6jBD1X+2SRUI45jUSSAeNaaKZovXt/2kXeZa7O2MuqHekKw
X-Developer-Key: i=contact@christina-quast.de; a=ed25519;
 pk=aoQfinjbnr265vCkIZdYteLDcmIqLBhY1m74WfFUU9E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_100720_215511_F6EC0263 
X-CRM114-Status: GOOD (  11.01  )
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

In order to create masks easily, the define BIT() is used in C code.
This commit adds the same functionality to the rust kernel.

Do not merge this commit, because rust/kernel/types.rs in Rust-for-Linux
already contains this functionality and will be merged into next-net
soon.
But this driver does not compile without this commit, so I am adding it
to the patchset to get more feedback on the actual driver.

Signed-off-by: Christina Quast <contact@christina-quast.de>
---
 rust/kernel/prelude.rs | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/rust/kernel/prelude.rs b/rust/kernel/prelude.rs
index ae21600970b3..16e483de2f27 100644
--- a/rust/kernel/prelude.rs
+++ b/rust/kernel/prelude.rs
@@ -38,3 +38,19 @@
 pub use super::init::{InPlaceInit, Init, PinInit};
 
 pub use super::current;
+
+/// Returns a `u32` number that has only the `n`th bit set.
+///
+/// # Arguments
+///
+/// * `n` - A `u32` that specifies the bit position (zero-based index)
+///
+/// # Example
+///
+/// ```
+/// let b = bit(2);
+/// assert_eq!(b, 4);
+#[inline]
+pub const fn bit(n: u32) -> u32 {
+    1 << n
+}

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
