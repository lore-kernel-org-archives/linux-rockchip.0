Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CD6606A324
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 21:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=K2ZatGhH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=kTibpMUs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=xz8cgoyDr7Rko9RHhWi3vWAy4ihHHWVcr5DbkhuYpaY=; b=K2ZatGhHcNls/8wNEh9by1Q3nP
	tadvaH2CA+mbLhptfqYB+lVemwLCABx0iN33P0RB4pc8id1S3dYC33crcnnDVJHcKvm/vOB6Vz2cD
	Dq9IkDxADBFpKLg5OEXvPxnP7SSsLmNoVsi3MOIi/SfggNvxsCxVJlWLeEetk4qLrNZFvc1zO/1UY
	VlQRHkJmLzdPzz7tPZyiEmG7NP7JcuytIoIFGYDYjuTxmzVC4yap5i+vX/wa2pgraloroe1PwPL5P
	PJLVTrewFJ+Hs3XRUtnBMbNrVY2RQJ4DsUtxKUt6QHyT0d922MCnQ809wa2M9b5RcKeY+4jB0p1p5
	gHJw1Lvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNzWw-00000000T9X-1FR8;
	Mon, 02 Nov 2026 21:25:26 +0000
Received: from mail-dl2-x08.google.com ([2607:f8b0:4864:38::8])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNzWp-00000000T7M-461x
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 21:25:22 +0000
Received: by mail-dl2-x08.google.com with SMTP id a92af1059eb24-1379d236149so1383812c88.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 13:25:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793654719; x=1794259519; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=h4Pf0yuMbG7VmbL6qh5TPaycUsxMKNE4IhWYVqEHmlg=;
        b=kTibpMUsV6/u5QBv1XHD4D85HemWR5g9QA4z8kswotmjLTss5PVhpwGK05PORDXJLp
         QsT+AZy3lTi2Yn+ClCbbZTz2A0O9OldP+SO7jIAJT0Mkco0ZyJVZOxD9bPXk4XtcpNeH
         gRMC6024YEjr3WZi4APYWhfvavaw4et6M/ueZejV2XKXK3WTZLNtjO1cnAEWFfqlDobk
         TdICgSS7V9Wk/O9U+Zo3OE45hUQ2hfP3ygsXSzSY/3rDnmMQQtiRxwRAZVVG7PKuukDS
         q8VM+kBQLA5pk9rmXZYf06PqoLQu6LB9AKl5IYzEbR49o4RZ/K8HS+F6ANcTguAsVlaw
         TQCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793654719; x=1794259519;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=h4Pf0yuMbG7VmbL6qh5TPaycUsxMKNE4IhWYVqEHmlg=;
        b=E/u7lC1BuZmJWkYNF5gW5ZYQsPmdMlPYIcOeP/DrIZu6pfIFdZEltlfBodfZq3AAFD
         18meECJflfkXL50+wn3C8ER6Zc0D7pY5dBAMdZh6f+eU9SM5Sxcn5qqvR7wZ3vHc4Bsz
         h+qBh57SvQ8ocdIMaZOPBNMtoPjXM95WiwQlUWSe2Ur1C50Mkyyq6v8bfvB0jJ9i4GkL
         sYOPDOuzoKnqNatGTEs5eGsYrPcE6GA/aScT6tK2iDR4rCaI68OhrYqBsOz7/VoQRAW+
         ZYTKMlEJoR4xumWcGOP53FqUj72nqd1Uy4aVoWf/2F+YKnhTVEQ4xz2lrGlVUIxlmm2y
         ei6Q==
X-Forwarded-Encrypted: i=1; AKwUvBzwl6k6czOp8gyWYtZRmJQ+TwowP+rV5VMxYFVIlM6W3n4HL5H3Xp8EQLMy6KblYUNIppJnqA8EHqa+nuxk+w==@lists.infradead.org
X-Gm-Message-State: AFq9FYLRNhEektrEfx2SCC88l5x9uwQTJDiwySEd2LOfVjkV7shhHDCI
	uPcsecloXaQ3kg4dfNw7uf1vgeNKT2JFkK49VUPuDQyn858TXkOpW4el
