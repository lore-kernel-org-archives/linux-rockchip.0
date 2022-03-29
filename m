Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87026C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 09:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TiA5izQCxU0fz/nUsJXT/HJDHHv7zA0HcH9j8FJAoqM=; b=4ZUsZ0Jy0NZKjs
	Cay7cE30L5b0yy0FOPbqf3kUvRF/dzjnLmjKNQyewbKCIsWryZA/L2TCRCGBp3CQv8CrF9TS0H1fV
	G6MpTW0fSolnGHyMo5XcmpoUEj9hYCfS4rl95h/TTW5aoddGph2qqiHy9iqIYKlvs7RQdRbQFPKRm
	a9FRSEICpMo6giafLpY0juY1yUiSk9LvN79vcaKMzvlKZw+3Iqfj0lUwtS0RirRnF0QmEEi08JpYE
	/phjqfRI91yyAJAZ3Bzm4a9Gm/mzdLIZBYh/EPN4SAuP1djWVjhLe8oSxi3pxxjlTAUkbCrLXycta
	4wGuoEwQbHHYbipvRVkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ8PR-00Bi1J-61; Tue, 29 Mar 2022 09:45:05 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ8PE-00Bhwr-3C; Tue, 29 Mar 2022 09:44:53 +0000
Received: by mail-pl1-x630.google.com with SMTP id e5so17132526pls.4;
 Tue, 29 Mar 2022 02:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZxcUXMRIWi10Bb3Yn0d7DQkBUePE+suYIRN22VgBmlk=;
 b=pIHFTBvFOdroSMYLJmbokuhXRhGu0YiK4mQyUUjxzAD3slLRiBcRxzNTTYTzzT5HHJ
 IH4QD14bcZq2eS8ywDzDOVI8iBBL5n+tr/fLmMBI7n6t0PDvlYS5qdOXTXpIM/5vJ7Wg
 pRkOALLR1omH3ECOCbeEIOXI60mixggl/brGAlyVXz0PRVLfN3fm/4O99bDaYUfacpxb
 6vTESWgCSxxE9nIMDYREt0ud9ARH5gPj6UI8J4T+lhNX/7eH1mrskwilN96BHg6owDGT
 PavMHxAN26XdbyqbnV/MmKpOVkBN8/CcgCg1a3kq9Ks5/oghQyqAX0cy2JopYVhMcSXi
 +Xvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZxcUXMRIWi10Bb3Yn0d7DQkBUePE+suYIRN22VgBmlk=;
 b=sWuRItb6obxfsupsAEgKVgj5Fohc/jCcBjaGQarSQs/pfyDhkLJ6RFVFCz+YGJ4ZVV
 NPhKuqUttzKmcVJ1MVXZt0TWnkdbi1a+w8Rujs/toij7FbmxannYseUD1a0p1hq9vJJz
 x4h12jJoz5CmARXJvCXvmv1kpqpZ+jZLuhQv61tr2s0sVBGvrtQYK6bdOqBRbmkhv0Y0
 /45x2KCFU4LctZARV8V1LcbxsD60dECUkQWicbAm3scZ4q/NSrlFAJ8BLKzXIEo9dkhJ
 fgJYSvgzupqiksTNyMIh4p+a86W6ZmdyGYLLSPYPTk3E1VBQ3m7ce3hvo6T8xYn3QfRJ
 l4vA==
X-Gm-Message-State: AOAM5319BrPSL7MAcmx2rCD+na/Ekzrw6Yy0FZhr6cKVGzVcV7IvRKJJ
 GDsSXqDPbAl3Uoh/sHucbxs1vNQiYnJvktv7
X-Google-Smtp-Source: ABdhPJyAYUce+W+zwHS0NxaiOPL8AQq0MSVS4H59L6ZFCt5X2doklICAbvLw2MlkIhCnCoqukc3pjA==
X-Received: by 2002:a17:902:ec8c:b0:154:2e86:dd51 with SMTP id
 x12-20020a170902ec8c00b001542e86dd51mr29923984plg.99.1648547090825; 
 Tue, 29 Mar 2022 02:44:50 -0700 (PDT)
Received: from anyang.. ([106.250.177.234])
 by smtp.googlemail.com with ESMTPSA id
 m15-20020a638c0f000000b003827bfe1f5csm15090968pgd.7.2022.03.29.02.44.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 02:44:50 -0700 (PDT)
From: Dongjin Kim <tobetter@gmail.com>
To: 
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: rockchip: Add Hardkernel ODROID-M1 board
Date: Tue, 29 Mar 2022 18:44:45 +0900
Message-Id: <20220329094446.415219-1-tobetter@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_024452_193015_C0F833A6 
X-CRM114-Status: UNSURE (   9.11  )
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

Add device tree binding for Hardkernel ODROID-M1 board based on RK3568
SoC.

Signed-off-by: Dongjin Kim <tobetter@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index eece92f83a2d..48fd0858a795 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -664,6 +664,11 @@ properties:
           - const: rockchip,rk3568-bpi-r2pro
           - const: rockchip,rk3568
 
+      - description: Rockchip RK3568 Hardkernel ODROID-M1
+        items:
+          - const: rockchip,rk3568-odroid-m1
+          - const: rockchip,rk3568
+
 additionalProperties: true
 
 ...
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
