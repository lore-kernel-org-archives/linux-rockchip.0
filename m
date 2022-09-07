Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A172C38145
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 15:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i09Uslf3gl7zw8c4oBN7LIbau6O8COuxvh2fQTQ5Eyw=; b=GdqlwDbYraR8rTwiRObGJS+SDW
	a7m6UTLMPy3dJYGHbu8k02Fk3Vr331vDPTT2We13cLk5fs5Q5fT5QbV+3pTR7d0atsMckZf+jIq7t
	5/w4GIR1jdwYLbCeeop2o4qVHpXLPUQMl7VzA/soW6xEDtt0Z2Xktnf2fZ9FfdI66TubG6nFSqEy3
	zIud3LlD6X7ewnRNX3QXMCcc0zt/l6ERHANH3U5TdezDyWwkmgBVBImJewmgDLhxiUA2yA+JjuTUi
	h2jOlQoCKsOHZUkv28fpXzwyqOS/Da4o5ApnoCvdap2lIxkgpK6ZtDbhunH77zuUNzg8UiUm6mOzH
	8NQJnHrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxBp-007QHO-Oc; Wed, 07 Sep 2022 15:42:09 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxBc-007QA0-Km; Wed, 07 Sep 2022 15:41:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 04DF1CE1C42;
	Wed,  7 Sep 2022 15:41:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 055C0C4347C;
	Wed,  7 Sep 2022 15:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662565311;
	bh=/S/dkwp5ZVEfvkT7cXSM0abXRYV90A8gHsHvynV/bE0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aPtjXj7LVbgPklwL0BtFQvBJBVKud+/mTLi/X4cto7mqTclBGsTV5WwwKD3WqEfDF
	 e/DsY8llF4okC8r2/W0d0lQB6ZbA9lp+7glaGqUGmR+x+AQTRgeYuk08kjCZ1p1sh4
	 07dzUdk/zH2pQQi4tpM+2Gq3YIpN+7KLYlHT5GZEiXivxlxzJx7W5GVihL44Jk4/UB
	 F8wBZ3dkj3JzlzP++jXMeDpKXRwIP2D0f07e1K0rhORMmh2Afmf/Ern3ep24TrmItB
	 WW4zBCxRmcXz9zok5DZGvfLZy5VZWr95emKxduMAtdBwt+Hckdd1u0jmklJAzQdmtA
	 k+6k19kHtCyyw==
Date: Wed, 7 Sep 2022 16:41:44 +0100
From: Mark Brown <broonie@kernel.org>
To: luca.ceresoli@bootlin.com
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 0/8] Add support for the internal RK3308 audio codec
Message-ID: <Yxi7uD6RKeR3uHcF@sirena.org.uk>
References: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
X-Cookie: You have a truly strong individuality.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_084156_900043_2243088F 
X-CRM114-Status: GOOD (  14.73  )
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
Content-Type: multipart/mixed; boundary="===============2290849454066105453=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2290849454066105453==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9EHz1xmrlXau4N0B"
Content-Disposition: inline


--9EHz1xmrlXau4N0B
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 07, 2022 at 04:21:16PM +0200, luca.ceresoli@bootlin.com wrote:

> Luca Ceresoli (8):
>   ASoC: rockchip: rk3308: add internal audio codec bindings
>   ASoC: rockchip: rk3308: add audio card bindings
>   arm64: dts: rockchip: add i2s_8ch_2 and i2s_8ch_3
>   arm64: dts: rockchip: add the internal audio codec
>   ASoC: rockchip: i2s-tdm: Fix clk_id usage in .set_sysclk()
>   ASoC: audio-graph: let dai_link->init be overridable
>   ASoC: codecs: Add RK3308 internal audio codec driver
>   ASoC: rockchip: add new RK3308 sound card

Please pay attention to the ordering of your serieses when posting:
generally any bug fixes should come first so that they can be easily
sent as fixes, and normally DTS updates are at the very end of the
series rather than mixed in the middle since they go via the platform
maintainer tree normally rather than with everything else.

--9EHz1xmrlXau4N0B
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmMYu7cACgkQJNaLcl1U
h9CKzAf8DdI+J5miR4E6cIrTXKZoGqR7qZhfHqflFl1gH1Y4ikj9fbdxe4vhlxEz
nUlD7rd8x8u/c8l0lkObG4gKpZ3VMuT6Pvr5cxCHzlGyCgKb3NEMme5JhSuV8TCW
qchsRF+ZGTXUcPqBN5ey6fl2KAboGemFxyuDLWaVD9CVsKDpoMtyOsgE8PC7sTRO
Vdqkl33gsJZP8XRlRomBFUpC/ziINrHXBW+hBoyQBNBLJxdUT7OM7WXVsxJaJsJf
o+lK+dLy4RD8Pnbt28qgvhMDFxNKCSGX6B0iI8lgMls3j/ZJme3+MnrNA9DwDTjM
wKQ4TTmanyrMK0yzQd4uThtlEm/FfA==
=rYHs
-----END PGP SIGNATURE-----

--9EHz1xmrlXau4N0B--


--===============2290849454066105453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2290849454066105453==--

