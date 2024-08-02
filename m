Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABC88C52D6F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 14:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XOsw3/awwWgB22Gmfgk2kXLMxRfklKxZP8qOqijdVHM=; b=sFTCGjymBgHBp3MG8moXl6RYjx
	WRXodUlaq6bNFZTfPUUSm2VE1xUIypSUtJgIULMRnPxCVUgKjpfBYSb0PFgdnDauB9nyJhAQp3s6r
	ULJdWv+BTctdO9rNvuEFKLbrYEpj0mqKcrhrwHIo/v99Glyi32hvtvc/xpeiup3hGeW+grKdxdqD8
	pd0A1NGpVaRjvG07dohDJpbV4R6cU3WE94d50fgz06V+pFU+oN71tqf7G2Z5t6UXSDPMaC1i+/vFs
	yYv/DRxjNfmw6n40OLlDoXd9YKg6IwQRZKMQ3pARvcFvzyhXGUG7Ukv0YtOjsTCci8FdPi4nN4SGR
	BshUZCqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZt8E-0000000940K-2J58;
	Fri, 02 Aug 2024 14:19:46 +0000
Received: from out-179.mta0.migadu.com ([91.218.175.179])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZt8A-000000093vW-1Cae
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Aug 2024 14:19:45 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1722608378;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NfmldAyPR0XS48riCwB2dyl03w/kFlpZkf4R1WTO7yk=;
	b=NJuqZbOXLW4UblnHStnGE1rVjE2kzlOoGbBtrKYam1IIqQxsI6I/ZPgSRwV11dT6S8h6Yv
	SuUJxaG5YfSEzswIIOIokMgbdqOXNs23+4PZoeZq2m2bc5i1p4a8e6m5W6kIrbgOeffsk5
	zr9BR02pr7O3w21rwS+goSJNcNpHzBvmmc8IzZe6Ws9BoIWrNu/OuBHtCrA12K+VYsTwqS
	WijHz7QRSTvw36HGUJalH0273WEz8uf1bs/cYZ/yVbEHH3HsM5rFnBQpmBf0gg46o8vDp0
	z43sxROcueSczs/UIc8QxzsWPJgtIsi9I4lM8khoBUG5/SaEAyB/LKNW0QkBwA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>,
 "Bjoern A. Zeeb" <bzeeb-lists@lists.zabbadoz.net>
Cc: linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 0/2 RESEND] Add DTS for NanoPi R2S Plus
Date: Fri, 02 Aug 2024 16:19:20 +0200
Message-ID: <30814906.IcDJEyoAGT@bagend>
Organization: Connecting Knowledge
In-Reply-To: <4q216op8-0p0r-n053-383o-3rpqq8s37p4p@yvfgf.mnoonqbm.arg>
References: <4q216op8-0p0r-n053-383o-3rpqq8s37p4p@yvfgf.mnoonqbm.arg>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_071943_200444_D7E67217 
X-CRM114-Status: GOOD (  15.23  )
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
Content-Type: multipart/mixed; boundary="===============6526654568801278855=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6526654568801278855==
Content-Type: multipart/signed; boundary="nextPart1797573.PpvvgvNjxp";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart1797573.PpvvgvNjxp
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH V2 0/2 RESEND] Add DTS for NanoPi R2S Plus
Date: Fri, 02 Aug 2024 16:19:20 +0200
Message-ID: <30814906.IcDJEyoAGT@bagend>
Organization: Connecting Knowledge
In-Reply-To: <4q216op8-0p0r-n053-383o-3rpqq8s37p4p@yvfgf.mnoonqbm.arg>
References: <4q216op8-0p0r-n053-383o-3rpqq8s37p4p@yvfgf.mnoonqbm.arg>
MIME-Version: 1.0

On Friday, 2 August 2024 15:57:26 CEST Bjoern A. Zeeb wrote:
> Uhm... I am confused now, I copy-pasted the emmc block from this file:
> > https://github.com/friendlyarm/uboot-rockchip/blob/nanopi4-v2017.09/arch/a
> > rm/dts/rk3328-nanopi-r2.dts#L7
> > 
> > The header does not have the "OR MIT" in there, it's just
> > "SPDX-License-Identifier:     GPL-2.0+" which is what I also copied
> > over, together with the (c) part.
> > 
> > The source which I was using is described in the commit message:
> > 
> > The eMMC configuration for the DTS has been extracted and copied from
> > rk3328-nanopi-r2.dts, v2017.09 branch from the friendlyarm/uboot-rockchip
> > repository.
> > 
> > Maybe you looked at a different branch? Shall I still add the "OR
> > MIT" or leave it as in the original file which I copied it from?
> 
> That explains also why there's no sdmmc_ext/sdio bits...
> 
> See here for more:
> https://github.com/friendlyarm/kernel-rockchip/blob/nanopi-r2-v6.1.y/arch/ar
> m64/boot/dts/rockchip/rk3328-nanopi-r2-rev24.dts
> 
> My current believe is that rockchip/rk3328.dtsi needs the additional
>         sdmmc_ext: mmc@ff5f0000

A commit with that was recently accepted:
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v6.12-armsoc/dts64&id=82e3aaae388199a0aff33e5371db307b3274f77a
--nextPart1797573.PpvvgvNjxp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZqzq6AAKCRDXblvOeH7b
biILAP48t26oOx22f21UmUwwHg1k6celldSi0dI+CPz8B7AmMQD7BgbYS2CJGBsK
2++Y+ZsKZRgv6T6/vGPW+gNk40e/8wg=
=6GGj
-----END PGP SIGNATURE-----

--nextPart1797573.PpvvgvNjxp--





--===============6526654568801278855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6526654568801278855==--




