Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEC0BC48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 16:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qAgs7d8H4e9SSzunGBzfpxJ7rCfqnrjczYhNWYiByyU=; b=xvsFXRNPGAY7fJqRElfRIl5bd2
	1AQJySdKeNsDCML8mirkKuiI8aFgG7dwrEw31laiB3TrE7Flyjy1K78HYaJx9IpA1fiIWOz9jPlnu
	6vEP6hR+ByqJLC9FT6UuAfA3WdF7c0TjgYacn0k7ehuj3amdO21BkKlkDC/5cZ95gnezUOtw6EDw+
	A6zOs6Pzq4GxWcr01hvyP3i3hTLVYk7P0JVROrgs+6RPqbxvmc9UWk+tnLnxHrc7qEPZGCkK/9fDH
	dOuD+Xfo+6GR8JRvAOT8OOYET8L6DVY0489gTPtW4CtW7VfXmaMIWklF8Lyr0YD51ou2IgRli5gUl
	HaBLaXXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhBPY-00000009s9k-1aR2;
	Mon, 04 Mar 2024 16:43:32 +0000
Received: from out-179.mta0.migadu.com ([91.218.175.179])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhBPT-00000009s8l-0zLg
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Mar 2024 16:43:30 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1709570601;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2giGpuzpRKmPeN/usCctgtnLPtgqfRIWATkgROsjxFU=;
	b=Q9itpGSABsDVqKOVWNCIbdwOZa7+M6SnWNMRDD+l4nDy/mG7RbxK1Gi4GyoSWv7Ubr58Mm
	OmQvQlhPsa0gv7zze3YprgeqNq+vlA+DsL0R2RSId35LT/ZdthN2Ax0wROksAYoKftgUze
	X7b15MXPX3+F+56m/lK3g7R9ocDuI/G+4JfdX3WC0CuaG7UgpkDCqnBkJxM1YeDCHIk4wi
	aj4nZ+jkqVpKbBScl1WX6ve3k8kYfgV0vbMEN1uw6l9bTlQHJoYkg12lPlB9mlVbfEgNQc
	A6/52MWy7Cuk8OCrXDnHOOVgTSWa6kLeN5RynGCqnN9uhGKT8aNQCA/xTDKedA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Chen-Yu Tsai <wens@kernel.org>, linux-rockchip@lists.infradead.org,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon, 04 Mar 2024 17:43:08 +0100
Message-ID: <2662566.GSV3oLgti5@bagend>
Organization: Connecting Knowledge
In-Reply-To: <b614dd49-7dbe-452e-b3b5-cb014b30f0f8@lunn.ch>
References: <20240304084612.711678-2-ukleinek@debian.org> <27139798.WhXITi6ROJ@bagend>
 <b614dd49-7dbe-452e-b3b5-cb014b30f0f8@lunn.ch>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_084327_868241_D11F6F74 
X-CRM114-Status: GOOD (  41.95  )
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
Content-Type: multipart/mixed; boundary="===============8835997984657907271=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8835997984657907271==
Content-Type: multipart/signed; boundary="nextPart10001313.RiGlM3e0tA";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart10001313.RiGlM3e0tA
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Andrew Lunn <andrew@lunn.ch>
Date: Mon, 04 Mar 2024 17:43:08 +0100
Message-ID: <2662566.GSV3oLgti5@bagend>
Organization: Connecting Knowledge
In-Reply-To: <b614dd49-7dbe-452e-b3b5-cb014b30f0f8@lunn.ch>
MIME-Version: 1.0

On Monday, 4 March 2024 16:59:38 CET Andrew Lunn wrote:
> On Mon, Mar 04, 2024 at 04:32:03PM +0100, Diederik de Haas wrote:
> > On Monday, 4 March 2024 14:09:15 CET Andrew Lunn wrote:
> > > > > Andrew already pointed out when I posted the patch introducing the
> > > > > gmac0 node that rgmii-id would be the preferred way to setup things.
> > > > > Back then this didn't happen because this change broke reception of
> > > > > network packets. However this only happend because I didn't have the
> > > > > right phy driver loaded.
> > > > 
> > > > It could be that the PHY is strapped to not use its internal RX delay.
> > > > And the PHY has some weird default TX delay, so having the driver
> > > > put some sensible values in is probably better.
> > > 
> > > It could also be the bootloader putting odd values into the PHY.
> > > 
> > > Anyway, it will work better with the correct PHY, and enable WoL
> > > support.
> > 
> > Not sure if this is the right place or way, but here we go...
> > 
> > A few days ago on #debian-kernel@OFTC:
> > [28.02 16:35] <ukleinek> u-boot should be out of the game
> > [28.02 16:36] <diederik> I'm not so sure anymore. On Quartz64 Model A and
> > B
> > (rk3566) I had massive packet loss and tracked it down to a change in
> > u-boot [28.02 16:37] <ukleinek> diederik: sounds like the Linux network
> > driver on that machine could do something better
> > [28.02 16:38] <diederik> yeah, probably
> > 
> > I reported this about a month ago to Jonas Karlman as I bisected the
> > problem> 
> > to a change in u-boot:
> > > diederik@bagend:~/dev/u-boot/u-boot$ git bisect bad
> > > 25f56459aebced8e4bb7d01061dcb1b765b197e2 is the first bad commit
> > > commit 25f56459aebced8e4bb7d01061dcb1b765b197e2
> > > Author: Jonas Karlman <jonas@kwiboo.se>
> > > Date:   Sun Oct 1 19:17:21 2023 +0000
> > > 
> > >     configs: rockchip: Enable ethernet driver on RK356x boards
> > >     
> > >     Enable DWC_ETH_QOS_ROCKCHIP and related PHY driver on RK356x boards
> > >     that
> > >     have an enabled gmac node.
> > 
> > I just checked and both Quartz64 Model A and B have `phy-mode = "rgmii";`
> > and set `tx_delay` and `rx_delay` to some (other) values.
> > Without knowing nor understanding the details, this seem very much
> > related?
> 
> If you don't have a specific Linux PHY driver, you are at the mercies
> of how the bootloader, or strapping set up the PHY. So it is always
> best to use the correct PHY driver. 

This part is a bit over my head (that's ok, no need to explain it).

> The Linux PHY driver should assume
> nothing and setup the hardware from scratch, removing anything odd the
> bootloader did. However, the fall back generic PHY driver has no chip
> specific knowledge, so it cannot undo whatever the bootloader did.
> 
> So, in an ideal world, we don't care about what the bootloader did,
> just use the correct MAC and PHY driver and it should work. And if it
> does not work, it is a Linux bug, which needs to be found and fixed.

I agree.

> > Not sure if this is the right place or way, but here we go...

That was because it's actually a bug report (wrt Quartz64 A and B), but 
especially your remark made all the pieces I found earlier fall into place.
Therefor I 'abused' this thread/patch to report it.

I'm happy to test patches, but I lack the knowledge to come up with one 
myself.

Cheers,
  Diederik
--nextPart10001313.RiGlM3e0tA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZeX6HAAKCRDXblvOeH7b
boF3AP9ioMzadpxwbuo6+MJBnMISJLZJWkmGh4eRoj8SImMYaAEAjbeY0mkDXUnJ
9CWXaBySw+VcGQDMbMmzLMlvj9m+2wI=
=ruev
-----END PGP SIGNATURE-----

--nextPart10001313.RiGlM3e0tA--





--===============8835997984657907271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8835997984657907271==--




