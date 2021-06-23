Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE4BC4743C
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 11:59:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7561A61002
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 11:59:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7561A61002
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vqR7yhAbw41AY0yEEjZ+pLL6vvvocElKTXu2j43j4Lo=; b=rKUSwHceWSz7TT
	3BIOgw3NmtlSZiLrwDHvti4H+sh2+ykCrfQkGmHQmEQIMkMI6fuBcvIbsI7O+343/ju/8sV/l3NPB
	T2c2z6KJ2o2izuVkJ9bNVJI/qP2sMd+SsRSbb4ylsOiVyDVtM5a7Mb2Vw3Qd4YD/93gH7F6TzfDjS
	c7wJMMxGDyvFL5cCBMpYj7geIdccAI8fU3YASNXeWhi2xTMhtDfJ7NyUcGKp57bJQHDXnHz+vf812
	2UztHNC3rS3P689lL+h+kMaLHoU9qhbvMA3XNqzCtWcmu/gY/YC9OWUFkWrmItIYydtxeyiu2TOPH
	iF1uQ3UGpi0oPzsj6a8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw1Xq-00AXjF-De; Wed, 23 Jun 2021 11:59:50 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw1Xd-00AXgV-W3; Wed, 23 Jun 2021 11:59:39 +0000
Received: by mail-wm1-x32e.google.com with SMTP id
 l18-20020a1ced120000b029014c1adff1edso3808730wmh.4; 
 Wed, 23 Jun 2021 04:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xzw/4c3zYIVYrIQdBbMBp4EEh/m3aAvDBYr8K6MbN2U=;
 b=FDdt0PMX1Os97ku1lM/T7xZsc+mCtqRZhdLHnnWOX6Mcu+7YHQ61oZguWkC1ASwsw1
 vgP/GdS60Mv0otXIjYI+11IrHNRwHgSvogVwoXkzZFI4pWHj4XYRtmLb0DOaC7myQHZ3
 dvnzmb2vnxLrvM2L/cKoN16dXdIGgLhUWzU9NasBNFll6ZJ2jaCZjPY1WpNz/fE5jxij
 fQ5xIDr/NONAcdrSxu1QTTRj0V5DOylYeyt/vNWS7yp8SHaDHyPxX8B/2xF94Rt23Nbk
 DL25dX5NipeqRkLBdq1JbekayStncreY4QzOnL/Ik9g0N2HyU+Okgvs2nRzHwB5ZJde5
 w0aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xzw/4c3zYIVYrIQdBbMBp4EEh/m3aAvDBYr8K6MbN2U=;
 b=p4z25TvAwxyljuZikfQj5x6xNx7CfQMoCgMhbpQgQ1IE/b3DYB8eHvce6uMI/LZV+f
 pW868EdFHPWG7tiS8JR6T1tmFxiAvvxF2kypNScZ33HLVyBibZwnyeConABdI4hYX26K
 U/sF+mlMCA3vxqVjvxxDUhfhGtEIp3ZWlCs0zm9QHLpEcQTNP8at8RgFDTvwIp0sHRuc
 70L2AnD1nqj2EpeaC42YprU8qGNM82pyu0BWSvKgnzzgiaoEzvmohp7W/TyYJpZTgy1K
 vw1ke5b08zLcIVyMZOyxNF2JOd7xYP41Hk105QApT9N6VWk44TsKyyzG3UyRAg4LMe+W
 JdfQ==
X-Gm-Message-State: AOAM533Q6tA1q9RcMuvF0aP9/uEHxi+wjzK/RiUzSF1WETnMztQAu7Zg
 iyML9IF2EsrJN0w7V4sMUtph3RYSWdG9
X-Google-Smtp-Source: ABdhPJwZuK8Va11JBkM37YotH8BmGlV0DaMaCUiNgAghs6DU2efC15zigmOSaUc5v6PneRTKxNyebg==
X-Received: by 2002:a7b:ce8e:: with SMTP id q14mr10204347wmj.33.1624449575836; 
 Wed, 23 Jun 2021 04:59:35 -0700 (PDT)
Received: from localhost.localdomain (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id o3sm2661265wrj.94.2021.06.23.04.59.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jun 2021 04:59:35 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Fix GPU register width for RK3328
Date: Wed, 23 Jun 2021 13:59:26 +0200
Message-Id: <20210623115926.164861-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_045938_071070_FBEFC879 
X-CRM114-Status: GOOD (  12.95  )
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

As can be seen in RK3328's TRM the register range for the GPU is
0xff300000 to 0xff330000.
It would (and does in vendor kernel) overlap with the registers of
the HEVC encoder (node/driver do not exist yet in upstream kernel).
See already existing h265e_mmu node.

Fixes: 752fbc0c8da7 ("arm64: dts: rockchip: add rk3328 mali gpu node")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 8c821acb21ff..da84be6f4715 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -599,7 +599,7 @@ saradc: adc@ff280000 {
 
 	gpu: gpu@ff300000 {
 		compatible = "rockchip,rk3328-mali", "arm,mali-450";
-		reg = <0x0 0xff300000 0x0 0x40000>;
+		reg = <0x0 0xff300000 0x0 0x30000>;
 		interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
