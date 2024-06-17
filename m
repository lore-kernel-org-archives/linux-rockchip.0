Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACF9AC2BA15
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 14:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j//ibI5MhfVML2U2/vHr8/su1pbsYoOaHYd6KebwODo=; b=187evTU/UOYUo+jD+3VyT5tJDg
	rTMByW5gyOETHYRRIb2m2lwGoSGO9pvyljGj2+aLUpG7evEEq5P2/e7uUTcYBFlJu7awMs1vwBk90
	wIB4voHAMa8l8rCXSYoUPt4/ZABU5f7hJDnfYi4WAjJHBzMk0YaqpW2w7/CyJiNfhnBAsiq6Uuqw/
	biwtnwhYTJgcAh2aHouBU7ZnJ0/QP9P+psXitKt0PIvYactk5H0jCDECoe6BrPqVbqRuslSBNIl9h
	S3rd2P3LfRTjXcSK/VTxlW6/mb1QAdeJuYMfp5ZaUhOxAiN4KngdQkjUT6GdL+6ikBnQeEpa5hxua
	dhojtTLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJDGk-0000000B95z-1EVd;
	Mon, 17 Jun 2024 14:23:38 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJDGf-0000000B93E-3ztd;
	Mon, 17 Jun 2024 14:23:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718634212;
	bh=NYdwtkKMhVFmdCeDOXPFe4EYASFOC1auQBRabkcAkBo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QycA+yN1DBqMWJffQUrr+Z/8VSeoNhnVVXeh/nVr7mB6TEViR4sgHaQfm5ebp2M8u
	 u9I3841WhKqD9fC7hFGjGusWeVuthMISOHSe2EClyfWBqK1B9vpIlhs0C6YvEhfuvY
	 1P2fRqBIkTT62Xeb8jNYSPQenLXD2W35Ssae6Wfy/JYExNDiKP/RLS5MUm9/QUalbr
	 3ADlo8cfDuw+zwfRvMb5IF9ny0WmI76kt69BtgW26CtCKbqAgrdSGbmrgGChxgA3zC
	 MV4C7HEsFbxhD1V+jyZAAZ3bxQ2IHKAMqkiFf5GSGRoJI04hxvAFH+B97YPRZ4LMAK
	 4rhdXAOo7jJsw==
Received: from arisu.localnet (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B0C2237812FD;
	Mon, 17 Jun 2024 14:23:29 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Alexey Charkov <alchark@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>, Andy Yan <andy.yan@rock-chips.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Date: Mon, 17 Jun 2024 10:23:02 -0400
Message-ID: <5810431.QJadu78ljV@arisu>
Organization: Collabora
In-Reply-To: <94b9e0fd-2f4f-4d75-ae39-7d780a4e6374@moroto.mountain>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <20240615015734.1612108-2-detlev.casanova@collabora.com>
 <94b9e0fd-2f4f-4d75-ae39-7d780a4e6374@moroto.mountain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_072334_162299_4719D0C0 
X-CRM114-Status: GOOD (  20.32  )
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
Content-Type: multipart/mixed; boundary="===============7446626786056098144=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7446626786056098144==
Content-Type: multipart/signed; boundary="nextPart4215044.CQOukoFCf9";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart4215044.CQOukoFCf9
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Date: Mon, 17 Jun 2024 10:23:02 -0400
Message-ID: <5810431.QJadu78ljV@arisu>
Organization: Collabora
In-Reply-To: <94b9e0fd-2f4f-4d75-ae39-7d780a4e6374@moroto.mountain>
MIME-Version: 1.0

On Monday, June 17, 2024 8:02:56 A.M. EDT Dan Carpenter wrote:
> On Fri, Jun 14, 2024 at 09:56:27PM -0400, Detlev Casanova wrote:
> > +static int rkvdec2_start_streaming(struct vb2_queue *q, unsigned int
> > count) +{
> > +	struct rkvdec2_ctx *ctx = vb2_get_drv_priv(q);
> > +	const struct rkvdec2_coded_fmt_desc *desc;
> > +	int ret, i;
> > +	u32 width, height;
> > +
> > +	if (V4L2_TYPE_IS_CAPTURE(q->type))
> > +		return 0;
> > +
> > +	desc = ctx->coded_fmt_desc;
> > +	if (WARN_ON(!desc))
> > +		return -EINVAL;
> > +
> > +	width = ctx->decoded_fmt.fmt.pix_mp.width;
> > +	height = ctx->decoded_fmt.fmt.pix_mp.height;
> > +	for (i = 0; i < RKVDEC2_RCB_COUNT; i++) {
> > +		ctx->rcb_bufs[i].cpu =
> > +			dma_alloc_coherent(ctx->dev->dev,
> > +					   RCB_SIZE(i),
> > +					   &ctx-
>rcb_bufs[i].dma,
> > +					   GFP_KERNEL);
> > +		if (!ctx->rcb_bufs[i].cpu) {
> > +			ret = -ENOMEM;
> > +			goto err_rcb;
> > +		}
> > +	}
> > +
> > +	if (desc->ops->start) {
> > +		ret = desc->ops->start(ctx);
> > +		if (ret)
> > +			goto err_ops_start;
> > +	}
> > +
> > +	return 0;
> > +
> > +err_ops_start:
> > +err_rcb:
> > +	i--;
> > +	while (i) {
> > +		dma_free_coherent(ctx->dev->dev,
> > +				  RCB_SIZE(i),
> > +				  ctx->rcb_bufs[i].cpu,
> > +				  ctx->rcb_bufs[i].dma);
> > +		i--;
> > +	}
> 
> This will leak the first element of the ctx->rcb_bufs[i] array.  The
> traditional way to write this is either while (--i >= 0) or for unsigned
> int i iterators it would be while (i--).

Yes, I was thinking that an even better solution would be to allocate 1 dma 
buffer and use offsets in it when configuring the hw. But this is only one 
allocation per streamon, not per frame, so this might just be good enough as 
is.

I'll fix the freeing code part

> > +
> > +	return ret;
> > +}
> 
> regards,
> dan carpenter


--nextPart4215044.CQOukoFCf9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEonF9IvGrXNkDg+CX5EFKUk4x7bYFAmZwRsYACgkQ5EFKUk4x
7bZSPAgAhkFN4znImbWicUjn/vFThqGJ7eK+qD8sQIiPYruMztMGf/OshXbcOp2l
4ujwbpPWbde3YhrjMTyegzr1LKKcmZ0y4o/DqKk1yy36lulpCYz5uOWTO4jszXpT
cmA9/pk+LwnnKaAw6uuL84ydKpFqxnTOiOwRQHrVn55oL3KJ3t8fxLPAfaR+i1s5
eg1azdgqZLtyFodhj9W+UA3/mQj+QPtfydwIytJN1b86F7WramVH7sl3QZ0OT7GJ
2VimlE0ejk9rZnktSoe6o7sPAJFa0WhFNDera+EOGk+JgWbBvXUm2oOLw+N7TmNa
bNoyojqYFuKcGMe3I4xkNLFruLyGtg==
=NvSr
-----END PGP SIGNATURE-----

--nextPart4215044.CQOukoFCf9--





--===============7446626786056098144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7446626786056098144==--




