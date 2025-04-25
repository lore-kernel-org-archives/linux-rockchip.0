Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 694A9C369C2
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Apr 2025 16:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uO2yzxgZH6XDDbbf3vJRUxH/PfAvlJjMMPJddU12OcU=; b=o8gwDKo4fj5nTW
	0fzn9tF5O1TGhBZ1ILZ+y/J9TAClaJJVJ13CTeEeaxHwLbXIBiUXlQgccG99ShM8XBqzRwuBQlquV
	TwbAFUBxd68kASGCxExNk+GCgz2vaPQfAswbZwub848nHVair724OMJmC/WDL2Ao+tzSH/mJ1n7xa
	vZlbt3ZTe7O7SJZuQ5YCCvtcJs7Kiawkff4clmsFhZ99YD6vSn3tpf1N4fQLViHxPontvwr/rvumQ
	ZOdh/uSh/UNE4f3knmWuTpvA6rq7rvee0MIAgnDrFhQZK8Fs1Xl5M5ukM1GhHscfGHG/mPcqM+Kwc
	vkJaaE4LnSqK31bmYqRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8LxC-00000000EFp-1KwN;
	Fri, 25 Apr 2025 16:31:06 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8KpI-0000000017M-2VJD
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Apr 2025 15:18:53 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-aaecf50578eso365205866b.2
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Apr 2025 08:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1745594331; x=1746199131; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/OY31xp7Dll9vOIEOmAuyrG07iLGmNS/7kqtV/vhc5Y=;
        b=j42Mt5qxCJoOQSAZ67W/QfhQdbkruiN8scys5w72FR/PJT4SkMiuvSysOixXR9NJAT
         Szooa0MhhB0unOV9Ti6R9o+kTVBsHSEeOpQrqwI4pHg6qXyuJWCXlXJdvoljsAU5nVEp
         CKZYawRNh4dwCEVooHT2e1x03O50YwGwzh/NS95EedFJ/ikDy0zmWpWp2kZ6ho6YOqmT
         9fsLBBy3gt543ewtrZBYC7QypUjUy/vT4DRjhZ+uu8eyH6t8BcgXEa6TYfn5JjK4/W3i
         +DV2fmV0QFZHn5kRW6DwFSlGpYiJP5UJ6Af4TT3w6GhKxyS314i+OJzxroIfyiqiZD4S
         M/6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745594331; x=1746199131;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/OY31xp7Dll9vOIEOmAuyrG07iLGmNS/7kqtV/vhc5Y=;
        b=KSsF0287cY6pWxsLDKREYz7NEv/KJ3QF8bH/QDoYk27+kWKaNsYE29z/2biio6hkdK
         xsFTRQ4b168DLIzmEgkK/+pBcBOf74GvTAC9kWXYEJt4SwesPStrIOaUrTnUFN76i00y
         SPH1xO7L4SGu/HGct9S6zN4XYQHfUvt97qUweh6SU9lza2htw+iR/WJC6KZfeuPfoDxV
         9sJ9KR9ewHq8eNpYZwTn1RAlCGIz1RyPuGU0lZ+ufpG9VdDOvfzR+CVHqP8e5gNBbreD
         ecow81LiW+ViubBAA9gU+r+1RHxUb7/mV77WMKEkux9ee+JlhMb+ZrE8h5/Idg3CtOaX
         1/2Q==
X-Forwarded-Encrypted: i=1; AJvYcCW83ZSSlasHrQN6XX1K2/T+c2oHKYHykeA/4VyYVGm6k/Wyg6nrY+cYpdhCUJOvhezV5qMWfdw2FlqDb6uaRg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyk2aTq5jeJGRAXYU5AyR3F75NzxF5KMIT/bEursNndwDDSON8a
	DQaiDKbzki+aoLVZQakoWB56KIuLbzfvdcI2DQEBed3QnrTnduUEBoakirG1Ck8=
X-Gm-Gg: ASbGncsSTxazT+cFrif8e2vQwDW0m++9lgoenDMmMTuwbV5BGLWm48A/v3LAF/w9jA5
	/44Jijjyq2itdpuPxxpq0NmvQ+aPmr3so7DO9XpllfVG1VMdusPQMZ5JXPkvuMRwDcY2smLNoL+
	mAqqp8OzZjF+MO4Z3q2lDk2gIx57pRvxsDOSmWVeZdrWmxQYAiqhW2VAKeppjqZfnBwxwD15sdS
	nz9n5CdrvwQXPeIXfSCvWPAC1Yk7aVQFaxUhGrz91ynTvAq4dQtEmPnVhgtb/xMzNH+24BfYLj4
	y03OniCcJf9MJhsbAPXYCdj3Kz27g+n6MsZtIW2+idvOty5xeBni7TBJ4A==
X-Google-Smtp-Source: AGHT+IF/D7KC9l8++rWqiUEiNq3eyx2s0Qq/rmeB9HU9Sb4W5K3CdWLHL8yd44YFf3+hogCSyIirhg==
X-Received: by 2002:a17:907:2dab:b0:acb:bbc4:3344 with SMTP id a640c23a62f3a-ace71098d8dmr246518666b.22.1745594330687;
        Fri, 25 Apr 2025 08:18:50 -0700 (PDT)
Received: from [127.0.1.1] ([185.164.142.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e59649fsm151099766b.85.2025.04.25.08.18.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 08:18:50 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Date: Fri, 25 Apr 2025 17:18:10 +0200
Subject: [PATCH v2 5/5] arm64: dts: rockchip: disable unrouted USB
 controllers and PHY on RK3399 Puma with Haikou
MIME-Version: 1.0
Message-Id: <20250425-onboard_usb_dev-v2-5-4a76a474a010@thaumatec.com>
References: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
In-Reply-To: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
To: Matthias Kaehlcke <mka@chromium.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_081852_628920_ABB76616 
X-CRM114-Status: GOOD (  16.15  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

The u2phy0_host port is the part of the USB PHY0 (namely the
HOST0_DP/DM lanes) which routes directly to the USB2.0 HOST
controller[1]. The other lanes of the PHY are routed to the USB3.0 OTG
controller (dwc3), which we do use.

The HOST0_DP/DM lanes aren't routed on RK3399 Puma so let's simply
disable the USB2.0 controllers.

USB3 OTG has been known to be unstable on RK3399 Puma Haikou for a
while, one of the recurring issues being that only USB2 is detected and
not USB3 in host mode. Reading the justification above and seeing that
we are keeping u2phy0_host in the Haikou carrierboard DTS probably may
have bothered you since it should be changed to u2phy0_otg. The issue is
that if it's switched to that, USB OTG on Haikou is entirely broken. I
have checked the routing in the Gerber file, the lanes are going to the
expected ball pins (that is, NOT HOST0_DP/DM).
u2phy0_host is for sure the wrong part of the PHY to use, but it's the
only one that works at the moment for that board so keep it until we
figure out what exactly is broken.

No intended functional change.

[1] https://rockchip.fr/Rockchip%20RK3399%20TRM%20V1.3%20Part2.pdf
    Chapter 2 USB2.0 PHY
Fixes: 2c66fc34e945 ("arm64: dts: rockchip: add RK3399-Q7 (Puma) SoM")
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 947bbd62a6b09ce55320d0889ee8cf50ca59dfd4..93cefacc7a01ec8f9716de828077b3395a5e7696 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -292,14 +292,6 @@ &uart2 {
 	status = "okay";
 };
 
-&usb_host0_ehci {
-	status = "okay";
-};
-
-&usb_host0_ohci {
-	status = "okay";
-};
-
 &vopb {
 	status = "okay";
 };

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
