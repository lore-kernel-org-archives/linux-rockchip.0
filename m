Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7149FCAC5B8
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Sep 2025 05:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z3Skz2oIA27dcgVCywm6wYW0SGMBNeqpRgsSyi5la0E=; b=EagXaPPedVkWiL
	BQaEZ+zZ3QdXnFXAdJMEkZ8l8Ed9uvQIdMRv8rBdTHIgatsGI7ckBd2km95kPPugUMUY+VlUJuBnD
	cs7+F3rdaAXI9VBCnyA8/pl+MF/yPnxb5jmtsn8wGeL3mnbVFUtqrPET08sxGg9wbtcexNpHcC0Ov
	OJrEJg2ea+Wl1B+wUVwPp1tIW5F+WU2HpU+T77xB6nAPfO+M55xtKoX/gONb0FYDR8PCxRDTtOC/B
	Ufo2RPm50kRdgt/A4dzA2VFBlKzOlR1rUSLm7jSQ0kVcvLmfUcaqARcXP7EA8K8xZLHQ9hlyY/zWs
	dTJOHnERPI8F+ymqPrig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3TGY-00000004HyT-2tz1;
	Tue, 30 Sep 2025 05:51:11 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3TG8-00000004Hgo-41TV
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Sep 2025 05:50:46 +0000
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-4de8bd25183so52983051cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Sep 2025 22:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759211444; x=1759816244; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iWDW22d1KEEhzhYCQi/m5g5KGiHWCtagl6QTEa0SdVU=;
        b=myZhII/q4j6jWHCI/DvCJjhnVE5AnqJEbhN2i1YkgwGv8xnppcbAfEN/D1HFZ2oZmh
         namAKJcSmlldwaplrqDhWXSOeRKMf/1slVi6NAVj5S+6v66h8558FMiqLq9g4TZHw+L+
         DFThFQ3eGiY6FnAF+9J6MxOw2KsBGPPrMO8R/2DDutuTxmVdg1+0ehnukr5ABU/5/qur
         ca31UqefvF/aE41aAuXHM3XtSS9moOYdyegCO2mBQ/zIlu/x529xoHdiuvLRW9Le16ac
         lpY6us3Ot8+HsVgal6yv/vB9U68EMPFAayKEbs+Nd+T/3WrDcOTIPdbO2/9qBq1/puAB
         78Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759211444; x=1759816244;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iWDW22d1KEEhzhYCQi/m5g5KGiHWCtagl6QTEa0SdVU=;
        b=Pmu0BM2Wx+daj4OmtGKwxog4GT/ndymgg2JJBud3nekAGlHQN9Y7uEL/1zrNjsjM7q
         FuSVqKciGFg3R3d5niH8YVQti9uE9bdI1BkxE8lyhP6Sahdx9AwjWG3ZDORElGzxy8sJ
         zFj0zpcru18ydfdcOaquMtPXyKBaCOicmb2ogkxBouiaha+4SWIvXvMAscA6YHAFwMwI
         8eH1Io1MTVJVbtJDfHR/iHCkkL8D364EHmRNAU5NhLfBtsECNl5WwQMck8tSQzORHzqr
         LLf1/PnXrlfDkhUY9ACvm1UW5cN21yWca2nVaGHiCHIMOsanpL5p38skRj2pC1XuFqEV
         t6oQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwqiQTfxWQQQKCZd8JeK9nUyi8Qqc/zwESmzvjGMitw6NIosb0ljiwJuPmSKZVeu3iWOJDDjxo5NHeIPY7qA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxkQFBjK4YX9zv97ocaLkDE1ldGvFwuNheEmuiKbLnNZH/kirxe
	acAGuSJG/KUErc2A7KrXM2MI+/h21+6KeU6csYc/Sqq7rRjSAwRKxmR6
X-Gm-Gg: ASbGncvVGzEmrlqRW31ZhOCXWWLBnV5w8nAhe2asPkuYkFQ5Wsgs3Ik/kJ4V4Sszisz
	rB6pfMojEDeHrbEn6eMmmCUYvt1BhgvELo2I2SpWDwrxGAjfh+xE/RAR1AT5WyCsEr0b46P7nD8
	ZjrdCTimnit/Sa6p9Ude205E9Nfa1CwwNsxFbXsAj2YghGlBDKl6lcO2v7Qp1O5xkYtThTzAZ/1
	C+oupfku5aBE9MOq09Da6ErGRaa3202bByHbE+Zdq6APc/H2oNdd3psx/aJjHIl3LSq4eyU2XL8
	4EgW5rPOxUhMlyKip+W1iHAgIM8f/all415homt04FzrAKbUUbvG01ufKRoRO2jHonLbZWabK+4
	62NnMDntj6ak7/c/k6RoOVe2EKcLAOUEGtoPA7zxVPd/o
X-Google-Smtp-Source: AGHT+IE8TjM82ov8xrxnZMK/gXEPncLjzJMtiR+2bILyr0672r34V2+xjWe2oOQ5Pcx9lnrmFBdBDA==
X-Received: by 2002:a05:622a:1893:b0:4de:515e:61f2 with SMTP id d75a77b69052e-4de515e792amr151619881cf.83.1759211443594;
        Mon, 29 Sep 2025 22:50:43 -0700 (PDT)
Received: from localhost.localdomain ([2a09:bac5:3981:263c::3cf:53])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-85c306b5f64sm971990985a.32.2025.09.29.22.50.37
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 29 Sep 2025 22:50:43 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
Date: Tue, 30 Sep 2025 13:50:16 +0800
Message-ID: <20250930055017.67610-3-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250930055017.67610-1-jjm2473@gmail.com>
References: <20250930055017.67610-1-jjm2473@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_225045_029176_AB5123DC 
X-CRM114-Status: UNSURE (   8.24  )
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

LinkEase EasePi R1 is a high-performance mini router based on RK3568.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6aa5b..ec2271cfb7e1 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -726,6 +726,11 @@ properties:
           - const: lckfb,tspi-rk3566
           - const: rockchip,rk3566
 
+      - description: LinkEase EasePi R1
+        items:
+          - const: linkease,easepi-r1
+          - const: rockchip,rk3568
+
       - description: Luckfox Core3576 Module based boards
         items:
           - enum:
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
