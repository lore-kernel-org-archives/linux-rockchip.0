Return-Path: <SRS0=3pYS=JO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 334B1C433ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:30:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B66F4611AF
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:30:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B66F4611AF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BUyCUzJpZiB1j5Mk8d9zLHFUYf9gVCs7uJWREQMFtSE=; b=OcAkkJE2fkpuLwBy4vbNfvewqM
	vO+AXKJlAJD/Zr8q/3Bnc/KhEM+dk2+zyXi4lkrYOOqQw98FgRmOlYpc/J/Sh9DJUm6svxLmnVCTz
	89YP4aVVKAIh7q9hwgMmd+DIpS9Wx3gHyaRpapk356FhVHZFV+pzjPQOJVIaM5p+B40ZI9BtzUvia
	5aftPR5LeNk1OGklTlqurTO30baQGO+/juzbanbvgaSdgKP16z1cvAIH/BaOdbKHk41ULeaoFZPyn
	ttJbCIXD0McBkFvCqeTeLYGBpET4JGXoNSRYuo/NPyLD7idVrleXzk6D2X2VOAYNmC5mZsBKz6aH2
	vmDHSjMQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXjA0-0058Vq-9A; Sat, 17 Apr 2021 11:30:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9M-0058Mh-OE; Sat, 17 Apr 2021 11:30:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hQOvTm7HW4RD6s7O1xMZhkEYd1hzrRk65QKfsGi+jms=; b=K1i/QAUBW4vhpcWHk+cETawKND
 X5z3XW1tihUu3MoMO9GpphzDSKuzVopJQRR1SX3+fdHd7+KgWYjKDXL0CWXNziNoW8CyjX9NkuGsf
 zeUobnIweF6X8TSQbx75zdg05RdnDBRU2OSfXYoFoH1cKIx8TuBq5H78IvAIQsANGOw9O1La68X66
 0rLvjpcPLsm0FPPFR/DAk59udZdUTrqgcgu7A39k/+PtzG5VkmtCZG9MT9f8nx8Lu40zijtNQbWL5
 UOd+GPKm+seBgDMcEfoXbNU32I55+9vhAjek1114fW11GoNEwJuHAyTwMFWhRV1Be1it/I/nuMJwA
 nPqgeorA==;
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9H-00A0Av-Ob; Sat, 17 Apr 2021 11:30:07 +0000
Received: by mail-ej1-x629.google.com with SMTP id w23so30034095ejb.9;
 Sat, 17 Apr 2021 04:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hQOvTm7HW4RD6s7O1xMZhkEYd1hzrRk65QKfsGi+jms=;
 b=CgPgDFVMFq4wllk5FFa1xNBr7y56TJ+/lHd6jY59UqI461ikZYhrRFISMACkizptnr
 HD647c74C9VDclkXW2dcnJFU+HrSiFQDEbh/x+7KZ6UjNzSJKsGMg4q80tBT3Cal17UD
 MqCqkQv/rIyCgH6UVL0NEiBdyiutBpX5resdcSHN1alPUDL6/oSsoeqaSptqisb+o5ha
 WYZkAv35cjPr4H+6EHXQEr5YHJ4hSL/m+d57AfNBLPOcvD+uT9WXviMKCLZX/DksxoA3
 lEz8l+ibZIqsmuB9tX9C5tQ2NCau44q2oF6ReF2DoLaPBVsrwtiCRkoRFCCc35NJ9Ke2
 A4gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hQOvTm7HW4RD6s7O1xMZhkEYd1hzrRk65QKfsGi+jms=;
 b=lHyRA8EcgaLbm4VUP/PrfQQzWkLANkFV2NZ8FNxHO+VNWwiLOpyiy5NSmdnFZnF7ts
 BfPLGFEQnlsxNUP7KQ1vNJo/DwSbBHXAH+W9WryPl454Lygwqgw1Sqc7q0EfHs5Ofbhw
 RsdTM1Av/b2x+tX0dPMoOrf7dbOsNWkhThh2Iw78/hfObCUyJrnYiqHwS3qvadLm1lt7
 3UXtGg5CFISzmOytu6u0q6aUvAVWmbBnhgHfGQAo7f3TakSyrR+ErrkLbv13PKcq8r9F
 fQxLjEylK9bryDP3BpSyhqJbZdHD5dlyRprbSTqGYLnTp29aHPeiV7liqydv435cDi4X
 iGdw==
X-Gm-Message-State: AOAM5314VxA/akEXCqYE4rkORdWoTFxCH39lNoQ8jgGb0oLsSgxiKzh3
 w6X2cm/uGVuSwtFZRODP2f0=
X-Google-Smtp-Source: ABdhPJxfglDgxhOK30cKBoqGhNOQm9LskaGGLQXeiVFJ3oOMuR/4cR85mcvbO4ZlTi/1cmPGP6fWPQ==
X-Received: by 2002:a17:906:2cd1:: with SMTP id
 r17mr12523353ejr.429.1618659002697; 
 Sat, 17 Apr 2021 04:30:02 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f20sm3022875ejw.36.2021.04.17.04.30.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Apr 2021 04:30:02 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 02/15] ARM: dts: rockchip: Fix power-controller node names
 for rk3188
Date: Sat, 17 Apr 2021 13:29:39 +0200
Message-Id: <20210417112952.8516-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210417112952.8516-1-jbx6244@gmail.com>
References: <20210417112952.8516-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_043003_820396_083AED9F 
X-CRM114-Status: GOOD (  12.12  )
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
 arch/arm/boot/dts/rk3188.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 2298a8d84..5db32fdbe 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -699,7 +699,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		pd_vio@RK3188_PD_VIO {
+		power-domain@RK3188_PD_VIO {
 			reg = <RK3188_PD_VIO>;
 			clocks = <&cru ACLK_LCDC0>,
 				 <&cru ACLK_LCDC1>,
@@ -721,7 +721,7 @@
 				 <&qos_rga>;
 		};
 
-		pd_video@RK3188_PD_VIDEO {
+		power-domain@RK3188_PD_VIDEO {
 			reg = <RK3188_PD_VIDEO>;
 			clocks = <&cru ACLK_VDPU>,
 				 <&cru ACLK_VEPU>,
@@ -730,7 +730,7 @@
 			pm_qos = <&qos_vpu>;
 		};
 
-		pd_gpu@RK3188_PD_GPU {
+		power-domain@RK3188_PD_GPU {
 			reg = <RK3188_PD_GPU>;
 			clocks = <&cru ACLK_GPU>;
 			pm_qos = <&qos_gpu>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
