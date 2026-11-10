Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E01F60A2608
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 16:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=voShyqD7;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=GCYXmHp5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=+r4Vc+hIdub6KfF4t7/Fc1urhLnpfr2CuJKZ24aPrZk=; b=voShyqD7rVs0B7uCq1FhmKn7ab
	ytk9cQlnzEZbOhEUzljjhrFVIqhYziwQaZhnu/6WvcxhFwBomsMLASSctCGtaJZlA52orOF2PZtrS
	m4q6XePXFEV9UH4e3Vd5hqIJ2aHlMYjjoA7CSKuPQaMQJLM/NWWe/TMG6VASJLc8qXL4MTgnDhozr
	vORNeMyOjeA3PmOp2r1fU1yluKdLBz/qB0gUcnMDbMXie7D3Ar1vrwENI0EON/zfpeI6/5ys7Z6Ge
	F2HV9L63fE9vfu3jqlqfAxvRqSOPGQKoltFk9OTs3yC4ayZ/s1YQ3amT/J1KYZ02pdDNabwasY2YX
	iGX/VB9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQoMn-00000004Tme-19aW;
	Tue, 10 Nov 2026 16:06:37 +0000
Received: from mail-dy2-x0a.google.com ([2607:f8b0:4864:36::a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQoMj-00000004Tkv-33nw
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 16:06:35 +0000
Received: by mail-dy2-x0a.google.com with SMTP id 5a478bee46e88-36a6ce64b95so1483758eec.1
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 08:06:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794326793; x=1794931593; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Vrfc2uaAwCa6vgkw7mtiQRrVI6iR2fXJpjV3Toth268=;
        b=GCYXmHp5RQWf+TjBtzYEEm/I8iuDROxtpCdFGG/8T9nhVPmWc3hmTwuEbRz60tBWx/
         vr0Ml5I5ouSDNkTFDIkA8hqzWesp5AcDfLa6xSAKi/o66oUck+juLoxE97Jtg1aYMWYb
         L3/ApaOct7KOu0YLtF7N7EPFL5+kLTqmzpnNoyC/CYXppB4Kpv/5s8Jt3+RPLX6pq517
         08IwwkeHG54w/GrkqJRnggyhrP0Sdq3wU61d+K5y1Gf9es69lbuKGSsfq63lwrb1U72A
         5f60u9U3mBTi5iCi/AF9BHQ8llfDu2tG6UwIz17GdMQS6aEZbroaqqgJzSY0VHV2OuR7
         fBCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794326793; x=1794931593;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Vrfc2uaAwCa6vgkw7mtiQRrVI6iR2fXJpjV3Toth268=;
        b=b9b5pFcCAtV9B+o3jcsI/6VY8WcVHUECF7l9K/N7oY6KLptCzSje2ej4Cf+ORzvsYT
         QDK1eXjBFfsODe1m1jGmudzI29D0qdd1YyXInfxIJUBZdZTjTXHjnr8e6bhOLgKd2SPn
         6ZjdDnpMB6p24SKJjLVQmKrxpEZlPmQm3pluh2kv5ZhsxaKq5lZDUWtAC96Ku8O983n7
         4YwOgX5ojxVzjZn1Z/0gIFhBkL05/V3vWg5+KfjtJQHGrDPtIWtfUkxRabFmxmiEAKpw
         Mq6XlnHzkXEQ8JgO82FA2ifjxsaszlhFmM7MgnsIuiVUPpY3Vw7UnJ0G/NPK8SRlysIw
         TMUg==
X-Forwarded-Encrypted: i=1; AL+hErHvz61rHiwLid0YrrzKv77/ctdlgPYGHnwQPtii5I1kmGP0nOb1DzI3niMcP34IE1jMi6lSphppY56RcyeQtg==@lists.infradead.org
X-Gm-Message-State: APuU4Z8HvBOVCzGuOXgyxVdpA+3uQTlSJ0A1BEC1rvVgSpfuSy4kP6Km
	zCrqQllmdyW8xQ7jd9S1K0vyN1InFVozko0aNoHU2uWMreA9GN8d6WRt
X-Gm-Gg: AYBFou0noQWYsV2y9WzbE58UWsGkFbK5K80+qOF7YAxkJKAph5LKXlpUL8dbBG/DFvp
	ZzRNRnQR6H/iXGcBb9AbMkld1kuFV8unJ8gmatljLrrv6CKUSFn/cnalQcvp3Z64LLBZYO0EYCb
	7Evs9lSCu7Wad7VC7CLukG+90mEoF5WoO26hKpGmWrP/SSzIo8Ys8s8i+YdJb+XUDwOOA+lh4wR
	+K4TLKJzOpR/P2Ty8JLUdfeMBuT3F3nrSHyjokWeLOEUQy1ScBPDb6puvGjnh43WGf1pwvaB9JI
	TlruJgemZyP9qarkk2igIsQ/4vuGjoGuOEu5+V2HNaIbDr4Xhh+w58vYtxFkSqwXKsvx1NTj6wE
	E81ouvvfouKOQ7Ephb/fNStrwl8/Zsr6EDpE0i/iIYKf34RzhFEm7FnxTO7Gfp7z70ce3pK/ndU
	Nz+KDMnDZe047e6K4m5FlYF3du6SMOfCNZkR+dOLw576xSlK/QZaBvAjl5opQpAypVASRZluLFO
	KIzpCdYRzOlFlqrhD+blWADLxnUyxuQWfEyoxMeeQxd6dBYt/8HEfuMMb0rgNN3caPgrCUuLrwq
	0c8gAFrYkjLWZmEeMJV9RDUVrdc=
X-Received: by 2002:a05:7301:4d05:b0:369:535f:4d12 with SMTP id 5a478bee46e88-3751c53edf2mr3716461eec.3.1794326792549;
        Tue, 10 Nov 2026 08:06:32 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3751fe306e3sm8453403eec.7.2026.11.10.08.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 08:06:31 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Cc: Jiawen Wu <jiawenwu@trustnetic.com>,
	Mengyuan Lou <mengyuanlou@net-swift.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
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
Subject: [PATCH net-next v4 0/2] net: phy: fix PHY interface mask initialization and XPCS usage
Date: Wed, 11 Nov 2026 00:05:52 +0800
Message-ID: <20261110160554.918652-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_080633_767949_84DA1FD2 
X-CRM114-Status: GOOD (  13.51  )
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

This series fixes issues related to the handling of the PHY interface mask
(supported_interfaces) at the core level and in the XPCS driver.

Patch 1 fixes a local macro in the txgbe driver.
DECLARE_PHY_INTERFACE_MASK_ZERO() incorrectly uses PHY_INTERFACE_MODE_MAX
as the array length instead of BITS_TO_LONGS(), which wastes stack space.
Move it to include/linux/phy.h and base it on
DECLARE_PHY_INTERFACE_MASK() so the bitmap is correctly sized while
still being zero-initialized.

Patch 2 makes the XPCS supported_interfaces mask authoritative. The
generic compat table advertises modes that a specific integration may
not support. The Rockchip glue now builds a platform mask (1000BASE-X,
SGMII, QSGMII) and intersects it with the inherited core mask using
phy_interface_and(). In addition, xpcs_find_compat() now checks
supported_interfaces before looking up the compat table, ensuring the
core respects the narrowed mask.

Note: checkpatch.pl reports "Macros with complex values should be
enclosed in parentheses" for the new macro in Patch 1. This is a known
false positive for declarative macros that expand to variable
declarations; wrapping it would break compilation.

Changes since v3:
- Rebased onto net-next as suggested by Paolo.
- Patch 1: drop the Fixes tag, as this is a cleanup/optimization rather
  than a bug fix.
- Patch 2: move DECLARE_PHY_INTERFACE_MASK_ZERO() to the top of the
  function to comply with the reverse Christmas tree order.
- Patch 2: clarify in the commit message that QSGMII is currently a
  no-op because the core does not support it, demonstrating the
  intersection behavior.
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
