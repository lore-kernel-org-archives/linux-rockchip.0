Return-Path: <SRS0=k6cp=G5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F3C6C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jan 2021 11:02:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D971723108
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jan 2021 11:02:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D971723108
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ooa7ngO3yY1PgjD2cnG9dwNGBG5oP4JsOzhSep1GNKU=; b=WSMUoZY61kXNVD6fgvZ9x0qcDz
	GKUQd2HkPEsAAGLl4Di0Zw8oDmgJ8jFbFY4rcAxBDHpdGuLZQzDiZQ4YjqwBI0NlhsbGXAwP3LBkR
	p1S1V/nyJkJx0iRJhHwLyTZQ5K6cNLBxJZopLxTFMrULpc4ZIljt4EG5fIBKMFQp0f1hAq7BGXhjg
	LoRn7nMjyMgQ1uPIrBewXs+5RPNK8qxLGpXlyilp9/Igwhc6TUZM2uAoZrew+PikCFB8E/wqOzkWR
	Y+QNnQamDUSxAj8ZYAn97pWB/2V9qciACz7+MNWu0Srw6pvadpt/reqPKTQRDWqojMq+UxVVi4DnS
	5M7y+bbw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l4M7H-0003Fn-5R; Tue, 26 Jan 2021 11:02:35 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4M7D-0003EZ-E7; Tue, 26 Jan 2021 11:02:32 +0000
Received: by mail-ej1-x630.google.com with SMTP id bl23so1721281ejb.5;
 Tue, 26 Jan 2021 03:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9ExoicPWb9nj37ivHRf0sfAyfETbOTvzRxB/xRvmXmU=;
 b=gULRw+fQvf6cEe5Jiju+B7Su1M7tU8zPqZgjfo1mPadYvRypYxul3cs9pu/COoyDJT
 TRlb4Scm0NubDKK0NBbvUatnV0YGTkpjdl74Xti1i8GIbMCKw5CIlvBziTw7n3rpzL09
 pdwRh9qRCXaGe535cg5CLr3UEFRR0VJ201z1cAcaf2+DdP9NVGVHHLqzvH0vrm+Y5wry
 K5iE0r9CmUnRa59orDPb8uyQbcHydzTjhCysHH8uDPJiUaeh9IooxMCNLgSrOYEoQRei
 7lZINf5OB3Q29V5fwqh4KIcH0B1iXxoWG449ZVeBp2rs/odQyk9POcMXrhB0zXpkhF2W
 uIUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9ExoicPWb9nj37ivHRf0sfAyfETbOTvzRxB/xRvmXmU=;
 b=JrjBrPCQ6fFmyZ6Cb/VwUhguxIEQ5ZhXJ/jKInk1DSxrEYnKCrd8wWzuA5MhMeKWeM
 74BvY1CjF6i2EdaJV3c+yu9xUKhTnuWUkV8/VEKeO0IhJr015KRCazWUcYSee6apxt4N
 I6Szr5CL0VvhSmapoa6uukNR+hoLj0JV9Qpell89S0lbtRHYNJ7PEEYKNP2NI4GPsWF7
 5hxTi9pFtSkDm4SiHlHA3JNkDUdrrIBPzRMw2sm1U/jVCYBOjC434Mo4tIlJocZCNuMI
 T4zsYi6VTBSs+3SOd3zk2XVgBzIe26PbASPWc9I7/O6M9WyjEYHSP7Jh1O2bjuuNz+B/
 wUGQ==
X-Gm-Message-State: AOAM533Vksqcmkws5IA2sESt4F5Q8MPIsaBcXcoceNJNashz7duEeLGo
 CBWTWN7tP/z3hP5Rs/HRceyfKx3B7bc=
X-Google-Smtp-Source: ABdhPJwD9bEZYnFDqHJRo/ilNGeJy4pvg35s/7WkgPHClbyyzEy8XmUpbC8NKCoi6q6Eq7z2G7aUrw==
X-Received: by 2002:a17:907:94d4:: with SMTP id
 dn20mr3126122ejc.397.1611658950596; 
 Tue, 26 Jan 2021 03:02:30 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a2sm9533408ejk.80.2021.01.26.03.02.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 26 Jan 2021 03:02:29 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] arm64: dts: rockchip: fix pinctrl sleep nodename for
 rk3399.dtsi
Date: Tue, 26 Jan 2021 12:02:21 +0100
Message-Id: <20210126110221.10815-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210126110221.10815-1-jbx6244@gmail.com>
References: <20210126110221.10815-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210126_060231_507814_C9E2BCF3 
X-CRM114-Status: GOOD (  14.44  )
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
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A test with the command below aimed at powerpc generates
notifications in the Rockchip arm64 tree.

Fix pinctrl "sleep" nodename by renaming it to "suspend"
for rk3399.dtsi

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/powerpc/sleep.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index d0602f62f..6c571fee8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2347,7 +2347,7 @@
 			};
 		};
 
-		sleep {
+		suspend {
 			ap_pwroff: ap-pwroff {
 				rockchip,pins = <1 RK_PA5 1 &pcfg_pull_none>;
 			};
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
