Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 749B4C3ABAA
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 13:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PQXdDzXtW/4u5ESaxC/8OgaHfpbscm9F+b7H90roh40=; b=OJAM1Nhy8dHeJE/7R3mCi0evPR
	p4gCnlDxczma6R/7Ittv1pUU9jC3W+Llelh7RZZOnG2TWVrTEinLEK0J/wfsZdP0KDcqt8+R3tQgm
	TVR7ng9JegZNGqA4pft5/PZwE6Sj5VT9iYUY+tR9oXnm72aCx543ird8nhvHQ50xfBTrbitObjJ5B
	9EArh27L04PO1kPKoAdl4djo/46/AOztrKMJ/ZamHBTQyFpbYyw0OIO3OsfGGftDb1ID+tz+SQYv1
	UvtVe6iS4LyBxXW6JV51kiMwqLUTEUpu6983fzHix4G1omTNxHiVo1+qDUFqtOaXMRrvq33QjBukP
	snpxVW7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBvmr-00000007TpQ-1rrd;
	Mon, 05 May 2025 13:23:13 +0000
Received: from out-182.mta0.migadu.com ([2001:41d0:1004:224b::b6])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBvmn-00000007Tlu-2aoi
	for linux-rockchip@lists.infradead.org;
	Mon, 05 May 2025 13:23:12 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1746451383;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2t1iNVruawp9Q0nx15Waqv2nsBHY2AeYZmxZD8rKghw=;
	b=HMvwAij8UqyVH1JvjRBe35M6RvCVbCLoILwPu3ErYgvJZ5uT+cLJnwoXacfsjQOiYRkHcW
	hW+2CYOkkSw8qLFvRT8S4FyNsB7jdHrAacgpYb/c82LwFXEDjwwxY8pzmK1FLuSQxM4mkc
	6xmN8uA23J+55NSqfNcYBfY+tVklJ6gdx+94wCGfocnTB+y59OzBs+0FNknvthMQFgtLP/
	XD5R59W6qA1ZBsULiMrkzzW3vUM9c+wScFmMPJUTB8t0Z0Exrw44hVq1OohjmqGr8XZZXy
	/Ux6xi9oTFmzpkRVnZZst3rFCsmu82+P70vzZlpI6xU17VL2D9J/Dss51rfz3Q==
Date: Mon, 05 May 2025 15:22:54 +0200
Message-Id: <D9O9CD8Y6QEE.1CVYGL8TZEWI0@cknow.org>
Cc: <heiko@sntech.de>, <robh@kernel.org>, <conor+dt@kernel.org>,
 <detlev.casanova@collabora.com>, <linux-kernel@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <krzk+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>, "Peter Geis"
 <pgwipeout@gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Luckfox Omni3576 Board
 support
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "John Clark" <inindev@gmail.com>, "Andrew Lunn" <andrew@lunn.ch>, "Jonas
 Karlman" <jonas@kwiboo.se>
References: <20250502205533.51744-1-inindev@gmail.com>
 <20250504102447.153551-1-inindev@gmail.com>
 <20250504102447.153551-4-inindev@gmail.com>
 <bb171ae2-c495-49a3-a7eb-a4b865e54199@kwiboo.se>
 <87892840-bdbf-43d4-bd93-cb98f5e1c672@lunn.ch>
 <b603e92f-8c1a-4aea-8bab-82a1f035c7fa@gmail.com>
 <b50c68bd-9b15-412a-ac00-1df25601edd9@lunn.ch>
 <46cbdabd-b0ed-4c9b-9f01-4d2d8eceac24@gmail.com>
 <13407dae-4c73-48a9-846e-92f08449bc4d@lunn.ch>
 <44a4aef7-9d23-4a6e-a228-39bfd3e2a308@gmail.com>
