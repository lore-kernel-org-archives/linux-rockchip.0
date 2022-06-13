Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7E3AC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 12:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dQLF7NlFTWxqzEdqvbB9i+TW4UX1/SdLwddRdQIWl6E=; b=X02WAF5kHkYcjJEHaCpmLY4LsH
	bTIOfxxeA00567hxjgGZzX4w0hQoiGmJoQ7FjzFRdG1eOuX0RyOxwKM34YbbJ5KrREtvjvzYczYqF
	/wp7g6xjOj1X7fw4BSMdZGunSbP3GmbRuLWwygaWzP4/W7MnCoScKtB9It0byoJ0FRTVuMYjGaiWa
	QMNakDQeNi2OrT4QXG/kTNbC2GPLh6vxy4lH2v+RYa5Blw9EvLKDKp7D4cFFcuSFeDg7ltjmEZcha
	tmTgRiHjEFM4CdOxv3cn3kECF3Q3nyk+0yzIYCRePjo6gVa/zooHfyfFaOLPslqJRYKku1fkm3Uxj
	i634DLAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0jK4-003ZJK-EY; Mon, 13 Jun 2022 12:37:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0jJo-003ZCb-Ql; Mon, 13 Jun 2022 12:37:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C2B2361345;
	Mon, 13 Jun 2022 12:37:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE52AC34114;
	Mon, 13 Jun 2022 12:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655123839;
	bh=UMvOIPZylUDWOPgDJ/rl41H35ct9oHGP3/eHpRwcWOE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WzXjo5MSmOk9g72+Nf19OcnSzaHjqiB72gyem2FudjwA4PJI8wgxZxF58TIuUyZXw
	 r7hHelOpg55WPF5O1myAJKx/XwqxWjW4tfEZuGUT3YQTT+8ZsQllNHwAoFpDYhxUJ5
	 +zHAd/O/gKOj2Ca2obgMr5fAoTk4i3FjFBvgqkIqGP09y2GGP0V35cUpmOKrzU7JC7
	 3HjiZZ6iUJWxpI+/FtkT6QT59Xq+AvnCS239YV7MRNJA+gfSmUAS0f3DHwwBfdB+fg
	 ROGveSAXpy8ONgbjKX6ROejQ4JJQxQ+MWqi/PPBvPEdjMiKNpEDDgU6PH8z1br52Yr
	 GsaB8IbNBZBTw==
Date: Mon, 13 Jun 2022 13:37:14 +0100
From: Mark Brown <broonie@kernel.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] spi: rockchip: Disable local irq when pio write out of
 interrupt service
Message-ID: <YqcveggUU7yaXuk1@sirena.org.uk>
References: <20220613092744.9726-1-jon.lin@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20220613092744.9726-1-jon.lin@rock-chips.com>
X-Cookie: innovate, v.:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_053720_951365_76E28B6B 
X-CRM114-Status: GOOD (  14.13  )
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
Content-Type: multipart/mixed; boundary="===============4694061023260481900=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4694061023260481900==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YJipID2wFlKZ6wCT"
Content-Disposition: inline


--YJipID2wFlKZ6wCT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 13, 2022 at 05:27:44PM +0800, Jon Lin wrote:
> Avoid interrupt come and interrupt the pio_writer.
>=20
> +	spin_lock_irqsave(&rs->lock, flags);
> +	tx_free =3D rs->fifo_len - readl_relaxed(rs->regs + ROCKCHIP_SPI_TXFLR);
> +	words =3D min(rs->tx_left, tx_free);
>  	rs->tx_left -=3D words;
>  	for (; words; words--) {
>  		u32 txw;
> @@ -308,6 +313,7 @@ static void rockchip_spi_pio_writer(struct rockchip_s=
pi *rs)
>  		writel_relaxed(txw, rs->regs + ROCKCHIP_SPI_TXDR);
>  		rs->tx +=3D rs->n_bytes;
>  	}
> +	spin_unlock_irqrestore(&rs->lock, flags);

So this is effectively just disabling interrupts during PIO, there's no
other users of the lock which is rather heavyweight.  What's the actual
issue here?  We should also have something saying what's going on in the
code since right now the lock just looks redundant.

--YJipID2wFlKZ6wCT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmKnL3kACgkQJNaLcl1U
h9DoiAf/b64OqEDIdLubTDZqH06s6sri2Q8Bq4h69DmbLEXUe2ciQ52gVQ7JQKaQ
ZXxCS8HlRTroirPGfdcwOByaUWEW9DIMO1nrqU0wRytXkeuVj/dfA+6jQBkKaUIy
cM7lgZdxMTZ5ezuXKvPmzFUaWQvgRGDI4wybCd++7eFgj+bx5l9g3YODTUfVmFVo
mQbqkP3l/ovLgVz11vw7aiqYLpQQ+dDDNMx7alWOayLxypGTGA03xF/3LlzbFG84
OAF0d2cTKHC9Ok7T6bCJzRufu6ZPrmnD85MiDEVoGGE3oAetE7xthoSgUxES0KAn
0bFz4uLtQdcxXeJSrCqeQtCjiNJ5gg==
=bWwU
-----END PGP SIGNATURE-----

--YJipID2wFlKZ6wCT--


--===============4694061023260481900==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4694061023260481900==--

