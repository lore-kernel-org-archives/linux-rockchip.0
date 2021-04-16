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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B29DC433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:35:29 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BF8E0610CE
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:35:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BF8E0610CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r9RXU5PGUxV/4a6m7s0Q9UIVfze4pH44WWLW2rLmr18=; b=q9DrwOme3uWinMplcwSft53kVt
	6Gf+ZjfUrrFXCsHofHTEPuoXSb/D+ERAxgM0w7d3Fs7UqAU+r/j+hDgpcndGinz7FMzcY4vPqOI7+
	enWjLJj9daGlxwj5cN+hc8XepbaX6sqNXLdD9i3Oh+vvYwrshqHQQaU0TA1Wv20Qdvu36gqggS0PF
	yP90OdModTGt+xe0qscLdFGgNsZPzToQrztqRA/j5DzaLlZelBLf3OY3jFL6ES5y2SWOboKnNoXJd
	hXegNpqc1Bzn9LKrGo6UrnL7mboALJWfyZQVC/5s7p6BgI0KQL/oNiQvk1Qe8q9RSIsy4vxoHJI2K
	mKb+TT3g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXJwh-001NIw-4F; Fri, 16 Apr 2021 08:35:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJTf-001HNJ-7A; Fri, 16 Apr 2021 08:05:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=0M5FwzbPAy5c2Cwb5UeKel5vnxZKoOrIQ9Hgfx4Nf84=; b=qJf7SS1l9/15j86uyUIe8Ry3Hn
 urbg+vZcl6g96wuAFIgIdlNv9fb98AJn9ULjsIV4h0RWrBQnuqHOLAaL86djQXoajHdcZ4CHkEQOq
 v9g4WTHGh6p4xCisEmchKJ+OO2QkiX6k7ZXSU8tlCHM+ecfoiUvfOpN9LN9A3NN4G1ZFFKBvrHW37
 dnhslSNmv5wmm7xPN2C8Ky6BUo5nstiy6JteyIbeZSI7nMkVIX933fq2+4lWE+s3U/BWq2Y9LqGuA
 oaeOfJ+/a4AxWgchnH0jO4UsbwkBU0efcsOTyUmw5FHQciyghaErQK1v64EYZXy1vdquRgcHzTlyF
 5H4fuUFA==;
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJTc-009ArY-LS; Fri, 16 Apr 2021 08:05:21 +0000
Received: by mail-ej1-x636.google.com with SMTP id w3so40862776ejc.4;
 Fri, 16 Apr 2021 01:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0M5FwzbPAy5c2Cwb5UeKel5vnxZKoOrIQ9Hgfx4Nf84=;
 b=R/7D0OTvAun7wf19vDStVTxeNs64hQEZe0p1/bmd+HWtdihsH5lN+N4o/Qg9FM7pWG
 d1rUU3pWrv1nIW44tJj6hiWfv9V2gUzkE0KWrGr7jQ5YWtPz6mvStNZc9Jxt/y012m8B
 VHtIRC3u6JFIKklG7Zx5RnYlMivFJO6mjkkIerEA/GRdVv5XcwHghYyQmbI26uTvS3W1
 k1H70ivIoDGe0EIYVjIMwLlYA3H4szafADGEvXuPKg49SBptMbK/tuWFBkjma5SSWt9F
 nWSTGiW1ZF7QhJwJf6NMmhAHn6MQkZ3/1DsK7aNP7nKqeDE7H0GS42gfK9kXGGC+b0Lf
 klhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0M5FwzbPAy5c2Cwb5UeKel5vnxZKoOrIQ9Hgfx4Nf84=;
 b=EnhffMFts2xJDiJwJ/onM+aSOh3dwW3PrYsOWnaDmeIUv7m0ahvOINiJtuZdmMLo58
 1EKW4jZ/o37wGD/Pxu7pF1DctslJhlRv/MtgLH85+acpxnqNx+CQImtCsf6tE1pJQfsC
 0iUDdwQdw0a7GWCLv6bbv1/GSGDUWcAU3Yzi8ks7r00DNLpYjS7lz0i9br+6dnb+1j9k
 OjtI+Be7XraDhUG3P/tWDXC9qkYM1EbARj0wKe5kyFtXjlw2n54NcwzQKQF2ZhQDT5bD
 f88PK8VwPmK4/sHJW/DVbCUMSVchwikfJlZtOWGAbA/ksM6OUifZGKos2QR+wXiEbUJs
 mhoA==
X-Gm-Message-State: AOAM533OswOJ5VqPVH5KxTBFQhfWVKzbZ+nBW9SYRJBy/X5sEjTGMXDJ
 UmziOFYh3L7pMkAg4NguT/8=
X-Google-Smtp-Source: ABdhPJxp2vnoUzoJvo8dsaUcsrFzFzMLVvP8vaE4jSCfQNlNfBnTwZ200tUOsTyXGbJjlntKQh9j2g==
X-Received: by 2002:a17:907:c0b:: with SMTP id
 ga11mr7033746ejc.545.1618560317292; 
 Fri, 16 Apr 2021 01:05:17 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q16sm4672303edv.61.2021.04.16.01.05.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Apr 2021 01:05:16 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 06/15] arm64: dts: rockchip: Fix power-controller node
 names for rk3328
Date: Fri, 16 Apr 2021 10:03:33 +0200
Message-Id: <20210416080342.18614-7-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210416080342.18614-1-jbx6244@gmail.com>
References: <20210416080342.18614-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_010520_724859_0331DF49 
X-CRM114-Status: GOOD (  12.13  )
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
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 5bab61784..35df57535 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -300,13 +300,13 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			pd_hevc@RK3328_PD_HEVC {
+			power-domain@RK3328_PD_HEVC {
 				reg = <RK3328_PD_HEVC>;
 			};
-			pd_video@RK3328_PD_VIDEO {
+			power-domain@RK3328_PD_VIDEO {
 				reg = <RK3328_PD_VIDEO>;
 			};
-			pd_vpu@RK3328_PD_VPU {
+			power-domain@RK3328_PD_VPU {
 				reg = <RK3328_PD_VPU>;
 				clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
 			};
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
