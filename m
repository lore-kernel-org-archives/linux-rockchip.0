Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5982CC47072
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 10:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQ2qLAqgyuHex2+hy3lND4K/CqWLDZfDtjztO0xpbnM=; b=SX1AOZVPhkyYIF
	fA/G3SnMvy06cBH1DlkEU0bE1bsmXOq3IeejuOqMY9zgPcmhgcL7mc9Hmc8XLJBh2q9V1rULaGVml
	uaHIP2LzIreytIDpn+jZ+fz+jHH8QthZ2iVGlP/bYTkoA9Y6q2Ss2U1E9+0qFLgIECWqQVKTeCD18
	YfEsldlwVJqrAhVbJvrwWlm441nhtQr+9F+a1ZvFo2xyuwqlazQT5FUcRMV268+ZZyLsthD2BRkR2
	vLalRyp2Y6PmNZIN+w2BTIZ/LQwfbdDm0CemVnNCcn3u9/ooh6JDDBSsyWZFHrWnIyfrHa8icUmgg
	vw5ROBs14bVr6+uicQeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHi4x-00AWkP-02;
	Mon, 25 Dec 2023 10:20:59 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHi4u-00AWjm-28
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Dec 2023 10:20:57 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-67f9f6caabcso24179746d6.3
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Dec 2023 02:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703499653; x=1704104453; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L1KjS3sViCEHSdws6/FLfcaa4foZPx5g/auat9EtCwo=;
        b=E3GjFYZH/uX2DzTVynQTq+8vZT+qP8KK03C7CgTYmzFzQm3XMSSNokcsjEITLs92fq
         ADEBAPKaPU7lsEwRN/Er6TqQ/5TMn1GFYz8Z2n9ONrOx30XjAu6Qo7WMoxFJP5+IxXDA
         1EPrcO+2Ea+Lc+3MIuLQRPm4WATFU5abplf6DY0v2x5ONzGNna3RChdvxEKu1NMCRDAL
         fsepk3q9iadAA/PVcudgRnfKvFfwl4U0mwqwgXHIx4u1tEiQycvVT7dw2t3lE1FrFd2H
         1op9TARH3NCe5sHcfrqJac337aEuj2cu1LrE6XNwV2iyaCse6aNH7AbDhpTT+b7l37RS
         Z1gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703499653; x=1704104453;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L1KjS3sViCEHSdws6/FLfcaa4foZPx5g/auat9EtCwo=;
        b=kV8KGB53K84G4lrSbujzBSu5BtyWvLQntfqc1cfDNLA9PDc4awi/3flH8jcsZmkC65
         5GrJCidtzfKE3WoCZzumMuPfEnRwSjOy0zKECSjx1XJG/2YpKvJS/tjigTHgDuSgyhYy
         U78m1lgbOgsVS5VKpWmJuTXuRz5K16X8I8aNkxN7iBNDVcAeqEoK2Oy8q9aALC8eF3Hp
         j3FWizLZMD69bKlcl0mMalYOlFpOyMbauwremYJIoi2eRbv/wE2juigigyc5yVa71Cwp
         vvgzYtfPERSo9At17lBJTR4b41Mgk32Q0L4ReATLSg/T8TBfFF9YrYTxOmXIu/0mtpCY
         E9jQ==
X-Gm-Message-State: AOJu0YzwO9M2wWnV4iE4Rq0Tp8DjKuNhllhDA8PX22grdPlk+GlfXQjH
	O7MGHbbtp6tOko1oNHBGd3g=
X-Google-Smtp-Source: AGHT+IH1zUVvEQ39Z6BaQPMRRZTyhj0dMPCyJoyAI3KA0fd2wQOdZXjI8JvmkwZPCTS2jAvPLfj4XA==
X-Received: by 2002:ad4:4985:0:b0:680:1ae7:47cc with SMTP id u5-20020ad44985000000b006801ae747ccmr316703qvx.92.1703499653639;
        Mon, 25 Dec 2023 02:20:53 -0800 (PST)
Received: from localhost.localdomain (107-015-241-140.res.spectrum.com. [107.15.241.140])
        by smtp.gmail.com with ESMTPSA id fp20-20020a05622a509400b00425442a2f32sm4842040qtb.16.2023.12.25.02.20.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 02:20:53 -0800 (PST)
From: John Clark <inindev@gmail.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: John Clark <inindev@gmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: correct gpio_pwrctrl1 typo
Date: Mon, 25 Dec 2023 10:20:30 +0000
Message-ID: <20231225102030.10617-2-inindev@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231225102030.10617-1-inindev@gmail.com>
References: <20231225090856.3890-1-inindev@gmail.com>
 <20231225102030.10617-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_022056_701020_986C9BF4 
X-CRM114-Status: UNSURE (   9.88  )
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

gpio_pwrctrl2 is duplicated twice and gpio_pwrctrl1 is not set.
Set gpio_pwrctrl1.

Signed-off-by: John Clark <inindev@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index dc7b88f29172..a0e303c3a1dc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -448,7 +448,7 @@ pmic@0 {
 		#gpio-cells = <2>;
 
 		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl2";
+			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
 		};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