X-Gm-Gg: AYBFou1Cfdm/CjQWQ7YqknmMJge/gP5pbn9g4PJfY0j5OHeMY/OCxC2xmM2iCzP7JlN
	DQhg+1Mj2GhVNdMdaDEenzKQNBXk15gmadJyySB6QxpoDt/fDcM8om2Qqd8XjC3ooKbDVpqUL+W
	eKT9ukktHmAIIk6Ah6B3/XXi4sFnV8NpsUyoGztu1aDioGO2iPY3qmjPbhj6HZk87aNU24T2jxt
	xypdgwIFM7ImlAhKrUwxGeWoqxPNkfNaHxPFwF09ia18p78wKLersA7Ws+ObAqiDGPvIV1XpiUg
	QiOjDS4VoM6R9IzEHFj37wC2wHLv4Y1FSfRDJXS3lQQMBAbTS38YPbIS3cmxvSWUyWqzAWp1Iy7
	AgLjZZH38w/6CbPddp26LPlSop2vKdrfd7AoKQ+ggK8dcO9APC29ioWLVgq3S9xIwsLGWA++hwE
	j5bfpSLN3Es1RJcBc3SULwEbGstSi9caVQd/pEzNxe9YG5ltcv+/oJECpXkOeeH2VRrAAxd82rS
	8YpaO5PaOi0mDLXEeNkvUD2bmkSHprwxCtXC1yD+L/T/wobWHXXHf9M/TKUaGBVs9cJZz/QPstM
	daV4rrertUcEfi4GMdsXrVo27Os=
X-Received: by 2002:a05:7022:3f04:b0:19f:527d:96da with SMTP id a92af1059eb24-1ac5da7b145mr16079436c88.33.1793654718619;
        Mon, 02 Nov 2026 13:25:18 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a428fa380sm37195851eec.12.2026.11.02.13.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 13:25:17 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Jiawen Wu <jiawenwu@trustnetic.com>,
	Mengyuan Lou <mengyuanlou@net-swift.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Heiko Stuebner <heiko@sntech.de>,
	Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
	Fabio Baltieri <fabio.baltieri@gmail.com>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net v3 0/2] net: phy: fix PHY interface mask initialization and XPCS usage
Date: Tue,  3 Nov 2026 05:25:04 +0800
Message-ID: <20261102212506.3348537-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_132520_014915_2A72DA97 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Changes since v2:
- Patch 1 (new): move DECLARE_PHY_INTERFACE_MASK_ZERO to core and fix
  the array size calculation.
- Patch 2: advertise 1000BASE-X, SGMII and QSGMII instead of only SGMII.
  Intersect the platform mask with the core mask using
  phy_interface_and().
- Add Fixes tag for the XPCS patch.

===

This series fixes issues related to the handling of the PHY interface mask
(supported_interfaces) at the core level and in the XPCS driver.

Patch 1 fixes a hack in the txgbe driver. The local
DECLARE_PHY_INTERFACE_MASK_ZERO() macro incorrectly used
PHY_INTERFACE_MODE_MAX as the array length. Move it to
include/linux/phy.h and base it on DECLARE_PHY_INTERFACE_MASK() so the
bitmap is correctly sized while still being initialized to zero.

Patch 2 makes the XPCS supported_interfaces mask authoritative. The
generic compat table advertises modes that a specific integration may
not support. The Rockchip glue now builds a platform mask (1000BASE-X,
SGMII, QSGMII) and intersects it with the inherited core mask. In
addition, xpcs_find_compat() now checks supported_interfaces before
looking up the compat table, ensuring the core respects the narrowed
mask.

Note: checkpatch.pl reports "Macros with complex values should be
enclosed in parentheses" for the new macro in Patch 1. This is a known
false positive for declarative macros that expand to variable
declarations; wrapping it would break compilation.
---
Coia Prant (2):
  net: phy: move DECLARE_PHY_INTERFACE_MASK_ZERO to core
  net: pcs: xpcs: make supported_interfaces authoritative

 drivers/net/ethernet/wangxun/txgbe/txgbe_type.h |  3 ---
 drivers/net/pcs/pcs-xpcs-rk.c                   | 10 ++++++++++
 drivers/net/pcs/pcs-xpcs.c                      |  3 +++
 include/linux/phy.h                             |  3 +++
 4 files changed, 16 insertions(+), 3 deletions(-)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
