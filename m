Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 793FBC4742C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 15:30:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1DDFF2137B
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 15:30:18 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="uF8yc+Rt";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="vUilQHf/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1DDFF2137B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gXZMvkHpPs3Q5iVBoo5RjqJnQlNGZoJKXHh96K+pm70=; b=uF8yc+Rtq8OkRJ81gh6NY3GXMw
	7n0ZYPfEc8/XOdaG9X1jwXOTObUd7yMnTtf5aWrdAMaZz8lk5y30DdAR1uvvKWpkKJwZ/EdRkLEoL
	kxUxCJob/bcg3b6Kg3UNxvWxPScqJG3cupCYRxtUzTOF+RKMAChBqnSdsCIK/PkBGmuDYmfK/K2L7
	4X9Cc7Tq/cbnYWqhKRksstlgZy1zK0qww0Qkug/t0xauB6PlE/4ikXFjJm5tKap2sCeqPgJEDFDX1
	LIE4IG4leQobqXc9Fz1X7eUkT0Bx9cKQRPPlB7AqdElOPdp80MGcOxoHgsUPqYl2Ipt/q/0q6vnc6
	8RA3ii1Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kegSJ-0002Ch-J3; Mon, 16 Nov 2020 15:30:11 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1keg74-0001EC-16; Mon, 16 Nov 2020 15:08:20 +0000
Received: by mail-ed1-x542.google.com with SMTP id ay21so19095930edb.2;
 Mon, 16 Nov 2020 07:08:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=MgUuCGTUmTyQE2NB6kAdCs8A92pbip91+AhDDJogBCE=;
 b=vUilQHf/dfMmiU8OIpGWq8OlaxZ//XEeM4UsGoBqdWbgfPwOzkxGfinaBOg/9Ov4OW
 lGmhgOjEjfRDbMjs1y0xPirxM+8WsllL7TloZ/XIWZYemzlGtoR424O4VHsNbeh+2MGQ
 mqzgKhRme37BdP/lqqe57be3bTiNYrohVFpKps5aUjUnS8i9IZEU3BpGITiE+sNhleHB
 1kAeCBIojeZVVcFaKBhbaYuYc5ZLhhVb2J5JLv6XDf/t9t/f/odoJXDePXNCgwHbKyFz
 TJSKIiVKL5ZYCPYy6h5QceIWf5ApPaYoTe6MdERHzi9BL2T+dLBNecQl3sRTdYECWsAM
 EqJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MgUuCGTUmTyQE2NB6kAdCs8A92pbip91+AhDDJogBCE=;
 b=N9YCr1oz0sXKysxjhZSGrT5rQM/oAvsIQiBXWmf20SOlLUba+GYrfKSxmf1JTd0WP7
 M+t1iBIPyGbGSCyqGW8K8zWw4G6zjB8x1zBH8UouA+NhWRkZuJIqamnzNNdU2eNzFpYL
 EgV7b/6OLjshwozjIco0loiB1Gw00crRS0Clhv/evkQKBDzhqisP0Dznus42k27Q/atU
 G+9YIgwgXmz61e6Rhz3TMWqTWpvaNZDOtNjrqhNinkZ74ckDq2ApmfIV3fqwrF8dGVbX
 xwshooAOB72GoQjxFkZmhUFsJFGbuy5DwQeCdwbTdszRfGlRnSr6qVTpR/qUe8+HJoqf
 BOag==
X-Gm-Message-State: AOAM530giIqrzLfeBmK9eeroJXsyTfSBNMjAkABrGTeT5mgKAY4a48bB
 1KNd37glkyx7uhWGAUEmDX0=
X-Google-Smtp-Source: ABdhPJy6eWNJDroLJLz5B7pbw1omq0oWoGtj+TEf2+WuD0ZNaVgzuOjtwz8+YeMs8VZtKJhalCx79g==
X-Received: by 2002:a50:ef1a:: with SMTP id m26mr15477517eds.144.1605539292012; 
 Mon, 16 Nov 2020 07:08:12 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id x1sm11180827edl.82.2020.11.16.07.08.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Nov 2020 07:08:11 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] ARM: dts: rockchip: rename wdt nodename to watchdog in
 rv1108.dtsi
Date: Mon, 16 Nov 2020 16:07:56 +0100
Message-Id: <20201116150756.14265-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_100814_238228_B81849DD 
X-CRM114-Status: GOOD (  13.80  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A test with the command below gives for example this error:

/arch/arm/boot/dts/rv1108-evb.dt.yaml:
wdt@10360000: $nodename:0: 'wdt@10360000'
does not match '^watchdog(@.*|-[0-9a-f])?$'

Fix it by renaming the wdt nodename to watchdog
in the rv1108.dtsi file.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rv1108.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index a1a08cb93..e491964b1 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -299,7 +299,7 @@
 		clock-names = "timer", "pclk";
 	};
 
-	watchdog: wdt@10360000 {
+	watchdog: watchdog@10360000 {
 		compatible = "snps,dw-wdt";
 		reg = <0x10360000 0x100>;
 		interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
