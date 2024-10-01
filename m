Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEDFECEACC1
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 13:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S0dhSCqep0qk9vcPMCx4PPeAVEttG1ExjAB9e2Xjx1s=; b=iuZF/cK/qoJaxz
	TtUtKcrd3X+cC74t38i67gP6TrveoGZU5D0NwNnyyaZye+vqca5kNwqun0YveNSzbM/ZlgTV/UDZr
	GYNib/LbI9aZBpQkaGkEtUuBPxTc+CTrMBplJiinVLBMS1GP/sMNyi+VeHiw7YQHRhzCEI90w+mu1
	QmagUIcdJFKnOBxYu46H33VS5JLmKtiOpADuZ2EZX7bkPZCwacyLlZ3pCcIMNrn4xGcdcnmqzocKj
	Em+Jk4UELtxpUKaPjNBDTOA4dcgD3e64E5fLYc3WRLWaouha0uo88bC/iknx9dH9ssXWZsCcAiY2l
	OnHGwJ2C8YcLr32w2dow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svdFc-0000000305y-1Z1H;
	Tue, 01 Oct 2024 13:49:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svdER-00000002zuF-1bon
	for linux-rockchip@bombadil.infradead.org;
	Tue, 01 Oct 2024 13:48:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=tAj/ZcJsteYyfCk2vYENrMCwftIRTgZfWUbq7u955gU=; b=c6TJk5Kbo3ZX49Feel2LPVesEt
	tpVu9nTzrWRjtOF85F0AjaZoLTgnqWENgddc7hT7PTLExl96uEDqKhyaOMTkKUjstKx7CI4y3n2VR
	zuZAabohul7Q+xY0ubUxjo9HsPAi9Zmx+6d21rk0J3XGxzuTOO3VGBd6Ef/T8aU+6Cle+NCbG9ysa
	YvXARcVR77TfxTA8TmI+9Nqu7e3f51pHcDS/I+Psv22QEuZ3kveyJi7zeHz5bFI2XtcRNwobJhTQk
	1wlPgCegnaY3dmfbZPTBbFfqXyiITW+hd9n0UMWPAZlE+iRB0pWUfIp21oNujgtxPfx+gRYSszzhs
	aAKngvBQ==;
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svdEK-00000003878-3cei
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Oct 2024 13:48:02 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a8b155b5e9eso21007766b.1
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Oct 2024 06:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1727790473; x=1728395273; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tAj/ZcJsteYyfCk2vYENrMCwftIRTgZfWUbq7u955gU=;
        b=gyxKg6zJu0T8wFpSkEVpK3wDeIlXfM3jyWE5twfoA3N4xt3bb3QpJfpExNv8RZBrzw
         2NwZKsT/Gp8v0HQueQCfvbJNkuVgARD5eXqE2aVPtJd/QxyNMLS2JkIv7hBnD7EJ9VNH
         KBvzChQoZkDzwKMB7TPbHSnZVi+5xIcnUKAA9sOpeKtFbsaOiSXXrZ4rZkpWEmAKAY8P
         /fKEFl2BlhM29VUxdLXVZH+YTuDrTb9GzTZGYMeratRf8s0lKtCroR6poyWGcIHbgKGe
         S+DH6vjmue6wRd5klo++b5HFJkYGtn4PFuIScJaQf8fcyR4HFb+y2RvsLzHhHEFSL4mJ
         TJsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727790473; x=1728395273;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tAj/ZcJsteYyfCk2vYENrMCwftIRTgZfWUbq7u955gU=;
        b=KKpEVMiEaripfHlT3Z9S/DSiu9c5J0CT+fwY1l6LLMoQApELyuq2nyc6UNcr2BMrua
         gLbrOClVqx99WNg3cGpzYr5N4kp8zUs8dWGqOzv+eAvjjYkD2FsEPRbXw9uaRVjMKHl8
         3WMsd+vy6vpXmGlldlJRv7Ne+W7zyO0rpy8f6QDwIigynblLV5ioxv66SYW7neVl7PTu
         mBE2zka1MPmtr5pSPkF/QpYn9FLm3R77TxtxLj2zPRDt/UsrzBHo91QVCdpoxVLcciI7
         RdBgS/j4ixpW2jC5hOLajQNhyNLKQGLsktw4x4lHRA1iLz/Mq3tsAoSq68BAf3TJFgIA
         VLHg==
X-Forwarded-Encrypted: i=1; AJvYcCWcg7Mn7PzQJTA++6VOsjY1tJXJHVGVWBaSLpBLzw3fmj1B2zs5pkAehmauq8W/BVeSGLmdcIOKzXrcCyI3IQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxNJvfwewoWes9r6yZxS/CRP1fRH8lI8e8eyzmVWW/FXJJ1hFiJ
	P9TBPoeEC68var9RTeian46W2dvysxJkBO/RWl95OPIwI7mj7s5ytWTyZZ/kl9pSb9N37a2sp/O
	syhYQLw==
X-Google-Smtp-Source: AGHT+IH+MuAg6zAQWZk+ikg3Qoz0ip32Sj7sS0ZDEO60KFiCvlYuo67UTzu/A1PJsNONwI6GY//WlA==
X-Received: by 2002:a17:907:6d20:b0:a8a:8c92:1c9c with SMTP id a640c23a62f3a-a93c4967869mr1500151266b.29.1727790473172;
        Tue, 01 Oct 2024 06:47:53 -0700 (PDT)
Received: from localhost.localdomain ([91.90.172.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c27cafc8sm715413666b.84.2024.10.01.06.47.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 06:47:52 -0700 (PDT)
From: Daniel Semkowicz <dse@thaumatec.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Semkowicz <dse@thaumatec.com>,
	Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2] arm64: dts: rockchip: Add power button for puma-haikou
Date: Tue,  1 Oct 2024 15:46:32 +0200
Message-ID: <20241001134741.210979-1-dse@thaumatec.com>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_144756_940778_652FE651 
X-CRM114-Status: GOOD (  12.58  )
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

There is a PWRBTN# input pin exposed on a Q7 connector. The pin
is routed to a GPIO0_A1 through a diode. Q7 specification describes
the PWRBTN# pin as a Power Button signal.
Configure the pin as KEY_POWER, so it can function as power button and
trigger device shutdown.

Signed-off-by: Daniel Semkowicz <dse@thaumatec.com>
---

Changes in v2:
- Move button definition from puma to puma-haikou dts

 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index f6f15946579e..c04bb98a45e5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -30,6 +30,12 @@ button-batlow-n {
 			linux,code = <KEY_BATTERY>;
 		};
 
+		button-pwrbtn-n {
+			gpios = <&gpio0 RK_PA1 GPIO_ACTIVE_LOW>;
+			label = "PWRBTN#";
+			linux,code = <KEY_POWER>;
+		};
+
 		button-slp-btn-n {
 			gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_LOW>;
 			label = "SLP_BTN#";
@@ -203,6 +209,8 @@ &pinctrl {
 	buttons {
 		haikou_keys_pin: haikou-keys-pin {
 			rockchip,pins =
+			  /* PWRBTN# */
+			  <0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>,
 			  /* LID_BTN */
 			  <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>,
 			  /* BATLOW# */
-- 
2.46.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
