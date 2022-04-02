Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E3B3C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 14:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2qFJACGjXHg8vh+SEhiBJ3wsTTLY81q0+IdUKSM1jfQ=; b=dbbZ3dtdFIEQg+
	Ov1OzCqdWPd+eEBkqd1qFV+cTlwYFunBsskC+KXZL3v2L7ljls6He+HIhmpmdYaBlvOm8b6Gv/5MO
	92ZHCsxOB2YNGjd4Qk2m6fF/5eYSRzbqV4kLeRXMHOXnGzsbkDMeNQ2Sq/OgfUknr4PxI5PdLcDLE
	teRJs+cNB5lFvNWnjkAmTMgAzudouV+YePGoZItlxt8EQoeuxhuaeqH8/2C+dvJLaKnJ+im+HZOuO
	wZbF6Tl5Bl+qi3iR1ZWYMOlH1F6pBgS7UFUM07CyudNuPrqUCU6ipTbAY3f8/rKSohvHSNHNPXZ4l
	NjxTeDrOEtRHGf08wGiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naevQ-009LLo-9E; Sat, 02 Apr 2022 14:40:24 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naes5-009JJr-Ib; Sat, 02 Apr 2022 14:36:59 +0000
Received: by mail-ej1-x62b.google.com with SMTP id p15so11376094ejc.7;
 Sat, 02 Apr 2022 07:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UMzMILXZOYBjEHWGG0NtpE3Gk3RKI6Zuc2PgcEOU4hk=;
 b=hKH+EKXwHDcVdeec4xKFrNDsZIRyknKca1Lf0IqDKfvplrYbVWQI6lg8AHp/WMaqRr
 1kgMP/fsOjJzdh1R9iMh0f1MQiXtPIlKnwURS8zfHuVGs53qVd6QkmBmFKedyB0ww4Bv
 oQmK7d1B/fsghyO74h6dJXDYP8VlgjIP1ZpESFOCH0Vw1rZQz73TRX7U4kFGXv0YFoKv
 BYmrjQqzHEDS0Ij8SK1ZUJBNqEmZ7BiOqoo+USngfl6NFbFr+NhlHJ4r11zDNKebbIOR
 iPGrY8wAE4WBBO+z+iCJ5SLfPLygzHXWTdojFiw5VGi+WD9q0GKDRIXGs2xnO4fCial0
 Rz9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UMzMILXZOYBjEHWGG0NtpE3Gk3RKI6Zuc2PgcEOU4hk=;
 b=qOdQWLa7jsjAs1qGuNpdT37+EjqHeVgQON0WYXC5wcfOll0R8ovNAPYp/xhDecaql9
 pPUSmo6gOHtSc5X//27KoQ9Rz2pW35lpWdr67PGiHJmjt1fCAneEDZlzrx3gX/fmXW/g
 UTQk3tAAUrZZfKzG/8hRNzrJfosdPAObwSX42uarp6eiPWInsJyL7NHVXw1rfQhK3xUL
 q5c5TFwbF43waEp9xl68/6/QaRP8c7PzYLVxJeOuZRW4lw5gC77qTY3NIYmvmnQCol+e
 t7TDhYG1n/nU/DhvS0IteDVZ35ZpznrCtTD2/cRexpd6vKcitlLybL+TISlcGha+JY/e
 frkg==
X-Gm-Message-State: AOAM533b/wa1Ir3c68ZYsy2RsdcW5A//4O/hjGTTDUhLEDanWJA08mXJ
 S9uLVsJp3nW8aUyX+s/d8lk=
X-Google-Smtp-Source: ABdhPJzkt4WAyQJZ3jF1iMKFKicysCmRDS+tUpRwZXcfJmmMfXyM7C6JEmced06QohgpOIs1rpC2cQ==
X-Received: by 2002:a17:907:1c0a:b0:6da:7ac4:5349 with SMTP id
 nc10-20020a1709071c0a00b006da7ac45349mr3992797ejc.596.1648910216420; 
 Sat, 02 Apr 2022 07:36:56 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2169557ejb.60.2022.04.02.07.36.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 07:36:56 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 14/16] dt-bindings: clock: replace a maintainer for
 rockchip, rk3399-cru.yaml
Date: Sat,  2 Apr 2022 16:36:34 +0200
Message-Id: <20220402143636.15222-15-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
References: <20220402143636.15222-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_073657_704853_1EF83837 
X-CRM114-Status: GOOD (  11.21  )
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

With the rk3399 cru YAML conversion the original text author was
somehow added as a maintainer, but who's currently no longer involved
on the subject. Replace this position with the Rockchip clock maintainer
on her request.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/clock/rockchip,rk3399-cru.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
index 72b286a1b..5ee686938 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Rockchip RK3399 Clock and Reset Unit
 
 maintainers:
-  - Xing Zheng <zhengxing@rock-chips.com>
+  - Elaine Zhang <zhangqing@rock-chips.com>
   - Heiko Stuebner <heiko@sntech.de>
 
 description: |
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
