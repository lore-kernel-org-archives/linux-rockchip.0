Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 325E1D1AD39
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 09:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Cc:To:From:Subject:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gr6oWBlhuicM3cNF2pgL/3j4kTSa49DCnZbM/bBxxZI=; b=H7+Wjoqcyac1w/9ZmWlYHqVOJ7
	Qn3HTw04PHMN+GHd7uRMZhRe0+4i6pGEHHt86viMU5wECSwSjnPe25IZXorfVsW1aa8xUJ0MbxflY
	su9LWHQ/jV9MRKq0pPbiIabplyGEHmkls8CHCaTZHPxrq328j24/E5azTHZm1uZrP2MlCLQMC4FQU
	1fZvw43uzqjpbc91gG4Qp/+T7Oc4afweNaVcC5ObYylS2cAN/2dCKK+kuR0KNXxcrgOR8k/Hs8u4W
	X0HSoYZYTlgAw1E8R00uRWjhII+ZnWJ2E8zQYFeV4NwMkdDPaBYvGzRwIA+AdonyhDhmgd1oYzoUq
	7vrHuLgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t10hh-0000000BJMg-05uX;
	Wed, 16 Oct 2024 09:52:29 +0000
Received: from out-189.mta0.migadu.com ([2001:41d0:1004:224b::bd])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t10XN-0000000BGyQ-2Vcz;
	Wed, 16 Oct 2024 09:41:51 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1729071705;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+G7yTuYEAXeIa8//sVKc2le4Wa/PTI7ahlJZN0gv2IE=;
	b=Kdoh349s00o3RtuPRonP7fb2sxvK01XJjgBydUPeuemDro+f5fqaJ1qZO2sZlxd0+gq1Qn
	8UiKvqUnLa7P9hO8/1vqKY//+737tiUadRBKdbXhcuxzCD3Jdc9KSwvyKq714dUHzT3DBs
	22mUU8K4tu5grXv+Qio7j2Pfry79RuVjScFO83vTuZOTAVTMdDqU3gea/AGz3aApQwaPpt
	fIkLcbMecTIQWmDZsXr4ydKY7bt0+/yn/FPFt+vtR51V/eplDzbFsV/d0ZblJih3FGcEM2
	8Q3nNCXIh6S3SbwgyD77jhg+DrRatRGb70Qye49WMWwN7edkiYkWHrg/Vr6aTg==
Date: Wed, 16 Oct 2024 11:41:25 +0200
Message-Id: <D4X4RACGCRRH.39SMPGMZZ2GK4@cknow.org>
Subject: Re: (subset) [PATCH v2 0/4] rockchip: Fix several DT validation
 errors
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Heiko Stuebner" <heiko@sntech.de>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Rob Herring" <robh@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>
Cc: <linux-rockchip@lists.infradead.org>, "Samuel Holland"
 <samuel@sholland.org>, "Dragan Simic" <dsimic@manjaro.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Michael
 Riesch" <michael.riesch@wolfvision.net>,
 <linux-arm-kernel@lists.infradead.org>, "Diederik de Haas"
 <didi.debian@cknow.org>
References: <20241008113344.23957-1-didi.debian@cknow.org>
 <172841572989.2562611.18254512768409976284.b4-ty@sntech.de>
In-Reply-To: <172841572989.2562611.18254512768409976284.b4-ty@sntech.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_024149_966415_C3C6D46B 
X-CRM114-Status: GOOD (  14.74  )
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
Content-Type: multipart/mixed; boundary="===============0676462793056889834=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0676462793056889834==
Content-Type: multipart/signed;
 boundary=faeb94c4c6c54e37cbfcce4f20fd5406a08769967964b4ca64d2ba0e7639;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--faeb94c4c6c54e37cbfcce4f20fd5406a08769967964b4ca64d2ba0e7639
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Heiko,

