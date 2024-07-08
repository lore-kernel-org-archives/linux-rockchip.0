Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0896EC3271E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 16:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5RyX+7n7mbCmAHIL2j/i1cvvsgSZRerkMnHcj+6CdnM=; b=cW/nOfTM0vGtrcv3cj965dTAMT
	ohbmvg4mhdpQIE0XHiGW0YnD43plJEUMLTXbwUIBR3/U6Q1ducMBzdsGcY6zzkCzPtzQYzsVFAMPM
	djEgQDhMIrZe2GWeCuMpdSk/oTyjaVY16lEM8uODE1UI2rkboawnYUqzM49nTAlAwqftY9XP8Lcbj
	7chKd5W1YKP2nzLtibXEQLqml0hAso44dkudIyXuC5ni9dVpnfAd2+9VcBHEpT3CUcNMBL+e7m+7O
	vKCbYL/TNsU99EdjwsqPvy3JHqJ0kJOgm1uKArkwWRz+6V8f3fHFTRRYD+BP8hGzVaKMNWl1HkXOj
	tBO+/WVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQrLa-00000004SSI-2JDS;
	Mon, 08 Jul 2024 16:36:14 +0000
Received: from out-182.mta1.migadu.com ([2001:41d0:203:375::b6])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQrLK-00000004SNc-0JGc;
	Mon, 08 Jul 2024 16:36:00 +0000
X-Envelope-To: macromorgan@hotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720456552;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Q1xLGY2jSIrtPqPZ9NbhDBkO1nnpCkyLaDO8znSKpp4=;
	b=U44a0MWPWvNcZbVouFYU5A9SDhVDTDZA4UcB2WhGSUt87LnPir9tVEsOxbm1QjV3ITL2QN
	ex3G2qsk5edc65UXRRd7GIPsSZYWd1STBVrSVXvCUHK2yi8M+MTzfagvmDfeSKjYJAbyVO
	Yhk9Sc7tF6qQ2s3KW0QSNKj+Ve8uBAohc6pMZKRxMtj/F6EIXofU2MOkTLNrMIBWdqeRqJ
	rOfVlZmvkD56mawtUvu9xHDg8lELcz/1wJJaHW/wPJ2cgqs7KQuNPGYETyzqIierkd1pII
	14Yu7lWMSDhr1pkjwg/ME0Gd0boEj90C8AuAFyiu43dmpiGgio67mGBZubJ4wA==
X-Envelope-To: heiko@sntech.de
X-Envelope-To: mweigand@mweigand.net
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: andyshrk@163.com
X-Envelope-To: jagan@amarulasolutions.com
X-Envelope-To: amadeus@jmu.edu.cn
X-Envelope-To: f.kardame@manjaro.org
X-Envelope-To: michael.riesch@wolfvision.net
X-Envelope-To: wiagn233@outlook.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Maximilian Weigand <mweigand@mweigand.net>,
 Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Andy Yan <andyshrk@163.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Chukun Pan <amadeus@jmu.edu.cn>,
 Furkan Kardame <f.kardame@manjaro.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Shengyu Qu <wiagn233@outlook.com>
Subject: Re: arm64: dts: rockchip: Add dma-names to uart-bluetooth rk3566 devices
Date: Mon, 08 Jul 2024 18:35:39 +0200
Message-ID: <18704154.NT27xa3IZQ@bagend>
Organization: Connecting Knowledge
In-Reply-To: <MN2PR16MB29416FE9165FB72824266667A5DA2@MN2PR16MB2941.namprd16.prod.outlook.com>
References: <20240705163004.29678-2-didi.debian@cknow.org>
 <MN2PR16MB29416FE9165FB72824266667A5DA2@MN2PR16MB2941.namprd16.prod.outlook.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_093558_654465_2AB7AD36 
X-CRM114-Status: GOOD (  18.25  )
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
Content-Type: multipart/mixed; boundary="===============5716091915977432160=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5716091915977432160==
Content-Type: multipart/signed; boundary="nextPart5757575.N3OQHAa34O";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart5757575.N3OQHAa34O
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: Chris Morgan <macromorgan@hotmail.com>
Date: Mon, 08 Jul 2024 18:35:39 +0200
Message-ID: <18704154.NT27xa3IZQ@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

On Monday, 8 July 2024 18:05:05 CEST Chris Morgan wrote:
> > This is a single patch which adds the dma-names property to the uart
> > node with a bluetooth subnode on Pine64's rk356x devices.
> > 
> > But that property can potentially be added to several other devices, but
> > I have zero familiarity with them or their community, so I choose not to
> > add it to those devices, but inform people via this cover letter.
> 
> Thank you, but based on past experience the bluetooth failed to work
> when I had the DMA names present (which is why I removed them on my
> devices). I will however test it again to confirm that is still the
> case or not.

That is very well possible as I had specifically you in mind when I chose to 
only apply it to Pine64 devices (as I could directly contact those people).
I had a vague recollection that there was 'something' with bluetooth on 
devices you added.

Thus it seemed better to inform people of the possibility, but let the actual 
implementation up to them.

Cheers,
  Diederik
--nextPart5757575.N3OQHAa34O
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZowVWwAKCRDXblvOeH7b
bvr8AQCR3UX8zsLmcd9BjCPsexTjAxcrLuEqZKdpAGwYqlz/8AEAijpXHym1iyGu
wbw7/ntw95MClGyHkeh4XovtnqM37gc=
=+Whf
-----END PGP SIGNATURE-----

--nextPart5757575.N3OQHAa34O--





--===============5716091915977432160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5716091915977432160==--




