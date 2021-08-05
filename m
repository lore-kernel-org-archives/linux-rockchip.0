Return-Path: <SRS0=V4ex=M4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D28BC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 13:09:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 583EE60F42
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 13:09:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 583EE60F42
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IgdImF+IAa+6H402Vw3Wy1KMZ5757nB9qI4y0JSnyAw=; b=y2oSxloOc0om58xrz5GabBR/aj
	XLUF1sjxtB3xZx7zkV7KpmOQAqtEIIiNpevVrl56cFW5AezWV9uYs9o9uo3XtaFf0gdb1GasaTLpR
	6m3+nMPtdfY1L506YoRna5qw2DGSIkRq4nt1FlKqiRqw3sQSM4au29yf+aBdIbVsgZKvUsW37kjfu
	oCPoXqfF771vkmazw2HS+KbIwVw5VAPgIou1w9ppnirSvxnFjbcvQpbZCVXEfVjbeRcev0My/wSqo
	XA5N04Pci1N1diVpStBXLnw/9zM286dN70BPO0mnY3HxNy6CP9o0mryQBziClk7UNCHkCO4szpBEn
	mkpsBJSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBd7N-009cwK-Hd; Thu, 05 Aug 2021 13:09:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBd7K-009cvg-W9
 for linux-rockchip@lists.infradead.org; Thu, 05 Aug 2021 13:09:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 912C360F10;
 Thu,  5 Aug 2021 13:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628168938;
 bh=P4Z/HQKg5fpKU66bAy6OrZrqvVhFeTR4pYC3Wd1O1NU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W8DEzkZNl+Zrsm/7vGFU+rKFhA9TTCLvPi9qjuhMtSDbHelPRNZr8OZ3NUb1OKKiI
 uV22gyaX7Th7JuBuOpzLAovjA44f0Yq7oR02ZNf7DM1LcyTuYONVouYnTiV9UPVAbD
 COdEtFLfwLx81tfbTGC3zV3ZxMDD+zEhuuYPZoNo/b8OdG+uPPK6C5SM7XZanMbpNt
 Ast2P9eo9LmgpBMP6CdxC9HmAG4QLnlfAdDlILZqTcyputfnN2SHh50sO3uGWetm3n
 hDKZbJZmVbL3eqNIAlsIobfAaiAveA9wU+UYxpECpMtAcYLkQWOIdgkSIS2/f8cKgy
 RRptQnZpHqnqQ==
Date: Thu, 5 Aug 2021 14:08:42 +0100
From: Mark Brown <broonie@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Jaehoon Chung <jh80.chung@samsung.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mmc@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org
Subject: Re: [BUG] mmc_regulator_set_ocr can't cope with regulator-fixed
Message-ID: <20210805130842.GO26252@sirena.org.uk>
References: <CGME20210804143357epcas1p1c67eca591d8bb557c11b8175baaa8550@epcas1p1.samsung.com>
 <CAMdYzYrx8pgeyK7u=kcopZ+Wae+fQdr_uM4AuVjqWKfZYikgcA@mail.gmail.com>
 <a9aa636e-326f-a848-dd69-41df87c013af@samsung.com>
 <CAMdYzYr9PX-9=kkCAfGe8Q0-D+gRo_qCwse8SiGVsmod7fffiA@mail.gmail.com>
 <20210805124650.GM26252@sirena.org.uk>
 <CAMdYzYpR6br7s1RD2ze92WzJjtEDZwy9qS6YhghgXy7F91keFg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdYzYpR6br7s1RD2ze92WzJjtEDZwy9qS6YhghgXy7F91keFg@mail.gmail.com>
X-Cookie: MOUNT TAPE U1439 ON B3, NO RING
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_060859_117315_566BEB02 
X-CRM114-Status: GOOD (  20.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============9044485155740778148=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============9044485155740778148==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eHmdSDY+kY2au76U"
Content-Disposition: inline


--eHmdSDY+kY2au76U
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 05, 2021 at 08:58:58AM -0400, Peter Geis wrote:
> On Thu, Aug 5, 2021 at 8:47 AM Mark Brown <broonie@kernel.org> wrote:

> > One thing to watch out for with this approach is if there's things that
> > really need a specific voltage to be set then you'll have to stop those
> > things happening if you've got a voltage regulator that can't deliver a
> > voltage in the required range.  I don't know if this affects MMC or not,
> > if it's just a case of being less efficient it's not such an issue.

> Yeah, but if this is a fixed regulator and it's a problem, then the
> hardware is screwed anyways.

Well, the fact that the voltage is being changed at runtime indicates
that we're changing something from whatever was in the fixed setup - it
can sometimes be that we don't have access to some higher performance or
lower power features for example.  That's not ideal but works perfectly
safely.

--eHmdSDY+kY2au76U
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEL4tkACgkQJNaLcl1U
h9Dbbgf/YunQb1UPyQ5czRyhW+fldplspxf07rcnSp/hwj2hV4FLvf9wzXk5thAp
vDMEhO16kYSmm7sgZgnwXrk6BdBcyznZReLOKvKRi4tL+ce9niWYlTaucGhJDdN+
tEFhB2q2wQx69UpWm0HzCkT2aZG1bi40plL7Y51UQGw5VmsbhigEwiLLQFBHsL6m
yn5/AksIgxD2zxHPx0N2CW/7CxzlLixhJYxNoZoCuWYR1YptFlOzqlL8NyftQ/kH
bi27Ep0qc3quoiIULpybE66b/0r6xFvNqWQ393La436az1KM5p10R5bNkT44bOWw
scag4eXxevkgaU0RgEUI0hQHq5zuHw==
=+zJO
-----END PGP SIGNATURE-----

--eHmdSDY+kY2au76U--


--===============9044485155740778148==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9044485155740778148==--

