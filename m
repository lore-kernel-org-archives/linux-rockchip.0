Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E13A4E95396
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 13:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFzwWPEMXBUQ/9X76403I+PhsNPslHG9oPYzMZgKv14=; b=DZx8+QP3GH/ZbE
	Rfq5PdVoAXrafr9FCOd4ssHUutLkGxzgBTe4XjsoIqgVeaXdiy9gneZPjnMT1HhFE1Vy7kapxZfjg
	zMtRp1Fpuj9l6dSuwgnVZf+KFi9OWr9Hgu4KHp79x3Jw39Icpj5gteJAXAZ2ULE/1miWaO6jwNZBq
	TCrfJy0nGzb90XDKZ9TiqaI2ImgXkCsw/32aKvj4m4ts/23D+JZDzwCzeUF35jAigkU9u5bY5vqGf
	GX5fHSobSZjQUHvUQQ9zCg+lUdie0VylXaC85YrFF4oCMvPFpMe456Y8J/1RCfzCBLi9oV0h7t9Z8
	SMiy0H43wDbePdIoyC5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vncuX-00000008VWL-3bRi;
	Wed, 04 Feb 2026 13:27:13 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vncuV-00000008VUg-4Ali
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Feb 2026 13:27:13 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-c56188aef06so3336976a12.2
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Feb 2026 05:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770211631; x=1770816431; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iSDNEyCwakS1Ym6Pza3YQfvhZWkeeNtC0qOGvxZYQyQ=;
        b=d8sm7HCb4lNsvLi+tJqnr3D9XMEW9bsPxSvVSly5RlSs9xnIus9MJRLqqRg13yloBv
         1gBtKpeUbbkmL4t02DS0iy1sRGbgWFSHgTlAIPk2cBR+JZyvKjjCTXTvN3YYZ4wFKJ9q
         NP9/m9Yynlm9grxaUATxnMbnJ4octRtGD4fsjDdIrI1pltjxmJmibukEtUMkM52uelzg
         uBYsgYXiWTwU3ebT+8YSMneDYRjcw6h7bpcBixMscHLRIU15rCNgKpuIIrJ+Pitq3g0v
         SPMo2bI1fL7f/ZSiHI0QFE1RMM+vkcw/nr801WEhgmZPvxKaH842f0ZFAlYKtfPgNZrS
         tXVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770211631; x=1770816431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iSDNEyCwakS1Ym6Pza3YQfvhZWkeeNtC0qOGvxZYQyQ=;
        b=HobsldTHVm+Oa73EqcvVWvKwGCBOZtW57E1haXJY/xaQzp0IHnjRv7agEM9TDpMzqE
         3vflvuHRcdBZtflsDYjMmZWKPPFPQmSUu1Zan9nU7PXbkj67QTSU9XwfMBo7OEffOZMx
         treL81ejjXGMF5CwKT1AzZIfnpmymwGxXb6FVOu5yCwUUzd1ER0chOIAr+u3Bb2T2Td4
         HzJoOi5wgcukwNA9oL2s4e0mLvgV+9qY9soFNNqBqb/k06EIrXEBL4CUGbEz25TjMj/g
         gjYbcKBTHVr3tyF2O8Hvhm2PHO6zWqj9ayw87+Cduqw8uvFqpnIBOkvAGMSGy2+gIxzB
         LlYQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4GR6UGslRVn2dIRcvnz+3QCvI4yatezBuooaP9cpvQy7bQorU2EKaFozOQqIq6eHz3uzEQ4NpZbSA3j5X9w==@lists.infradead.org
X-Gm-Message-State: AOJu0YziMO8JqcuEvatcCliA+HcZqeth2d5mznd12cQl3Q6oM/qE/ddw
	bfb4SnGsoRUD4T5GaaUp9dePwH77dlDx99MSjMnKzpp2YTGBUTtCOmKH
X-Gm-Gg: AZuq6aImczpQhvhsyOvbhYRoN6Baytp4Bhl0oIPkV84Dvo7HAHMVqSdLgiay0hKQzUY
	uwisJZdcQeX1GVuODdsiLAsXuXwkSM5+Ejt199sjBxz6dv4YKpffgqnzQnDaXy9ARiWMGKan4Rt
	5OWxz15dichBsfgbQ//or6oe+Jb/ipE6dMx54IKK2fx3+dGaa6GZsOUzd0iEnlxBjr39CtTiRHh
	0cmdm3cqdgTvKBRlwbfYvOFSJGqiVroADVv6T21dc598+GMADYA9PTNDEpwzJEyXDnc7Jau71WI
	PatmPqWalLjw2W1iBEnk6Og2NIuXP423Ik6yJ0XVM4O8XJCNvon3QJN6SxkcNqy69pDxzw+iyvF
	eP4xSPf6JkvHCeXqEcttRYBEr4zCgpF5kuVdmdyLWdpUhFeOWxb4AhRdKOqtn7PPshmsZvVWEFK
	7rJ6E47/G8
X-Received: by 2002:a17:90b:554f:b0:353:2e1:95f6 with SMTP id 98e67ed59e1d1-354871bd5cfmr2596812a91.32.1770211630997;
        Wed, 04 Feb 2026 05:27:10 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35487726e6bsm875763a91.6.2026.02.04.05.27.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 05:27:10 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	Jun Yan <jerrysteve1101@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co., Ltd.
Date: Wed,  4 Feb 2026 21:26:54 +0800
Message-ID: <20260204132700.329894-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260204132700.329894-1-jerrysteve1101@gmail.com>
References: <20260204132700.329894-1-jerrysteve1101@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_052712_030936_36ECF431 
X-CRM114-Status: UNSURE (   7.96  )
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

OneThing is a company engaged in edge computing.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..49607cf2941e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1199,6 +1199,8 @@ patternProperties:
     description: One Laptop Per Child
   "^oneplus,.*":
     description: OnePlus Technology (Shenzhen) Co., Ltd.
+  "^onething,.*":
+    description: Shenzhen OneThing Technologies Co., Ltd.
   "^onie,.*":
     description: Open Network Install Environment group
   "^onion,.*":
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
