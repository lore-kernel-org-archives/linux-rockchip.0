Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6688FC4828D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 18:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JIijd7p2StLI2wKs0wx4W1utkGq8ettbxDaWM9uchfw=; b=cJRDoesJmdAsUx
	rdsZKFwJzsn9PRGuaMterm7IR+sodLCCzU5hoAfB+0r3KFaYsyo0ovp/HIhNFlRon0fNmslE0Fmoc
	pf+LALhZjVQM13Hd5pZAHDwsCLO2H8HIPQaZ+ZtX1RfGDPQ3k8alUJqntEFwbBu9k2JS62R4xQvoy
	SujnrZBFYRzFEyeP6j42Zgi0qecGkXcTu725OfLZIGkVr/qz8IR0vYJ7mWO/cudUjpbYarnWqf5JZ
	32pMBasBh78E6APjq67Sr9zzpCeBBOvHd4cTMgT2yzIN/Fegs/xtMpBJv2mj7mP8paRd7vWA/BDBn
	B80f5EJXsAhWA/0XPIyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVbT8-00000008wFa-46ff;
	Thu, 01 Feb 2024 18:07:22 +0000
Received: from mail.someserver.de ([2a01:4f8:241:f700:8fb:afff:fef5:f64e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVbT5-00000008wBU-3nsD;
	Thu, 01 Feb 2024 18:07:21 +0000
Received: from localhost (unknown [195.162.191.218])
	by mail.someserver.de (Postfix) with ESMTPSA id 80FA2A211E;
	Thu,  1 Feb 2024 19:07:10 +0100 (CET)
From: Christina Quast <contact@christina-quast.de>
Subject: [PATCH v2 0/3] Add Rust Rockchip PHY driver
Date: Thu, 01 Feb 2024 19:06:57 +0100
Message-Id: <20240201-rockchip-rust-phy_depend-v2-0-c5fa4faab924@christina-quast.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMHdu2UC/0XMQQ7CIBCF4asY1o4BWtvqynsYYyhMZWKkONBG0
 /TuEl34dt/i/YtIyIRJHDeLYJwp0RgK9HYjrDfhhkCuWGipa6mlAh7t3XqKwFPKEP376jBicNB
 0yvV1K9syUe6RcaDXN32+FA88PiB7RvMPqkr+Oj1lmBUoQKfRNVV3MPvuZD1TyhQMPCeT8s6hW
 NcPdt7myrMAAAA=
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706810819; l=1206;
 i=contact@christina-quast.de; s=20240130; h=from:subject:message-id;
 bh=jWA5iTRD69ucDNwkpZwR5jCH+P2otKImG+J2kWpMQs8=;
 b=x2+WW6v6zLMM6XjRuSZYbZ89dx3Cl5LmXdahaHthccc/4Gh8+ZzNrEDkpGaplAm9LUlUMptAJ
 DRo0OfTS6bQB4JaHE1iLovyZ7EjwiZi42bBiADhExh0vY5oYleM7WbV
X-Developer-Key: i=contact@christina-quast.de; a=ed25519;
 pk=aoQfinjbnr265vCkIZdYteLDcmIqLBhY1m74WfFUU9E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_100720_154432_8BD6EF69 
X-CRM114-Status: UNSURE (   9.48  )
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

Based on the example shown in drivers/net/phy/ax88796b_rust.rs, I ported
the rockchip phy driver to Rust. The code in drivers/net/phy/rockchip.c
was basically rewritten in Rust.  The patchset includes changes to
phy.rs, adding more struct driver functions for the abstraction with
Rust.

The driver was not tested on real hardware, because I do not have a
board with this phy, and I would appreciate it if somebody could try
out the driver on their board.

Signed-off-by: Christina Quast <contact@christina-quast.de>
---
Christina Quast (3):
      DONOTMERGE: rust: prelude: add bit function
      rust: phy: add some phy_driver and genphy_ functions
      net: phy: add Rust Rockchip PHY driver

 drivers/net/phy/Kconfig          |   8 +++
 drivers/net/phy/Makefile         |   4 ++
 drivers/net/phy/rockchip_rust.rs | 131 +++++++++++++++++++++++++++++++++++++++
 rust/kernel/net/phy.rs           |  31 +++++++++
 rust/kernel/prelude.rs           |  16 +++++
 5 files changed, 190 insertions(+)
---
base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
change-id: 20240201-rockchip-rust-phy_depend-681db4707777

Best regards,
-- 
Christina Quast <contact@christina-quast.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
