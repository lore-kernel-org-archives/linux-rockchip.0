Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 364FDECAAA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Sep 2022 11:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w3ZKDN19OaHTjl3Y25gfGFJ8LQ5/bfq6UVyN10L+fvQ=; b=gk4FUWAfLkwbB1q9tdqzK95wZb
	6ny0owUR4SzVMlWVmjC9T0pXQ7jFI11NYjSF5luWFysxVnau6HAr4mgB0viGLV8zw3nkV32MjCdBd
	p1cehzF9iQzm48zsKyaAuj6CI7ce9pHYRrlht6o+HLyjzmxoXECwUILuntn1JcPJ+1xkJDgCCDJdT
	mu8GpG3dWPgBoDCFJYOFH7Ohu4QAh95vzlJcMMEPqbNPdfC5AB3BAepgHir1g9xq/ZTeohbSEuZMf
	NVsdtpFobTpChru0G0ff3dEkn/b8ddatssWjF7+h/l90pYsYBEZFKVEwEwAZhD/dlfRn5UgN5kpAZ
	tTAgSsPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXhzs-009U5z-Bk; Mon, 12 Sep 2022 11:53:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXhzb-009TyG-TI; Mon, 12 Sep 2022 11:52:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EFDF461199;
	Mon, 12 Sep 2022 11:52:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95CA9C433C1;
	Mon, 12 Sep 2022 11:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662983566;
	bh=AvA6TgPUAVeyXLqYp+8Bg4Oa2Z6Als9d4E+bEmPak0o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jZM0/drk+x0laRAb59LlFYkv6q5lTomulnBKT1HsEcB43LFDNJwPfNPbDjWnHDPzi
	 RwDZABlj4xgXfi7MmWA0qn92sumOh3IAcLL0RN+7OnntmFElFj990/TZKbnj9K9Dv5
	 wfnoTx9yc33qw8zzeNakcZWiLEvV5ytVS2LNmvJfCLu8NjCuw9DWT/Nsd8vUhylkLa
	 LuZCtQtHZwlrxuN8SSMfWy62JPnha2LPZa++3+hRjac2Un6MP0v7umWZXq+73g0qDR
	 WcCGg6S+ssMSKy3GhN2mTtpp8aZBPhmEANjBKGUJynRwNRGF7VPaGEwgWSQ3OFsQjf
	 JMq/0PxULG+mw==
Date: Mon, 12 Sep 2022 12:52:41 +0100
From: Mark Brown <broonie@kernel.org>
To: Sergiu Moga <sergiu.moga@microchip.com>
Cc: tudor.ambarus@microchip.com, pratyush@kernel.org, michael@walle.cc,
	miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
	claudiu.beznea@microchip.com, chin-ting_kuo@aspeedtech.com,
	clg@kaod.org, joel@jms.id.au, andrew@aj.id.au, kdasu.kdev@gmail.com,
	fancer.lancer@gmail.com, han.xu@nxp.com, john.garry@huawei.com,
	matthias.bgg@gmail.com, avifishman70@gmail.com, tmaimon77@gmail.com,
	tali.perry1@gmail.com, venture@google.com, yuenn@google.com,
	benjaminfair@google.com, haibo.chen@nxp.com,
	yogeshgaur.83@gmail.com, heiko@sntech.de, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, michal.simek@xilinx.com,
	bcm-kernel-feedback-list@broadcom.com,
	linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH] spi: Replace `dummy.nbytes` with `dummy.ncycles`
Message-ID: <Yx8didL1aFc4XxGa@sirena.org.uk>
References: <20220911174551.653599-1-sergiu.moga@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20220911174551.653599-1-sergiu.moga@microchip.com>
X-Cookie: One FISHWICH coming up!!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_045248_017070_13BBB562 
X-CRM114-Status: GOOD (  13.64  )
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
Content-Type: multipart/mixed; boundary="===============2644314935892744405=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2644314935892744405==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tsMpd7wbAJx2xcTL"
Content-Disposition: inline


--tsMpd7wbAJx2xcTL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Sep 11, 2022 at 08:45:53PM +0300, Sergiu Moga wrote:
> In order to properly represent the hardware functionality
> in the core, avoid reconverting the number of dummy cycles
> to the number of bytes and only work with the former.
> Instead, let the drivers that do need this conversion do
> it themselves.

Acked-by: Mark Brown <broonie@kernel.org>

If this gets applied it might be good to have a tag in case we
need it for any SPI updates.

--tsMpd7wbAJx2xcTL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmMfHYUACgkQJNaLcl1U
h9BR0ggAgkV1J8/o/vgLngoRQlQriv74OFxhNN5+lL+Ue4so/rZcuKbaX7fW6yVN
5WwRPm0joSHJslzR37N/Q1ajnX5ZooQm33WIVzToQBU0liUpwIC9pn84Em0ebD1T
yRd21CVYYsPcwrRr3STSzjZpMq+CRQMfe4hvBOHirS+hQqQ9gnfpQ6NJyhkF4w6P
rUiOb9TYvfLqi8usgPC20TbdPjQxz+a3LoKzZokU2CgnnjSTUTRHf9BfCfuyOqZE
18MRkCDY7zUwO7D580ojgXe0kAAIQIxaN4QAZSG6e/hC9BziHeHJOMua0S56E4Xw
WIP/Lcq6BWueOZUfZglx7aACizALEA==
=BL9e
-----END PGP SIGNATURE-----

--tsMpd7wbAJx2xcTL--


--===============2644314935892744405==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2644314935892744405==--

