Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34567CD5BD1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 14:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zp4xxpeP+ZFgBuq3L6LaJsxwZo9tqSIfg8xfSBrLJ54=; b=mXZIqihz8g9NOI
	QRzN3mF/5P0KEk8vZopUH74b+bIuNi3/9e4sww5o3bVQU6ahmxF7qnUHV/OTWwPH89WAxhz14qT2j
	kAt3dsQXO1PYBXTbXLimx0teRk3cqzgyQwpip5RW8HvQPvzL8phiJQIxh2EOUheGnpqWOVjdYwFMm
	AgwKG67kAbtVX/HQldw4Trym1gmLeOlyqOVijGUJasGrNp2/5pAsts5u+vXGaxz2jRDNC4x3CQHst
	XEa/TI2v68vXeKhEa7WVIep5DoXCgpwaNRxO8rkGC/1lc/ZwVwIVwHEePwkIxF+2norZl+qRUWWn7
	J3jeRkTdC+pPbn7Sq9vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU3fT-0000000BHc4-1hTI;
	Mon, 01 Jun 2026 14:31:03 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU3fQ-0000000BHaL-3svy
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 14:31:02 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-8423f53332aso489761b3a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 07:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780324260; x=1780929060; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YU2lR4C6HulA/xumBMwgTiZI291rJPzss3O8OSIe4FI=;
        b=FeguVVonyEODwYoCpF7iWdaQANzHd+cAdQ+ntMKfP5Sj0XH1UZilHwoFH9eOwDNpi2
         YxOICuCs0egK5ZMkUtCG6LsErpQxW04awVyBgUzK3oHyzng55LwvdS051MdwmsI0LZtC
         EHwWFhyUpENBzeGvOcqr+FkwzIVAOMrkr1DjO9xrcH7OzudkXwmq1xtaq26UQxrWfqh0
         E4kc7jeT2d7MtFZDIKvP57gr4FWkiEDxTLCCV7zc3lMA41ntjagVSCKDjJDhfKhxVMFM
         b3K3qW++rj0IqmIqdiD0iDQXEzR0q85Xf9wiZLun1oPcxD2WUQyjCvBKL0XwRkBzXm71
         3fbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780324260; x=1780929060;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YU2lR4C6HulA/xumBMwgTiZI291rJPzss3O8OSIe4FI=;
        b=DqjSyFF2lBS3qnk1D2HrVpLLUEVk8L5RwEe9zdKsj6lnNz7tXZZqn5N936BGXtnHAp
         Rvgg1vplNyY1AEKX3comYIghHkvqY4Y6htMKiGO0M3vuUe1doCYreG4SXjq1GRIbTqyL
         sW5O6+FC9B/rJwjk0XYSzUkj95PbGdsoplhQAdklZjr/TwQxrtEwFX15IsevWahR2SLP
         XUeVBmaDvNCYKULUyLMS2ZcuNtcfxafU4MKLRhB99r7t2IsA68QyJsaG9xoBpMcTO6HL
         FyusdiL8Stt3YtXm+PqQEQ4lAmAyLwFNIogpbJQTIoPTNB0sYYaxZDpliBgQ0+Qy4pUc
         VDXA==
X-Forwarded-Encrypted: i=1; AFNElJ/ViZNu3h3dkqDdvMTdkXDT7JTLYyCTR26lhzWysmkJ4FzHbMbVmX3/teNi2DdGrHAzGfpnVsIcIvS/pjBoiA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz++dx7q9fZeNlZ6AnsbRtXfznK/al8v5odvuOU0mmxZWG9MbvJ
	BuyKEEcwpUvV0b1ma6nGgL9yHJeSOUeStadQmJar/pZmIQ/JREO6qkgh
X-Gm-Gg: Acq92OFOSTAldU1+/LhHbm7I24bUiSpKdmhwn3rLTOhiGv28G0UkhuGPErJ1QhrLIIi
	LW5JrM26hGEgyvwepp419WnfJV+LaN3oMOM8U++Fcwz3Wp9k40MZLo7WFaQQ9jBAMAUfVeNXwYf
	jw11w92spQkSq08e+jZxjAmi9ZxZad0zvl2lmgEj+fSGjlDk3mgH17jemvxeVIQG95NC0Gfxo6u
	qzHUN+yw6z1LONpeEDy551gIfZF2Mz/N5q5YxJ5XNfIk2k6P0K9BAJobuMd060dT14PNwspDTW9
	gCdA4ujrbyjhdIAzJrHeAoPISsCuimAoILO8m5gqk3ER9doHfwUNY3Ta4zDk19cfsPKKVkcrZuc
	uy2ZjDfAtZOeP44AimQwFn1H5gAHvA+KcKRBccJKWMHEdYEuk8/LzY6HbH837boE+9QYJqEH8xg
	ffy8dUbDA1b/gfJwyNPB8ujHb2l9fQ/CiY7ECgTRFB
X-Received: by 2002:a05:6a00:3014:b0:82c:d6d3:3190 with SMTP id d2e1a72fcca58-84225595638mr10412294b3a.38.1780324260099;
        Mon, 01 Jun 2026 07:31:00 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842498819e3sm4910786b3a.34.2026.06.01.07.30.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 07:30:59 -0700 (PDT)
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
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: add Vicharak Axon board
Date: Mon,  1 Jun 2026 20:00:21 +0530
Message-ID: <20260601143022.153941-3-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260601143022.153941-1-hrushirajg23@gmail.com>
References: <20260601143022.153941-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_073100_975023_85B3D19B 
X-CRM114-Status: UNSURE (   8.89  )
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
