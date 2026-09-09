Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90CA3C79FB6
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 09:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SM9Dehoe3inXL0lvbyYS2EImUHFYFelTE0oldth58zU=; b=zxbJD11+2i+Q3D
	mnNmz7WOIVVW7QOkA9ATbXszvMvhhckZ6Ej3UvsJNBCxrfpxXg6AeXgqne1gU3hpCi76WtilF3nSq
	qOo9cPiDwjyAh9gJ7qnpwCiFEL6ahrUcbAvzDn/isXcwLFfWqHy2tnfYNuYgnvcnSKls8rrJEaoRG
	94QWUf5YozFYWJloPSfR1ElsXdQLXcvKzBbU6TEdbpjnAgkP5D10PyLA/BA7CWZ1omArqIQ/nyrmY
	+oK21aC9uvfnD5fqobAoE8mMFedPWclrlwWzZlJuaQkQNQc8YWV24G59qEbpW/87CyQI0ua9FMstQ
	pgw94IWVtEI7KFBctkAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4EbP-0000000BHxx-1Bps;
	Wed, 09 Sep 2026 09:28:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4EbI-0000000BHrl-16xy
	for linux-rockchip@bombadil.infradead.org;
	Wed, 09 Sep 2026 09:28:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Lj2u/Zjo691deIvNQnGk0TPSNETy/c4N8X1lSk8Bcfw=; b=FfItZYz5xAiiXSFLOOwIqi2+mo
	75m86XooYVfiVhxItI9aiP45/hKpWVwRvrrVjKZEpw6YuwZFfCvx0WWmtNLgsAR5rYqr7VkKWxhd+
	W+7PUABcbMdVNnGoXFkC+rAtWvKCBcLL1T5utTsAeXLvmto3skromhAGcsK2GASwYFAa0spHitCdF
	ZZl5a0cBZWSMzEJuEIcj4ZugseFhvp1oW1BmrA6zbwHETHc8Ju6SsELf3hla/45aRG5erAzr2vucr
	50Q2qtGuWy1Sx1x0Z5e1p1S8aNURUFASWPAgWgs24gtUJwBbvdwvNjcTMUtEKBSD9sZ0+GtPvs8kZ
	VivVL1Qg==;
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x4EbF-00000000zmv-297f
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Sep 2026 09:28:15 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-855d2bfae95so6488512b3a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2026 02:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788946091; x=1789550891; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Lj2u/Zjo691deIvNQnGk0TPSNETy/c4N8X1lSk8Bcfw=;
        b=OPulyNQ/N25pHgufnlssHVJKancPA2RgtqSMTUNJigQ2clOAOCfkMbGH5KY5m5/byM
         zPOVxLMtqGTPJiRu4OxoQ5zt6k2RqvcWrHhv1u8R8+VsXJicD87+p8tyKRUV6wGdhJZp
         pZ0JRadmfpDQGScV8JsoJzHL6OovAvcS3j2ySsRAjBOXuS3v8DXQlQrGZkKYKwtBSJIM
         GFlyDdl4OL4ViVgVfhdLFo+VsY+PLjooO1tApkPzDCLzxicBgkKYXjolePKUyDS9i/5P
         yV2DcHm1OXkxpn3/5PEn1PnJu9fZkMhrYhLGB84g3ddfS7Bd0tLhijp9uQHZEiQTA8it
         NnjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788946091; x=1789550891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Lj2u/Zjo691deIvNQnGk0TPSNETy/c4N8X1lSk8Bcfw=;
        b=FKKKyF+YzTwQa7+udbN99pt7Yex6FpWYep2Tzb+0aonTJW7t7BkGsxdnaLduMmtyL4
         Rw2oEpEOVWKc0Ya/mTaus7nQ8w6yLiOrel2k0dBrQMvVf8Ohcvy7y8z9zQL2oxkJnndc
         96Cd83u+EexTKaC3PvsuQ0cUY3pxrPRkPDPpDF2Y45DQbZ5kFR8vEJHGFoHPyMBtW29Y
         pXBAefnQdxUN5Weq4k/wy5mI1kgHhEoWo5EjvrmsNi98ieRw78rrWYQ1M5GFKo+LL1Zn
         aFzrlBl+Sesc36wScLc0K84jci0NV8RMOZ7dJYB99kB4usRTqF47idBtNA+QtRDPTcLQ
         GFdg==
