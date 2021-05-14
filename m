Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F120C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 17:50:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 07B4661408
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 17:50:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 07B4661408
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/R/2hrk410nkbLobRIhvJOfcfD61RxfFKZNLX+lZIbw=; b=GkGCekmhchIFiiEJ6LHSW6Y5z
	1gboTSHMZJGfpRONpz1JMDL5KqJMv3fV0vph1YjhbOhmFmxoU5I6FPHJA3AK13wEgstyclia+Mted
	flE70L+JtxXPX+LrktHJqh5OhDmHfsH7qeH4pYapFLB3pi8wM5qs0zs/LK4Olnw7bIX88ecQsgfEg
	Qz7sc7vxAT/Tb/re593GBRND29GrUjUGe6NkdiZHbxwrJOTd/qc1sHk5esH16cHk0YJAmuN8W0eeN
	2SmANaotuVJYlREkVqPXgLmFcdeoxXnLXj/S2saYEYSlGNE2t0wWsiYsWyYHJnkUxEcCIXNYdvwN3
	10fGiCuPQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhbxU-008d7N-Va; Fri, 14 May 2021 17:50:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhbxS-008d76-N7
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 17:50:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=dyVwIVo7AdBmb4sNmavC5SB/o10djqQri4X9yUlFh7Y=; b=LGbCLE1/qK5YGRhrz6LjZ56yuW
 fcMXrQjb9j316d3+ywV618bww00Z0G+7Ai98efzMflDNWpB2aTNaRsObBRYNFtrWdySCC4ai3InsR
 4FxuIf1/XBNcXI9Da5eoms4NqEMLQNOT2vQo4mFcXf/qW+L56KS0T3OhSyNBBJkGPawmCuRb3rUPr
 J8JJEGDe0YFYOjfwhoCpSGi5QEDlwZ2a17iKlAmLheIOZNSzuakOkny4cl9z+MePirndlKqvJRmh3
 gV/0OhSz9z6K3HoG09TsxXs1EWthGJt5rN3eIS10CZW6c8mlbqRcUH4AT26JVby/3EMY+tg3Rwesa
 6Fzhyhgw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhbxQ-00CA2e-BG
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 17:50:41 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BD93B6144C;
 Fri, 14 May 2021 17:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621014639;
 bh=jYNf28zRzJSBDffE3Tvr9JhYjPINmsR9nJFi2qdxp/Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Lidc+BbSgQEfs5TVZop8wH4OeU7ku5b/raE7xOJvFdRvX9ftlIBIeT2/cV9mKpjJI
 FwpBK++peuQO31+PYLbutyrXJki+qx0w37Db+HEhNiy9AcR7YE9jL+7l/ni9LeloCx
 Eas2CR0fp/y6Rv6CBY67TtEeir0E1VXG7YSsErrHwmHgEhljgussjCKnb+TP7wR5Cq
 pDnlROJK2qf1JxGLN8BpgSjiDZxH4+i+TQsG+EefJP2xyAx3VkMG5fiVn5qa11gcEd
 RZXNuiIvKWy7QgN1H0j0En0AlX+Mv9L7YP3gfdD6bsmAoq247Vk6ov+Ey/aorxK/Td
 VGm5jLBXWCOrA==
Date: Fri, 14 May 2021 18:49:58 +0100
From: Mark Brown <broonie@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
 perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v10 2/4] ASoC: Add Rockchip rk817 audio CODEC support
Message-ID: <20210514174958.GC6516@sirena.org.uk>
References: <20210514171940.20831-1-macroalpha82@gmail.com>
 <20210514171940.20831-3-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210514171940.20831-3-macroalpha82@gmail.com>
X-Cookie: Necessity is a mother.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_105040_426322_3962303B 
X-CRM114-Status: GOOD (  11.58  )
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
Content-Type: multipart/mixed; boundary="===============6591058817518819587=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6591058817518819587==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5G06lTa6Jq83wMTw"
Content-Disposition: inline


--5G06lTa6Jq83wMTw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 14, 2021 at 12:19:38PM -0500, Chris Morgan wrote:

> +static int rk817_codec_parse_dt_property(struct device *dev,
> +					 struct rk817_codec_priv *rk817)
> +{
> +	struct device_node *node = dev->parent->of_node;
> +
> +	if (!node) {
> +		dev_err(dev, "%s() dev->parent->of_node is NULL\n",
> +			__func__);
> +		return -ENODEV;
> +	}

There's no need to fail the probe here, you won't be able to read any DT
properties but that shouldn't stop the driver binding.

--5G06lTa6Jq83wMTw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmCeuEUACgkQJNaLcl1U
h9BxKgf/fSl9+6oIVB12S3dB4m1qbEr547nf28A1ciTOQ9Ga8SU6khBFvnTN+LX9
ibe048u1W0AQ63NahERGqZ/IBJ4a7cTfKnBM+hlDb+Tq5r3OgXbexf7kSQhpN3Gx
yqrVlrZAqs69XOJGQxcMPXZ2+FkLpjBo3CBaLjvXG4RuGZ4tijA4/aksfX2KVRlQ
qQVaNQuMJPNtPfZkNwQ+ggAPXrpOvhImxSdSmHwwvaLW3P5zvh5C0YRDNgZ1dNvo
nce7sZOxCNQlX2YYMc1Vglpx3reY+6tH5N7mAKDtVDt9nvi/jJ/oHShFBerXELwI
AKEpwYcoz7Ub+Ww9XFdEz4uGP0fF9A==
=RJAJ
-----END PGP SIGNATURE-----

--5G06lTa6Jq83wMTw--


--===============6591058817518819587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6591058817518819587==--

