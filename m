Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B6A4CA5FED
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2026 16:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K17/LQEnTeEDijOcghCmEtgqlbYE7y9WIee5N5/E3tk=; b=ox6sLbkAUKqIHI
	5u79ZnPmct7+JO4CYKc3axro88XMbG/Bs5HQtyWFNhbxigGq/AheTpcWbF6NB+2GYDI4d2Hg9rZ3Y
	+E0dTb64IEAzSBWvN/O4x9rnAAnIsig13rG+XRPpkHxIz8WS+ieofpRrEXY812kFc2LC7l8DSyC8F
	xg66jZ1DmGadpJPX2w0HrmHMLk+0pgAWQsLU5rSwWTUG3tf5CZF/HSXNEVkMiPnai5M6/Wi7flSfW
	kBeJh6YyUmQqV9EERj7zsMPP4gUn45TcO5wk7JsAQGuI1yxTWKH2NH340Zq+nUk4+ssi42GHMNlVo
	X+Rbf5ECaTjsSy0SuT1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE81o-000000018U2-0CLc;
	Tue, 06 Oct 2026 16:28:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE81l-000000018So-0Ou0
	for linux-rockchip@bombadil.infradead.org;
	Tue, 06 Oct 2026 16:28:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Q02YVAiwMG2tOYv3d1XG68tLbO2rAHXBUJNR5QhKuw0=; b=PCoteZtFdVQYNL5YLOkKhOYTEN
	rPk6/ZNNTLdsAXuYVS7apEGMLdaDZ7HrNncbM564EnshnZMGfts+sToShJsgeU3LMPTFFXXdr+Zqf
	9ky7JbR5urPgdk7YbrWPR3puL0BPFO1Cm8ZX8T/912jA92KwUULXk0WHj6VxRDAoG4P+9IeSuN46P
	MVCTOfpj5zBsYu5kh2JE+xdvebM9M9MJIDc192wVvp/bVrGpsSR+wU5eR8tBhYs/PBy4neZ58yUni
	qTMBtHVoaF1iDSGPX+6t+Qo/hQvBzjzKKLHXSKNbYRr2GnILK1i+E9k0DSFhF7T1P7DE6hdY3bstx
	fX4yWCZw==;
Received: from mail-pz2-x08.google.com ([2607:f8b0:4864:3b::8])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xE81i-00000008rZA-0gjl
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Oct 2026 16:28:27 +0000
Received: by mail-pz2-x08.google.com with SMTP id 41be03b00d2f7-cc7e91a4eb3so63729a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Oct 2026 09:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791304103; x=1791908903; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Q02YVAiwMG2tOYv3d1XG68tLbO2rAHXBUJNR5QhKuw0=;
        b=GNJv7YdRs8mQki0lHCtdrZuZ2ShGZRcMTh/BOSZXt8KeKfvSxH5mxCyDHMiHUhLeyK
         8FOJXj+UKkSqiGlRqv9et9pRQMD8qUWawWhpSHjI6hJ+4pdCLx4nDrV9FWmIa37QTNMw
         GElN3xmr5hYLIurEBslTznsryX2MsyGHdjJX7ojAxei0lVhiqeLsPwyLSm9JHDuSPvQ9
         i5Si6sLd4ArvVg1TX00S1zTLkfvG7tSKB6Nfu2ENl41WCHEBxNjoX8MbIPGdt+PR6aQJ
         jVUvbgtPDy2YYViJwYPtpsMP1BbaU/K199Vyb5qaydy/l1pQuVOSaOW2ncce9SmGzefb
         290A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791304103; x=1791908903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Q02YVAiwMG2tOYv3d1XG68tLbO2rAHXBUJNR5QhKuw0=;
        b=Wb8EKFQrFZ521dWL8d9jDRBEDXu9SFFNTM/1Y41pnL5iJiYZ0Iqk+Ezfii9dcXFoU0
         2PONb01TPy9Flb1KSP+0118EQLTGMsv+VyMqxXAB5pQQeJIb4dp9OKAW5UQyfKRJmsIP
         gyJulzHDPjdezzt2wKJc/a7LCuETzsQ5lvIR7XI6Ze+pWuEJn3yC8kVLORgH6k2VjXmA
         O5yldC/r0EAPa70/ZUrOX98RI0frpYgH1vrzrn/BAW1TyUnyDlcsSRT/T3zJQGy0euf6
         R2oEFdHmuv/rURyR1LRNgRf+INnLPYHPyVjSK6LPO4CFv8SxMq2qVgD8p/tskgrJITOO
         e53A==
