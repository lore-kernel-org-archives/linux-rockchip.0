Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30CD7C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 09:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ax8bRYJhf+4+IIEfphDD00tdfuBOiSpHBpkDmS9vqsA=; b=uhogji8fsdBKs39CmQt5lsgqlZ
	ZvfRJP5goDldbSUd34uZxhT93Pbp/4LkW0b/qpgIqh2fTXCCxj4lF4YQv1+9Xy3YFXA8peTNegkkz
	pahV5WVyF4QjjS27cCe6FqacRIhs2SDa+NCv+yHwukZTgBH2BG/O12zHU2oKRa06rnY9U/E6dESjH
	CPllZfYRG3vtP4dqjodU75o9oC07IzXon3aUVpgWEdcAYkNqehr0LIRSz64WcviBxek3ZNIDVdcVR
	c3ZVPeWLMSZKXJhnn9B0YswUmNWkrUo7Lh/zpiPnXzMbyCkz86AlSkwiPFG5JGDiLLWE763wYHBnn
	OTvsJj0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Xdc-001w8c-2v;
	Mon, 27 Nov 2023 09:10:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7XdZ-001w6g-07;
	Mon, 27 Nov 2023 09:10:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C436C61119;
	Mon, 27 Nov 2023 09:10:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2178FC433C9;
	Mon, 27 Nov 2023 09:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701076239;
	bh=Ps+Fa/dulVUd1PDAHALRfrfI3qw3k68n8ZSw/yf2lAQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y2iXI9YoFZ19dm4dhfILyvtYzs8ky9ggc84g/7AIdC9fNR4yv1YB5h7FDVPlgyvy8
	 zgKol8BCqqiLfVBkJEJCAQcOVCgSdusaqMHjXbJ9t7an5MPLbWcRpM1ZrJxScYtA55
	 k+o9CdZOuSQMrNLT5ksGcomOa9h2S3WvfVOdSlBO1A3T5WrCwj7NBKXNT4VqMU1Pej
	 pYbV7C51SNvO5k6Nn3KF0oDGPAd8fPjXSG606L7Y+8k4QFTseEQboFCMThgdTINi09
	 hjwS8+c6R0UOCuuKv0O1XGunT+m/iIB7I1Lbmm6CFB3oSB50WTQTMdJBdJo0vzxyr8
	 /+qCaV560su+Q==
Date: Mon, 27 Nov 2023 10:10:36 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: hjc@rock-chips.com, heiko@sntech.de, airlied@gmail.com, 
	daniel@ffwll.ch, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 0/3] Rockchip inno_hdmi update
Message-ID: <ehbpa5qzq5aednqerhlb4xi652dd6rxslsjrurkkt5eruxssvv@2dcl2765fjix>
References: <2601b669-c570-f39d-8cf9-bff56c939912@gmail.com>
MIME-Version: 1.0
In-Reply-To: <2601b669-c570-f39d-8cf9-bff56c939912@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_011041_200237_8EAA4B31 
X-CRM114-Status: GOOD (  11.02  )
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
Content-Type: multipart/mixed; boundary="===============5582196127956702375=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5582196127956702375==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="w7qeozagnw3krs5v"
Content-Disposition: inline


--w7qeozagnw3krs5v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Johan,

On Sun, Nov 26, 2023 at 11:55:03AM +0100, Johan Jonker wrote:
> Combined update for the Rockchip inno_hdmi driver in a
> somewhat similar way to what is proposed for the
> "Create HDMI Connector infrastructure patch serie".
> Keeping the inno_hdmi and rk3066_hdmi driver functions
> comparable makes maintanance easier.

It's not clear to me what your intent is exactly, these are my exact
patches that you just sent again?

Maxime

--w7qeozagnw3krs5v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZWRdDAAKCRDj7w1vZxhR
xVKcAQClmlIR0bc7c19KWzUwSe/UDRDPcWIBHtu8Uoaf+2t79gD+IDyn3OKNIt6D
P7XtYjRgJXnPgNggszjP7+iEpGgicwI=
=sHaM
-----END PGP SIGNATURE-----

--w7qeozagnw3krs5v--


--===============5582196127956702375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5582196127956702375==--

