Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3716CC6B2A
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 05:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVhjbp1p7Qn/NHkceIDUGL9CSCa+8kIaYhH1oJHDX6U=; b=RMxBMnmDyj5sBL
	9+H9PmLwUCKxYhrcPOxtSN3fB1lZ53wzu2SvBetrXWlRxP13il7tSHNVTInvQQCjB/V2I5ItwWkCv
	IJWre1ZHw1vwPsXIvS8dHi1RazukN/ui74fJO/qzdrNdMiR4rhlbG/FLzmdRdhxV2Dh3/O8gLXRR8
	vqwx8Zn9AEuA9Vr6QOGWC1StV3D3QEdCenL1z5FiVy7nzV8FAqKoy3xEVu4d59PZi05HbjTLwnHF9
	Nv/sYbx1B8a+XsxZJ8E+JDJ0B/sG/no1nr426NVrDSUr1+siMQiN3C2Jh6/nKgPnidF1+YCpP1rp7
	zlJkD1ksZkLytoxmkx1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHxEa-00000004SkP-0wvs;
	Sat, 17 Oct 2026 05:45:32 +0000
Received: from mail-pz2-x08.google.com ([2607:f8b0:4864:3b::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHxEU-00000004SfQ-2PcC
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Oct 2026 05:45:29 +0000
Received: by mail-pz2-x08.google.com with SMTP id 41be03b00d2f7-cd613507bd1so78699a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 22:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792215926; x=1792820726; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yY8SyQWcSYsDi8cm3rA+aW2F8vWLi9p/feyMtYn7Pcg=;
        b=TnRThJLock6haLdL3438mMNoYTrmJL19npbCLIELR62YGN8IX+pFa47ZcwMS5gISsN
         ovkS1vPpZ9ofOdqnODEGN1yvqy0supuLwIWC7T3iPzqFIf/aV8rH66RsUK+e9Q/foqB8
         JiU35bMNcf7pXZomd5puH2YKTsT/WXzfQTJGLJ7Fmq82UUM5dBP6JLrYgsW5nX9dbEk2
         srF0UvK+lad633bWi9M5o/0CPVDuItDPrgfe+qIdX84aWYwt6xaePrhutVSRf1upPXqc
         OhIzRnrtZJsFa/JEjFzRxh8TqJe9kJozZhL6t6KX4p/6E4RIVrSTlIGlr0fLMjAiDOK2
         PAhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792215926; x=1792820726;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=yY8SyQWcSYsDi8cm3rA+aW2F8vWLi9p/feyMtYn7Pcg=;
        b=WNLjrSGaGL4FKZlvChx7hNEjg6wz2s62PnBe8lbXrzDKlfTqW2jdyE9DRlEQbCQ87j
         Sgjo1ul7sJyiwRY4ij3KEbpgwxx1iHRoGqy0VX/4GDoDgDt/bw0OlGw5nxft1pUUH0JR
         bo6LtRKkBSzcSox+HbBzLJpXQ2rCNdXeMwaYGTsrqek/S8NfTcAvAlyYW6F1OvexOHZj
         ulR92axkfo9hq8XioLb6rJA8D7/0UCJYVyPNWr/XW4FBScFj23K0zP1dn3NOEa3T/7pd
         4PVdFZFimAaTGahxnk43aQKQqYFrZ/KhIWZKw0ga8v5tl3/DEOKwEECTmdhG2Si9FQzz
         yEsA==
X-Forwarded-Encrypted: i=1; AKwUvByuHuF6WRClhYebfd74H+3wA7w8PdNZem1DJbGYOuxwZAieZDdF2DAVSdua8WZuHLbT7GK7S0DNyoC6eOl44A==@lists.infradead.org
X-Gm-Message-State: AFq9FYIfB48xQFq2akOse6sruvPqN9kj0CTAF/tI6A2QrgjHWJb+cOn1
	1zNqk3w/Yq7Eaan1KQUUuhJknsqgc1kJVW4k/u32a0ar77qe+bO49nUc
X-Gm-Gg: AYBFou009oHQ3+UTXcWIfPDkSYOxVzs3V5hHAN9OuckNYR/gk8bmJyLQQ0wl68lJ2c2
	OCiTVq6NsACLl60rDIC7v834Sig71g4Ao9d/ij+Gi5SQMS2SAmc1xb9hzsubmWmRGJ6PyEm+1R2
	Z3xdu43HqI7VrL6MLpZ593dgqY/28IeAEWBlxD3HkGo8LAjP3qQGFzCzvuF4s5WXqsaC2y9Yq1q
	02YR5JWXNfSb3+Sla2yR2h9V5GUt6NIQ8nEevMIveatQ4orVZqNdDPW+Lphjd0JIaA+XRVKcSgD
	ieS90BfPYKdUXPNfOSmDfBjMxyJvBB7n6pzkI42DtbVA4XEUKoJzHzwRo3hXZ2Ek1gODGpKOJeW
	fQHr4AFJfMYSPQfAcpkPGU8ka64vBuV/MH0RaHA8LoKQIml6phWcGKdolQI5Q8q1XVIu+fGf8Ot
	EZ2eOVnteWwplKWpmPGDoPbetJ8ncBCHu0DnBPiLDsZrL4bCYvLvG6fIYyXJjycs6Ga3IN
X-Received: by 2002:a05:6a00:4146:b0:87d:430:1437 with SMTP id d2e1a72fcca58-8a04be6035cmr1481735b3a.38.1792215925893;
        Fri, 16 Oct 2026 22:45:25 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89f57269315sm1958225b3a.23.2026.10.16.22.45.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 22:45:25 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	David Wu <david.wu@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net-next v12 6/6] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Sat, 17 Oct 2026 13:44:04 +0800
Message-ID: <20261017054406.1828061-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261017054406.1828061-1-coiaprant@gmail.com>
References: <20261017054406.1828061-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_224527_304250_6F176A61 
X-CRM114-Status: UNSURE (   9.80  )
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

Add a MAINTAINERS entry for the Rockchip RK3568 XPCS platform driver
and its device tree binding.

Include the relevant mailing lists (netdev and linux-rockchip) so that
future patches are properly distributed.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 65e8a4b5c90b1..2f0f46eabcf54 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23757,6 +23757,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/rockchip,rk3576-sai.yaml
 F:	sound/soc/rockchip/rockchip_sai.*
 
+ROCKCHIP XPCS DRIVER
+M:	Coia Prant <coiaprant@gmail.com>
+L:	netdev@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
+F:	drivers/net/pcs/pcs-xpcs-rk.c
+F:	include/linux/pcs/pcs-xpcs-rk.h
+
 ROCKER DRIVER
 M:	Jiri Pirko <jiri@resnulli.us>
 L:	netdev@vger.kernel.org
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
