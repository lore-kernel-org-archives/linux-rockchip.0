Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BD8606A325
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 08:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iRo07jA6;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=KeYVIqPc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bNgkmt8ueiTaWeVyr+Kzrho2XOzJVktK27kx3kQVYSs=; b=iRo07jA6dB+vh3c+OAzx0qiGNW
	3mH6BAJu5on0760NxTGw/8ZuG5DRSDllv+3HOhemzhBZrHqicde8bzmkkp5eUL/RYao6H5M3l0uU8
	rlcocYB7G2ppd/UbZBJOOVyh+dGd5E3ZZstqrZpLfKwNbjWtxSTEdKsFvcZ+AbcxQkxzl02/ObkdT
	n8IUzX29ygRvjyJRCwzeUOeyRRFKunXrWMsFHHPdmy8yKcHusXM9974KQjxjYmMV40svaGxxbUrNn
	As/AAoxkCDI8iSCEPz3NJELyIVPYmCh13M0Kt/fSw1sS3piAOdcU1TUQNPcFBv8czGRltcb9McCRn
	eLGgC+nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLcoh-0000000459G-3W1r;
	Tue, 27 Oct 2026 08:45:59 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLcof-0000000455C-04Qi
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 08:45:58 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-8a05e3f0d23so1721641b3a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 01:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793090756; x=1793695556; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HzO4m0Q8yZV5RgPhRhakwzaTu65IYUbFA7iVxGbsJX0=;
        b=KeYVIqPctwJ9+EGGFrIcUZYKeB0zrusbop+u5aWIjrR7WPVGuQbV3mBZ+GU9hkrTpq
         MCJSPHyEIfRIw9Vk2OfAjewRsQR4ly3U6N+iGiSDT1g8FED+Sq2X50+ahy3O62g0GdWr
         h8SxsRlf5gvLOCk2GYitcbvJ8A12t21bKnqnG5A8gLO96SVdgayWhAyvzKCJr5eIbMv5
         6oZANxuKGsg0k8eKWzg+sxtH0ISoXUOu+NM5j2fzlv/MtFRfeXEUl8vHlehvNOjI9rQx
         vXIDbyS/1hnJl1IUPAZ8+UxxR4m4d1DD8UcnB5rbRjiO3HAW78WStJ4/TGXf0Yj7gnEl
         jtEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793090756; x=1793695556;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HzO4m0Q8yZV5RgPhRhakwzaTu65IYUbFA7iVxGbsJX0=;
        b=x11gx6Zh8vokxVa7mTKwwPlWRCsktWbwgUSd11WTAEhYFpX8MbTY+xHaqt+fsHJXJ1
         j8U5JJwrq345tbyEeGPHsQSRy+b0Q3Y9UV80iG5YL7BhDpG1imWUlre2muITg80oO4kt
         j3ia+cOvD5ndb6a7DZcZYJ45WojnUTTFX16zuzqQjB0zV79AH3srpX3bO6kUpHDXXObO
         om84wwAQ83PlB//RyriQDXLYcMEPovaFxAZUkyi7F1TOkjbJMdqP1PzG2P5C0tCtoJBf
         bK+0LVxLUCXWOd+kpzaH1d2CMmhyOdu+xu2s/gllmDxYcjm8dJ44PHolvs+XqCQoUqKo
         UvNg==
X-Forwarded-Encrypted: i=1; AKwUvBwrZ5YITqzCkBUzqTEnMHslu68N8C7pGKXApl+VFCweXLh1JUK2T0CTLvpW4F6UEFJQ0PolrlfoWC1//JuUkA==@lists.infradead.org
X-Gm-Message-State: AFq9FYJ8UN3j1LdSAfc+ygVux0P0DuS50CgvVXiD1jeZ3N5ICdw+lBCo
	LyUPTedw0UDPPWSAiTkZsEfOpuC5F8+8QtHg6FmYcC3EnR9IcBvQ2ic/
X-Gm-Gg: AYBFou1MacSen13kPKTLNup4CxUW+cvX7zTcoI4/cVi7gsysErmOUvJTulwdfIz/fMx
	1Xs6KFNaptKSPlKcszeT0nm5AyRLS4rAk8QZx3dsnDerB0gVIB2srWsVQL9MvHa2UaAyvFpzgS8
	2VlacKfaXmmfoGLpnC7/cLnizCqW5Vze9KQB25V6Y2LCEpKEyec/4KMdJ1FoBR/x+HKuJyoDAMY
	q9mY/wJXKDKE02Jor+493PxFRgJfRP/fBBHeK0QN1a2iHTGDY9q21LTXq0PcfD1FxOCvQKWXrmg
	CeFyaI1riSGwer1SefDlZVm0+cloeZVr6aZDX1x+RFa1/N008LRWMeBIHU4+sFy8EOtIlKivQi6
	khoUuD+PiRGi/Otm3PES1rX7k2eJ6n8nCQhiqa5vzDkqmCY6iFPdM7ShvtSDKJkPMlw8GUEK3CP
	zGD3Ry7+x2Lv59RXSHPptZX5LPEPUD4ElRqYC6dtI4YN9mCjhUJQalz+YiqCCPiRmWsK0fviNjS
	B8VsEcpNmyuCWM3wFel4cAODECPSLR3SKmST9KCWNuuKjTuQTUT2JZ+Yo3IXAtdxvaI2HZRB2fX
	5ID/iMOYU10uTf4HaYplJXUNKp72d8injqo7yONWk8g=
X-Received: by 2002:a05:6a21:4591:b0:3e2:8c70:6d13 with SMTP id adf61e73a8af0-3e7cd51a7a5mr7982940637.71.1793090755759;
        Tue, 27 Oct 2026 01:45:55 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cdad8f2c611sm267581a12.10.2026.10.27.01.45.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 01:45:55 -0700 (PDT)
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
Subject: [PATCH v5 3/3] arm64: dts: rockchip: fix power-off on Firefly-RK3399
Date: Tue, 27 Oct 2026 16:45:09 +0800
Message-ID: <20261027084511.1992-4-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20261027084511.1992-1-yaozhonguwl@gmail.com>
References: <20261027084511.1992-1-yaozhonguwl@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_014557_076025_3747022C 
X-CRM114-Status: GOOD (  13.65  )
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