X-Forwarded-Encrypted: i=1; AKwUvBzvx1WHLtYX6dhlNeuY9nJK6ahRUkXAKZH8qzmWXrtV6mPlRdyhW9LMmyhSb9R3V2sNbWZEGUSYac4DA9yuZA==@lists.infradead.org
X-Gm-Message-State: AFuF++nxsY3EXdJS+lHWpQ5QeecZx0/U8MpDjIZIVTI1LV5NnK2FOj1F
	lH+w/j/17SkoMCG+OyBkL/O7BsueOBVHEUCJ4V3dJgh6cB9iDhrHq4LI
X-Gm-Gg: AYBFou2kozR761SDimau90KrPZrtMa3l6yZoaYSdA1Ozuxj+oqEihPqIDzjJdnezsPD
	SynpN8ZgWuyXQwngxG5XpPy6Db9uo9NPU1eNW5JK+kN3GiLCHYt0+KOI74DwQEil+j8GRU+bAoW
	V+Bfqeu5+xHk2DUpD2vIP7zJA3K3teWWdGKz9hKZm4kMotx6f5qIdcuVHoglsD/RhT/yKJTfy2I
	bh/vXTMK64pND3IiTcZzgdTsGsi8m8XreTnKUq1H2OZ4mZdGOs8fNGpNHs3EQlk4u3urgqLEVzy
	EgpNoACyGp+uniM9KUzDDul8nCZf4GMrSe4THbhnfFJ5mY6Nw3WNpjxI6rtknAxOYnSZDQYxK0l
	FcooGgQaf3F0DPxzcwccUUzbM5eTWTcVPMZDJ7nR5dztqel5S6K8kWB6XdOHcpRI1/7fg3SwVvN
	yEHhPyu4krLGdhrhVo5/2Kx/ar/A9wmL29vcAcUZJ1LJN8LI5EKoXzUilU7NOh41Wz/0Gb
X-Received: by 2002:aa7:88c1:0:b0:88d:8074:1a8f with SMTP id d2e1a72fcca58-890ddd021d9mr1195882b3a.7.1791304103604;
        Tue, 06 Oct 2026 09:28:23 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89188a0d603sm259898b3a.19.2026.10.06.09.28.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 09:28:22 -0700 (PDT)
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
Subject: [PATCH v13 1/2] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Wed,  7 Oct 2026 00:28:05 +0800
Message-ID: <20261006162807.2843858-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261006162807.2843858-1-coiaprant@gmail.com>
References: <20261006162807.2843858-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_172826_355170_ED7DBFCF 
X-CRM114-Status: GOOD (  15.02  )
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

If this property is absent, the driver leaves the routing unchanged.

This is necessary for boards such as the Ariaboard Photonicat, where
the SGMII interface is connected to GMAC0 and needs to be explicitly
configured.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/phy/phy-rockchip-naneng-combphy.yaml   | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 379b08bd9e97a..442a1df193ad2 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -80,6 +80,15 @@ properties:
     description:
       Some additional pipe settings are accessed through GRF regs.
 
+  rockchip,sgmii-mac-sel:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    description:
+      Select gmac0 or gmac1 to be used as SGMII controller.
+      Set this to 0 to route SGMII to GMAC0.
+      Set this to 1 to route SGMII to GMAC1.
+      If this property is absent, the driver leaves the routing unchanged.
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