On Tue Oct 8, 2024 at 9:28 PM CEST, Heiko Stuebner wrote:
> On Tue, 8 Oct 2024 13:15:35 +0200, Diederik de Haas wrote:
> > This is a set of 4 small device-tree validation fixes.
> >=20
> > Patch 1 adds the power-domains property to the csi dphy node on rk356x.
> > Patch 2 removes the 2nd interrupt from the hdmi node on rk3328.
> > Patch 3 replaces 'wake' with 'wakeup' on PineNote BT node.
> > Patch 4 replaces 'reset-gpios' with 'shutdown-gpios' on brcm BT nodes.
>
> Applied, thanks!
>
> [2/4] arm64: dts: rockchip: Remove hdmi's 2nd interrupt on rk3328
>       commit: de50a7e3681771c6b990238af82bf1dea9b11b21
> [3/4] arm64: dts: rockchip: Fix wakeup prop names on PineNote BT node
>       commit: 87299d6ee95a37d2d576dd8077ea6860f77ad8e2
> [4/4] arm64: dts: rockchip: Fix reset-gpios property on brcm BT nodes
>       commit: 2b6a3f857550e52b1cd4872ebb13cb3e3cf12f5f

Please revert the 4th patch.

I must have messed up my testing previously, but BT does not work on the
PineNote with the 4th patch applied and does work with it reverted.

With the 4th patch applied I get this:
[   20.298465] Bluetooth: hci0: command 0x0c03 tx timeout
[   20.299036] Bluetooth: hci0: BCM: Reset failed (-110)

And then running the `list` command in `bluetoothctl` returns no
controllers and `hciconfig -a hci0` reports `DOWN` and when trying to
reset hci0, I get that timeout error again.

With the 4th patch reverted, the controller does work.

I also get a HUGE amount of 'spam' when running `bluetoothctl` like:

[bluetooth]# [CHG] Controller 90:E8:68:B9:60:46 UUIDs: 0000110e-0000-1000-8=
000-00805f9b34fb
[bluetooth]# [CHG] Controller 90:E8:68:B9:60:46 UUIDs: 0000112d-0000-1000-8=
000-00805f9b34fb
[bluetooth]# [CHG] Controller 90:E8:68:B9:60:46 UUIDs: 00001200-0000-1000-8=
000-00805f9b34fb
[bluetooth]# [CHG] Controller 90:E8:68:B9:60:46 UUIDs: 0000111f-0000-1000-8=
000-00805f9b34fb
[bluetooth]# [CHG] Controller 90:E8:68:B9:60:46 UUIDs: 0000110c-0000-1000-8=
000-00805f9b34fb
[bluetooth]# [CHG] Controller 90:E8:68:B9:60:46 UUIDs: 00001800-0000-1000-8=
000-00805f9b34fb
[bluetooth]# [CHG] Controller 90:E8:68:B9:60:46 UUIDs: 00001801-0000-1000-8=
000-00805f9b34fb
[bluetooth]# [CHG] Controller 90:E8:68:B9:60:46 UUIDs: 0000180a-0000-1000-8=
000-00805f9b34fb
[bluetooth]# [CHG] Controller 90:E8:68:B9:60:46 UUIDs: 03b80e5a-ede8-4b33-a=
751-6ce34ec4c700

and this is only a tiny fraction. So there's definitely room for
improvement there, but at least it does work.

Dunno yet what to make of it as this will re-introduce the DT validation
error, but working hardware seems still be preferable to non-working HW.

Sorry about this.

Regards,
  Diederik

--faeb94c4c6c54e37cbfcce4f20fd5406a08769967964b4ca64d2ba0e7639
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZw+KUQAKCRDXblvOeH7b
bhnxAP9n+rlPuUutF7F77uY3BcDFisDJkTklvco4RH+AzVaO/QD/foEQc21La4tM
T9BfqGjcYGN2XKJ9U/7D3koBQyOXCAQ=
=xqKK
-----END PGP SIGNATURE-----

--faeb94c4c6c54e37cbfcce4f20fd5406a08769967964b4ca64d2ba0e7639--


--===============0676462793056889834==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0676462793056889834==--