X-Forwarded-Encrypted: i=1; AKwUvBx/28jJ+t6gpeaRpj0onxuykP0VthLn7bfSaJexyAo+fBCvxxffcthKEHvQPzQl2s8mah1ZwYLLQEYIvEIvGw==@lists.infradead.org
X-Gm-Message-State: AFuF++lPh9bhDWfWtfJMNlrPj7WgteCGIgSgvnpe17NMU0KEU65GNbf5
	x5jTlkRpPniq5gsBtwxAbCgIokMrw+Q5SI1M/HxwAdpzC927rmdAxMrH
X-Gm-Gg: AYBFou32BmmxMmWXGXCt8p3dM2bAk8VEzZsRLlm/2zg5bbG43rarQpM3Uuk46umf0Kv
	eli6JWsh+1VIDHmpabjD6msS6c62dEoAMwS1rKWzkDvpugMW5irhFKwZmb9oFnES1DDZ3W0MIly
	G0E7EkjQS94FaEuPC3785pkLWmMtw5UHOvXPNU2x6W3CfUTUtPPkgJFUdyAowRHKoQ6OrUopCEh
	TkGuvXqXk3kGo18MyvDcOD3kFZ5WhUvsmPAfjhj0dDWszZQsyiUMMpzVdFa77EElCLOPXEcRAY2
	VrVnrM3WGIMNNM4PK56KVGBYb+VyHdQizmRzwR10yNKcx7wKLRUprFrKiIIHbGVn+J1mi6ylfk4
	YrtPlnJoRl9zXlNCBXFmHQ4KqAJ5SCV1P1sx8CuHBh0WW5cx2vePcg4PAetgE9xPAEobD9xUOUv
	v5/z0nHBhFFNpxEf1rbZW+/EoJSim1FxTqm3jzkJKAOeOf4io083WLNlcIkZhUqE+usHGV36aTq
	1yqTr8gGNuM
X-Received: by 2002:a05:6a00:2d0d:b0:857:73c3:4468 with SMTP id d2e1a72fcca58-85ffeadd911mr33200033b3a.23.1788946091221;
        Wed, 09 Sep 2026 02:28:11 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-868e3aaab85sm484904b3a.22.2026.09.09.02.28.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 02:28:10 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>
Cc: mfd@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: [RFC PATCH 3/3] arm64: dts: rockchip: fix power-off on Firefly-RK3399
Date: Wed,  9 Sep 2026 17:27:28 +0800
Message-ID: <20260909092728.1859-4-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20260909092728.1859-1-yaozhonguwl@gmail.com>
References: <20260909092728.1859-1-yaozhonguwl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_102813_628119_CAF9991B 
X-CRM114-Status: GOOD (  12.59  )
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

poweroff on this board drops the rails and immediately brings them back
up, so it reboots instead of staying off and U-Boot reports a power-on
reset.

Firefly's BSP drives GPIO1_D0 and GPIO1_B5 low during shutdown, before
writing the RK808's shutdown bit. Mainline does not describe GPIO1_D0 at
all, and describes GPIO1_B5 as the backlight enable GPIO - the vendor's
own backlight node has no enable GPIO. Nothing therefore releases either
line at power-off, and while the backlight owns GPIO1_B5 it can hold it
asserted, which is enough to make the board come back up on its own.

Describe both lines in the PMIC node and drop the backlight enable-gpios,
with the settle time the vendor uses.

Fixes: 171582e00db1 ("arm64: dts: rockchip: add support for firefly-rk3399 board")
Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 0568dfa..75b75fe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -27,7 +27,6 @@ chosen {
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-		enable-gpios = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
 		pwms = <&pwm0 0 25000 0>;
 		brightness-levels = <
 			  0   1   2   3   4   5   6   7
@@ -327,6 +326,9 @@ rk808: pmic@1b {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
 		system-power-controller;
+		power-hold-gpios = <&gpio1 RK_PD0 GPIO_ACTIVE_HIGH>,
+				   <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
+		power-hold-delay-ms = <200>;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
