Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCE57D10BF0
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 10:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gF9jEP0qHHKMfIvIPRFPO6NTAQu/H21LN+LU+BS+0yE=; b=dV6IoFAfMkoc2D
	6sivCwe0nuKYn5M67/Y/M+gIb/akDd8ZF4eG70VYLrA0xqxz33KwPwN7zuW3umBeT9qm/PnYmK4lp
	yDl3L7eiCbhWPpr7WxMzaBD719otHtOeBsAdM+oV1lOsWzIaRnfnevVyNPntncgUAboMiiBoLSzzN
	QrUvZLfmtSDzznXq5px0zve4DhS2oLdJVGTMM2wDCjKbWPTR4belaFpLNZu1QYXHHys/2ZmZWrf+D
	OFuXYZqrKiz3MnjSSNAuuGWx0X170+k3T1J0M2WhqEKS4cSdgpXXRAP0yTYuD6aXkR73vOmRlkbQm
	EYOEU0vzdZ6hwfFqN9Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4deE-00000006L0s-23zJ;
	Sat, 26 Oct 2024 10:03:54 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4de7-00000006Kuk-2dE9
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 10:03:49 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-7181caa08a3so1628741a34.0
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 03:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729937026; x=1730541826; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BiD5WQZyh4H4zi2wX8Qqo4TX77hmB6UK5+eFFP2Offg=;
        b=LreAlfJeB/0P2c85R2iBAWuzLVD8qBAI8hVwB1k2Xl9LPLIpfDdCK98x5QM859fsMB
         CI4kM01NrQqejL8H5YC9waQUJL0hoffcpjb4HqK6AD8/nvNu6Lj7W0k+xffFY3auNyvT
         D6HLT1hwhPEvNuX4cjsaWi402I1Y7adS+3t7JjZdq+vY+xU7+XAlZttjQsVCdnTdXima
         sDRAoqOjpmTdv9B3w+vbaGcgr53vjRoSpXL3exZ4gd98PjVqmwKnFg+EP2OnEcWU6W6v
         wkt05IQghBEdW92QE0kbgVMar94gq/TVR/fnzU3F9hyEpMaL2L4+N74JbNFDabfYsorn
         qjmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729937026; x=1730541826;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BiD5WQZyh4H4zi2wX8Qqo4TX77hmB6UK5+eFFP2Offg=;
        b=B6BAFUa0xD22i1Cwxc7aedqHlwS/JeLJzY/uRs3gbciI/T0JootrvR8uSWH57SF+FX
         ZoCJeHt/QrR1EwPq1iKFuSZp+0SqQgdMbRFXN3ngv5GQWFm0nKgD3Sw8w/zmZMw5DUJB
         shWhKwHInTp6AGFJROoresK8FdEXQwkpkdG3bRh4Vj8C8K88eGZk38576zH/SE07kHan
         uhbaHWUUcLkciZ2EHMkdAlQtqZdo+AWUERCL72vGwtKNgvLAs39X7Y3IO04GQl0nYhr5
         QgruaBf9Mk60NHKSs8NhJz8wABppaIoZgjh7PqfRX0jQmCG5gYa/VbgAOanoNohcSbAl
         awyA==
X-Forwarded-Encrypted: i=1; AJvYcCW7Kw3iyWApKkzJ7yJ3z0QvNUoNh0P8/ioqYeNnn0KegPgMHoIBSAjqZQl6Wxh7n4QLUum/Bb/V1XM8DQ4ESA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyIOM4QqTm4lr+sDMP4SQJLZjOA31h3b5+CwGSGQLyciFtjcubX
	muAru0cJ3WznzrpSfkoP/0xr3WJSQ1YgMsWkYEmdn0ecDDZ9F9gP
X-Google-Smtp-Source: AGHT+IFipjEJT7pYluVTW9s93oIrldO3Ddhe9Vf8mgSc5dTP2gz4NDyVyFgcGHP6I/TbrJc0KgtzHA==
X-Received: by 2002:a05:6830:440f:b0:713:7e1f:f140 with SMTP id 46e09a7af769-71867f18ae8mr2092323a34.5.1729937026269;
        Sat, 26 Oct 2024 03:03:46 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:cefb:5eea:7da6:3c6d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7186165841asm632243a34.48.2024.10.26.03.03.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 03:03:45 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Ondrej Jirman <megi@xff.cz>,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 09/15] arm64: dts: rockchip: add lower USB3 port to opi5max
Date: Sat, 26 Oct 2024 04:48:25 -0500
Message-ID: <20241026100310.52679-10-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241026100310.52679-1-honyuenkwun@gmail.com>
References: <20241026100310.52679-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_030348_314436_1C818949 
X-CRM114-Status: UNSURE (   9.60  )
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

Enable full support (XHCI) for the lower USB3 port from Orange Pi 5 Max.

the vcc5v0_usb30 regulator shares the same enable gpio pin as the
vcc5v0_usb20 regulator.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../dts/rockchip/rk3588-orangepi-5-max.dts    | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
index be4af5006d69..f32e5827dce6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -111,6 +111,8 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 	};
 
 	/* Represents the vcc5v0_usb20 in the schematic */
+	/* Also represents the vcc5v0_usb30 in the schematic,
+	   both regulators share the same enable gpio */
 	vcc5v0_host: vcc5v0-host-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -634,6 +636,15 @@ &tsadc {
 	status = "okay";
 };
 
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
 &u2phy2 {
 	status = "okay";
 };
@@ -657,6 +668,10 @@ &uart2 {
 	status = "okay";
 };
 
+&usbdp_phy1 {
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
@@ -672,3 +687,8 @@ &usb_host1_ehci {
 &usb_host1_ohci {
 	status = "okay";
 };
+
+&usb_host1_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
