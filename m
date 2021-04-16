Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9669AC433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:32:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 13E196115B
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:32:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 13E196115B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pS7QjZpedK0KzTtSxIZi9mBUJXeIdORdvWK/fapxp4M=; b=hhKkFa7qQ81nlDKzDdKLNhBmxA
	ZeySmP5rlGc79NpFH6oK/S/vDUIqOcs7KAMjpzAtzKwoUw85HGR4DBu2sInFn0iPwvWN+6lGVC8ry
	p838KAT1XzWcEK567p2ymjBssJkNCWxP/pYpzhnrs3SnDeDmQNhHhbLAtOwr1yCS6Ve6Gb29jo0wx
	KDEP0HPuuVxl6H0jxTC5ZCRw4Z9yh7gKlTTDg7UrIKSiwazDMoKqdHRnp4wIyanVrbtT4rs1drO53
	x5ZIx+AXQWLbfynAirh2B8YY673pb6ivR25v3DGAkzrnODWvdMCDc39uCS1PnavcS9aPfrzPN4hiz
	wtySUXmw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXJtY-001MVq-D6; Fri, 16 Apr 2021 08:32:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJTB-001HGb-Cx; Fri, 16 Apr 2021 08:04:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=0+GJVl5A79GqQ5LebjTNhcSfSUHslIcyCgOWie7UI0c=; b=qGZd9dq9ldXG4iurUUhAAfzI5E
 QgEx78j1tHqzhPTTdlpytna9lVwxiIOXhyvmd5DseIz4m8B5MRNb1h3Ms0V3pnO8+ep5/JmiMHP3n
 2Qx5/STI2pRYnwvrMS6D2LjSet7xq/Ex6NuTkMOWB/0H6g0eLErMLXSd/KI3HRwWk4Ep489T/y+6m
 kEfFQOARdtkZo7O3MnIq0rsvzN4ucJNOtPZbnBVhe9mZC2sTgJTLWkASXxhlGi+Hqv8JH0clfOamx
 w3atDLIUcKRWu5HUoAPmygkNqsj0WIH1Bje7E6WWFbVKyvGfCAYzHFByb/fevybG49ATugqfL9fse
 rsKWd/rQ==;
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJT8-009Ao3-NA; Fri, 16 Apr 2021 08:04:52 +0000
Received: by mail-ed1-x529.google.com with SMTP id j12so6145186edy.3;
 Fri, 16 Apr 2021 01:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0+GJVl5A79GqQ5LebjTNhcSfSUHslIcyCgOWie7UI0c=;
 b=Muk+NOdvawddovM7SLiOoNvRCbMVyVW3sAoamwZBiFGQ2YBAbcHI0p8c/7YjBF5zhs
 Aum6cZ8segbMAJwwwIUCALOxJxSrl277KAcKPZhSeaASmMPqeiiIYhvF6N05Hk3RH9/J
 TJTb/LObh/5sXq1jp4Dfu6zL1ULkA6Ma27PT1RTaE7plGSr9JiTKkg1m5vfVwrEbeK3X
 HxkvvtTjrM2C7Bbf8pNTr/DlYCxfkyi9rGXssV30tXtfaqH1McF9oF1999rH2xwUr9Tr
 c8b9dK0BI2jgG7XcGBmK2kW9M1SPH/x4JonELJpcpeClosbYNiGvz1flEVKrcbgGalEZ
 yL0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0+GJVl5A79GqQ5LebjTNhcSfSUHslIcyCgOWie7UI0c=;
 b=kmLQZSfCxSAeUoBW+pRHHJpzDf89JyVQgwmo1I226zBxdhckPjHw24CnEcFqPfgA3u
 lPePYpcyqulgy1DiQextH85xze6peAt/muHgaMIndmwuIpvnmFqIX+MhGCboEKXFObW9
 qoq5QXlrkKCtaooQHQcEcznID6aEg+U1CQjNqWptBwrsssygdYAFTkG+1gksosWmU4CQ
 J2YAb/a/dyQeyDgFo3vxiMEeBrf0CCOhwP0l9KUseyd7CMZBphkzqN3sh/1mt4VBda1u
 m11qQMU7MDtjAcVoLpDxZGWkILaThoNfTjce7utizxi0wLBW+iW6eYXXqOWJ96VIwGJL
 NbcQ==
X-Gm-Message-State: AOAM532IqDUCzSO5tqVh62u86VfNF/q7lXNL5NPwobCukqi8q7JtWsJ/
 sMGIWuwvOjdyqEWGavVTBZk=
X-Google-Smtp-Source: ABdhPJzuVSHXEILKd8+m9imL5V3K2bAF8Yb0hmxLx7ANpTilFv9VD8lRAFEd4xQLX9FFuWeuOgddSw==
X-Received: by 2002:a05:6402:27ca:: with SMTP id
 c10mr8229426ede.382.1618560289267; 
 Fri, 16 Apr 2021 01:04:49 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q16sm4672303edv.61.2021.04.16.01.04.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Apr 2021 01:04:48 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 01/15] ARM: dts: rockchip: Fix power-controller node names
 for rk3066a
Date: Fri, 16 Apr 2021 10:03:28 +0200
Message-Id: <20210416080342.18614-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210416080342.18614-1-jbx6244@gmail.com>
References: <20210416080342.18614-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_010450_776229_B8C28ED2 
X-CRM114-Status: GOOD (  12.74  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Elaine Zhang <zhangqing@rock-chips.com>

Use more generic names (as recommended in the device tree specification
or the binding documentation)

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changed
---
 arch/arm/boot/dts/rk3066a.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 252750c97..bbc3bff50 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -755,7 +755,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		pd_vio@RK3066_PD_VIO {
+		power-domain@RK3066_PD_VIO {
 			reg = <RK3066_PD_VIO>;
 			clocks = <&cru ACLK_LCDC0>,
 				 <&cru ACLK_LCDC1>,
@@ -782,7 +782,7 @@
 				 <&qos_rga>;
 		};
 
-		pd_video@RK3066_PD_VIDEO {
+		power-domain@RK3066_PD_VIDEO {
 			reg = <RK3066_PD_VIDEO>;
 			clocks = <&cru ACLK_VDPU>,
 				 <&cru ACLK_VEPU>,
@@ -791,7 +791,7 @@
 			pm_qos = <&qos_vpu>;
 		};
 
-		pd_gpu@RK3066_PD_GPU {
+		power-domain@RK3066_PD_GPU {
 			reg = <RK3066_PD_GPU>;
 			clocks = <&cru ACLK_GPU>;
 			pm_qos = <&qos_gpu>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
