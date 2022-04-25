Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77944C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 17:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXoywwsyKIrDjie19rO4pnIPmMjnoq3Cpau5ul/H5Yo=; b=OGAPXDIWN+uuVJ
	BkdhgxWJy2Xb3UZXkIIXrSts7BStPmeB2G7sMnzglN6EHcPEf+2gR8RClvPaz8vEbWgHwUMPO8Y1G
	9KPXF3hO49/ETg0WCLUtgE7JsXTqMbjPXuslAtVSLiF5BiRua6UJT7HSuIVpqup6eCKxNDwffWV8M
	fU3gOF95+wkI7hXusnXvoitna5Z5dM6ggd2DPJTRuQh86s4LqDCLZy2dPDYAdh7X/sniAfyDBEYmU
	Ut8J3DJTBIv5+nz7j10ugu2Ligsda/PfLF8EiMxQUk1Dh5IfUAVZqH2FKMFtuNo7njSbn6d1qNuy1
	kKSqnekMnZSFw0I7Q6Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj2Ha-00AYuj-27; Mon, 25 Apr 2022 17:13:54 +0000
Received: from mail-qv1-xf2e.google.com ([2607:f8b0:4864:20::f2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj2HW-00AYrj-Cu; Mon, 25 Apr 2022 17:13:51 +0000
Received: by mail-qv1-xf2e.google.com with SMTP id 1so1323877qvs.8;
 Mon, 25 Apr 2022 10:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DLU7Byu++ueSPleKFASenNUYu4xE0XjTscVJ1fB23CI=;
 b=bCDXpHkDeJiwI3/+FK6eKtKKvdVw+nWM0xwrlOLYBuSZYGKWgtGiUBRF6SWicWNrQY
 VCtWoNmzt8hYvVyaqGjG2EhMOuv/0LH9d5aEjh5Ywo9vXRxGwO4jhV+U4OXwdsL2AUxZ
 DGHD1kQP4S33ULejyh3VniTF1vCqwYvFNm6IzUnM9dlCRhYT0Iamdmr01IXFdKHIug2d
 HhhJRnosHLzkEV38kSQtymjuNOHfeJr2Tq9rEUSbmpX9EyuBGfvW8LaqwX++LY8dr247
 T9TXLNVVAeynqOmR9HQbAXqtP06x7XLz8y4vGn3kDfHWn3ra5ac9qBQNCr9dJCf1GJye
 kbUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DLU7Byu++ueSPleKFASenNUYu4xE0XjTscVJ1fB23CI=;
 b=Lm/Urcu1MOGR4ovz2/Z2iUkyWf/NsPxFJjRPhnXSOsMyCa05NSJgZ5iQlxjmWMIUzx
 9PW7T5238EtFLQb5qErdfGelL4CEO9KdBFPnFMeTEk1dzN/OzizI8slvhJNglKMBYQlz
 MFoNid2X7rJ/JAVT4wZLzUs9xqviwAb2RjY1RuQ1tL+nqVwOTTmpE6fVdzAJh5yj5Peb
 ThSB7Auv/wZlt46pMlIa9geIvbFAiJy1niXd+S7xhJIGySx4htH1mM0ddnZ3DYOwwWCb
 jK+ZVFhoa5vcooqwMIhEgLobuwss08EcjJ0FUanZ95IxXBKRHewI01JSVKA8PPiiYG93
 mnew==
X-Gm-Message-State: AOAM531LXi86OhBI8flJi+mYuuxmTUORa26/q1C5bEIEMgseij18c3jF
 +2CGcjk0L/4Twqi6YXQt5qpJ4qGreB0qkg==
X-Google-Smtp-Source: ABdhPJwHRDB8KYA8NTouw9jD9sdzZIhMtIUI7b9FLcMDA0XemGjLUmgWw0wblhuNPVxnEKQimCdJzw==
X-Received: by 2002:a05:6214:2388:b0:441:37e5:baec with SMTP id
 fw8-20020a056214238800b0044137e5baecmr13665169qvb.66.1650906827628; 
 Mon, 25 Apr 2022 10:13:47 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 v3-20020a05622a014300b002e1dcd4cfa9sm7154928qtw.64.2022.04.25.10.13.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 10:13:47 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/7] dt-bindings: arm: rockchip: Add Pine64 Quartz64 Model B
Date: Mon, 25 Apr 2022 13:13:38 -0400
Message-Id: <20220425171344.1924057-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425171344.1924057-1-pgwipeout@gmail.com>
References: <20220425171344.1924057-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_101350_490446_2AB5F6CA 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The Quartz64 Model B is a compact single board computer from Pine64
based on the rk3566 SoC. It outputs on uart2 for the debug console.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index eece92f83a2d..d6650a366753 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -507,6 +507,11 @@ properties:
           - const: pine64,quartz64-a
           - const: rockchip,rk3566
 
+      - description: Pine64 Quartz64 Model B
+        items:
+          - const: pine64,quartz64-b
+          - const: rockchip,rk3566
+
       - description: Radxa Rock
         items:
           - const: radxa,rock
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
