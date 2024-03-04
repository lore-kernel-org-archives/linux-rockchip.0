Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 655FBC48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 15:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BioL50AAd3Ahlr9vVl3ntQdlrYlh77wKQA90cbAILA8=; b=qdM9D7M4Vyowi6ReQcPqC6678E
	wZLc+qNx7ZXKWe0EPmGsjTaqrCYBrcD7AJ1wgl81XCq4lG39c3LQuZs/TDYbG6XFn/J6JfB7b7Km+
	TsjsIpx3vzWYPU9FS+m/MBEAhJhh0EbEYOv2EhraSlNgwhEpbmzObSP/U+1ioeIALUPabW22/LJqG
	JQkyffxdPB1BFC/Gq7Dpl4OtNInYMfa2Q10ZOxSrT2Jc0DBsllSC8zYjvuMubp8vdGelzQHCycsNd
	5XcJ/01tgsQn8yq+4Mb835wgmxqd2tKYGbOR2WpjVWA/v+iZ7s2g0KZ/9WfA4Si6ddMSukeecVzaf
	WOyrd73A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAIq-00000009bQu-3tEv;
	Mon, 04 Mar 2024 15:32:32 +0000
Received: from out-178.mta1.migadu.com ([2001:41d0:203:375::b2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAIj-00000009bNS-3Ngl
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Mar 2024 15:32:29 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1709566339;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Wqu+8C8GMaK6bDCk9aGSUCngS8D7qmdXKRr3pJsbYzU=;
	b=r/U9ZzjPn0fMfmjS4kL0Kyo2EiyxBYMaJYIBtTKsAgufoOtx87HjO3ukmaFmd/1svqwPNg
	DHV7v9SA3kFBaZgGQ92pNw7TW1/KePnB0TpVoAhZrtv3M20YrA6JNf+1u+bnl1tTkzX+2+
	SBPsQFkEPk1Wf97Gp39a2Y8sPLGgsHk/LX77JY9BsYY0+gFTM4ktGhT46NO2u2wxvLFc+/
	/NPOJQcC7Sjp6qpl9sSG33KXKYBWFT9Ne+/O5iOsEbAUhtSY9uD2isFgSIj1ql2RYSPIKQ
	g19mpdc6Xt1GNK73R1fLWIkP9I0soTu2aUjnfU0D7bUr/0UKJJjQYO0Ja9tFow==
From: Diederik de Haas <didi.debian@cknow.org>
To: Chen-Yu Tsai <wens@kernel.org>, linux-rockchip@lists.infradead.org
Cc: Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Andrew Lunn <andrew@lunn.ch>,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon, 04 Mar 2024 16:32:03 +0100
Message-ID: <27139798.WhXITi6ROJ@bagend>
Organization: Connecting Knowledge
In-Reply-To: <0ed81fbf-cc25-4582-899e-4270932e897c@lunn.ch>
References: <20240304084612.711678-2-ukleinek@debian.org>
 <CAGb2v67xA0z3KWBo=ierkK9qxBAnaLuVkta05qEaFmMciB1-ng@mail.gmail.com>
 <0ed81fbf-cc25-4582-899e-4270932e897c@lunn.ch>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_073226_506175_0FFA3EDD 
X-CRM114-Status: GOOD (  24.43  )
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
Content-Type: multipart/mixed; boundary="===============0420635650314037649=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0420635650314037649==
Content-Type: multipart/signed; boundary="nextPart1786480.ieIM7KbnEy";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart1786480.ieIM7KbnEy
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Chen-Yu Tsai <wens@kernel.org>, linux-rockchip@lists.infradead.org
Date: Mon, 04 Mar 2024 16:32:03 +0100
Message-ID: <27139798.WhXITi6ROJ@bagend>
Organization: Connecting Knowledge
In-Reply-To: <0ed81fbf-cc25-4582-899e-4270932e897c@lunn.ch>
MIME-Version: 1.0

On Monday, 4 March 2024 14:09:15 CET Andrew Lunn wrote:
> > > Andrew already pointed out when I posted the patch introducing the gmac0
> > > node that rgmii-id would be the preferred way to setup things. Back
> > > then this didn't happen because this change broke reception of network
> > > packets. However this only happend because I didn't have the right phy
> > > driver loaded.
> > 
> > It could be that the PHY is strapped to not use its internal RX delay.
> > And the PHY has some weird default TX delay, so having the driver
> > put some sensible values in is probably better.
> 
> It could also be the bootloader putting odd values into the PHY.
> 
> Anyway, it will work better with the correct PHY, and enable WoL
> support.

Not sure if this is the right place or way, but here we go...

A few days ago on #debian-kernel@OFTC:
[28.02 16:35] <ukleinek> u-boot should be out of the game
[28.02 16:36] <diederik> I'm not so sure anymore. On Quartz64 Model A and B 
(rk3566) I had massive packet loss and tracked it down to a change in u-boot
[28.02 16:37] <ukleinek> diederik: sounds like the Linux network driver on 
that machine could do something better
[28.02 16:38] <diederik> yeah, probably

I reported this about a month ago to Jonas Karlman as I bisected the problem 
to a change in u-boot:

> diederik@bagend:~/dev/u-boot/u-boot$ git bisect bad
> 25f56459aebced8e4bb7d01061dcb1b765b197e2 is the first bad commit
> commit 25f56459aebced8e4bb7d01061dcb1b765b197e2
> Author: Jonas Karlman <jonas@kwiboo.se>
> Date:   Sun Oct 1 19:17:21 2023 +0000
> 
>     configs: rockchip: Enable ethernet driver on RK356x boards
>     
>     Enable DWC_ETH_QOS_ROCKCHIP and related PHY driver on RK356x boards that
>     have an enabled gmac node.

I just checked and both Quartz64 Model A and B have `phy-mode = "rgmii";` and 
set `tx_delay` and `rx_delay` to some (other) values.
Without knowing nor understanding the details, this seem very much related?

Cheers,
  Diederik
--nextPart1786480.ieIM7KbnEy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZeXpcwAKCRDXblvOeH7b
bmv2AQDC3ezAjgZekid7Sv/zN01j4p8v1AJm/VfZ1LXruWO2gAEAs/SOIp7zLJDJ
RkD5rS7mQOiPttiummSZXlApHwUcnAc=
=obWu
-----END PGP SIGNATURE-----

--nextPart1786480.ieIM7KbnEy--





--===============0420635650314037649==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0420635650314037649==--




