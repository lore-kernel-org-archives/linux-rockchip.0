Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E91BBC624D3
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 15:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lueJppVxy52ZEFEQ+3ID+cWS4uCV1Jkr1/oFm+5M5dw=; b=kEzCBCcNjWpttz
	lX99mL3BD8ojOK7Wj/4DSBxmKHwJNBcsTGmhERKneUUbXu/j6lk2hpy+Uaf1+MHFMLqu7PHKkW9fy
	bSYBRWTT4Ih92juwerrVlaqGYlq+h8VpIOggVqqW45TPPZj4kL//2wA9QE2whXLEdRamslO5hP1mS
	uYAQ3r2hsT+TuzIq+mxLn+JNxlmQOMVUCkWPt4OQGYaL1Be6ql7Z7u/2jcFvEynKeVqjbUyCF/yds
	mDcRabY2v59gYtb0Eao7oOMJLNiECcVt+Zjeg0QFD0DbpdTkia9DXslIo73+H0EJMoxLKOOcp0uH6
	Dutq4j39lrELha9D93/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0E-0000000CPJw-3W8y;
	Tue, 01 Sep 2026 15:02:22 +0000
Received: from mail-pz2-x09.google.com ([2607:f8b0:4864:3b::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0A-0000000CPGo-0trL
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Sep 2026 15:02:20 +0000
Received: by mail-pz2-x09.google.com with SMTP id 41be03b00d2f7-cc1ddb3ba3eso3186182a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2026 08:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788274937; x=1788879737; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=V+/dGm9L6Lz0MjNHzEsD34z/nhQxwSU4Fs5hQpZABZywyDkBU2f7UyF8ZO0S6PuwNQ
         4w7TpqyTbJKR6WxCpIm6zcxDmpbVG9UGrqOelR9wngDnksTT20WhnXLvqEiFpUM9p5i1
         u1q56kYTqXge1OreG/3/aV3hs26LekrMr9b35YAnv3eXoxbRIC0uSthkzD9WvTNBOuv7
         1IEfQTqDGmaJSxOGr8W+PxhGRULflK/GZ3nGeukuJg6XKWpE/Ezrga0b8k8wiYoMKfkf
         kIC273eJyke55+pm2RR4cDiYiankw6Drfj/2ZMBEulV8PzhGm1dvqfzGKdL4VM8xY945
         Dn2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788274937; x=1788879737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=bfuOrez/BZVB031Va/ysX1DRVm+C1xWivtbqyda/LitVqmUtafAWFGp8mcB9py6ict
         4qCfzmOycrmsuTv2lfXnK/Bm4f+/3PPziBYvEqIjGhFeF5R5h1KvQVjm051rtwqIuc9D
         cAOGgXgUcN9dcaV9B5n+5/hR+GcmtzTzNJMLbWjJLeReXz0ur/t3RLlCLUV71bO8MV7x
         gqs4JBpAe5rMz7ltvzyqqu0XLLxAdRCpWd3fZFhZFzNF3OfG1ejIuUCGJslGZ6enx1oF
         mh1D0KFim2uvwq3qmWybCcDjv7kSaBAspGQDW/QetYMdnn7/QAviSXFdshsP1fLc17hv
         DxvA==
X-Forwarded-Encrypted: i=1; AHgh+Rq4rcnnfXVYwXeFDJNoOiWVVyHVhdVBspa1bgQGz14Zyv5ekCsI4UDcPF0Wyby+tlJ6B/WfSq8Go9lgxjHulg==@lists.infradead.org
X-Gm-Message-State: AFuF++nv2Xcbi3qfVXVXFnjpeX46rwF5m2bzUcA8OQGxC6pIDCEvKwMz
	K5pNfR8iTW0VIhBZhttG9c5oaIMi354+n5lN+CEAGGE/jTb+5iyEBg6O
X-Gm-Gg: AR+sD12P1ufwKRC5V5rZbJDYSNZcnWLD1btTnkMsRkyVAMV3NDOXji50J08B6t0TElF
	avA/c64g6GzVKsFJlkods4axIL8S15DzKXLVSFRqqYsHKKHzP2AyqEZPQfxdFnHz+Kk7hHcQ/aV
	aTHJi98x/zKqknGCzLtCQmN1VO2ZNwibvovrnSV7SvdDEF2bNa3X0tKadi4/JfDkQKqvZUIEGt4
	FW69RHXLxS4K7mFPaUkpY1tuWrb3SjyTTWf2GOQUoLGYbq7H4oKL9t5NkhrlPJ9YOpYTt9oXMxp
	52PUd/kyvv3T29opaP1MV/go19FPIXyKQEmdlqI4GFuktDNSyzyrCIGyzgSpgNaBk8dfvKFOkQB
	IgKIfpCMTYzLUGIK26UJ63Mt7bhGTaUNFSUnoq0ylZevYqqA9dxgwFCiAVCTmv2jT8Lx0Pk2tRH
	pnURO10KH7kGggQlImhkLkGKlWAeGKl++MxhimLmQgMg9Bb7s+wt8x+Jpsghg=
X-Received: by 2002:a05:6a00:3397:b0:85b:cf16:597 with SMTP id d2e1a72fcca58-85bcf1605c8mr9714948b3a.19.1788274935860;
        Tue, 01 Sep 2026 08:02:15 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-85dc0716846sm27914b3a.45.2026.09.01.08.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:02:14 -0700 (PDT)
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
Subject: [PATCH net-next v3 02/10] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Tue,  1 Sep 2026 23:01:02 +0800
Message-ID: <20260901150111.141037-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260901150111.141037-1-coiaprant@gmail.com>
References: <20260901150111.141037-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_080218_271165_D54462D8 
X-CRM114-Status: GOOD (  13.73  )
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

On RK3568, the SGMII interface can be routed to either GMAC0 or
GMAC1 via the pipe_sgmii_mac_sel bit in the pipe GRF registers.

Add the optional "rockchip,sgmii-mac-sel" property to allow the
device tree to select which GMAC controller is used for SGMII.

The property takes a value of 0 (GMAC0) or 1 (GMAC1). The hardware
reset value is 1 (GMAC1), but this can be overridden by setting the
property to 0 for boards where SGMII is connected to GMAC0.

This is necessary for boards such as the Ariaboard Photonicat, where
the SGMII interface is connected to GMAC0 and needs to be explicitly
configured.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/phy/phy-rockchip-naneng-combphy.yaml   | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 379b08bd9e97a..8e898bce9af73 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -80,6 +80,15 @@ properties:
     description:
       Some additional pipe settings are accessed through GRF regs.
 
+  rockchip,sgmii-mac-sel:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    default: 1
+    description:
+      Select gmac0 or gmac1 to be used as SGMII controller.
+      The hardware reset value is GMAC1 (1). Set this to 0 to route
+      SGMII to GMAC0.
+
   "#phy-cells":
     const: 1
 
@@ -105,6 +114,10 @@ allOf:
           maxItems: 1
         reset-names:
           maxItems: 1
+        rockchip,sgmii-mac-sel: true
+    else:
+      properties:
+        rockchip,sgmii-mac-sel: false
   - if:
       properties:
         compatible:
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
