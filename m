Return-Path: <SRS0=CSn7=D6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA384C388F9
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2020 18:16:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 29EF520759
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2020 18:16:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="k01khrCm";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="COKoTY6b"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 29EF520759
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jx/5fgNMff3t8mv50gNGl+iQLikVV+WFJ7U+hiqYLT0=; b=k01khrCm8qsP58UOla/0cSigOq
	3xYtmqmBWAN/2A6ZA5O17bEmebtPjiUGRFcmwjUHi1qV1sh97ro3ZtlBtlZhWKK2Pc4B7sR8vcbZl
	KdRn1Fx3KtlVKqtJqesrDWFUxrNSnVQdVCvmP2UjgUVVqWJqcYJsFyMYY/2e7Z3imRXxVJBPUgq9g
	bmY/VyWhBBNJPpMSPIHGmabyUjxvYEpBgDxZfSwKRFLKaiz6lAaScslAxyrmxTULA72ohJmZokLOW
	P/vdGPGPmQJNepehH4nkfUvbcOSRnLmukUdlsuviKtPzABWpQuLYwcY4LnJHANVOVmOfXIdZZM3vy
	Q9d9KMEg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kW1cE-0007Gd-It; Fri, 23 Oct 2020 18:16:38 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kW1cC-0007Fw-Ro
 for linux-rockchip@lists.infradead.org; Fri, 23 Oct 2020 18:16:37 +0000
Received: by mail-lf1-x132.google.com with SMTP id l2so3204045lfk.0
 for <linux-rockchip@lists.infradead.org>; Fri, 23 Oct 2020 11:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jgzcJanOtbB8ayQ+kiIz5HlevCgPPzDSXuFBsBzfzgw=;
 b=COKoTY6bBNMDEhrNUCwfe0PSeTmqzg6KeKk3FLIWTCs4ABrO5BXgAXkKwSLnrW22d/
 lwc1x7Dc4wInGPDIkJ+UwApBF+YfKGZh22dsUTdb8iwkhr+INFO/xplaW8cYqbz77nmI
 1ttkAvXUlAyVfXHIk0Dj/ZHaO9E2n+RbgaXVSe/sfXY0l8rwpwuLaL9UHgqWhT8qwbK6
 IgKvGM8xhwsCeGHuoeCHpx3ckYdC0w70F60dHE31yg2NijGPbRCUCNcbvReKDao1qHG8
 oN6YEATAmbFJTH51xFNk4Kif2EgbjeEddbWWt4pPPG+HGn+4ZjKDhSNy+uk6mViq7QE9
 rd5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jgzcJanOtbB8ayQ+kiIz5HlevCgPPzDSXuFBsBzfzgw=;
 b=ENTc2KXduB64MFCBxYKgvJRsoMXNqi7p3wgwcumMZxUPV9TExPSNC5kaLnTSJCr2zq
 WxeEVWBiVKGjbEjKeec3X/LDbV2pF4ba2RQ9iomcPaqQuGhCLaZb+1tM4A1P/RYsVehw
 b412JlbM6qnDsZTaVMhCehF2eI0KjkCV8XqrWD08LQBfJUf0Aw0L4lHVWRF9AC9XKB/r
 L7qvbM+EMADtmaH/HTPAap3Ulq1UPKCQzKcJDI/vQ8nOvdcchkG2ZPJWSXnoBSpt1Ypu
 jXGsgTpVki/ACDx/zeXZSefcXdV7j6yUq9nkgWHrAEHcpw03UmelXERW1tVjrjl/0muN
 e38A==
X-Gm-Message-State: AOAM533FmOs9K3ZlxJi9aqZAZqvHM6B1AX1X7FNfKqoL31LjMokBa17I
 VMSmSNvOP2QebZmPiFgPTxc=
X-Google-Smtp-Source: ABdhPJz6dnqB4MNO7eUYQIREgtgBPqL+k+1Okg6aZvhLKsEVPgt0sNQZQl7/VTyf1vs8OVXchLV/nw==
X-Received: by 2002:a19:408b:: with SMTP id n133mr489667lfa.564.1603476992897; 
 Fri, 23 Oct 2020 11:16:32 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a31a:4241:5400:113e:58f9:4c3d:30])
 by smtp.gmail.com with ESMTPSA id
 r6sm204143lfm.242.2020.10.23.11.16.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 11:16:32 -0700 (PDT)
From: Maciej Matuszczyk <maccraft123mc@gmail.com>
To: robh+dt@kernel.org,
	heiko@sntech.de
Subject: [PATCH] Fix poweroff issue on Odroid Go Advance
Date: Fri, 23 Oct 2020 20:16:29 +0200
Message-Id: <20201023181629.119727-1-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201023_141636_921679_2DD12EE5 
X-CRM114-Status: GOOD (  10.18  )
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
Cc: devicetree@vger.kernel.org, Maciej Matuszczyk <maccraft123mc@gmail.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 35bd6b904b9c..337681038519 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -243,7 +243,6 @@ rk817: pmic@20 {
 		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "rk808-clkout1", "xin32k";
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
