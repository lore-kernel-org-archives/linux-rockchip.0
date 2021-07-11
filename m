Return-Path: <SRS0=P8Gh=MD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B1D1C07E96
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 11:22:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E32E761209
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 11:22:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E32E761209
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uOFARA0OIDnZf4UDZRE+NTd8vLC1FEOrhxMhgSLACYo=; b=dB5FzKUdC1UOfS
	3WeOArJBReBqkj+xdxAwoIzyl5bi6iyTm99IC/+C3zsBrV3NSA9jmO0EDb14olqj0XexG9YYtSbao
	bCD7MeJS4t/OCwUCt9EGP6VR6/JDRsNzZ34ifO72FmDosauq1x8Q0Cbr0zOMf8g4t/PdgSivdMUwU
	6+2qbxaXxYBMfF7uu+bV75tQc0+XWc5V9U1gdAUd4v/DTYwszzVfzvCOPLP9pXNpg0DqRMnMTsI/m
	X2gNSG0Vbk10aYVOgHIdRo+I9XPU3lDIG4NDPhtfXrsIb4ux2WOPOEDLMo3gXBnnEh7iAKFsmiAFQ
	UEonGn5prWWM+rNoeHKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2XXO-004yvY-2i; Sun, 11 Jul 2021 11:22:18 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2XXB-004yuW-7w; Sun, 11 Jul 2021 11:22:06 +0000
Received: by mail-ej1-x636.google.com with SMTP id nd37so27303447ejc.3;
 Sun, 11 Jul 2021 04:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=pPMmWhd2NgDyTJDkPom6RenStkxv3xOr8isEdZrof9A=;
 b=qsMmuoGCGEd0t4fQfNoC8iD4mxlcgfc2qanHZJzHGF1fEykMVgLNyGkmfgxbxkeRf3
 ot/pHLoT/ucnLDK/P6kK7TH4EwofDsZ4B7kxPHazINiGUZHJDAaaY1gsQK3znACrGWHi
 lQEJPVct4UJ8Y+RKVQRn+j0iJE1WeYLOtqz2/mgG57xxelFWZZj+uQe1dBS0JuGgB/Xm
 WNBimqn44yRK4VtigFdIDcAC+xGUA7EXqjsYR818vpjWNlYycOgok2J3JYVs2nssAVtv
 XRRRv+7IrixR2bbi/+OmjDQ+RQoNiqzvDBnzEyw5FxLeaSLP45eGe6G3onFa0kRi7IJR
 Rvtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pPMmWhd2NgDyTJDkPom6RenStkxv3xOr8isEdZrof9A=;
 b=LlZtwhZCtjBf7HizsKiHAXcPPie8Ekm8CtRDE9dmSPU7Gy0sJuJvSV5jw856Ee9gtS
 Iq40iYodR0D0LhXwb07EJ3P3sqqtMNLWaKgGQDxx9q6cfTSXYD2cEEezqcDKlYLpvyPY
 d9atHlNQ/BCwi4HsA0WmkgLA9eZ2S9ZufTBTB/Rb/DpnRECbyf2Q6P/6DehFNuNu6msw
 rH2GxjHIicVZp/p2B91socBNaHubs1OfO34w3oZvhJJVXVdIF6D916v98K1j0dKjDmGC
 8KHPiizWiwqufsscm81XVuB/nQN8wJ7UYgD8iIGHQugz5Sx0AMW58cEAqzh6JfJwRQmM
 S/mg==
X-Gm-Message-State: AOAM531B4sQ5L0eK596Y9SCin2Y/wUcTSavitLop0jQembtqQLyokvKY
 SNmBxLlnDfYZBu2KEAXZLVI=
X-Google-Smtp-Source: ABdhPJyjy6QnfSD6OM4I4cOTs1oT2UIedE4KbEAeSsuRoCk0ZZXeDzPUkvSmCvpR076C9VmQxr6uXA==
X-Received: by 2002:a17:906:5d13:: with SMTP id
 g19mr48824982ejt.90.1626002522410; 
 Sun, 11 Jul 2021 04:22:02 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g11sm5989505edt.85.2021.07.11.04.22.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Jul 2021 04:22:02 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: rename pcfg_* nodenames for rk3066/rk3188
Date: Sun, 11 Jul 2021 13:21:54 +0200
Message-Id: <20210711112154.5287-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210711_042205_327955_D0A9800C 
X-CRM114-Status: GOOD (  10.93  )
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

Rename pcfg_* nodenames for rk3066/rk3188 to pcfg-*,
so that they fit in the regex with the other Rockchip SoCs.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 4 ++--
 arch/arm/boot/dts/rk3188.dtsi  | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index b52ef9254..659c14795 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -368,11 +368,11 @@
 			#interrupt-cells = <2>;
 		};
 
-		pcfg_pull_default: pcfg_pull_default {
+		pcfg_pull_default: pcfg-pull-default {
 			bias-pull-pin-default;
 		};
 
-		pcfg_pull_none: pcfg_pull_none {
+		pcfg_pull_none: pcfg-pull-none {
 			bias-disable;
 		};
 
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 6764776cc..b46967ccd 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -275,15 +275,15 @@
 			#interrupt-cells = <2>;
 		};
 
-		pcfg_pull_up: pcfg_pull_up {
+		pcfg_pull_up: pcfg-pull-up {
 			bias-pull-up;
 		};
 
-		pcfg_pull_down: pcfg_pull_down {
+		pcfg_pull_down: pcfg-pull-down {
 			bias-pull-down;
 		};
 
-		pcfg_pull_none: pcfg_pull_none {
+		pcfg_pull_none: pcfg-pull-none {
 			bias-disable;
 		};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
