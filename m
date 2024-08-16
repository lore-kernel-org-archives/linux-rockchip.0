Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 898CAC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 23:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2qhXavh1gexzCcjw5aLK75+81EQupyTr1hXeq7r9f+c=; b=hWhlzm+oXikHUb9b0dhH1zQfoW
	erIWSdLj3SnfDwzN2krK6UnonJej6ePLUwTIA9o7pfUVAJm0lcwIrSv2S3BiMw1Z4AAe9g64qVR2p
	YSmhPZqMXMjcMemq8Ho8ysmrdSEK0q81s9IQOZ11sPk16Dp6uk9AvxWT6ncnX0W31wYx59t/7eN81
	R85t8pcK2PypZ3o8Q8Y9AjYHNe5EQQiDeYJ4M4B71NfrfjN/i8PB0EkIEO7YecXIU56Wy2KmVxHSy
	TM6HVqb8he0pSZ8C5PjyR9CmGU684wJfcJXaR0E/lOU5mfJkbCDDrP5jNrwQ20Rk3uVssdemqSHA2
	lu10ih6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf6TT-0000000EILp-333p;
	Fri, 16 Aug 2024 23:35:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf6TR-0000000EILH-2RWx
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 23:35:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C4EB66230C;
	Fri, 16 Aug 2024 23:35:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D7C2C32782;
	Fri, 16 Aug 2024 23:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723851310;
	bh=8njhEJcKnY8cF1n7ynktfkj4MvqPou9P5TU/PPxixU8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dCgFhQKQS62kr/mjtm32b/1EtvGrGLA05X9alkOntwPCuQnVdq1P1BLz/rMmns6EE
	 QdA3WWlrWIM5UP3OlopAXKYoT8IhjYcqASqDeYca5bgz5xAjHQSePz8jis30srvmQo
	 vLXD3R0qK7kTi1djnQyl4KA7w8hzsBQIGViWfF7K3E0h961Q9v/6h+aVv0eKJmiAg2
	 0pjVlQan2uU74IPtFhIUMx6NFeeTJy6/z+F7NyUgnro/sZA7ugZAzymvHa4rIEKxvf
	 Nj21Ng7ltRZmdKTM9YbV/JFcXHKdim8lDU3nw0qMpdrlsn+ZxCiSgP9O+O1dqRH2WR
	 1PbdZ9vqu7MHw==
Date: Sat, 17 Aug 2024 00:35:05 +0100
From: Mark Brown <broonie@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>, kernel@collabora.com,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH RFC] regmap: maple: Switch to use irq-safe locking
Message-ID: <cd4c01db-961c-4afb-8b8a-8fc6efb91234@sirena.org.uk>
References: <20240814-regcache-maple-irq-safe-v1-1-1b454c5767de@collabora.com>
 <4a8c9f85-3785-4cbd-be9b-dc6da9bd7324@sirena.org.uk>
 <9cb322ba-4c08-474b-bdc2-d21cc1904ecf@collabora.com>
MIME-Version: 1.0
In-Reply-To: <9cb322ba-4c08-474b-bdc2-d21cc1904ecf@collabora.com>
X-Cookie: Are we running light with overbyte?
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_163513_713951_16F680F9 
X-CRM114-Status: GOOD (  12.49  )
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
Content-Type: multipart/mixed; boundary="===============3697913736916100529=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3697913736916100529==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rUIRmD8vR+exF2St"
Content-Disposition: inline


--rUIRmD8vR+exF2St
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 16, 2024 at 11:11:27PM +0300, Cristian Ciocaltea wrote:

> The deadlock scenario indicated by lockdep actually points to the lock
> acquired by regcache_maple_exit(), which has been triggered during module
> unload operation, and the lock acquired by regcache_maple_write(), in the
> context of vop2_plane_atomic_update() called within the DRM stack.

So still within the interrupt context then, and due to the fact that the
register has not been accessed outside of interrupt context.  Reading or
writing any cached registers used in atomic context on init should do
that and avoid the issue I expect.  In general if you're going to use a
sparse cache you should ensure it's populated during init, like I said
in the prior mail providing defaults is the standard way to do that but
just an access should also work.

--rUIRmD8vR+exF2St
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAma/4igACgkQJNaLcl1U
h9BeDgf/fan7wST7akKqMi9+qkN/0TQTIV+Llqn317xcf8p3R6g4rRB4tnqrRKg0
llza/wtZ1HsPEH3TRXuQwZGj7zU0ttDR2ucZ0e//bCfnkfYJvmrTuGwro5sRdgcW
cFd9dkHL//ud/dzd7VrgcgySnoWL2oV2PZaDrTxSEF9nt8wiSmtnr4nIgsy56La/
L5Hf9kOkKhEPuen/Egrc88Sa9ppvG9wzHFw+BtVkf2Ocg8Cs0DAHFqLcUuFufvsT
KuKda0BcBKwD9whaTfV8oPD8RvprpO0wiuxkfNaSO7KcBjaRriYSkGI1ViWHAsfk
QAOlNzJNn1QchgaaLAE+38Iuvvndgg==
=iApJ
-----END PGP SIGNATURE-----

--rUIRmD8vR+exF2St--


--===============3697913736916100529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3697913736916100529==--

