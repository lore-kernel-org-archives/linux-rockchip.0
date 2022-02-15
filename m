Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 387E3C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Feb 2022 12:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hKbn1cn/IWVgrjs4B1MO4ZlkUM/Kli4rbHXwvVyRf+A=; b=yugOIHH964Z25BxEYsm2XdLq3Q
	2wyZWkHDfYhzl91M8tJ0Ml/hVVKR5U6pXG9Gn/nBAaZ9lem9XDYSMkOwkIaklevcdmgOaB1L2UI96
	knpVq1ZzrwIQ+AYwj4JnyNTzukfPj8y/brA5HZpr3pIed9RB/1GRZDMNclh0n7pGcsTmMa+JESSkY
	lF0ZHNuQ3CDbO6q3hHhGP6h2zCPJXQjq7CxYcE22nQ3QEKtL/Fodec/ywaH9TT2S0wfdf2xqSYFyU
	AaWXeRHNv2g7OilLsMTaAG+egsOoeNj7VvxgQJIgcLJDDQLAuOp7I8iSPDLsv7gVpRIY1o5M2v3B2
	zciJ3m6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJx4p-002gw4-2l; Tue, 15 Feb 2022 12:37:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJx4Y-002gtj-RL; Tue, 15 Feb 2022 12:36:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5CCCD61683;
 Tue, 15 Feb 2022 12:36:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 600B6C340EB;
 Tue, 15 Feb 2022 12:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644928605;
 bh=+Fx82csho4bi9Bhwr3sF7WXHtnIqEKHbXNQg/Lt7SSg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cCnN4ckpP3IPeqyTF2eF29V2sLdIB+sp/B/AmCTbv6MUdKamnqAk5jOZ7cVkugTgE
 NzP3kPRCYTzfMT8rGT3+lvLvq4Lz8S/d0n1px65f3j8jOr4HS0fNMipfiihYM8JFcM
 hkzFPignEDEPsDG5XucPKiFqfJ4LRuyml8DgpiURGX4PsxEBGzwGcanXCpJv6azgVn
 Y6MdZSU23/+58Hc9QVfQIFmTZ4IxetLAKEGHRRB36/vU477zp89OfkKXqi2IT6pher
 0rCOvLFA0LcIfPLpmAo0aWw7R1WtQBtZCdK8Y05rvPu/6C7CMwhtbsJOubaROnd+FJ
 E1gSgNGyPhzOg==
Date: Tue, 15 Feb 2022 12:36:40 +0000
From: Mark Brown <broonie@kernel.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/6] spi: rockchip: Preset cs-high and clk polarity in
 setup progress
Message-ID: <YgueWHKur2w55s+0@sirena.org.uk>
References: <20220211034344.4130-1-jon.lin@rock-chips.com>
 <20220211034344.4130-2-jon.lin@rock-chips.com>
 <YgZHalrdhhilxROt@sirena.org.uk>
 <4222ce7d-a1e3-1728-fec2-976946b06ba9@rock-chips.com>
 <YgpP9j80OuhkCN8p@sirena.org.uk>
 <e0f0ca0d-40df-cf86-9471-9272bcc171f9@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <e0f0ca0d-40df-cf86-9471-9272bcc171f9@rock-chips.com>
X-Cookie: I have accepted Provolone into my life!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_043646_941922_54FF7FD4 
X-CRM114-Status: GOOD (  18.54  )
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
Content-Type: multipart/mixed; boundary="===============0395007783332874538=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0395007783332874538==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+aDZkCYiUMiCzT/F"
Content-Disposition: inline


--+aDZkCYiUMiCzT/F
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 15, 2022 at 11:00:54AM +0800, Jon Lin wrote:
> =E5=9C=A8 2022/2/14 20:49, Mark Brown =E5=86=99=E9=81=93:

> > As covered in the documentation setup() for one device may run while
> > another is active, therefore if multiple devices are configured in the
> > same register you should use a lock to ensure there can't be multiple
> > writes.  Note that the above appears to not just be setting the mode but
> > also the chip select so if you've got two SPI_CS_HIGH devices then
> > they'll both be going in and separately setting cr0.

> Is the io_mutex in function spi_setup is good enough?

It's not supposed to be for that but looking at the code quickly I
*think* setup() is never called with io_mutex held so it might well be
fine - you should double check though.  If not you'd need to add another
lock in your driver data.

--+aDZkCYiUMiCzT/F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmILnlgACgkQJNaLcl1U
h9B2NAf/QN5joxtVPoutx+2TSlooN/Z0rZTKsAu3UvL8NbXQpUZK/TYIaBtXXMWp
CaQgwdWxzZCAtUVulGlp1i8i/CKSyGevk9eYqtCiN3iKS96RmvScrd9Hrh746PZx
RNbS+c6qFodIXVjq0RJPAAXIhH33HrFplqa0qipfbI4YEvKPZLAdJKi8hLEv51tP
UpD0GpZ2StBDrwmHdRjGS7EtKJ9gbqqJBdokKnv1OXZobdBEWnkKq7btqxDyMkTo
w9wNNM+xhOqWIZF+Jwm0lLVkju19tjqbZ5782yI+YSNhBMtp91PeN1efmLQs9+Lp
PCwRQQDLfe8UttKpOX1qpaRZrMGprw==
=DFZt
-----END PGP SIGNATURE-----

--+aDZkCYiUMiCzT/F--


--===============0395007783332874538==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0395007783332874538==--

