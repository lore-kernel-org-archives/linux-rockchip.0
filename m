Return-Path: <SRS0=S+7F=IR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10D49C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 05:11:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D31D64F53
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 05:11:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7D31D64F53
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ra6BXZeEFMMj52AuEBMk2r/A/pe+KXRLSeKZqVeK1BY=; b=UA2q9VbE6R2YW1zo8OmJhol2N8
	+m03ZNk5M9XZZTNEyPV5crPKAuE6wa6NGMYxAgAsjfB9ksCelo5f5xWUfiIuw6BI1BYiA7ftvGJjH
	mvdo2BUrQ/YQlb7KuGVHiSJaMkYfu/1z6I3nKNQZdq9z7ViwVvDI21DhPYjqAXda5fWFYAfE1L4pL
	Zn6FXa3K/3j+jkklRoGAlySLA/bwi68i4R2AQNz1a8YOy/yynsd8tigEYGB3cEzQxmGP2M/aEJywh
	LJFUa45qdQxbYMLdle7E/LHCqnQ06HJbprnoS1PTl/58KzLU7JRgaVs/pxHZihZdmgUBCTaHsZ7ad
	H4lnnqig==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lN7Pt-006XGR-EF; Fri, 19 Mar 2021 05:11:21 +0000
Received: from mail-il1-x131.google.com ([2607:f8b0:4864:20::131])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lN7PU-006XE3-6l; Fri, 19 Mar 2021 05:10:58 +0000
Received: by mail-il1-x131.google.com with SMTP id c17so6987248ilj.7;
 Thu, 18 Mar 2021 22:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Q/RTfl6k6odiLrR5obGXAJjzHlZhKwqdCygdrq5sAW8=;
 b=HIWZSvBJAkzeFS14n6kwaenLfC0Dn0dwCfgK/Tc8CZgkPKhoIPNkGoTcsgpelMPSGw
 CKAvTVt8EXBaf/xhMGxpKc3FNo+noqhcvR6jcvqQXuM41HTDdN7haL+kAp4V3T57rWXe
 jFKzaGRwwZQ4Q3TZA2A+vM5mi1t9vM/oB1wE4rls88/DHOzI4bE2uq7ARWEsBJ6tSDNZ
 DytwWtmjwyLhqo6hM+BzulKU/bYi3czDxjGPOKnwC274pXEz+coggp3BJOH+bPejgMXg
 E4AVXI38YiPE6tl9UDFQdqeosFv5iyP/dyxruZiB9Q8tcFe14rZEjPFz/PANbJMyXho5
 FFKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Q/RTfl6k6odiLrR5obGXAJjzHlZhKwqdCygdrq5sAW8=;
 b=oA4lYMsmioOfMI+S+hspj/+LzzT1OMJC72Fm6cBnUQIiP5C6TUlhuxYh8yYNjd8Rj1
 +uoIc9iIlAmZv10R0B6NSOVgOOhTKyIjqmdCkbS8OruU0tf1V6VoQP4Q5oNqeSDRlpn+
 dWJ/dJwqFnC7gqpOyKuaGcHpkoRPyDoruYwwRtz3sfUQewlVsLqOK2zDyd1/GY6vXCxa
 GFV5QAQtXNC1UkwHJrfIDwGwk9iZHiC5I6FXy6KHJweX6Dnp/mKZkED0EBqFPDS1jx2V
 mjrkhKSz4GNjFDDCHnSAHjInYfY9wkpT1Y2b/qo11jq3/pnHF/22Dltb83nn2vobhRjK
 UvPw==
X-Gm-Message-State: AOAM530ABIom0f3rGDY27Gwh7wR270lsi30tiEckWtaC2AbfCGbqO/BZ
 GpRbDQqLm4vxOVpBp2hHVgE=
X-Google-Smtp-Source: ABdhPJyDMEiim+cK4UdCEkJvVKxYX8BQKngf8KbCObwxfVQ3pBJjsKyemTMpQD85elWBonm0tZGVow==
X-Received: by 2002:a05:6e02:1546:: with SMTP id
 j6mr1414704ilu.75.1616130654578; 
 Thu, 18 Mar 2021 22:10:54 -0700 (PDT)
Received: from localhost.localdomain
 (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
 by smtp.googlemail.com with ESMTPSA id y20sm2025112ioy.10.2021.03.18.22.10.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 22:10:53 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Johan Jonker <jbx6244@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 David Bauer <mail@david-bauer.net>,
 Jensen Huang <jensenhuang@friendlyarm.com>,
 Marty Jones <mj8263788@gmail.com>, Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
Date: Fri, 19 Mar 2021 13:10:46 +0800
Message-Id: <20210319051047.27619-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_051056_391418_E5B099A7 
X-CRM114-Status: GOOD (  10.39  )
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

Add devicetree binding documentation for the FriendlyARM NanoPi R4S.

Changes in v5:
- Dropped the empty PCIe node
- Dropped useless `/delete-property/`
- Renamed LED nodes

Changes in v4:
- Correctly dropped `display-subsystem` node
- Dropped meaningless `pwm-fan` node
- Dropped wrong `sdmmc` node
- Disabled `i2c4` and `uart0` as they don't exist in the design
- Format fixes

Changes in v3:
- Dropped non-existent node `display_subsystem`

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
