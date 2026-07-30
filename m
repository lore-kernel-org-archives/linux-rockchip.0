Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35BE4C54FD2
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 05:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=boCZG5jMF6mTTdTwcYfKcFrflF5DThIB5DlKNtoWkOk=; b=N1ZaLlBAeyWWwI
	XGn1bzEcVGH2rm/rlUUbaIlwmPhkYABlEniu3LNJH/N4tNTervKw1mBP0aMS0j0hZt11IB3Ri6zJB
	2hXTLocbGPqha84hkwEWeztG2N4UHJgFwYiKoMjfrsnb68wpAqjegGkkldHm1wF8pnyBxclEBsTze
	O5IL28jR72jlxFpi4+2ykuOKYsNSNLRXbr/26Yp9tdhHkQWFNs8MIgI2n0YU3dLpfHdRmo0ZLv6dC
	h4iCzLUC4TEOb4mAwSoGI3O6HoFVOg2EDjESfPbQUmI6Zsj5hg9uf/oEzujSgzU9Lnp+LA+70DFk+
	pCPpHI44ctkWdbEODwnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpIsJ-00000009WFN-2hNs;
	Thu, 30 Jul 2026 05:00:07 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpIsE-00000009WCh-2CBc
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 05:00:05 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-38125cebfdaso2312581a91.1
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 22:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785387601; x=1785992401; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZtIjaQYzsHOvXBRyxq6T6K4m4xbtRsSOUHx5wlzsFJM=;
        b=iZ0dYywJ/1GxK8JTcwWNYMX7oRy3pyEs89O7/hZ9J4g6WY4YWv9r1PiylY7QFWF5i+
         6GFbc7hzSvyQCSPFYNkyJQaKyg+An6t9HPyWafiZGMuWZZEQR9vjvSrKXfhOP5Ja9Tcf
         YihMrWvcRhrmwybx4d/qXyQ05v6EscQXoE/1JlC6AFW853gjk06LiVsS3Z3lG315/8nG
         6+z2MKD2begv7VwboJLRLCcmVymMhoh008E1LsIiMqJ/80VB8UA2jaoBHqdKqjpKz1ou
         IGBbBCRMXFFpMtaT6EgOjNeGK+h05X7XLj87AgdDl4TyuhOGDsmTp335GVf+yazmuuhH
         H/0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785387601; x=1785992401;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ZtIjaQYzsHOvXBRyxq6T6K4m4xbtRsSOUHx5wlzsFJM=;
        b=aV2RyJVcGTClNFEnN3rxnG6mm1sTK2oW25n5R33IHxqU610fHKErZ35H2EG/b7StXo
         lM9SyUZJwPEr2Wpe9iQWjxgiLepC2/EQC/JtrYUHGuiMQmTDBxLgqod+f7WFlPpDqAQz
         xVsYKfNEaN0RZJfA4eFe5W+x8o2JDfSSm62ZsYBnJcWyQvTKG1/XCMtsYOFjZx8TLEoi
         3dYcmt7rLWR8coQ3c2pHZty2+tiiDDKtU+L7zTVLxb3r7RFU/DZWBArGYCqQojKjqrnK
         3RYjRvbG1AmW2DrFFRzaaUkrY6sepaIxdrRmRGWJSt3XydVH+SKyg8FbptuCMBhUFC1r
         WDig==
X-Gm-Message-State: AOJu0YyBajocQOuJhARZRIVI8fMQUpZ6TGb3iwhojNnQP6oO0J1o7v5P
	Y4dUDGimTSYxtcmbCyTMy1I5f9DyhE2v12derfBuYy1iDoQKcZx+Yb06MNBOFmMI
X-Gm-Gg: AR+sD102alniqw4Svgvzu1NWjDdYzy+un8+R+0AE3+J6vEXCcNwBWvwew2Kqb/yje8x
	EA/RqLB+aBvfkqUPMPUNzChGQa3LLmPYUnxBxNgBAFU7MkmpjmY9NB6UzM0jXXiCuzh1NKxM92I
	auQSX2LVSnfZVyCNEf3PbbF/yhME2ubJii+bwQm/B1TYidDUS/3GOonDqeykW7QeMXDkhDvAiO+
	ayO9NBO9LcfLs3a8UcSa2Emy2Qkq0AYOuZFFyABMspvDF/5VpJ45B5scPJLwL6+HA+kfd8fLkkf
	2OMge7QYfpr6eb/Wm+yv79C1Kh+C+3/0HXycyvqXZEqNJ2XyicF3HBTs5ZJVk0XfYQH06u2++wb
	+XEjNmvyW9BNpNHFZ5RO82XszVuMirnVzTGwtI8VK9ZG1U7pCEZ/KWRzBjaQ7+DJsedyTJ5DAtF
	A+pqnO4ggY6lyBvsrikkwqZ29QACDY3HiJqrl5Gd91WEvljyhtEHnOZ+ZW2puHUSbymD2LS1rDS
	gk72pc=
X-Received: by 2002:a17:90b:5687:b0:381:20b:a9ee with SMTP id 98e67ed59e1d1-38f9bddef62mr1034829a91.14.1785387601561;
        Wed, 29 Jul 2026 22:00:01 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13e72556386sm14383898c88.0.2026.07.29.21.59.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 22:00:01 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman board
Date: Thu, 30 Jul 2026 10:29:46 +0530
Message-ID: <20260730045947.388660-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260730045947.388660-1-hrushirajg23@gmail.com>
References: <20260730045947.388660-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_220002_591728_889ABC65 
X-CRM114-Status: UNSURE (   8.94  )
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

Document the compatible string for the Vicharak Vaaman, an RK3399-based
single-board computer.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..7cfd3687768c 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1306,6 +1306,11 @@ properties:
           - const: turing,rk1
           - const: rockchip,rk3588
 
+      - description: Vicharak Vaaman
+        items:
+          - const: vicharak,vaaman
+          - const: rockchip,rk3399
+
       - description: WolfVision PF5 mainboard
         items:
           - const: wolfvision,rk3568-pf5
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
