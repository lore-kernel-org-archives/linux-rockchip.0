Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5588BCD1284
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 15:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i4K7nw/ifD3bVLwz8cRGj5xoideD2sbuORT9qiFR4ec=; b=jb+PGKxHF69QjzoWszItoO/RDW
	8MJAD0mFxvkAPIW+rUqhO7TT5UL7sDqgmO71sMgGM3ZEkLRmfFFSx5a/+yJSWm8nfuRrZw9rS0dVI
	LLzPITB3cKvLDO3JNBy5QcB65PC9foUR0Y/Teh1MxgDGTbAvjNXZw2GLHS7uNOZ0FRy8q1lohJpoA
	lYlyOCNNweak5P0ety7kUtrx6aUdrMz9TB0rZYW9yMHN/tiaCLWV86/HnKaDYiJrd4pZecsjgQxrT
	nG20e/xEWh2ceoeTHazkyLGQ3WXYEOq/EUH0Xo2oYRtOWpyFFC7O8+TNUKD0MBnESMRd4LhorMsMw
	dgutu95Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsOzN-00000003Eng-41pT;
	Thu, 04 Apr 2024 15:26:54 +0000
Received: from out-176.mta0.migadu.com ([2001:41d0:1004:224b::b0])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsOzJ-00000003El5-2O0K
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Apr 2024 15:26:52 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1712244400;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=nx5b7zK0NZWAaBwpJhf7wUMpMip3NAQgikWPRpdfU/s=;
	b=VEDjnj55HYYX44F3SuiljmNJkHo5+iLbvSgua8D3T4kwvjS+DkWwii4Kr/mnD+9v0XBEKI
	BRh7vcE0eA7VaS8dN1L8R2GPwciFFrb0ONJa3xiFeRPzPhjM7kgibR7/tXdRNeSSr86Wi3
	0ZSPD910rVrxnRdAAjbchIysPPJQTyHjofD7U+mYM4ruorO56lB2AIMyeikNpPW01BEBOl
	aBncoK0NemwlH5GiCG/yleySg9yGf7idy/ctsUKunshPNUXeBbCs7wat/d8YPAsOMHKzdW
	4h1vhIN6mg2Thnzmt+P0WFSeY2rxGaWxVo84PzM5ROZ3LqqbLWC51zTYyuaE0g==
From: Diederik de Haas <didi.debian@cknow.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 David Jander <david@protonic.nl>, Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add Protonic MECSBC device-tree
Date: Thu, 04 Apr 2024 17:26:29 +0200
Message-ID: <4371633.n8APD0IoSg@bagend>
Organization: Connecting Knowledge
In-Reply-To: <9d325b4e-031c-4f6c-9788-fa5a68470efa@lunn.ch>
References: <20240404-protonic-mecsbc-v1-0-ad5b42ade6c6@pengutronix.de>
 <20240404-protonic-mecsbc-v1-2-ad5b42ade6c6@pengutronix.de>
 <9d325b4e-031c-4f6c-9788-fa5a68470efa@lunn.ch>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_082650_011889_C31827CB 
X-CRM114-Status: GOOD (  10.04  )
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
Content-Type: multipart/mixed; boundary="===============7243108765293662248=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7243108765293662248==
Content-Type: multipart/signed; boundary="nextPart1929697.ULixQHqF2j";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart1929697.ULixQHqF2j
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 04 Apr 2024 17:26:29 +0200
Message-ID: <4371633.n8APD0IoSg@bagend>
Organization: Connecting Knowledge
In-Reply-To: <9d325b4e-031c-4f6c-9788-fa5a68470efa@lunn.ch>
MIME-Version: 1.0

On Thursday, 4 April 2024 17:10:41 CEST Andrew Lunn wrote:
> > +&gmac1 {
> > +	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
> > +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru
> > CLK_MAC1_2TOP>; +	phy-handle = <&rgmii_phy1>;
> > +	phy-mode = "rgmii";
> > +	clock_in_out = "output";
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&gmac1m1_miim
> > +		     &gmac1m1_tx_bus2
> > +		     &gmac1m1_rx_bus2
> > +		     &gmac1m1_rgmii_clk
> > +		     &gmac1m1_clkinout
> > +		     &gmac1m1_rgmii_bus>;
> > +	status = "okay";
> > +	tx_delay = <0x30>;
> > +	rx_delay = <0x10>;
> > +};
> 
> There was a discussion about phy-mode = "rgmii"; and these
> tx/rx_delays last month. Please could you go read that discussion and
> them make use of rgmii-id, and change the delays.

https://lore.kernel.org/linux-rockchip/20240304084612.711678-2-ukleinek@debian.org/
titled "[PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection"
--nextPart1929697.ULixQHqF2j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZg7GpQAKCRDXblvOeH7b
bikgAQDxjNxJBtSfyXYuHl2r99LKDknNDnlaMsWaOdSg4gJNTgD/Uz5yWKZKbPYB
F61sFHT10aYaICXDOe/OgVF1lODpWQM=
=boHv
-----END PGP SIGNATURE-----

--nextPart1929697.ULixQHqF2j--





--===============7243108765293662248==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7243108765293662248==--




