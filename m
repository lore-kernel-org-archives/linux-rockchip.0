Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BDFBCD6E55
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 14:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfd8lFJ9rU+GoMdbFz4vCQpIe1DZoNIi4R2lyx6AiiY=; b=rPrsSrf0VvT9gr
	2W279wZwEyD09tvX4/yoSDmdTMoKpw3nOcGB2Vh9spbooh2hPc2G8AN8MOBG1h812Jcr6BRgpe/E9
	soSVz9KEzbGmRgWgf2HSYc12m/h2+OtqYRolwDUe58ZL4xrDZvkrt4/Gc5d/Q3ujxF7ovET94OxBP
	1tkXa0yCmWIaxQtLyK5NUziVUq66MTthLWv+77gBU/MSLhVzrz2onOCHWnckPie+j0JeLvjKnm03c
	dSeA70Yztxdw7/2IYVUDm+kzhKP4WjGqATbFAFG+fXiJK+spqsk+0He2c/h/I1zy+Apc2L5s+v8p2
	b+NheA00se2DLpFuispQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU3fP-0000000BHZf-1QaO;
	Mon, 01 Jun 2026 14:30:59 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU3fM-0000000BHXy-2PFg
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 14:30:58 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-8423efd76c8so883167b3a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 07:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780324256; x=1780929056; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NFYhV629aCcMh6n03w8fB9pu9Qir4aq6dz+7Wpy2WIQ=;
        b=poIM8Lei/J9MUHuGckelsvzWfe8PxCxc4NIHnoI4dp46KXmUPPQGaoMb7pTmxBu5Oe
         fPNh78xipSwSKs94Kj8AF7WP+HtBahF10psDE8nyPqgVIqWy2cNnlH4euXzw2sC0UhET
         ANb1Vo5W5oApZMQp17FFuVwMlwwY11IT1LcsHqlBX4GIzg4/Jh6MV9EeuHSPaM9VWkbu
         RTO0/Oj19kg3MgyQcIxvuG+BtmrcQSPCWeKd+N2ZjI0ADF7DrUdNPOXAUQKibaaqAOnx
         Ru0/boFhtcf8LbtaaNOVAqs/JOhsJiqcR/e+HdcvZ3fpYyYbaYuQ6N7HRPF+w27NdKTW
         2UNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780324256; x=1780929056;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NFYhV629aCcMh6n03w8fB9pu9Qir4aq6dz+7Wpy2WIQ=;
        b=Hav7UXDTxC//f4Pwu7YskI/VZWlmH88mALOXVAaCceQFJzfU78+Y2rM/NFXreCJ8uH
         Ydh7ZJCsJ8U1ksam8xuvVPrRZh/2kfdbZvGwyxPHK4OUMnkJgSvyDfSoZSYIwrOfplWt
         7hODxSZXX2Uv3FIQkko6NrxziI/gmfEnT9/VHjXksWzEjEJuOR10iWJ1mULGCsWmzWVY
         rVLFagR3I32Mk7GV3+dhwj3rnC51LmcF4uEqw9eH5JpJkK1SAQIyq8n34GAxZSy9sMue
         xC5ecoj3hf7NLL/6RSF/2DV6oCCUYourGNWJkPODPKq9ijA0JqOzURk3CEiPQ+CKu2RK
         LYVw==
X-Forwarded-Encrypted: i=1; AFNElJ81o1Ek6jNSmZGC+i6ikNxSnOlcWWnqIPA7emrA60s9ecukWizbhSCjYMwqLml961mu0D5Qg9WIfdVwOdo/zg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyUzLLJrvF5FGj1D+ZTJdgrrtdMLzchTGeF/06FyLpczP2cRAPg
	PmgATSkgIwY5mrwk/xqznYjiuSf8bEZf3yvYReoSjl6nh9bZVAr8mqL7
X-Gm-Gg: Acq92OEcWmP9+stv0jRvFHFjP8yf1trgBtPq4vnJhfx/3rrP2HWhBBe4aPCJk9xZ2Ln
	RzHTa+RYhxnmvC3qRajAMFNVS989oWnVA/Li7EqrOynTHtlRFElOpngl2v8BCD+rJx06iJrSprf
	XijFgVgf89SWJ8AjxTyspyWqPlw6K2H12Mcm3acSV+F5qr/2TwjDiCzheum/iB3s1jbdMet7ED8
	wkxiDBROH+3KzEkCNWFHba9X6V0QNzML+yE+ktHh1++uu9yVyh9IyqX0AbmLgWK+xQqDSVUHWdH
	LBe13pPCFHDNmjKoagCIp3OC5mBYMBHVypACE800Va7auLMFm03j8baxnw5NynY1zxgWCZgOdVi
	RysS1nAF/EPZ/3H/CRCumXg+hBJ/kMF424X3x/WqXOJAuzK3tvJFfj6hEHbANfr19Tcby1IInzs
	iu/NkNgYL61CqjUQYgr54G6LxS6mDIa/Ei+0zKn9qa
X-Received: by 2002:a05:6a00:6f46:b0:842:2ddb:e303 with SMTP id d2e1a72fcca58-8422ddbe825mr8194339b3a.12.1780324255689;
        Mon, 01 Jun 2026 07:30:55 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842498819e3sm4910786b3a.34.2026.06.01.07.30.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 07:30:55 -0700 (PDT)
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
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: add vicharak
Date: Mon,  1 Jun 2026 20:00:20 +0530
Message-ID: <20260601143022.153941-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260601143022.153941-1-hrushirajg23@gmail.com>
References: <20260601143022.153941-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_073056_620875_5836CF59 
X-CRM114-Status: UNSURE (   8.39  )
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

Add the vendor prefix for Vicharak Computers Pvt. Ltd.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 28784d66ae7b..504a691a33b9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1791,6 +1791,8 @@ patternProperties:
     description: VIA Technologies, Inc.
   "^vialab,.*":
     description: VIA Labs, Inc.
+  "^vicharak,.*":
+    description: Vicharak Computers Pvt. Ltd.
   "^vicor,.*":
     description: Vicor Corporation
   "^videostrong,.*":
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
