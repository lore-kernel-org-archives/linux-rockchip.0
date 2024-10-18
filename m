Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1640CD2FFF2
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 11:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C0LfO1Xa1GV4SHPtMZY8NhWBhiUvfqAig++Quk9cZpM=; b=4Qdx3o4xuow3ZQN+ZlJl6pF4EQ
	GS1Ov8doT41NqIrOXAJZkNbFs4eNgy4o1ScEUqqGJjJmuX7tpgkcqgwyjaxmT9I99//sWCtEqOjj6
	FyzBLpvZqFuI1ciYqQU1pV9l/K6mgX7+hBZBstHl+WFvFUxlZnhNuuB3rGtVbKXk1MIZxeB1dUr2a
	+yGuWlIsrbA5QkFPMO4wIZ5FJfH/UG+1IbGGEZrZPfaVtpbd9/nwbueKJyLSILq5TsNaEGCww71Fw
	4jCNqYAeSfPs+iY/5SE5/WcEIeJK6eM0Uxr9avhGc7R4UyYxLA4WcKZrDm1YsQi+rw+d7SlfkZ20p
	ZGtsf1NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1kkg-00000000TUz-1VxR;
	Fri, 18 Oct 2024 11:02:38 +0000
Received: from out-180.mta0.migadu.com ([91.218.175.180])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1kkc-00000000TTb-2BbL
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Oct 2024 11:02:36 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1729249351;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uhb6JFEsEkYqpat/UzeB+/KqQjRlouZcaozRbiFqXDY=;
	b=XLiBRYFigwomp0WPP7/pXbir9vcVSafBBPgC3mUBITV0JOjEkOpDBewqLdiGBOQNnTmsUY
	edeiPnCjlMj4u9j8dcKAwrPZx+pvlXvBnnhjTqkl6+KbmoWBjYgFywGIihh6JEsJlLsu/T
	47TVPGNcM5+SeY5ifCpsuyyLgPcubUbCNVSqiDl3aC8NV/3UR47PgjJoSPNbTsRxcJUaIe
	VK++qPedxrL+GDikHh3KUcrt9hhxVEwid8DzZDgFL4uYrEIGT1fyzw5vyFMjO+EYs+sSaG
	zrH8Pfo23oaSvuIit+j80oMB+Y+z7+ZWLn6yHkkI/ltDe2/2p/aOYWhwKHprbQ==
Date: Fri, 18 Oct 2024 13:02:21 +0200
Message-Id: <D4YVQCPZN9MJ.1TXHJU33TV5ZZ@cknow.org>
Cc: <linux-rockchip@lists.infradead.org>, "Samuel Holland"
 <samuel@sholland.org>, "Dragan Simic" <dsimic@manjaro.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Correct GPIO polarity on brcm BT
 nodes
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Heiko Stuebner"
 <heiko@sntech.de>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
References: <20241018092237.6774-1-didi.debian@cknow.org>
 <dffb5226-7d57-406b-b20b-991deebfc295@kernel.org>
In-Reply-To: <dffb5226-7d57-406b-b20b-991deebfc295@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_040234_818768_44C916C2 
X-CRM114-Status: GOOD (  15.63  )
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
Content-Type: multipart/mixed; boundary="===============7749845354399509236=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7749845354399509236==
Content-Type: multipart/signed;
 boundary=c8eba2209db15fe257ac84083071d0e7b547cdfd9039c94ef70ad625ffa7;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--c8eba2209db15fe257ac84083071d0e7b547cdfd9039c94ef70ad625ffa7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri Oct 18, 2024 at 12:11 PM CEST, Krzysztof Kozlowski wrote:
> On 18/10/2024 11:22, Diederik de Haas wrote:
> > The GPIO polarity of the 'shutdown-gpios' property needs to be
> > ACTIVE_HIGH or the Bluetooth device won't work.
> > This also matches what other devices with the same BT device have.
>
> This should match the hardware.

Fair point.

The only documentation I have for the AzureWave-CM256SM is a datasheet.

Para "3.4 Power up Timing Sequence" of that datasheet has the following:

"The AW-CM256SM has two signals that enable or disable the Bluetooth
and WLAN circuits and the internal regulator blocks, allowing the host
to control power consumption."

WL_REG_ON:
"When this pin is high, the regulators are enabled and the WLAN section
is out of reset. When this pin is low, the WLAN section is in reset. If
BT_REG_ON and WL_REG_ON are both low, the regulators are disabled."

BT_REG_ON:
"If both BT_REG_ON and WL_REG_ON are low, the regulators will be
disabled. When this pin is low and WL_REG_ON is high, the BT section
is in reset."

From that I conclude that BT_REG_ON needs to be high to get BT in a
working state.

But that datasheet is in its 19th revision, so can I assume that it now
is correct? (genuine question)

That's why I also looked at devices which uses the same hardware:
https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git=
/tree/WHENCE?h=3D20241017#n2973
and those all had ACTIVE_HIGH for 'shutdown-gpios' in their hardware
description (ie DeviceTree) and if they were all broken, I think we
would've heard about it.

And my own testing showed it not working with ACTIVE_LOW and working
with ACTIVE_HIGH.
I just messed up my previous patch submission process, which this patch
is meant to correct.

> What if the Linux driver is just buggy?

Given the amount of 'spam' I get in `bluetoothctl` when it is working, I
think there's a real possibility that that is (also) the case.

Cheers,
  Diederik

--c8eba2209db15fe257ac84083071d0e7b547cdfd9039c94ef70ad625ffa7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZxJAQAAKCRDXblvOeH7b
bq1uAPwIaNb0Dv46K1fvki+joThQjlgD5Cq+SrY+x3llpiES7gD9G7/HmuttviND
mQmBGybopdIvP68AEX+rv0i+b+luJgQ=
=WlbO
-----END PGP SIGNATURE-----

--c8eba2209db15fe257ac84083071d0e7b547cdfd9039c94ef70ad625ffa7--


--===============7749845354399509236==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7749845354399509236==--

