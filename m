Return-Path: <SRS0=/3g+=CH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C857C433E6
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 15:59:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1DAAE20707
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 15:59:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="i0rkw6Fl";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="X6vCf1x8"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1DAAE20707
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/hsMTw9AJtmXb2sXcbHJnAldeCiEawnzn0ubCySeOPI=; b=i0rkw6FlN+GX3LKumYws9kwOn
	EtVfKd7gYuLVhWRwvetbSDvWAL71CEU1CimMDVfg6LSyqRqGTdIvrPlgDPwWiV6L0AkFaTMKdtfYB
	qVyf+JRdol4X7wTSJME51pG39W6Wls6/r4v5uoG7mN9W/lyc6ubjTsjBbN11Wp33t6O7ynN61ZPlo
	XjBxj/c0ofMWYRL2LwBRCkNbtEY1C0Rwwxr7ttqcCjTmcJCsyJ5Nyw/Le9sSvSq5zBmSz1DJzahnG
	xSr0ATmvYAWPEO3B8SUkmhAlG1eyHSLzC5Hzawa6wQZ+lnKDawacfghoMmHY6/jOHxSn3t0OtYtbX
	CAWscM79A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kC3G4-0004Fc-QK; Sat, 29 Aug 2020 15:59:12 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kC3Fn-00048d-FT
 for linux-rockchip@lists.infradead.org; Sat, 29 Aug 2020 15:58:56 +0000
Received: by mail-pf1-x442.google.com with SMTP id t9so2209428pfq.8
 for <linux-rockchip@lists.infradead.org>; Sat, 29 Aug 2020 08:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+xa1iz4+LbQK9GmC+3dpDj+oguycEKNLcSKsGXCFjpc=;
 b=X6vCf1x8M2sLlMLv5j4Nw2WZpqtS6NLqqEpWr0kzmpxjmUtwRKj3wA3K4r85jDTB5p
 CibTR1D4ZZyjRnSvdLRkim8iBLS61m7i1vKcZ8G8rwxlnNzGHHgSc17CJF/5a4ghETxR
 2orkEIPkUBLIoy70O5Eeym9SiOQIOc2F4swyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+xa1iz4+LbQK9GmC+3dpDj+oguycEKNLcSKsGXCFjpc=;
 b=pK51+xDplGpt0S12dsu0nd6ooez8+vkJctFMZCHgoU9k1WhpIJf4KeDAuezzdCOoF5
 0XE5yOhhGtosIgWmyydLQqbhm5A/h5gXBL4CF/YipXloyBgmDlyHQwdJttEwsOh2hbNZ
 YHSr0Z2K8WCmSZloAbwwiadcVTg3li3IOg1P5jv3uQZdNBeMjB+q5Wzrxf72cifCAbtj
 BNDyD+gSs8qlUm04nR00rXyRhRFJyvYzCyTzR5lgVoCW+XEPMVDMSU2H29SidGIzY607
 awCsZ893AUfbkAoEgJwPAoFbNgGuDKVrX6mldlfKjaHmfsYp8LRh5Je7W22lTsPESSSH
 z8Fg==
X-Gm-Message-State: AOAM531talwjFUy+PaF+KKo/bdMXSaBfhLePP+k3lrzFsjH+HNBHfLm1
 NNsL6l68w0pWn06lLNTvZUXRgg==
X-Google-Smtp-Source: ABdhPJwKDtSAllMNHqmAEl7wwHQpzu67T/H1QT6DJfBY5vrvsEEWj7ICtu7JnbAf/AO14geaUmeYHQ==
X-Received: by 2002:a63:d409:: with SMTP id a9mr594039pgh.312.1598716733710;
 Sat, 29 Aug 2020 08:58:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9460:cfb8:90a:fedd])
 by smtp.gmail.com with ESMTPSA id
 j20sm3131714pfi.122.2020.08.29.08.58.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Aug 2020 08:58:53 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 5/7] dt-bindings: arm: rockchip: Add Engicam PX30.Core
 C.TOUCH 2.0
Date: Sat, 29 Aug 2020 21:28:21 +0530
Message-Id: <20200829155823.247360-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200829155823.247360-1-jagan@amarulasolutions.com>
References: <20200829155823.247360-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200829_115855_567524_B3A78E34 
X-CRM114-Status: GOOD (  11.13  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

PX30.Core needs to mount on top of this Carrier board for creating
complete PX30.Core C.TOUCH 2.0 board.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- new patch

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index bda0f2781890..3aecb1241492 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -70,6 +70,12 @@ properties:
           - const: elgin,rv1108-r1
           - const: rockchip,rv1108
 
+      - description: Engicam PX30.Core C.TOUCH 2.0
+        items:
+          - const: engicam,px30-core-ctouch2
+          - const: engicam,px30-px30-core
+          - const: rockchip,px30
+
       - description: Engicam PX30.Core EDIMM2.2 Starter Kit
         items:
           - const: engicam,px30-core-edimm2.2
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
