Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAB98C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 02:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VWhsUnn8F/qI7MHXEZg//gIoBVAlnBgt/HD5qM+Tywc=; b=ipkHVIg6/kRJJD
	5fMfCbU4DkzTzLSlREwT0kSOjCcIjZ9RToMr0BRcV+2LKUkoP78uVjUT68DUxKVsy7I5WwYemC2un
	6s1PfyxDcuXHC4lHBFT+epqC2MLJVGe3q83wYIdrTsnQXmwCURi45UX72WZz5WhoTEkCL+d+NV7Mg
	4JszqZQ0WaDb0C+rsvgOiKmuofJcj2JWjsctlcaqRNnTmkzHHZOmAjsNVUrkkBBGMgbJ/23ERDpJs
	7GJ8RQqcRwNzQ0KyrQY1USAv4Xg4U2XFEzaUiwgymyN4EgfxGRUgFuI/Bowg9F9SJ3PPb+95+sINb
	ivFWHNiDRRXqSn6BLv0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEK8L-0059BF-2x;
	Sat, 16 Dec 2023 02:10:29 +0000
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEK8J-0059Ai-04;
	Sat, 16 Dec 2023 02:10:28 +0000
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-2031b9c8389so866834fac.1;
        Fri, 15 Dec 2023 18:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702692624; x=1703297424; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=McVfGfyP695CBBV4Dy191zoW62rsgzuHJs0dXDvRxJc=;
        b=kpZwnLZwQsMTOP6S3T6BP1O8nqmltv8Xa8plg+oHqpZ4eVUIr3rAvXDMGhafNdVtOg
         JjsYudVWJrYIIhCUvD7ePq6cOTtSII0xmm2EanRJHXvb0QQpHyGJuSO7XCKOmismts6L
         GXuIck69h5nljekM3THdCRO5KRmU4hHA01zW0Da0BqeSeXtr7hHrjd2qAE9U2iSxCf4j
         D172Hu/OlhYqr22N6tZQkSoez/1cQ1FqsKmACChp3zBeG8Eri8ds5wKGY41A1Lt8r+X7
         7BgQVyiFOd9XpETK1UhUF52c7+Ms/nIlQSqwKasinQAYz0rp67EuI/iZ4JUWtA8GaKlk
         oBqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702692624; x=1703297424;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=McVfGfyP695CBBV4Dy191zoW62rsgzuHJs0dXDvRxJc=;
        b=rke0kV/8nmuyescj3KsX3XqJEbhypDmcfDm58NpsfjZB5oZm/TRWaGURVjrZvBhdnQ
         BufS0VrsB3r1npANHMZoVjZy/evXLSxDlYWga1lVFHSXPQMaJzna6JyCcrPZAeBSAItB
         xlSdFgkTS3aLR9xHwT+Mg6Sa0veVL5ftzSWSIz1Crx87c7Fw62RM5VbTzr5gITgVQUtk
         k9PdD3QZMKUmNOrDPE5RbWO8eipJGJanb1ooYfcEVFw1CI34O+HsVM+25ZlXgMXghLXc
         x5VQPBPr78TOjvExEgb+krd0bdFPvKZA3bcGz/uzFaJWVBJhphSKmngA1on9GB5C02Dk
         OQwg==
X-Gm-Message-State: AOJu0Yz9AM3/Y8Tb3p7We/hRDbuZ9aYsYBhdw4ePBEOXAY0G4WR9HphV
	p71X+t/JhLN5KBSulYdhHGQ=
X-Google-Smtp-Source: AGHT+IHSz8Ro83bs/m+BykpP8bk+dNyWIE4b/mhcfkhvooSvOT/La8XtUE59cbVt1lGKsrxHmfkUSQ==
X-Received: by 2002:a05:6870:a68a:b0:203:294a:50da with SMTP id i10-20020a056870a68a00b00203294a50damr6322456oam.75.1702692624475;
        Fri, 15 Dec 2023 18:10:24 -0800 (PST)
Received: from celestia.nettie.lan ([2001:470:42c4:101:7c7f:3273:a81a:4618])
        by smtp.gmail.com with ESMTPSA id hq15-20020a0568709b0f00b002032d9a4c0dsm1621924oab.43.2023.12.15.18.10.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Dec 2023 18:10:24 -0800 (PST)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>,
	Joshua Riek <jjriek@verizon.net>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: rk3588: Fix USB PD clocks
Date: Fri, 15 Dec 2023 19:10:19 -0700
Message-ID: <20231216021019.1543811-1-CFSworks@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_181027_063744_D7945E26 
X-CRM114-Status: GOOD (  14.99  )
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

The QoS blocks saved/restored when toggling the PD_USB power domain are
clocked by ACLK_USB. Attempting to access these memory regions without
that clock running will result in an indefinite CPU stall.

The PD_USB node wasn't specifying this clock dependency, resulting in
hangs when trying to toggle the power domain (either on or off), unless
we get "lucky" and have ACLK_USB running for another reason at the time.
This "luck" can result from the bootloader leaving USB powered/clocked,
and if no built-in driver wants USB, Linux will disable the unused
PD+CLK on boot when {pd,clk}_ignore_unused aren't given. This can also
be unlucky because the two cleanup tasks run in parallel and race: if
the CLK is disabled first, the PD deactivation stalls the boot. In any
case, the PD cannot then be reenabled (if e.g. the driver loads later)
once the clock has been stopped.

Fix this by specifying a dependency on ACLK_USB, instead of only
ACLK_USB_ROOT. The child-parent relationship means the former implies
the latter anyway. By the same token, remove the redundant HCLK_USB_ROOT
reference, since that's also implied by its HCLK_HOST* grandchildren.

Fixes: c9211fa2602b8 ("arm64: dts: rockchip: Add base DT for rk3588 SoC")
Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---

Hi list,

Feel free to tell me to knock the HCLK_USB_ROOT change out of there, since it's
not strictly necessary for this fix. It was a "while I'm at it, let's remove
this redundant reference" thing. :)

I also do not know quite enough about debugfs to know how to manually request
clocks and PDs, but if such a mechanism exists, it would be a good way to
confirm the correctness of this fix: ensure ACLK_USB is stopped, then try to
toggle PD_USB a few times.

Cheers,
Sam

---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index fd1b5d02ba16..32d7e49f03d3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1341,8 +1341,7 @@ power-domain@RK3588_PD_RGA31 {
 			power-domain@RK3588_PD_USB {
 				reg = <RK3588_PD_USB>;
 				clocks = <&cru PCLK_PHP_ROOT>,
-					 <&cru ACLK_USB_ROOT>,
-					 <&cru HCLK_USB_ROOT>,
+					 <&cru ACLK_USB>,
 					 <&cru HCLK_HOST0>,
 					 <&cru HCLK_HOST_ARB0>,
 					 <&cru HCLK_HOST1>,
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
