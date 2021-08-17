Return-Path: <SRS0=qLnh=NI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8274AC4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 14:36:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 443A660EFE
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 14:36:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 443A660EFE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1Io/b5Xw55ehYwmKMPr7kxKYda9LDvF6j0KYhmhXJQg=; b=4ydSbilZOwzaOzPLR/mJBwTK6/
	zxRvb0VCnbOP/ueDJWkHj6MndWG7wbh1FzZZdeB0YgSuM7rzn21mcFlbnbPBhFO15L3q0VwpqzV6P
	H6skkhSIbSIdqcp7dhFkO6qVwisCRgrAY+5woLBL6FPEjyIGhNH4liUTyLHINaagppGqZX9AffSMa
	zKiDFQGgPVtGMvR71mQkPvdilgquCBmFk/wUDb+FApAHclwlcO1UG+9LabjOnxX68thVeoHulOLVR
	9KBKZl2SLC4+RjATb2reUtaT5e9jqZZBxD9Wc/8pG28qc5D26MQSAkAIQPkwCdOVIXDJ5VTfcZlHq
	2aoBMGlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mG0Ck-002hVf-De; Tue, 17 Aug 2021 14:36:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mG0Ch-002hVC-Hb
 for linux-rockchip@lists.infradead.org; Tue, 17 Aug 2021 14:36:36 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BB1F960EFE;
 Tue, 17 Aug 2021 14:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629210995;
 bh=mPCzu0e9q4q9qvg75V/xfVFPNu0IiOfphiyVwG9+mHc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JbO+KE7v6Hhr1hO0l2XB1e5iGxLOkk2/xGarlZl+PlVsP9232QlYAYjp/Vl2zjzM/
 ABMv55Ry6Hi0+oGKb/v0uXyhyN8/S/lzvQV5AdNzstoIxoDPCMNWy9rXq/LyAuhFhR
 H2A6NfJc8aRLgDwMZ0QcNLmNFN1UGR27nXC/LOoaKssdyv0ksZ2+1eEUJloB6jw9ZM
 wqF1RQvPdbaMZfjV7AFk+r8gRaYBgmp1nW9qPPzN7jPDIUhDX/3HviK7j27Z5iXvOF
 36iVGvITbz2QOmaw57Sa1t9cDKrUBzS5Bb61xX/AAVfcZTSArPkORdPq9A2lqvPjxG
 4RCORITGsM+ag==
Date: Tue, 17 Aug 2021 15:36:12 +0100
From: Mark Brown <broonie@kernel.org>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: lgirdwood@gmail.com, ulf.hansson@linaro.org, lee.jones@linaro.org,
 zhangchangzhong@huawei.com, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] soc: rockchip: io-domain: do more thing about
 regulator notify
Message-ID: <20210817143612.GB4290@sirena.org.uk>
References: <20210817033848.1396749-1-jay.xu@rock-chips.com>
 <20210817033848.1396749-4-jay.xu@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20210817033848.1396749-4-jay.xu@rock-chips.com>
X-Cookie: Custer committed Siouxicide.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_073635_644511_DD23DAEE 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============8945971550077895965=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8945971550077895965==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cvVnyQ+4j833TQvp"
Content-Disposition: inline


--cvVnyQ+4j833TQvp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 17, 2021 at 11:38:48AM +0800, Jianqun Xu wrote:

> +	} else if (event & REGULATOR_EVENT_ENABLE) {
> +		uV = regulator_get_voltage(supply->reg);
>  	} else {

I am very surprised this doesn't cause locking issues given that we
might call notifiers with the regulator API's locks held.  Have you
tested this with lockdep on?

--cvVnyQ+4j833TQvp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEbyVsACgkQJNaLcl1U
h9C7kQf/WvUxRsG7vyHPDAemRhQZrWNrsF6EfO3vzSfm14zPt8akTymLyEqjX0V2
qFvaGqTQRB9yM4M2akgoYNipieBTfBlqYaDsvFupJ5XmQ61T733R+LI34DytIsp1
RKkT6ZDZNG8FZkgbMZGhWUwFhjnVrvjAt7Q5eUkj9/BtoQLek4w7CUVOc03dFCmf
qUzxxrFz0OZGOweq5KjkCNBuQMcSXMAHKQGK3BKTzHv8KCNFFXO4dssFUM0CEAw1
hSekoRR6HnIyP9mMAGRtu3tp7VWQng4NWjrFOUJj2fy3b733uzsdmsNiCgC1ekKB
sMTfNZFkUWCFaW4+Bh6QPZ2CFApTdA==
=PMmT
-----END PGP SIGNATURE-----

--cvVnyQ+4j833TQvp--


--===============8945971550077895965==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8945971550077895965==--

