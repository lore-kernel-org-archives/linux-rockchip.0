Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DAC9C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:21:34 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0B76B61155
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:21:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0B76B61155
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r9RXU5PGUxV/4a6m7s0Q9UIVfze4pH44WWLW2rLmr18=; b=a9FJxyy+8OooOD0PP0yQqDlc5b
	8U67FL8sAFnfxhuJ2sAuhaLHvOBDlmp8MzBurpSae7BpMDdcC4CfoDP2fT+TFXqxaxfVaxeFJ/hVR
	yNRZp+wBl/eolf8YseZ3YqYKhT1srNgSY7zRgifrUVKN60rbmxiN8ncc1Ufg8S2zXVCHguD7BSMO7
	FKgsn807WzPGEaqSTqtIgkwMoQSFiSimRQGAWw9UYvEWCXuMlU+Opg7sX4ErTDZ0W5mluleRKYDl5
	0zR3y9UWFENQWIqGYue+fDVO3Gz7yC6WGDgwG/EV+A3jeuM+pbh6QCQYE/UsLsB/XbT/sEZMs56GG
	M0xwRkZA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWmwu-00DpJB-PZ; Wed, 14 Apr 2021 21:21:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmun-00Donk-Ct; Wed, 14 Apr 2021 21:19:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=0M5FwzbPAy5c2Cwb5UeKel5vnxZKoOrIQ9Hgfx4Nf84=; b=jygKf1CY7qjua82Cmk0/7CYWaT
 51VNMBdRXIgQnOruZjZeDLRubgkmNyd+DOb3aAWW2dGIEcr4stJQuX6mPSyWa5qiyvhBYUxcAzckz
 pjcWi6yOZ7J7z4jVexxCX8llzOY0yC5ufp6dEstJOYOi6JALG6hDX329NqVig1vKgkNkOhLzSHcqj
 fg1UnvfxzfpKtcmYzCrMqaVVzGUFcyUgthmtld/Jf5gTbrCdPDwyS47MjKDcrDQWfQyR29emZXju2
 k4sZDISdRK6pI3zrIwanmgrzeUKCwBeVf8KYtMNpGMwjynkO9Y5rwig96c7BLz5G1IQukAFLcZCaT
 dAjxlmEQ==;
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmul-0086r7-08; Wed, 14 Apr 2021 21:19:12 +0000
Received: by mail-ej1-x62a.google.com with SMTP id w23so17762930ejb.9;
 Wed, 14 Apr 2021 14:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0M5FwzbPAy5c2Cwb5UeKel5vnxZKoOrIQ9Hgfx4Nf84=;
 b=XJqVnGGlPZX8CvYzl+WAUGvK24upEn2NOmomJFSU4ooCZYs6HJOr4/t1XziPzp+u4w
 wGsQ6wTWlNxh+Hvf/mkKbRax2q5pXa4HmceACb5v8qmitzDJJJbEFs5YVwgxlUZG92gJ
 Jshy1rhQD+kHiFAkr5T/Jo0sSAUkmZ3wwZOST6F/HnNpHT5SWpabWDq+wMmkCBsOHqu4
 f/7t6SETkH9L5kVFe5CFD0vgoaRfPAA1OaSmIoSV/L8XJ0mLVKU5YWSSWd9iHobA/UTS
 mK7EhvQccYYe/WAnRds4xEYe4VhVWIECxTahYfsjMisxQYW+e8PBLrn22a9Wf2gGJTjQ
 m59Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0M5FwzbPAy5c2Cwb5UeKel5vnxZKoOrIQ9Hgfx4Nf84=;
 b=FSj7+MFz2HLvUois0i5c4nxmI0F22T0Ce1px+KfuUPyWbnBK08gBgEMOxVQmccGS9o
 cPLQHhx6ag9YdECXtZljzQX6NOchRkKhKjnOn/UGux8j2ei8mjfwqYTJLHVOqp3vUK1g
 4dYSA9EKK0AM1TwS4mBuLVxuPpXPRaYBgA0j1H0iRSeSYUniB0CoiHS1+/cjUCxGjpdO
 jcLas57NLNCrLjGycz1ZYSjgQgIkcfGLczxfA3+D9NP0wD+Z75PTL8gAldjiYaWzxCN8
 jYSqNW4dlbpPgqbfmY9zoq/hkDMSWArX1J1PgnxdJyRwyIQSyF7n1oQkOl1flfmdOcVF
 dQcQ==
X-Gm-Message-State: AOAM531XWOskDb2x6YqJwrHvppfnXKzdp6Tr4uSxdLbvV94mgKSHLfIe
 R8V1A+54SV3Sj/tz9cEusOQ=
X-Google-Smtp-Source: ABdhPJz32JfxtVn+RJlnSVHMQiHFOzrDCBnX4lrD24OLqQcMNGwPPcjTjN2IvCPYDD3M7NzOLB5Mqw==
X-Received: by 2002:a17:907:969e:: with SMTP id hd30mr74976ejc.5.1618435149669; 
 Wed, 14 Apr 2021 14:19:09 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v5sm568222edx.87.2021.04.14.14.19.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Apr 2021 14:19:09 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 05/11] arm64: dts: rockchip: Fix power-controller node
 names for rk3328
Date: Wed, 14 Apr 2021 23:18:50 +0200
Message-Id: <20210414211856.12104-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210414211856.12104-1-jbx6244@gmail.com>
References: <20210414211856.12104-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_141911_059828_DFAB4177 
X-CRM114-Status: GOOD (  11.88  )
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
