Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98004C44501
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uoQ4Grs0+NEQc93GQ0DPGnJZAEn6hp6o/56ip0VfJdw=; b=CGjizd2CP12pOe4TgyXtQl6bAV
	J4a9aRVS04HcH4IYmZNfZnfd7lXUIxMaG97mjWI/3BsYBkOhXP0VyIA6DtE/gbSSWcCmWaaIFiNrM
	qqI+QYuDErJbgS8VVbIL/z9ZVZCQi2x8NCugaRHNxs70Y+SqviyybUPHaWGIkstngDrd96MT20Ksn
	2tETpS8baLJy/vII5N5Z3gGLg2TjKtuFRy9vRucGC40dqcPaEViyB7dkNfjpgTy3UBTq/8uCKFK1t
	uf5nLV+pVylk/Ep57A8JZysJriIHXojvwZKqW+9MqLPfa+jQWDvwilhuvP5hQtNA1VAy7DIR569w+
	OJFfY7fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk4Hn-0000000FfUS-1Ss6;
	Wed, 15 Jul 2026 18:24:47 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk4Hj-0000000FfTj-2yJj;
	Wed, 15 Jul 2026 18:24:45 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1784139868; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=IhvFUZ9pBGqNI8hYJqvQK2Jcng0vYzqCPomCvhDmMrZpi5SIDUyQzR4A94Yb8ZLXCufzR8r12iK9RWMJltZgj5yFqV5d4pm5bZAhPYYGbjn/t18MSg4xzt/lNI46e96FGwukJtr4YdmMOER8aEkucqr5h0e7fFSYmVAjYbX/0fE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1784139868; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=3PEo/RhuCHxy6yK+MqfZAEADxxCOppEH8wYLxe4Mw8o=; 
	b=UQU4E0ZsuUwsdmO/JAIgigAvKqoQQend4aF7p54tbAEDq95mhS62ky1yvpsNKqCs1LRjDQ0EXXctBepIyaT5/z4Gd+9ND/PHG5L0dg4pSbhfB/B9yqnoNNcFNlbToXjoKKaqCDWQeH0j6/Mceh+E9Fwfrf96fjQbaLkaOdWKE4M=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1784139868;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=3PEo/RhuCHxy6yK+MqfZAEADxxCOppEH8wYLxe4Mw8o=;
	b=SgYolUAVNq9GURPq0SYVmbEkFdioA0MSknOIEnslL0KvxWW2p0vM6CVdHarui+7F
	I2AaYEDPUsGsoSyOMThwADTyE/j+e/1++nekrt/ahuEcS4D71fZtLeXRAdnTFTwZK6Q
	4yFKUSz7DthkjvkzyunslsdSM2mI95MF+Lah4dsA=
Received: by mx.zohomail.com with SMTPS id 178413986565159.909473966743576;
	Wed, 15 Jul 2026 11:24:25 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id B554D180820; Wed, 15 Jul 2026 20:24:20 +0200 (CEST)
Date: Wed, 15 Jul 2026 20:24:20 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Frank Wang <frank.wang@rock-chips.com>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
Cc: Andy Yan <andy.yan@rock-chips.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Alexey Charkov <alchark@flipper.net>, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com, devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
	Sashiko <sashiko-bot@kernel.org>, William Wu <william.wu@rock-chips.com>
Subject: Re: [PATCH v13 00/35] phy: rockchip: usbdp: Clean up the mess
Message-ID: <alfM6dFBovHMaYn2@venus>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.10.1.5.2/284.121.97
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_112443_807751_ADC94460 
X-CRM114-Status: GOOD (  12.33  )
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
Content-Type: multipart/mixed; boundary="===============7191480691109985471=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7191480691109985471==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k4qr3c4r65j5eyhe"
Content-Disposition: inline


--k4qr3c4r65j5eyhe
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v13 00/35] phy: rockchip: usbdp: Clean up the mess
MIME-Version: 1.0

Hi,

I've gone through the Sashiko feedback for v13 and I do not plan
to submit a v14 for Sashiko feedback at this point. The issues
it reported in v13 are either fixed in later patches - especially
all those "pre-existing problems" - or do not apply.

The series fixes a massive amount of problems in the USBDP driver
and unblocks USB-C DP AltMode at the same point. It would be good if
we get this into 7.3, so that the DRM series is unblocked for 7.4
allowing users to have USB-C DP AltMode in 2027.

My proposed merge strategy is to route everything through the PHY
subsystem as the changes in the DWC3 driver are not very complex
(purely additions), so a merge conflict should be easy to solve.

Greetings,

-- Sebastian

--k4qr3c4r65j5eyhe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmpX0E0ACgkQ2O7X88g7
+poxnA//eiQ4tyVwFKkfyMZ9JF8oA/6H2JGA2Y/G7qxFaieN/qnANmrMdNepvlCd
pnmO9MYGhzn6u9/DcZYZdghysxLnFhVlMUuL+NqvNsb8z2rT90NylnGs1TVcgR0o
ZbvYy0pHQN2PQ2w4AKL+F5GtQknxLGY1KJaQA7fpFZEjz0HslQNUqCXS7d9wzYsd
K0F76bZnSX4brPeOKvcoDbHYCOZ8iIRlXvb1qUA/9SZbEpK1U/QzA7ahMxUhu+IS
xa22F+dy7s9lvmPrdVXGAs7AobMp1GwRfo/jDnyylXFoR8iARi1qeqYL++Yb3TwI
NjbAeY9qEQhSG2u4MY9sbf3NIqEeJdEjV9hnPnktialwkPP7N0DFNtJhS8077KNj
R1Zt/ljWN9tdUdrZuXpJsDNBiTzJ4QpfzWyU454gIl3VYmIYLv5OyblufmMfAn0S
QWE1Zo256J0upomvc4Jk+KNRCq2qqWLAkH3/OPYqVS4WnWINqt/NmKPevz5r0Pol
sjIjH7OL8C0KJdvfCMLyYiyfMeWexEPBHw7LzN0UJWVqtuY4HW/0m7qG8N5MRxOz
xpfZB+Wni1X/nX0Vhb7ueSYRTcZVaiW7EWn/svWoMpsW9ZV2cdRReoZIHExSjl4d
6s5dtmoRfN1xtFKbqEOBRcyYqaWyZmliqGCAebpOANvlLXto7AQ=
=fvwk
-----END PGP SIGNATURE-----

--k4qr3c4r65j5eyhe--


--===============7191480691109985471==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7191480691109985471==--

