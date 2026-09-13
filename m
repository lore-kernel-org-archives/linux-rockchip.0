Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FF86C88E5C
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Sep 2026 19:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7o1yp2dUCreH7lsTsDgp1QAE4d/6KAQyv9PG6uQGFE=; b=tL2MY2gCKCCD4P
	22q3x1U4Ozc5Ag0YL5qrKRtMxMFCdM13SEYi6PkqalaHxx4GSG4B0erm24ywcBle+8p4slkoF5YWN
	KVdDn9JC7QEP+9R6SE6K4DdOykaVi61++7RXBZ7LuA5VPa2nbogLlarTSMPoaC9dgCR7V618R+iKq
	8R2tJkBcN5tZQwjB84W26trIHRKLOkjR/CANWf68bLg/OKS2OqipRcZdphPTabvz/6T5mDA/9k2uE
	99qTqheXhGek7Mvo5JMNHqg2BCreuhkn/U/6Kud86EBwBJMjc6A3chMdurJr84pcUQDAISpv/p0p2
	pg2B0Vz+OwCEFHP+FwiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pSC-00000001yD3-3edR;
	Sun, 13 Sep 2026 19:01:28 +0000
Received: from mail-pj2-x05.google.com ([2607:f8b0:4864:39::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pS5-00000001y7H-1183
	for linux-rockchip@lists.infradead.org;
	Sun, 13 Sep 2026 19:01:28 +0000
Received: by mail-pj2-x05.google.com with SMTP id d9443c01a7336-2d942de6574so15902235ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 13 Sep 2026 12:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789326080; x=1789930880; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zQ2IdKH/7qjrKGR31C/pLtiJWP+p6fNr1pFwJZ+2Nhc=;
        b=ZTAOGCvNt9/iGz6m8gJBjNQkV2YcAgOJzw0lBbbm01fTlwVC2chNBjcHYwFzW+7CwX
         t3YgiOMf/a2D+o9ycdlfuQEMi5e9N08st6ycqr4xB+56qOikgbR96qCw+sN6YegJrUau
         tdLdpuCPy5uSJybO3398bnxmQyuSNpe8O+8rWghgpeDsP39DceVkyZMV2KiIvhl4S8Ez
         dpQBthclrXOUN5+zYqQ0WvYU6g3rA1SoXwsk71+LK6Xjf0h7gDyqNXd0NjGUV8C9npKE
         KrTrGXGcY/PiwnNmXuGliVR6shJJju4yV74f6jKowjtuNTQOLtXCyvMHTjfPMxyB9y+u
         SszA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789326080; x=1789930880;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=zQ2IdKH/7qjrKGR31C/pLtiJWP+p6fNr1pFwJZ+2Nhc=;
        b=EFEqLtVfo2h1hCSNNZkG7fkNjN/68YiiIK/cdXppNvnCaJ0GFjZqbos2NvOuhlqTl2
         gW0Nvpie0ksDsWf3jDRDOzK0Af6AZpckne4GnwxHoPkK9t8QhL/TdRxqAS2vcrnW4mQ/
         /9NsHDw+XF+Pylp2s9bXiV4sJUSXgEfzhnFOUR+STVLGgjDlj+EK0G7MuP8G/FiCNvb4
         Mkh4ii+7c45gN8APH5qfA9g66W7qI+8WlriHn379Ei7+duMRc0n8t65/Q+APvxpWEZbq
         FT5/L5AFdWK1QIBIC7cZXP+ThRX9CC76gik/r6uQ//4jIDTq0lH56tvYR7L496ZbwCSE
         OcTQ==
X-Forwarded-Encrypted: i=1; AKwUvBxiAY3XBon6eGYWFIlLcrA5Mw5/aMEeKk2nVNl9UNM5rliUMyBGKyH8QeBRJ7h0tW/zeS8il2Xxsskr+FgBDA==@lists.infradead.org
X-Gm-Message-State: AFuF++mro6WR0+ZBio55bt8DFQ1BLM+MTCTRCMjQ8B3Gh+LKJWGb3ofk
	tC/2XhZkgTq77euzubOsIxIPWUaDOx9iIwQ7f3UsHxaebhU4+DXvv++G
X-Gm-Gg: AYBFou1hpMBwtNRJnOYqmEr5NcQCIk1hxrUho545EQsSybYF12wSQd1Yz+fUxUvRWzV
	hABdObYjhsNjyEMXrVFgeZfcB/dJ5/dGryS7ZoobCWEaDp3meUPdSxu8jf2F96LevJtqLUdiEcU
	ubQ2PQt62A7yMg+TnQ0GH47WcWwseCyYy4ycU8NAIV+luKY68hW4ZzJWItjfAc1Cd2bUudFIItm
	vNh0DU6/xoMsnBIRcfMQ9oN5OQW5Pm/HffQ1XsNyEnoZG8NReM4XtepGMZCdW37lxKsgzwuJDLs
	eqdxlNndvnb3TCSG/ZlKvx3viXh6C3H6wnM7Z0orIdcBcIlGLksfBwBikMxDdF7HT/MuqV8+4/U
	VH92m9hjfRptpaMjVuFGAPBDq9JvHwDbNzO3fpFy6c0cVCv/V4bxwaCGHiwtTHjfsIXvNoa0Xsq
	XqQYlpJfW0+nnL8tLi6oud0wcVjZNWjnY+d2lEU9lJ/txHjSWt9gO3x2hOnFWAXM1yxIS/lw==
X-Received: by 2002:a17:903:1a2e:b0:2d8:d4cc:be63 with SMTP id d9443c01a7336-2dd2a35aa1cmr275548375ad.16.1789326080540;
        Sun, 13 Sep 2026 12:01:20 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd2cca6b7bsm36808655ad.3.2026.09.13.12.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 12:01:19 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v5 11/11] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Mon, 14 Sep 2026 02:58:46 +0800
Message-ID: <20260913185849.907479-12-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260913185849.907479-1-coiaprant@gmail.com>
References: <20260913185849.907479-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_120123_352076_EB0BBAD5 
X-CRM114-Status: GOOD (  10.46  )
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
index c2414447892c2..960a53afa8357 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23739,6 +23739,15 @@ S:	Maintained
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
