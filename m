Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80C82CA5FFE
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2026 07:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lueJppVxy52ZEFEQ+3ID+cWS4uCV1Jkr1/oFm+5M5dw=; b=TUlrGXGi0sv732
	TJzXW77BnbYvIsvtVyXdld74EuE08cRV/azQW4iBXyb42XMznhYHSsiJJsaQKY6YhOfbeD1qsNI/r
	BTLTB+16Fcr8vvmvnn91kPPWHJVng2n2e2TdzF04LaA1c2pIlBEAsXbUtFArpiMtu4JzIWliZSSPw
	hC1dKoXEt+rjwXDgSROzQJY5mbwUZGJdvK+EdhG9aZdkvIILwEeUNEMgWaamm2DZDVJNJErJevJL4
	W5cLCH3tNVak8aiiUnW/RGDJ9vLqqhgpRwvQZLoUHqYw/Ay4Rd+zPA8M9QfdbBnaxOtKea1ijEF58
	Che9SRaW1gubOoCwLKPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDzuv-00000000DPu-1JjE;
	Tue, 06 Oct 2026 07:48:53 +0000
Received: from mail-pj2-x02.google.com ([2607:f8b0:4864:39::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDzur-00000000DMV-3kop
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Oct 2026 07:48:52 +0000
Received: by mail-pj2-x02.google.com with SMTP id d9443c01a7336-2e5cb5a0831so1555275ad.0
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Oct 2026 00:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791272929; x=1791877729; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=bhSZWqptRQsUl5/k+N+khLQrR6n/uXrOTL68hc+lCIdbzzmqPd4SI73TkSLRGTZwE3
         lX9n0daXhiypssBVE/sHqmChmAirWs5/emXulUVuHFwYIDVqSBNRhPSCyhJBITNI/TGK
         ehFckzNfpj4Hs9wN0KFIQ/f0x4l9KEHNZOznUWt4xt9QZSdkdh1Okg6syPWiT8tko3Oi
         VZKlemj05vYVxTCZ17F+bRrggRzOyXYXb41iaZhoRgLzLmtvN7m57bbJf1VnOzXDVEmn
         xan4zssh7cDM8fencoOdFWQ9Eh3UqB3FNoyOhMGsq64+jxcn1oet0gCsRqPyoxSX/aPr
         fCrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791272929; x=1791877729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=M40SRkpco31CBJ4VJ+JI6VsNbeNbhoBtpCC3IRHmJalMysYSKyltuKOiECMt8HtTYn
         lG3TkMZrKJl8C9S2Us9CzV/xb3sou47YQf7rI+A1cMmaCTx0ZZOrZvgJ2dwTvAOsqNFV
         m3EFKS5fSlgL7tOK4v3DhssHEkRVA7/4v8sbaSNRFN/XUue+sArE76ZXy5IfzawWrj9T
         cpvPNqz7hcE6u9IkmT6vd7VpUea458S+xefggC0gOrOW3bNIHjR3/eMS92y6w4pn3mG+
         Thcs/qnRjsWwCb4HAhYhlecVT2kbq8q8tSh5gXrbMKQLLwQ7LJyxgxkNxZ49EFvvgI6h
         BSUQ==
X-Forwarded-Encrypted: i=1; AKwUvBzJCMwkPP1YjCMAYEe0IBpaWYXRTihxhZv0xXZ09iXmA+GmMEGa3KO9yrVCwzCbArXlouedAfypoEqyw5cj4Q==@lists.infradead.org
X-Gm-Message-State: AFuF++nURUaum3h2C49zHOWq+Aa4ZGOVaU5gg6VvT0iqBnzBP/JYLs5r
	Ke5W9sVcvPoqmbxj+XTZ6Qlhc8IwujEFuNmOJgCYPlx84IpG1l6+WnK+
X-Gm-Gg: AYBFou3/8XLDW1Z4qwJdGuijh5MVTLEWuFLdLnPhzjZ1PBk4XSSW+nRf3If3ST/QtTO
	UqQZC2bob2xzqEFCDOVw8gWAai3G+JoWnD6BIJhud/sOVS0MpLN9Qq/n24mH/XdjG8INVeke5hp
	kTCMqRRW1/Mu2r0it6kNQFbS/364K9ZPb3z/ntUOE9e7/VOuAHQJmtepMezT+p+g/z14beSdigp
	CZx7DY59NrUSQEQTC8UhW2ruYut6J7pbjg81p7l/3fFooowf8D78Q8Xc3HZhHgVG9E6CPtyui/a
	2aC7sGm5Iz+oYyIOUWN+ndZMJzuTd/t/ZNcepwSYQO9kqv3dGBvN2wlnU9jAWyXT0CFA4eKCkSn
	0gWn9lRtEA3LwCTzIhI+X5jX7ml63ogjSUvoOq/S5J8bCwuuruDqJZgwDOC4Jg1Ulp5nDEziGOJ
	p/M/oWYGf2qJVO1IwyTGrEVBXFzq4KY2ivUNXWJQBHqmGpAQdq4/1j1E1jpDrpKJFepAsq
X-Received: by 2002:a05:6a21:6b01:b0:3e1:1689:1ebd with SMTP id adf61e73a8af0-3e12485fceamr550520637.49.1791272928795;
        Tue, 06 Oct 2026 00:48:48 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cce6d2406b1sm1998173a12.8.2026.10.06.00.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 00:48:48 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v12 1/2] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Tue,  6 Oct 2026 15:47:48 +0800
Message-ID: <20261006074749.2010233-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261006074749.2010233-1-coiaprant@gmail.com>
References: <20261006074749.2010233-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_004849_987485_4C0DF511 
X-CRM114-Status: GOOD (  12.64  )
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
