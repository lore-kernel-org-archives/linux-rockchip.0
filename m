Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70201C46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b0CH+E5UaGntEPKCx0xWbI4vhg6LqCQvN22vuRjfPaM=; b=s2wYMhmSCj3I1LTw88SBHIEraB
	zhFBbtoPirTsQpcujyBi9Tp/Pz52YnLBBIb4QtQXjMPusxFTEW+1EK7CX3C+vD/XOCmLyx17QBO32
	Zc4t+jfjbHL+PYazeOmp73pkKHm91ai1bAOq/lIDL8ZJ2SUwcGeUMoYmq8pAXc/3x5puWwaNashPa
	AVBIItbGqS6Vdvr7DTDozAdAHOhb/Mz6gDw9w+dzx+ijna1VmZoZDDNk9663EfSHw0ZLNaB3CeInB
	YZ2zVeWo4mn0p9f4livO2yJmXwi3fERcaJlZRT91QERqnC1LNOrOgLluToQ68J9CVrSW+7uvrfa+d
	PAx6dW5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGiuu-006TO6-1l;
	Fri, 22 Dec 2023 17:02:32 +0000
Received: from out-184.mta0.migadu.com ([2001:41d0:1004:224b::b8])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGiuh-006TGS-1x
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Dec 2023 17:02:21 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1703264536;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=px3/C2GAp78mWv3p8bN07M1WSx6501Th3bqcTa2ov/U=;
	b=hMDkNbAovGIvQXqMv9oaj7Q5hNQDVlxWc60o9k1oRnAISXnsGbddJaVrt1ZFF3BWojKP0L
	oP/Y05IxzcYG8Hn0HqT+hcDNx3EUNt52DH1dfnZnWQFiV6MIgpceY2GWeQKgWR5nCAUIDQ
	DLCiy18i12XBzdvl5f+dsE1pDVKJRhXF56EwoT4Wj+9eSmDgqN5bV4HuTgVZFWChSV/J1T
	5rwKqRBiA6oQZG8yg2GbSnwMl0SYwb8s76KlpZRssfnP/OrmMGAgB2L75cGKp7xUrhtw/L
	+wI3rNCNotFvEwOhQZuHF5ECOx/4IycDLXd+gaxRoZxxa1gGp6hE4BfkVNlqyg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>,
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>,
 Manuel Traut <manut@mecka.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>
Subject: Re: [PATCH 4/6] arm64: dts: rockchip: Add devicetree for Pine64 Pinetab2
Date: Fri, 22 Dec 2023 18:01:54 +0100
Message-ID: <2121710.IWpXjAX0fk@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20231222-pinetab2-v1-4-e148a7f61bd1@mecka.net>
References: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
 <20231222-pinetab2-v1-4-e148a7f61bd1@mecka.net>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_090220_049708_A448276B 
X-CRM114-Status: GOOD (  16.82  )
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
Content-Type: multipart/mixed; boundary="===============1766314853874243152=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1766314853874243152==
Content-Type: multipart/signed; boundary="nextPart1748370.CxT9PIvavd";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart1748370.CxT9PIvavd
Content-Type: multipart/mixed; boundary="nextPart3145776.fJ4KNo4xjy";
 protected-headers="v1"
Content-Transfer-Encoding: 7Bit
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
Date: Fri, 22 Dec 2023 18:01:54 +0100
Message-ID: <2121710.IWpXjAX0fk@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20231222-pinetab2-v1-4-e148a7f61bd1@mecka.net>
MIME-Version: 1.0

This is a multi-part message in MIME format.

--nextPart3145776.fJ4KNo4xjy
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 22 December 2023 12:05:44 CET Manuel Traut wrote:
> +
> +&cru {
> +       assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>, <&cru
> PLL_VPLL>; +       assigned-clock-rates = <1200000000>, <200000000>,
> <500000000>; +};

Attachment seem to work and for this I also have the attached patch in my 
patch set.
IIRC without it you get an error in dmesg immediately at boot up which is 
visible on the PT2 *if* you have immediate visual output (which is not (yet?) 
the case in my image/kernel).

Cheers,
  Diederik
--nextPart3145776.fJ4KNo4xjy
Content-Disposition: attachment;
 filename="0006-arm64-dts-rk3566-pinetab2-Fix-cru-assigned-clocks.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="x-UTF_8J";
 name="0006-arm64-dts-rk3566-pinetab2-Fix-cru-assigned-clocks.patch"

From d782a64f3b51ffb2f33d3ba3e11e2ebc416542e3 Mon Sep 17 00:00:00 2001
From: Jonas Karlman <jonas@kwiboo.se>
Date: Thu, 17 Aug 2023 17:52:47 +0200
Subject: [PATCH 6/8] arm64: dts: rk3566-pinetab2: Fix cru assigned clocks

Jonas Karlman provided/linked to the patch on IRC.
Seems related to upstream commit 64b69474edf3b885c19a89bb165f978ba1b4be00.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
Link: https://github.com/Kwiboo/u-boot-rockchip/blob/rk3568-2023.10/arch/arm/dts/rk3566-pinetab2-u-boot.dtsi#L11-L15
Link: https://lore.kernel.org/all/20230110225547.1563119-2-jonas@kwiboo.se/
---
 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
index bbd7ed53602a..4a5bee5a28a7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
@@ -288,8 +288,9 @@ &cpu3 {
 };
 
 &cru {
-	assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
-	assigned-clock-rates = <1200000000>, <200000000>, <500000000>;
+	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>, <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
+	assigned-clock-rates = <32768>, <1200000000>, <200000000>, <500000000>;
+	assigned-clock-parents = <&pmucru CLK_RTC32K_FRAC>;
 };
 
 &csi_dphy {
-- 
2.42.0


--nextPart3145776.fJ4KNo4xjy--

--nextPart1748370.CxT9PIvavd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZYXBAgAKCRDXblvOeH7b
bhcpAQCGga/E5eb2w/0+X/AHwmyoGxkSCdFMHH5O+JASROW0NAD/cer+0/CX3l23
ubyIofrQa3gkr+ini5cyFgQy37IsKAY=
=fTG/
-----END PGP SIGNATURE-----

--nextPart1748370.CxT9PIvavd--





--===============1766314853874243152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1766314853874243152==--




