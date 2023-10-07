Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46D1CE94133
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Oct 2023 04:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmxRnLrIzgC8nNVBuDGdvjL5fpAkeX883/+B69w4A4s=; b=0eaOhy7q2MMXWg
	BbmZzk+zBl+D+0kxb4YJG1sTOYC+c1/R+UIKB3ODVZ/sivs9iKl12dTgxR1tUEgxbloTCOq7it0yw
	2jXLVYj9Zu67elKA62RfZgX8ujvnv6Hsg7c+zx6sLdl8IlwBo8Tvs9QmC+OrROmVJVllv0gYi/+Uy
	n8sdEKJ05IfjLdBhWZQRghZB4WpitucqQZf2NKfKSrW8RUReqoRsNuxiae5DPugjGEnvnnoQwW107
	6PwKNrnKGhaHFqDWWxxKOF6XTKR2e4vRUFnbD9n0gD7LLmPpOrtwNumNmqBdS0djHx9OS4+YaOHBU
	7SjtL1ko2uzo5jmkasuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoz3Q-006xBI-2U;
	Sat, 07 Oct 2023 04:36:40 +0000
Received: from mail-io1-xd35.google.com ([2607:f8b0:4864:20::d35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoz3N-006x8h-2P;
	Sat, 07 Oct 2023 04:36:38 +0000
Received: by mail-io1-xd35.google.com with SMTP id ca18e2360f4ac-7a25040faffso124371539f.1;
        Fri, 06 Oct 2023 21:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696653394; x=1697258194; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pRyXfw6oDnrYF/zDNW5wWAwbCqim2kPOLkomEzubNKA=;
        b=CNiq1RmuCmoLkX1mgmDHQ+ZlkwV7q2FQOvRRSjaxnR+3bB0MOsGxl/OrrS1NZP2CjR
         naqQWbhYG6wKkrZc/8y7KRhHQ8UT+IJW9LTgw2LC0kgUBpcbtov81B34PrXuXArzszU9
         H/awWreUnV85PTd+u3BvUeza47zBlIY7W/ysKnlJoHyYC4srVf/YIEtiw9rskIa+ERUD
         z/OQxWR32jro024t3Ag00vL0uzgu/n0n1yv8V3Ui2d8f56nc8bG4K8pAUKQ5QXOkgzvQ
         A6meZUyEUAFWNWIkY2TOIsxhRyH3Q+q36dzijQgTX8+LI8yeF3kiSs2XZKl3UZrfGAsX
         lCSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696653394; x=1697258194;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pRyXfw6oDnrYF/zDNW5wWAwbCqim2kPOLkomEzubNKA=;
        b=gODmITX9xs1/pvyC54YMVArTnig9pqx5cqGw6vZKmTBFqb8sdyNqQTTRAqtIGrURL+
         pvjYoynrIwDciWUuMCtqIqkdq/AFtqvWgQj2eGgEQzXcHJkxq/DuZivCKnET94/XX2r8
         qi3nimD0Qev6LBNHFgET2V3GTD9EZPloWRvtuVNXOxZq9JUcCB5RzyGRvZyx5UAHTi0D
         XpBttZRInzKL/QbJBXSSds3FHe/9zckZSCZr9rR7ilTgCApxx6KrX/r7CC3/oQWUCW3Q
         B0+PUNzH8YwCH+2uy3OzItquc1r8g46Lq1o7Ie3XsMS0yfIyGiRNls4NJqpO4m6ux0JL
         1xmQ==
X-Gm-Message-State: AOJu0YwbgLjLVhcEY2+AD7F1YFng859MVIHwZFSYcW78dE4EUFh13Sjh
	hpjD2UJ9U4C6Iwy/iqld5/nIjysquzWYzw==
X-Google-Smtp-Source: AGHT+IFcdlj5Uc7tbSh/b6P3JobPCS/EtHm4kq71q6Lzmx2BgDgiBwymfKV3CaRNZIiWBN4W3viNWQ==
X-Received: by 2002:a05:6e02:c62:b0:34f:a4c5:8eca with SMTP id f2-20020a056e020c6200b0034fa4c58ecamr9033785ilj.27.1696653394719;
        Fri, 06 Oct 2023 21:36:34 -0700 (PDT)
Received: from celestia.nettie.lan ([2001:470:42c4:101:8a60:ad5:1051:21e3])
        by smtp.gmail.com with ESMTPSA id x7-20020a92de07000000b0035129b9c61bsm1520910ilm.45.2023.10.06.21.36.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 21:36:34 -0700 (PDT)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>,
	Lokesh Poovaragan <loki@gimmeapis.com>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH 2/3] dt-bindings: arm: rockchip: Add Turing RK1
Date: Fri,  6 Oct 2023 22:35:59 -0600
Message-ID: <20231007043600.151908-3-CFSworks@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231007043600.151908-1-CFSworks@gmail.com>
References: <20231007043600.151908-1-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_213637_781926_4C14007F 
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

Add the Turing RK1, a Jetson-compatible system-on-module (SoM)
powered by RK3588, from Turing Machines, Inc.

Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ca5389862887..13b6cdc5ef82 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -870,6 +870,11 @@ properties:
           - const: tronsmart,orion-r68-meta
           - const: rockchip,rk3368
 
+      - description: Turing RK1
+        items:
+          - const: turing,rk1
+          - const: rockchip,rk3588
+
       - description: Xunlong Orange Pi R1 Plus / LTS
         items:
           - enum:
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
