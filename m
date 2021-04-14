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
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9A9C43460
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:20:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2FAB961155
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:20:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2FAB961155
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pS7QjZpedK0KzTtSxIZi9mBUJXeIdORdvWK/fapxp4M=; b=qDYF3mu4fydRrpaL7FOoR+Hino
	zKzmfOeWiSMgldoBMAdWCKQYqCwIZDzq5z0tVOvz90gVgvhV4+a7WdqwQ20TSanGaw6FRfFVFkO91
	w/xUIm/Oi6d+kM9kJ0HhMRolMMNrCBJkBL8nX+A1bAfzMFF/IMuFFVqRzkqRs0T9AO35lFlPtROrL
	T1Qri3FrAkh/Z6v2C2e3Je4lvHZ8ELhlb++L8FGEiAeLGbuKEZshwR3oVlrCSqPQc3sNqAAYIt0Y1
	E53V5k1INH8kjKTl8pDplHUdd3x2HvP0XoOP6HOwBpWq+f5cw27EUptAp4hWfM2dUzg9o60Sl6NN2
	dEsKMcKA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWmvV-00Dosb-SZ; Wed, 14 Apr 2021 21:19:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmul-00Dom9-69; Wed, 14 Apr 2021 21:19:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=0+GJVl5A79GqQ5LebjTNhcSfSUHslIcyCgOWie7UI0c=; b=Mgk9mAhJOggpuX48DI0GFWhDAr
 V4N1OU4cniRZhz1a1DkEAUcdJVkEjPZ0TpasmQoeNYn621dt1Brwu5xdcv0XNsoxhmxwKoenWdffu
 UiHXIlnoFgtWPvKzUcsBOAtDvsSBsDJ3b+FdmPvakNTA1C3DfXCstvUKpvQ/xrymkaP0e0ul+IT7Z
 kyofcuKEqo6Lf0n+C3e3iE95uOjW8ck0s6Fi9rKb/Y1Tl+uz3CNaKiFhjHTJzOKiVDKCITH1EwsLZ
 OWPcLN2T3l46OVGAWAXicgZr8la1ckGLER8S22xZGfONnSajjDK10s7GKjOue4wAflKOBk7rZqFJr
 tLumSA5g==;
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmuh-0086pp-Np; Wed, 14 Apr 2021 21:19:09 +0000
Received: by mail-ed1-x536.google.com with SMTP id e7so25368583edu.10;
 Wed, 14 Apr 2021 14:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0+GJVl5A79GqQ5LebjTNhcSfSUHslIcyCgOWie7UI0c=;
 b=f0cKVSPoC4MoEi6nHgfWgSdtZ5R+jozAZbNXNJc2a3sek7K1aJDpk9a+58ELzHFGNy
 kevtpSF2WXQYFinqCKMFiBWYCJTXjIk2m0IBYOim6JWAzcm3JCicFUHOoNbagkWblqzF
 K82UIFEVEPnqf1DE2fy0IGmsRSF1Z6SSo+mR4skzEkSQmM5EUT61V8EGLe0YV/13YaPf
 Ed5BFzFLYu+5xlxZTBVKCpb1jMUcb55n99At4PsjJxCvwUcyfEyvBTWlD23fSJ5feNUY
 1Y+sf0MwXY8pj+En0v91GO4LlCnozXfyTtJ6SFkgPWgd2Y3CXa8PKJQwBo9BHDQW339f
 zKAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0+GJVl5A79GqQ5LebjTNhcSfSUHslIcyCgOWie7UI0c=;
 b=Hf+JFUPMsHRvfJFB9CviaRZ1pk9CgoXW5c3X0CMLIKWui1J7Vps8khJ//om0H/fQDd
 5eO2aJjHJpdPrHuZAo67BZrzaHH7o3uYWCnVmxqtGOW5BdS4LByRyKynk+jhucyAjGoq
 6TbPpDOTZsUeuOn1ZcXCm7br2B4RXBKW85P9LVilSd/HSULGdLSI7BQ0gBanQvkU8jEf
 ehy1EBuPi6FaVJdIHBCPbCZReKy2QHVStQOOINzv8RCV0EdXEfVl78PXt29dlEo07lvo
 JUJSPtrsxZqzac6rIooDDUEWQA6aJlu7o4l41PF7aNnRK5AavHtzlu/LJc1fns2szrS0
 E+SA==
X-Gm-Message-State: AOAM5303zuDKNINjl5JVaMZKqKXaeZ589pstK5Sb+YMSQOOgGMEbx9kA
 GvnZFE6jjJZPGI9vfbBEVLg=
X-Google-Smtp-Source: ABdhPJxK5qIHA/uXDaWy2+zAkiizoGLDNGJaHWXKb6phO+7md7EaoeT+9GxDHfMf70XykvrUXmbilQ==
X-Received: by 2002:aa7:cc94:: with SMTP id p20mr210790edt.353.1618435146411; 
 Wed, 14 Apr 2021 14:19:06 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v5sm568222edx.87.2021.04.14.14.19.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Apr 2021 14:19:06 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 01/11] arm: dts: rockchip: Fix power-controller node names
 for rk3066a
Date: Wed, 14 Apr 2021 23:18:46 +0200
Message-Id: <20210414211856.12104-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210414211856.12104-1-jbx6244@gmail.com>
References: <20210414211856.12104-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_141907_799548_00A85601 
X-CRM114-Status: GOOD (  12.27  )
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
