Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94C2ACEFC32
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 17:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JV/5g0Oy+cKHFAoUC/7vklO5QnxawYHh9BkARQB4MuU=; b=u+Ju3ZSp5U/UvfothiREUDzKpH
	k8r4VNAMAY45Kty4iqkFWUtx4L08vH1SBN0o8SIVmIb8SOLaKeU5L9LPkXyVg2uV5TTFNAFNTvVfF
	uspldNJ6AjF6F+r+2ij2CIPpP1tHTMT6u+J6X923vpLr83Dw7fdE60nyqa9Laox06sfubBe3vtKXa
	+FXw7UrkAH+Hbns9I+ZKzLeNQdDduBXVIGb9Go5sdmFmOxbpbjrEE3KTB/ipfQOhu554zuqdyzhRa
	n25ExFlezKWKM2U4cqW1/Np2HNIY2+JnB9aK4ymX11Oz+IcMf9MfSe/tHWdA+1IeAbzLNb0ypE4SR
	BeqPIqrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syDaT-00000006aMz-2ZaH;
	Tue, 08 Oct 2024 17:01:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syDZ9-00000006aHe-2bmH;
	Tue, 08 Oct 2024 17:00:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 598F65C5D2F;
	Tue,  8 Oct 2024 17:00:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B180FC4CEC7;
	Tue,  8 Oct 2024 17:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728406806;
	bh=ilNygfwAr+c6HawWam7RWUXOjmWcDkBEry6nZ3GjjFY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sElErNoZbiv37nRnBW2MU9Pgqb7CG3i1JoUGzmuhVQ3x5wd7cI3e8Gm1LF9Lfb6AH
	 HWe9x1CH4G3VqVW5xGLewPrxjdf43OPhCvFCaWaz+wPhqlWtXEyG26qwbBMU8sjYVy
	 RAFfO0/PaXe1yn4OPMgkOev/ZuOfSNPglknFIs8cI+8Z8s4HF3rHNYZYBN9Dq5JSVv
	 9Lz4MYNEkBaWYz2WyQlhxfovyPu6CQcbI/ZXgPgA/eCIIClYi3fKX27LR34bNJCTjx
	 ms+L8LM8PUjqlukl60t2gLIxrHdY6U3f/CpIoKuN8pQlj0HDg1pwW2bwjcY6z1Nivx
	 GL/qntinx1KQw==
Date: Tue, 8 Oct 2024 18:00:03 +0100
From: Mark Brown <broonie@kernel.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	heiko@sntech.de, gregkh@linuxfoundation.org, rafael@kernel.org,
	oss@helene.moe, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/5] driver core: Add device probe log helper
 dev_warn_probe()
Message-ID: <ZwVlE9bgHYNT8J7J@finisterre.sirena.org.uk>
References: <cover.1727601608.git.dsimic@manjaro.org>
 <2be0a28538bb2a3d1bcc91e2ca1f2d0dc09146d9.1727601608.git.dsimic@manjaro.org>
 <e8cbbf877cc0e6838afd2d6de3b7bfa1@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <e8cbbf877cc0e6838afd2d6de3b7bfa1@manjaro.org>
X-Cookie: Editing is a rewording activity.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_100007_730678_74D6C61F 
X-CRM114-Status: GOOD (  10.47  )
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
Content-Type: multipart/mixed; boundary="===============8921242975096484526=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8921242975096484526==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lRqd+6XvOQTtUjE0"
Content-Disposition: inline


--lRqd+6XvOQTtUjE0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 08, 2024 at 06:18:46PM +0200, Dragan Simic wrote:

> I just spotted a couple of small typos, noted below, and I hope you won't
> mind to apply the fixes by hand before applying this patch, please?

Sorry, your mail arrived after I'd already published the changes -
please send an incremental patch for the one in the comments.

--lRqd+6XvOQTtUjE0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmcFZRIACgkQJNaLcl1U
h9CjOgf/YdYsIumY/c+kP3vXgm7bvxtlgtOfE5LJQjZQYzGjfxM0kQ+PuKn3AbCO
4lp9A4x7pDHgx9WAnyX4l/ILms/OoUu1wTgid7R/3jeDNzwcVCKdDNQI7zx9CUun
Zve7qeu6Tk+1tdM5TrduLh7U78SwXYEdAOT/ET/q/9cMSMwWv2hVJqG+BMCeXSjT
WQGgHkJXXW+w/pmIDmNbzWnvEM1OWyXpxtG9Rf3chM8DxEJBIvVhxhXGnwPMqOx6
QT82NcYOzOaiqdkq4mMtxAOUmMDXDm4Pt38T4YSSKF0jO5DgBq/8+r//47KkEb9p
XdDnNuV9l55UFJrV7O9IKPMQbjMVMA==
=5llK
-----END PGP SIGNATURE-----

--lRqd+6XvOQTtUjE0--


--===============8921242975096484526==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8921242975096484526==--

