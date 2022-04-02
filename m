Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05266C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 14:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pAmzKC51IJjH5NX3lpKcLELcaw5ITIuqq9gSO9smhk=; b=KTwvbFRHCQUbQ0
	ceMtsT+Ssdwt1UFlnH9bwGEl+XlH6B/qqaiQimrIblGQIca0xQkNmzEfngZzSfXkQ0zTMiWv3b6Ke
	T9O/MxH4+6PkM0U6kB9gLLLO9W9C4VUwjTAEoriKX/Q0a1r2nmLaHZA8REppMBbiq5K/rhBaAae1S
	o5yFsJUDHYnXt9dbnaIFJwVzPY3Lo/yxc92v+kliDRa0fk6L4jNDHZU5BlikfRVtaFq49RGNiFq7+
	J/Mr+gPgUEVfwgS4e26XfeXG3ItE3E0fivO7QudjiwoUkdRV550MLSGDANlWJVgMYOjWZYD7bmWrY
	PZwaG/WiHiyFXFRAQEUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naf07-009O2F-F4; Sat, 02 Apr 2022 14:45:15 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naesF-009JJY-1d; Sat, 02 Apr 2022 14:37:09 +0000
Received: by mail-ed1-x52e.google.com with SMTP id b24so6061496edu.10;
 Sat, 02 Apr 2022 07:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uTBoLKmFu3SudRrqJ18gR0Ex2iOqgaqOCTSIcXbzjD4=;
 b=d2XA5+lbzbqgUClSScxRzK8VZ4PkpUMVTN0uvEH/krKdNx4C1+rVGMAkjyjl5wk6F0
 un/rwtokiCwsoqEMKy0SOwqTlDVOQz2srNSeZEd+IvowfEUexyuPGpU7CkIi/vcsK5P0
 bk+WbRlafAay2+EHW94cNWP9r7Ym6QahwLQIlWO5ebpwEY5Nd3XKnBpdRXh56Kvk7Bhp
 5JnXO/dTunO6BrD2H16p80mMYpj/FKFeE7qT8z6Tc2Xza4hNWlYUVG56ASU/cspgFqmD
 bE+fwB3TSUeFBbqgZzbFdt9JJRe4ONJFBg9jw21LAIrTQ15iHnU3WcIpSxb4IanrJEZo
 0DtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uTBoLKmFu3SudRrqJ18gR0Ex2iOqgaqOCTSIcXbzjD4=;
 b=eEcQ++VK6hpeMlNQXLYop5o/f99cifBP4NFQ5T9zvW6o/+nDc4NAipLyZYYXltIYhc
 1IytsthalEhNupeQwWbQwDeNVFe5hUW1KVGnyDYRmmFhCdQZoIR570r4cP/+lT71BlJx
 MTPRp4DbhVTduNYN+Sn7p4/WBAhm6dg/UtwFK4y5pn3blCavadZuAFy1rIK/g4O4bAoc
 sEkjs+ktOcBTCVmtn4g6xiQrVTcz+zi6+KD2dD7FCH3nCqOaKqTFdywv4UhDJjHYiWa/
 zRCozUN+eZlQax2XK+QClVIbwfDNFcc0GSADAHKyr4iLczbMYveFUBODVC9UCj73dIvP
 kFcQ==
X-Gm-Message-State: AOAM530yQjqTT0bNIH9iiby0YoxGrtly1X35UWsCvsXNUB+34VA92ChE
 U77VWmaKuGBIGTxTWdOszBw=
X-Google-Smtp-Source: ABdhPJzZeLptWSIWN1DIeaKwHOX9srEUgHYaOuX/82OJK1wtowsFIw+5wYQxhBkNlts96i0VQfbncQ==
X-Received: by 2002:aa7:db94:0:b0:410:f0e8:c39e with SMTP id
 u20-20020aa7db94000000b00410f0e8c39emr25102336edt.14.1648910215459; 
 Sat, 02 Apr 2022 07:36:55 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2169557ejb.60.2022.04.02.07.36.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 07:36:55 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 13/16] arm64: dts: rockchip: fix compatible string rk3328
 cru node
Date: Sat,  2 Apr 2022 16:36:33 +0200
Message-Id: <20220402143636.15222-14-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
References: <20220402143636.15222-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_073707_168984_7E41AE69 
X-CRM114-Status: GOOD (  11.60  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The rockchip,rk3328-cru.txt file was converted to YAML.
A DT test of the rk3328 cru node gives notifications regarding
the compatible string. Bring it in line with the binding by
removing some unused fall back strings.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 9c76c288b..8ceac0388 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -756,7 +756,7 @@
 	};
 
 	cru: clock-controller@ff440000 {
-		compatible = "rockchip,rk3328-cru", "rockchip,cru", "syscon";
+		compatible = "rockchip,rk3328-cru";
 		reg = <0x0 0xff440000 0x0 0x1000>;
 		clocks = <&xin24m>;
 		clock-names = "xin24m";
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