In-Reply-To: <44a4aef7-9d23-4a6e-a228-39bfd3e2a308@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_062310_444699_E76AD304 
X-CRM114-Status: GOOD (  19.67  )
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
Content-Type: multipart/mixed; boundary="===============3303363383706418311=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3303363383706418311==
Content-Type: multipart/signed;
 boundary=e8f77215a835ffc35b89d40badcdc3e54097aed6640a5c57f5a9d3f862af;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--e8f77215a835ffc35b89d40badcdc3e54097aed6640a5c57f5a9d3f862af
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Mon May 5, 2025 at 2:52 AM CEST, John Clark wrote:
> On 5/4/25 8:45 PM, Andrew Lunn wrote:
>>>> What PHY is it? Are you using the correct PHY driver for it, or
>>>> genphy?
>>>>
>>> MAE0621A-Q3C
>>> http://www.maxio-tech.com/product/12928/12929/12930/12931.html
>>=20
>> Mainline does not have a PHY driver for this. So nothing is
>> controlling the delays in the PHY. So what you have above works by
>> luck, and is likely to break once there is a PHY driver. So i suggest
>> you drop the Ethernet nodes for the moment.
>>=20
> The chip claims to be a pin-for-pin clone of the rtl8211f. Empirical=20
> testing has demonstrated it to be extremely stable. Without networking=20
> IO the board is very difficult to develop against. I can disable=20
> networking if that is the consensus.
>
>> There does appear to be a PHY driver here:
>>=20
>> https://github.com/CoreELEC/linux-amlogic/blob/5.15.153_202501/drivers/n=
et/phy/maxio.c
>>=20
>> but it has a number of things wrong with it. You might want to search
>> around and see if there are any cleaner versions around, or if anybody
>> is working on upstreaming a driver for this PHY.

It may be nothing, but to me this is getting too much of a coincidence.

I have a NanoPi R5S and I want(ed) to look at its gmac node as well,
because it (also) has some deprecated properties ... and
``phy-mode =3D "rgmii"`` which was done deliberately in commit
31425b1fadb2 ("arm64: dts: rockchip: fix gmac support for NanoPi R5S")
and the change was away from "rgmii-id" ... and it has a RTL8211F-CG.
Unfortunately the commit message doesn't say *why* it changed.

I also have a Quartz64-B, which also has a RTL8211F-CG and it has
``phy-mode =3D "rgmii"``, changed from "rgmii-id" in commit
16bc4d196b2a ("arm64: dts: rockchip: Fix ethernet on production Quartz64-B"=
)

And maybe related, but a bit different is the Quartz64-A which I also
have, which also has ``phy-mode =3D "rgmii"`` which I'm reasonably sure
was done deliberately (by Peter Geis, who also made the previously
mentioned commit for Q64-B). Q64-A's PHY is YT-8511C 'though'.

And then there's an 'issue' with Q64-A and Q64-B when U-Boot enabled the
ethernet driver causing massive packet loss:=20
https://lore.kernel.org/u-boot/2086393.9F9pDXStbY@bagend/
"configs: rockchip: Enable ethernet driver on RK356x boards"
(packet loss on Q64-B was significantly higher then on Q64-A)

As I said, it could be a coincidence and if it is, just tell me and I'll
stay out of this thread going further.
In any case, thanks for "Add informative text about RGMII delays", that
is quite useful :-)

Cheers,
  Diederik

--e8f77215a835ffc35b89d40badcdc3e54097aed6640a5c57f5a9d3f862af
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaBi7sAAKCRDXblvOeH7b
bq3fAP4x6j8pGEVzC8Wo6b8v+4BLdveYLtltiiDjaLPQ6fAFDQD9HXf+Txm+4EB6
3XvicU9V1TD9oPY7BURhVsU6ftij/A0=
=HKTK
-----END PGP SIGNATURE-----

--e8f77215a835ffc35b89d40badcdc3e54097aed6640a5c57f5a9d3f862af--


--===============3303363383706418311==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3303363383706418311==--

