Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BAE606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 14:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AOFygqK/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Is6vUPIW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bNgkmt8ueiTaWeVyr+Kzrho2XOzJVktK27kx3kQVYSs=; b=AOFygqK/KKI1Kf
	vTbcHEyWHIUvExEaHNtomSpw+bgtyvUoA18dXW/Z3mMVbuWu5Wp4RGMNTFN+3yI2nF8hsanrxzWW8
	qoMpsTbeHCy7DnGKj1XShxtJVWB4kWwRwx1PGirsvZFlILU98IscKGtICKWTuOdh6A6vHxAr4VkQ4
	+cJoKpaHLhSCZK0jzQAIiwsvZFuVx10BGhcBzfExlZoVyMqSeO5Oxex4jJfvP2cB+bHojCmnOzuXA
	hquVHTcQ6z9qyCnXEMOhs7UO3Yx2XzjCNYp8AAV30zDAyWg6sWBrmxs2l77s5oSamv+D43LVoBKio
	G/nWF9x4kDMnnCjtM7Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJARN-00000009sAE-1gV1;
	Tue, 20 Oct 2026 14:03:45 +0000
Received: from mail-pl1-f176.google.com ([209.85.214.176])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJARL-00000009s7t-0d4a
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Oct 2026 14:03:44 +0000
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2e7e742a2c7so4806775ad.0
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 07:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792505022; x=1793109822; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HzO4m0Q8yZV5RgPhRhakwzaTu65IYUbFA7iVxGbsJX0=;
        b=Is6vUPIWZlMUBWQ1nJcMPcZxbezXyOmLscpxUsVfN3etmlSv9sK5uVB4p4WsjKX26m
         px18Enu7KIehLvPQ3sdX4r1fnJ4yx/9DnMuwYwotgJczE+wAvSl7vnT3P5A+158Kqr2l
         Jy5iGHbdp5/66bVm4UBS7SXN66L5MP8a/U9BWis0ikjsh67T6Z4pyWMpoS43BhEgL5pC
         b6/mK2RAdYtJMg5xpTR3IRg/o/VSFh0SsR/8HdTiSIl0yiXF26LTTlmwVnE7WbBb7ZcO
         nXXJMkGAcu1pUy2VBwob5SeQ0lrPntn8eh+ErgmBU4YfkbZS1rKDosM9cGCTyMLtT5bv
         mpZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792505022; x=1793109822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HzO4m0Q8yZV5RgPhRhakwzaTu65IYUbFA7iVxGbsJX0=;
        b=qEk+TEyXsvrjL1ll7NVxQBHUbg7FUPDkSb7S1M043Uaw6FpwVfCRgLSax8CKEg0V5R
         qCKHjpACLMTFsMwaKOZNngB26ynxe6oRTWDMbDlOEiNDpN5wPMsK70YED2BnFgrGsse3
         w+uKGxD4k5ezOOfnOyCM4jFgesImM0c51vmn4EFC0DBGi3QaM97nrugd6gkjDtK4Asam
         WB6njB9m8q877VsQB612kPDoxGDpCgjXpRrE0Z9KFIQOT3WodHJDCME/P3iDMKZgZH4m
         a5N74fNFaf0Beyc5eNWt8BO+3FuzRol09t/8S4lPHyQDIEjvj6bZbDmFXpV8BOviPQ/b
         Cx1g==
X-Forwarded-Encrypted: i=1; AKwUvBx1ZueCUB9wOWVlUuhuGCO6qLi64jqJa81ic/ocBrpqekKassQxtqosQt6uTQiYmIpkpPT46obS2Zf6PXWVnw==@lists.infradead.org
X-Gm-Message-State: AFq9FYIXBq4Hbqvnjc00oerQys3YRnyxql3Lr31r8gpL2OL367tN1XYy
	c+qz4cf0MUFzEa19JlHFRiYyuYsQ+rtN0VixwUE/8VvSYbwNnA2a2JXf
X-Gm-Gg: AYBFou1DF1DP/F2rvQX8eKh+4vqUEH3UpmfNYnZ9Y9m3F8Y2o7Pdr0y5jgQFKzBtRou
	eEX8tnc61/MPWtG8D3OFQM3l2ApAITHjMbIxk9jkjTDdALew5YtTfZ6HsbEdDuF7kdpIMGGRQcG
	Ol26j3fSqRgkUJy4DcpkAbHKoQH7DKVSsJ9Wxvj2WSHr2CaO4x0qGcRaIIdAm16flojU14Mwc+E
	u/E8MXjSXes+4IwmBLb4EnnEgBsPGqluqRpgCM4DfvekG44VKrkeZlWFm0cbPnr9yo++8tfje70
	ppZXOJI4scsaES7FMY269EaXlbm/biav5X+C2A2nJpUQXy3WUF5prNiyeGNI72fy2akkULJEac2
	AH/CDW6cctZTLT43JATzpf8aE0qeXoWn0lxNTmTVZI2EX5GFeDHLLE9fsBMFgMDvDtQNS0NtiN4
	xlTyWkDLIlHLjQcR39LSRqAhHG2b4xH7SAax4ud6cFNldTiFw99gLyjU8hcuH0xxDaTBzIE6URH
	0tDLk++7yM=
X-Received: by 2002:a17:902:ecce:b0:2df:34c0:72fe with SMTP id d9443c01a7336-2ea1dd670d2mr14819585ad.35.1792505021811;
        Tue, 20 Oct 2026 07:03:41 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ea1502971csm12434865ad.51.2026.10.20.07.03.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2026 07:03:41 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	Joseph Chen <chenjh@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	mfd@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: [PATCH v4 3/3] arm64: dts: rockchip: fix power-off on Firefly-RK3399
Date: Tue, 20 Oct 2026 22:01:14 +0800
Message-ID: <20261020140127.720-4-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20261020140127.720-1-yaozhonguwl@gmail.com>
References: <20261020140127.720-1-yaozhonguwl@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_070343_191335_2CC85F35 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

poweroff on this board drops the rails and immediately brings them back
up, so it reboots instead of staying off and U-Boot reports a power-on
reset.

Firefly's BSP drives GPIO1_D0 high while the system runs and low during
shutdown, before writing the RK808's shutdown bit. Mainline does not
describe GPIO1_D0 at all, so nothing drives it and the shutdown does not
stick. Describe it in the PMIC node, with the settle time the vendor
uses.

The BSP releases GPIO1_B5 in the same sequence, and in testing the board
came back up when that pin was still high as the shutdown bit was
written. Mainline describes GPIO1_B5 as the backlight enable GPIO.
pwm-backlight drives its enable GPIO low whenever it turns the backlight
off, including from its shutdown callback in device_shutdown(), which
runs before the PMIC's power-off prepare handler. When pwm-backlight is
not bound, nothing claims the pin; on this board it is then an input
reading low, which also lets the shutdown stick, although that is not
guaranteed on every board. The pin is therefore left to the backlight.

Fixes: 171582e00db1 ("arm64: dts: rockchip: add support for firefly-rk3399 board")
Assisted-by: LLM
Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 0568dfa..210e4cb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -327,6 +327,8 @@ rk808: pmic@1b {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
 		system-power-controller;
+		power-hold-gpios = <&gpio1 RK_PD0 GPIO_ACTIVE_HIGH>;
+		power-hold-delay-ms = <200>;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
