Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE07DCD6E57
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 15:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zp4xxpeP+ZFgBuq3L6LaJsxwZo9tqSIfg8xfSBrLJ54=; b=SDdBa7bWoG08yj
	NNrhebzS2wKZW8oIYthkhFWZqvuC7tJ3LBFfwGvaE5WFE66hT/NufkxHExvtYOu7W3XJkEfodh2tG
	a49b2sHCofo95dqXR7+EpoGaYOI/ycyWh9KCAskEvDySWx1c1IgcRrfEdKBaTTmfHrNGdIF74L2yg
	kpAZirZT76MMaMq9ttgAJwYN0eHGfNyTHFnqPGr+uJb3xc0aQZcjz+1of06wsAr4juMMeStdA4kkl
	9E1J48Yt9HAPm3Vm2ja3oB4ZxDkNw4ZPAa+rHFRWKfmrTWRiv8UGOHXo4uFMsWijHjZ6g2NRCa/uF
	hHFhLJxIzjV78BVmUMVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU4PZ-0000000BMVT-0cyu;
	Mon, 01 Jun 2026 15:18:41 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU4PX-0000000BMTe-13RU
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 15:18:40 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-2bf30d530bdso29070895ad.3
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 08:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780327118; x=1780931918; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YU2lR4C6HulA/xumBMwgTiZI291rJPzss3O8OSIe4FI=;
        b=lQXhk3rlkAgwCpEU3moCkUDBb6ygkiIudACenWoXvGWu+VX+cmjtKJ7zZ4I5t/E0zl
         Z6BNri1bT6P4jqJjhqjnyl0RFKfmB0pP4eVcAvalEbKU0I3Jpk7fZmH392Cw86Zftv3f
         Dvw3SGHeMnTKPFk5rsXVeOcTS/xyG3qgAqmI6a935k1eL4eMUVIUpfyMb+2oBe1Yf3mY
         9fi6+ZPw6f4k9uuDIjtLxcyQ8rDlZqkrT5u4gTOlrm2QVMij4cG6GqvbvNazr7Bw8446
         dfzq2qYW0/pH2b5NrJC86AoD3wWBLPNWfExfJlrbZORbyU52HyD9Mu8O3UNsxawAJAbt
         2Avg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780327118; x=1780931918;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YU2lR4C6HulA/xumBMwgTiZI291rJPzss3O8OSIe4FI=;
        b=AXgLFU9hVrJX8R/Gqzgu9DFhYzpIwO6795Y4FlJPIU9cnNKtG+ix62w/VGNYEFowEH
         yMzH/g/jqXIjAs69lNZH6a4Nbs/7ieI7kROhjRhU+7nvCnLIxaDzewp8ITj3a0eTuPBJ
         NlaQXjAS63mUr2TGdHA8ima1UEZbOzDLssnmILUSao41DphEGxv5SnMfUxqc8fXVT4BQ
         CG1fVd45w2GYBIRQbsl7H3W9S7OYZSHbmdY1vertkB8Cf5/DsoXkkTXPnKeJuZUszOww
         iR6Attl/dHKBMI4NKOpb5aed8AK1Y8KMskqjW3DveFldyA0OO1EfQD5XXJe2EX2fYI0z
         kSNA==
X-Forwarded-Encrypted: i=1; AFNElJ+ofOBkPFAJ15UyXrZ0fowbflu6F5EIAnvApc28HHOEmCPMKZfGHg9C17IEh2YK6uKD9T55CEXVClNjBMzZvQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwS5m6lvKtDTWxOd9G13bPC/jxFaSOfDRjwtOxjr0bOpYEm77G/
	c4iPpldBK98uwstsaUyvaYaYgikbLRfQXg2BeAvetnwsGRHKFC5YaYCn
X-Gm-Gg: Acq92OEEpibAwNjD8JDjFJ7nmcsNGspdcibDhRjJxlb9jr/xODuzUVMB1hHoCpWKybX
	mvouIf2yNxLdSBc+NF9ETOxlmd/ZRN3O++WqusV2jAv/g0D+lwrVOyhriAjgQIozTK30Fr8YXuf
	U3owL924WEcTZUzpNotB2+uAqFaEfkWkSVpQG2xkPa2oX3jGzXwRDn21x2TvQg4VKPLL+can0Ky
	1WW8dCw+bgRfN9nhJfXNh/7lp7RV66EMKeXT+lypxWj6MF+pJolDKu3UbwWU7L0L4iXKmG0/ld7
	XcSQOQLUue8+YN34SluQ5Oy/AdZwdxbmKBODIGltQeDUmJj31Y3tnEs7qhdWLaQYamOmH1SaT63
	bmO+7yhI4TAHn7iP7XavCqo25XUre4LISFr0Thfkj39pMojUOHR2lrqqU60gt7PdZenXB6pmD/E
	JLdcUswFLPVxga3GTo8RBdP+qJNEyCIo6tGCoZ8YN4MwlXzbMCApw=
X-Received: by 2002:a17:903:fa6:b0:2bc:7d4d:3520 with SMTP id d9443c01a7336-2bf36885897mr130565255ad.40.1780327118190;
        Mon, 01 Jun 2026 08:18:38 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf23c0d727sm106633925ad.59.2026.06.01.08.18.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 08:18:37 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v4 2/3] dt-bindings: arm: rockchip: add Vicharak Axon board
Date: Mon,  1 Jun 2026 20:48:09 +0530
Message-ID: <20260601151810.162173-3-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260601151810.162173-1-hrushirajg23@gmail.com>
References: <20260601151810.162173-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_081839_283273_3288CA9E 
X-CRM114-Status: UNSURE (   8.68  )
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

Add the device tree binding for the Vicharak Axon single-board
computer based on the Rockchip RK3588 SoC.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..b023d4cc9842 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1306,6 +1306,11 @@ properties:
           - const: turing,rk1
           - const: rockchip,rk3588
 
+      - description: Vicharak Axon
+        items:
+          - const: vicharak,axon
+          - const: rockchip,rk3588
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
