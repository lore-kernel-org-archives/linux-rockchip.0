Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68CA0C27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 16:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXo/QTk9S2oDpiVRUgo6dP/AxWHxResGWckac8KsABI=; b=q4FRHh1PzlbWQK
	Us5nH4o4oXVfD72wBuJdODIl0D4sUedaP03kjN6snxKf5v9syHVLUx/WqstIQgRgnwzDBopGZDZ6o
	CuylxMsuG4slznBQP53yj9SXeS5RCJ84Rw6Pyv2nFgdBP+tIEYX/6B8ZpgUhsv+7neYC4o9gKTxeD
	UCIwqH12gIQzYlJDJQkzkPauNK3I+hwzA+uokff0Auj7hcJXr2CW/8VNHkW/8nTAiLJ4uPdsBnuxK
	r4GUBon1t3dftZJodJ4tNS2l2OKsai9Ywd4eJva+vxh4VUKyNGgnByskH3fTLgIjShRtDfXXT+U2q
	/mG+OEKU3yUC4yUzujRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbT9-0000000Fnfj-2tgB;
	Tue, 18 Jun 2024 16:14:03 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbT6-0000000FneC-0I4V;
	Tue, 18 Jun 2024 16:14:01 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a6f958a3a45so128797266b.3;
        Tue, 18 Jun 2024 09:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718727238; x=1719332038; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WWTx77d5eJnGnctm36s2wsX3pxrVWFjQDRGqkPWp/lw=;
        b=hqCyJnibkmnwtTdKnCsLUWXlsGz397JTpDngRC5UOCxg6uZHGdYYfUdAifSVX8/RHB
         o+bxrLtPXE4KLTbF2v4r+jOnH+QjiSFyDBQfX3+yBplfKrmogWR0TU2E3xtj+SEGZpnB
         G1wev7daFYY3rNwqJITjRH6KXgAF3P0MRrRpS4Ng6MCYEi5Mv95G/kX7MhG2efMlfVSe
         XiJVBKQBGl+e/lx7raxDI0hWn0AeH4weoEX7q8OeRewBeEQoPKe6jSp/ftbpIkrXnGtv
         mcpZkFIlhM7s6uDaRvEQX4G4302GZ8+ZlIvap1TfnH6C/BXggtnfJQzshxP4w9CpfpM3
         LxKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718727238; x=1719332038;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WWTx77d5eJnGnctm36s2wsX3pxrVWFjQDRGqkPWp/lw=;
        b=jJvCQqZv89acsY1ggGbI2JGldnVnyFGov+nk3QZMVBicuHb+CaoK4ho5zyc9078hUe
         tcpDAypTyYISQ+wzTYRF2yd3NGzOW5sHovUpsmL27E6cM4o6ASRkjwga9LDF8daAwCfQ
         DsIuQs5cC6CAvwC+0Tvp9NUmwlib0NcRV4gqm8Hx2wHKTw8KGkiciNTKF2Uo5Xr2HBcB
         wWfFV9gPxJSmGde6V/3scB2KC/OJXEwW3N4ebBwAmvuJn3fETa+15HxkyiY0hdhxYf36
         hCXtSUgN4lwJ3ILPAvQDVzRh4K514P9Kd6d3t7H/fGZCRxndsBFjySd5UtUwSLWgsPJU
         XTwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcECcyzApI/VLyVFy7pOnjv9wH8e4G50BtvK9ZhiSI9ywInEz2BVc7JO80p26uSDyP634+zOsvaq9DOp9+8Xgp505jPuKXc0tfNq7PSjlQ5GdHlyxuulFrgtjNPb2J7JNsZodjiAXUXGSR7V2B7+pp3SvDF+y7PgA=
X-Gm-Message-State: AOJu0YzDlJ2Uj35Ca34aAtAsyy+E/jT2qvZTu8hOuYrFykOP0MM89DrM
	6e1A8k7YPKaTPlqMVREPlnOHjt08kBFepd7TjbTFrJcH82DIbcY/
X-Google-Smtp-Source: AGHT+IFrJd2P1zNowiuFxfXKuLeFkY8i8OFcYY9grJ9wDu0sz0akTQp39THa3fEyzQyVz6uSY4TVxw==
X-Received: by 2002:a17:907:a645:b0:a6f:8f20:a0b with SMTP id a640c23a62f3a-a6f8f200abcmr324363766b.30.1718727238121;
        Tue, 18 Jun 2024 09:13:58 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? (2a02-a449-4071-1-32d0-42ff-fe10-6983.fixed6.kpn.net. [2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56dd3109sm633560966b.95.2024.06.18.09.13.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 09:13:57 -0700 (PDT)
Message-ID: <12f50bef-ba6e-4d96-8ced-08682c931da9@gmail.com>
Date: Tue, 18 Jun 2024 18:13:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 1/3] ARM: dts: rockchip: rk3xxx: fix emac node
To: heiko@sntech.de
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
Content-Language: en-US
In-Reply-To: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_091400_157444_D156E3F3 
X-CRM114-Status: GOOD (  10.81  )
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

In the combined DT of rk3066a/rk3188 the emac node uses as place holder
the compatible string "snps,arc-emac". The last real user nSIM_700
of the "snps,arc-emac" compatible string in a driver was removed in 2019.
Rockchip emac nodes don't make use of this common fall back string.
In order to removed unused driver code replace this string with
"rockchip,rk3066-emac".
As we are there remove the blank lines and sort.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

[PATCH 8/8] ARC: nSIM_700: remove unused network options
https://lore.kernel.org/all/20191023124417.5770-9-Eugeniy.Paltsev@synopsys.com/
---
 arch/arm/boot/dts/rockchip/rk3066a.dtsi | 4 ----
 arch/arm/boot/dts/rockchip/rk3xxx.dtsi  | 7 ++-----
 2 files changed, 2 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3066a.dtsi b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
index 5e0750547ab5..3f6d49459734 100644
--- a/arch/arm/boot/dts/rockchip/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
@@ -896,7 +896,3 @@ &vpu {
 &wdt {
 	compatible = "rockchip,rk3066-wdt", "snps,dw-wdt";
 };
-
-&emac {
-	compatible = "rockchip,rk3066-emac";
-};
diff --git a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
index f37137f298d5..e6a78bcf9163 100644
--- a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
@@ -194,17 +194,14 @@ usb_host: usb@101c0000 {
 	};

 	emac: ethernet@10204000 {
-		compatible = "snps,arc-emac";
+		compatible = "rockchip,rk3066-emac";
 		reg = <0x10204000 0x3c>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
-
-		rockchip,grf = <&grf>;
-
 		clocks = <&cru HCLK_EMAC>, <&cru SCLK_MAC>;
 		clock-names = "hclk", "macref";
 		max-speed = <100>;
 		phy-mode = "rmii";
-
+		rockchip,grf = <&grf>;
 		status = "disabled";
 	};

--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
