Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CE05C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Nov 2023 20:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SCUFCNjdQfzrr6t4huFZyf+Lij7r+/gIbB6J3IuwMJ0=; b=5Dku0pgbRw/dCe
	s2a6vd5QzkjI5ZbRLsTmnwos2Ib50mJpwNKeCAI8Y3VP6bO9Y5Telo5adwFkayJX2lqhDZpvzaVt9
	jDrUS9qSa6jmfvzcF7hkNV9CLKhrZkfwFeIaQVLsrcmUiGuR/7ZF10+GpNwg89GeOIKj6B7O9MPxH
	mF7/Yoix44ZwhUdKmu9n88kd4+dQSvk4mWY5aOMWn1qDJnJArhE/Lzonpv12/2bPmE77Wme1RrpJe
	Me9zcs9gwR0VWBjRvfRY84wkiQJ6CJFiW7I1DOS20UgmHYDFEbHvqCivk6AxxuUCeqdOCh012z0/o
	jfAqF4kfKRt6fgbBzoGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7LRZ-00Epan-1c;
	Sun, 26 Nov 2023 20:09:29 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7LRW-00EpXz-1x;
	Sun, 26 Nov 2023 20:09:27 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-1fa0885e1c2so1243094fac.0;
        Sun, 26 Nov 2023 12:09:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701029364; x=1701634164; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZjTDHAG+/ucBAaiBKRQp0/cj17Ja10+E8K4nWxa0Ui0=;
        b=FPTESBCc5ArUwiZr0BrmPRuE3cXp9GhGv60521FN1mLUQrT7IFp18/D799PeDTr+5x
         NHK10LIoLHuk0GPh7DLOkc1bhfFwWlhinNckCqtS3K3Fqz4zyxtwzsTY+Ar2IxBwM+wg
         UHqSXCetIEQ7ttBR/+yuDYTTWetgYJ0wLuyhL7mfdln92W9AJMa7iziF6xk7vYZ74DIo
         pJE3MyMmCrvADIOLHpZcQSm2LL3Olq/L2zkZOPAYKUBj1SAeLd1VFpH8NzlqgOE9orQ/
         4cipJvndzFtASl7n6W9FhW3r6TGaGNP5uKujQDdqe6SU/8zDYiHH5BT5g5AgsY5CTO8L
         TFlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701029364; x=1701634164;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZjTDHAG+/ucBAaiBKRQp0/cj17Ja10+E8K4nWxa0Ui0=;
        b=Jax2VH+qn0HU7WKNhOrHSR6TblowU+yd6k2wSov+GpTK56cpaJ3SUkTfzGZrtTKv+Y
         T+qCMWx0Mqdb9TygiR0Lu6i6a97wYZoh2EmLLvPOX0coGHkRdJffbchGnv7oFAiKV32A
         GEWlaJgfxxraxUXpo9B1mhO+SrOm73SBt+PalHVBt8sJA+nZMjLKpnqXT59cQoAhB7zM
         /25NG0RC4lGYHWUmSbpKQTvs0lEE5ftRpAorDp62y/K8LaKpmBdocfJqfykjFQGS6d8g
         gPfJEU0Sc+c8rxcXmCi75djf1B8iqAYqooGkKDVMKkVkOazlz6/mJ+v6onK65G6q640k
         mV7g==
X-Gm-Message-State: AOJu0YyMsdhTNiew62cSL/thWdvTp/vOq238Dvqwr8/VdEUnKyuGEFsR
	NvU9I387blYRLcEbGqfyRB4=
X-Google-Smtp-Source: AGHT+IGHLkEjZWxbXCL2+1Yt3Y8r3KJPpiOh4dMmsrXvSby0PbB4ZTPAwmeqz38pj6OrD/33/Ct3qg==
X-Received: by 2002:a05:6871:780e:b0:1fa:1634:e47 with SMTP id oy14-20020a056871780e00b001fa16340e47mr8035701oac.51.1701029364215;
        Sun, 26 Nov 2023 12:09:24 -0800 (PST)
Received: from tower.cjhon.com (2603-8081-ad40-0011-02c6-2c57-6215-8c5e.res6.spectrum.com. [2603:8081:ad40:11:2c6:2c57:6215:8c5e])
        by smtp.gmail.com with ESMTPSA id b6-20020a9d7546000000b006ce4612fef0sm1140230otl.16.2023.11.26.12.09.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 12:09:23 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: rk3588s-orangepi-5: add USB3 host
Date: Sun, 26 Nov 2023 14:08:45 -0600
Message-ID: <20231126200845.1192-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_120926_668917_B2437ACD 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
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

Enable USB3 host controller for the Orange Pi 5.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index 8f399c4317bd..f7a6132d8205 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -660,3 +660,7 @@ &usb_host1_ehci {
 &usb_host1_ohci {
 	status = "okay";
 };
+
+&usb_host2_xhci {
+	status = "okay";
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
