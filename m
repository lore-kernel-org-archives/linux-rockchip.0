Return-Path: <SRS0=U8bK=GA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 759ABC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Dec 2020 19:12:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2F02522AEC
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Dec 2020 19:12:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2F02522AEC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=x6vYfzG4lOl1Pu19VBi+A6woNblHUd/ap2Br3ajzD7o=; b=k+0mHnaK+ODK+DQvtuk9xt0NgG
	WR2feh8Odmbr16/S4omCouemt+GDXzOCIXlWK1SXyr2xA01yGBrOW7BPK5AC//GM4/6SO1DKzq3QR
	nzN24YnuGFdBqDz+QUPLKMA58NrxyH10p8EFgiAzQw7myUXN2o8IXAXSmdXi8EMbDoFKUxZLei0gg
	yMjk2hkYx1tjfalwiNRJTNXL6jbDyNpc1FKoQ+0VLPWoojalGY3lYyo9guZd5IH9SEQ52aErU5IXZ
	S//LXBY3Kk5lB/jlpfLCEB3RaM4q9aldypXn2Ifz3ReHSk6pqwvqNWxrwKtA/BBGeLsWL1ZfWhbW1
	6F/8uBPw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ktxvx-0000tF-Dt; Mon, 28 Dec 2020 19:11:57 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ktxvu-0000sV-7b; Mon, 28 Dec 2020 19:11:54 +0000
Received: by mail-qv1-xf33.google.com with SMTP id et9so5373691qvb.10;
 Mon, 28 Dec 2020 11:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=WE59etTQVmQBiRWixWVU3ybmOwgLeTs8mnXISggMd8c=;
 b=LH4WED/EH6frYpEUJr24xmKjEM8U1jVRPQ4O+dzcHKVvVX0RqJfI5oLosQWBDjUIEC
 aDmtEQkprGPBbxeONNbkqPi1dtDZQsxYTCTU06FrYx6fc+MLTzcpFEjMLcuWzX0o4CkZ
 KJNLm80PKQ8ZWQDcGYp/c3HnSrTnqIYmCCh7as6ymW1u79b04y04odJJEBRU/0m9GaBN
 HgbPz+C8XuuQ81DOw6Qt6ZS0QXNWzYnC3vBcztccD6Pr6AyBjfVGOgywXNT2kU70X0BC
 nVp4PmP53M0f5ctFtgCs65fn/ECW43d/0olIS+ICMUhQbSlJW4Pykw13HYK+EACiu3Y9
 9r2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=WE59etTQVmQBiRWixWVU3ybmOwgLeTs8mnXISggMd8c=;
 b=GoRGz9wjDo1CtPr8JwXY+/3vj7yYby1sTzaAJ0Bd/Kin1PqeE6jbEVFp3Q9VPd9iIe
 SmPrG7AxpKxJNq3l1Jh9+1XlFQTbmdMYRAslOmTOKMAXaHrDXdfpI9QWBuGomNloFiA2
 J49L1yymtrtXT7Gjb0JRYyh9zvofxDA+PPsUJpBiPECcyAOIiULTgfxtpnWbtJMauE/L
 AyGC6JBwAfrTz0ZxFCDaDLYwV4z2R8nKOkNjo0ZMxl7qFpbVKdp+yPiCK+m0iK4nxL23
 MDCmjA20m8RUG8EUxgat1hKjnzJWyrQV0AyM5QZ1V1rief/XGzfair7weAeFVJDCa6v1
 FGJw==
X-Gm-Message-State: AOAM530CQKgm2Rca2nk7R1wdj1gGyKDwqH13F4/XlZ98/+2SuszVl9TO
 MDNAfvS35KDUBksIEQQhIXeB2ucO04pxQKkq
X-Google-Smtp-Source: ABdhPJzG/Y9Pbq+ehp6ZDN1Er2gkhbTVjOo2DVCuXSOUMq1q3Ut41WurWCXv07hOsyi7KSIfm1R2zg==
X-Received: by 2002:a0c:f185:: with SMTP id m5mr48841027qvl.19.1609182712167; 
 Mon, 28 Dec 2020 11:11:52 -0800 (PST)
Received: from marty-x570 ([172.58.230.134])
 by smtp.gmail.com with ESMTPSA id z40sm19844216qtz.81.2020.12.28.11.11.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Dec 2020 11:11:51 -0800 (PST)
Date: Mon, 28 Dec 2020 14:11:50 -0500
From: Marty Jones <mj8263788@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dt-bindings: Add doc for FriendlyARM NanoPi NEO3
Message-ID: <20201228141150.2ccc4f30@marty-x570>
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201228_141154_324299_78C6B4DE 
X-CRM114-Status: GOOD (  11.53  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From 4979bc740c982a15f36002fbb97979cba5d99739 Mon Sep 17 00:00:00 2001
From: Marty Jones <mj8263788@gmail.com>
Date: Mon, 28 Dec 2020 13:16:53 -0500
Subject: [PATCH] dt-bindings: Add doc for FriendlyARM NanoPi NEO3

Add devicetree binding documentation for the FriendlyARM NanoPi NEO3

Signed-off-by: Marty Jones <mj8263788@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ef4544ad6f82..a0aaae08c97b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -122,6 +122,11 @@ properties:
               - firefly,roc-rk3399-pc-mezzanine
           - const: rockchip,rk3399
 
+      - description: FriendlyElec NanoPi NEO3
+        items:
+          - const: friendlyarm,nanopi-neo3
+          - const: rockchip,rk3328
+
       - description: FriendlyElec NanoPi R2S
         items:
           - const: friendlyarm,nanopi-r2s
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
