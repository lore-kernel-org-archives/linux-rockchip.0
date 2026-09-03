Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEE3BC624A4
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 08:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zyV/leew8djj8/FGjoFuYRXgW7xgLe+Fw71G8zCRnAk=; b=lRlp8SCSv7aCCm
	PggJ0U7zKrPkx/Z2AzFTG3I5vVp1QZV+i26HzJXAF//YPdohb1YLRXIak8FI29cYILkG7+c04I1Qz
	v6uY2d+W5CM5pNXNcEmLKwyevv8+jGtyEB9P9nQ+uSQ1p3AyXVoK8Y3eu64MLk7d8Vd9qUIS2ktpO
	qBUdeepKpHf25rqoUWRM5ZiXnjaOBtM5buNbvkqEa6O+QH4g/Og5VA5tz9Hl4cv8Dn5jJkpUSqoyD
	1+lYjGLvUJH+WC5HGbmVmtJodkC7xCIrrTeq1UC0CixJwg8WPGpSgnIh/ka669prsFr9fF3oF2wZI
	ipAhG5Q8kYiqG6ylkbaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22nH-0000000GmxQ-2jMT;
	Thu, 03 Sep 2026 08:27:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22nF-0000000GmwJ-1LG8
	for linux-rockchip@bombadil.infradead.org;
	Thu, 03 Sep 2026 08:27:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=uD4nTk1nDi6/4v9OLXfMGR/tGEoZqnYV3jwiBiqPF9U=; b=OsSXBVx8e6ZvTUALtB2Mjj0Bsg
	BUjfIb4vlcCoNfl4QcHsSAsQOU0anlZZ7mfHQGpdOC2IOOeggZDhZmE6a88yOqklBxvOPJs7KkfZi
	OMzYaGOC0rHccextxwQH+3zvO73PkVXAmRu8VEc/UPa+9iGq7GYsr7erbE2xHwwE87mEdG984z9/g
	mjdprtG4+2Fm1xDoY48a6qgDqtNV2Ar6typNX+Hxx6+TLzVVp/prTX1K194J03Qz7yRbr3GrCFX+I
	jTh6JY7bhvFRU3ZyEalmRlHdyPuyjDB4Mi/39qmmfvPt2++6/XBYIebFr/TV/4QFxlqIHplqUkdNA
	x4QYFlnA==;
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x22nC-0000000CrXM-2qvr
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 08:27:32 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-84f38f3b36eso1765118b3a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 03 Sep 2026 01:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788424048; x=1789028848; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uD4nTk1nDi6/4v9OLXfMGR/tGEoZqnYV3jwiBiqPF9U=;
        b=F+U57ZyLmFiCmnlWbvQyPSwqhy0npjXdHYcDWDlqeNJaiozjdfxGnJ36cKWpy4r8Ja
         o27YDOxLcWONB6cvbNNLLbUKrajBcwuizvcanwMHvQmsjiAnWReA2MwVG6tdZ6KACml3
         VVfTpUz4z656Ggl0hRm/ydYQVJ1fZFFjLbZPYsRPK0YaghcOKfTacYq5LIK+XU22wpHy
         i9Eee69UOGAa4De8TewFTF+/LN6kMpvA8CHghp/Lwt/zJ1M3O53xlP/Mmw3G0stPl4st
         Gu+8Ibm+W5jB2N+OIKFvDCULTtGLkPYZu0c6N3JkiBvD/Bk6HBCLvoABm3h63oypf3jg
         X8AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788424048; x=1789028848;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=uD4nTk1nDi6/4v9OLXfMGR/tGEoZqnYV3jwiBiqPF9U=;
        b=Dc1D2Hji9ceeaKcL4ZhU8+uHRe6dhMrkIi/e5gQ52Hi5+iG3768cwgTL2nR4skNVVK
         HFmDP7TPvEfT2trns3UFA48qFwnCaotlugxqHRti4LVk4Osk1v9s9v5Y3DtjlZpIfaCX
         8ovfN0XngupV3R5Qz6zKS4iuRIpssI2+fvHu++quzHlSuH74wzXFn4BHffbOB1420QBd
         v1Z4OJDDy8iNG8nvW5fzTrNALN6vxHwgBC2asqhlprpusB4AvzMDlsMJ32A9frBGyCek
         fs4Vsn4S2SRc3ogom995EAvvRoasiZpGKorvbjFfrLCG3PvzlL6swhxzh89F0+7N+hIZ
         oZYQ==
X-Gm-Message-State: AFuF++ngvcXlISk0OPVajq6RlXE1fRN7YVK3HC7B3ie7DpA+vb0iLKuQ
	/oLEtVR6IkNOQdIUDWRLK9Xga4Dr+L33abGwArlwwn3l64aNZmqmmEhr
X-Gm-Gg: AYBFou3aBrLwR4JZia3Y3/SQsS74oEszyC/Uy9sZF6KjH70C8qPqfQGhe6tsWhz3uGo
	qlBPSczxMAP/EaqgWcWhuO6ilvxAuB4iuzu2/C6qJtISsFIC3FXVeekBfx/PTdqf9RypVm5GZCF
	0uSzIwKJPhIKkjm5Y/jTXdutgDxv4Ebc/nUewlNKhNP2szA6ApeHQdTA75HLdfBeBI7yQ2leyTO
	PGG8JTSFfBjq/wdqqpT7k6ObxQKCnnkw5gLXp1ewr2YrFhJGHge3qHVzRp8z2LkB5DtzZnVXlGO
	CASuHAPqwPguv1hEr9XhC27DDN1MyP2YuCuGywDl4v5DOT+XWgMlPush75Kr74Tq2eWRcdmzFBR
	6FHZazh1dViL0dHcO14e2tvcnsNK09DiHa+M9Jrqr5Bel9bArWilf1vMvE7SG/hK6ICOV/bl4Hb
	MQqTMW/RyxZPeB1IqcGekyS77p5Cnk4Vjj57vy5xXZ8jrcwdpRmb0B7MRdlOymETWfP35mTikRZ
	g==
X-Received: by 2002:a05:6a21:114d:b0:3d1:ae83:6fc2 with SMTP id adf61e73a8af0-3d9adac29bamr18789422637.9.1788424048363;
        Thu, 03 Sep 2026 01:27:28 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1431f86504fsm2135193c88.4.2026.09.03.01.27.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2026 01:27:27 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: enable HDMI audio on rk3399-firefly
Date: Thu,  3 Sep 2026 16:27:13 +0800
Message-ID: <20260903082713.192-2-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20260903082713.192-1-yaozhonguwl@gmail.com>
References: <20260903082713.192-1-yaozhonguwl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_092730_845680_D6AEA69B 
X-CRM114-Status: GOOD (  10.62  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

The Firefly-RK3399 exposes audio over its HDMI 2.0 connector, but
hdmi_sound is left disabled, so the only outputs available are the
analog rt5640 jacks and S/PDIF.

Enable it. This depends on i2s0 no longer being enabled, otherwise
i2s2 cannot get a DMA channel for capture and the card fails to
probe.

Tested on a Firefly-RK3399 board with a 1920x1080 display attached:
the hdmi-sound card is registered and plays at both 44.1 and 48 kHz,
alongside the existing rt5640 and S/PDIF cards.

Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index fa1b8b8..3d1f84f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -311,6 +311,10 @@ &hdmi {
 	status = "okay";
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 	i2c-scl-rising-time-ns = <168>;
-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
