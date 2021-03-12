Return-Path: <SRS0=jNzM=IK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8830BC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Mar 2021 18:28:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 357AE64F4E
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Mar 2021 18:28:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 357AE64F4E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dQxugvAG4WS4dAjP6P5lawzdPQ4m7geFYaYmhCZsAOc=; b=C65M2tyIY79zxf3b4i6AsFoUK6
	tXn08+MGxFM5yjBr/kS5+/HiaCgxzxRdMmPBcWlSk9ZzzR1zgzFn420HT4WBDDsHmSyV81RPgqUDE
	uSavRv2AUC/66qaWqgwJDmh7gTZH3tN9NZHcHMbpA5vE5+uKwsoB7lqN336kSJT0+rUd7NmTev8IC
	UFUZgVa7RAiVyB/jsLOcyFtglVEXlRZz+4Lk0B5aUXBD6NunQ4MgzvJgUGumQe7s2EjfnAxxqK3hN
	7NHZSxu/aPt3ziFv7gTv0QhiiSeOtCY9LjPKJHr+YZ/WgJ+qgJqvT8NNYUCwFq/FcYkoEHlaNvcMF
	J38ld4+A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKmWZ-00CCBC-QQ; Fri, 12 Mar 2021 18:28:35 +0000
Received: from mail-il1-x133.google.com ([2607:f8b0:4864:20::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKmWO-00CC8b-Jx; Fri, 12 Mar 2021 18:28:26 +0000
Received: by mail-il1-x133.google.com with SMTP id b5so3412979ilq.10;
 Fri, 12 Mar 2021 10:28:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ze6w/eTCOz/OO2OOk3Zl0RLx/goZvKrUNfJf9efgDaQ=;
 b=bJyumMMvXzGYhWnVLS7lUDvseVzaqeK14xLUAzm3aK0I5TTnkDVQong9yduJ/Tlm2O
 zJ9AntNRqzvRYAeKEj7pjVXagUJd7g7u61RMIL6OGfQHuYfRLIAA/GFLKo2r8xpArGAh
 ePH+zQ2eWFMfDUM6XZe/EMcN0L7WF9D/6qmK25Nid5x2dE92j/QggC4Us1YsFYNmSCSU
 mgVsTXMYEX113brGbAPzVYSTgznjcJl5fDHkzTzyR1ufoi+dy2ucVjnuQuIoR47okmNF
 tktQNTQGTk7Ig+0ko0yMWH9Kkz5/HCzBhDg38tHsyab0LZN+DsWRHWZmJiLWAAJjuIyG
 QVAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ze6w/eTCOz/OO2OOk3Zl0RLx/goZvKrUNfJf9efgDaQ=;
 b=By9e9HyI5JsKsx/Unar9i2cOCS25PeVe4Iu4jhk4EriW6qpdZf5MkKO0BqL9ACCMRA
 L3NpJcWdkWRL1JntjFD+oz8YfoRmFSFVnc32FISG30bNFnFBPy6cgTBkxWSL5G5aM2wO
 1oKAxvKGLjxbFgBzEAzgigYNISSFsyFroFZwjKmHReeT39a/Hhf4QhyNsQ/2qrpLr5fV
 rHjaOpUjHWtsLtucYu/pEd3hfO+w3qb/7t3gGVSwp1sHEGnKAQTP9P/Yg/dzYLRi7b9T
 VBII+BnDcabVw9GNXFc5XCHstozDLlgBVHdAlW3ePS8T9fe4NlAM9TMOAZ2Ah0D9IO/f
 M0EA==
X-Gm-Message-State: AOAM530LzWsSikIPHDSQ8cB7V5zwZ9CLmY2SxtQhlwuwvscP3triXi6H
 YRkk14Febaln7evCcF3riS0=
X-Google-Smtp-Source: ABdhPJx/8daUaRvyk6SF2ZZ5BxWN8dTS4tj6Ww+SiaGK6e/WxuzZvAty7d73XQ7XyLYoa1LaSJh71g==
X-Received: by 2002:a05:6e02:1384:: with SMTP id
 d4mr3696040ilo.307.1615573700278; 
 Fri, 12 Mar 2021 10:28:20 -0800 (PST)
Received: from localhost.localdomain
 (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
 by smtp.googlemail.com with ESMTPSA id c5sm1415362ioi.0.2021.03.12.10.28.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 10:28:19 -0800 (PST)
From: Tianling Shen <cnsztl@gmail.com>
X-Google-Original-From: Tianling Shen <cnsztl@immortalwrt.org>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 David Bauer <mail@david-bauer.net>, Tianling Shen <cnsztl@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Johan Jonker <jbx6244@gmail.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Marty Jones <mj8263788@gmail.com>,
 Jensen Huang <jensenhuang@friendlyarm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
Date: Sat, 13 Mar 2021 02:27:54 +0800
Message-Id: <20210312182755.14018-1-cnsztl@immortalwrt.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_182824_710876_2627AC81 
X-CRM114-Status: GOOD (  10.26  )
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

From: Tianling Shen <cnsztl@gmail.com>

Add devicetree binding documentation for the FriendlyARM NanoPi R4S.

Changes in v2:
- Disable display for NanoPi R4S (reference commit: 74532de460ec)
- Light "sys" LED on NanoPi R4S (reference commit: 833821eeab91)

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c3036f95c7bc..4a6f772c1043 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -134,6 +134,7 @@ properties:
               - friendlyarm,nanopi-m4
               - friendlyarm,nanopi-m4b
               - friendlyarm,nanopi-neo4
+              - friendlyarm,nanopi-r4s
           - const: rockchip,rk3399
 
       - description: GeekBuying GeekBox
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
