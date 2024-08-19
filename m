Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0158C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 17:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XXbjLnPAF5PpzlpJ8dPM7v04hkKroALzHTfbBEMRA1w=; b=LyS6BHEDKqy/WKea0VHo/J6Wih
	DAVourY7baWuRI+odyzEjTQTaW7TY0MdLrKOfrkjVBrWvvgFaLp/c3Ohz68SkpytnO5QW+KASB8e0
	Dqc30kGwHj7LkDZh8XXD2fkfhJksAga+e4R6XN2wIImIPQU7XHq4uYa9CMO7xB3TlOV7DbhrCkSsQ
	9W4w2Lz/jA4dhbPx69bCqKtkxfpw6XciMk/eUx1M8K5PVNLmi4vpaJW4V1jV4gd37w0pHmUu1Rrww
	cHuXKPZj1N65qook37LP07Bw5ib7KPkGbgGLfpw91PKYYFYnuroVmLuYDtQVgTI0WqaVZyPVhVHwS
	NsD1P52Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg5zk-00000002MmY-3vgy;
	Mon, 19 Aug 2024 17:16:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg5rx-00000002KVQ-3iRt;
	Mon, 19 Aug 2024 17:08:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2D01260AB8;
	Mon, 19 Aug 2024 17:08:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 351FDC32782;
	Mon, 19 Aug 2024 17:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724087316;
	bh=E3wx3Yy8f4Z4HsNkio0m66ed4QzhHvCCsBlgSiuE7yA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MGuiYdlZpf/fS6Lsr3MsXPxoJoBAsh4wRG0kt/2k3f5Xnkz+VKP0FYzfDv4mrqJZ+
	 Z6tHbi2sUCd6PKoznrsqe2PUuFTBxGqDkcI2z93joXi248VOOujU1LsBWID6N4sbTD
	 jUKLM+CUIRcM1r9vE3WlMGK39nDOTEZx8nIDcblJtK3+vRV+x8zyWPQqGvgNkCaL7i
	 ve/X3CgTr6mPe5hJ9+QAhRiZFQxT0GtgN6mxR2UtV7mKQ4qKywm30KZWXixt69UTUS
	 bq10T4HkhCPYL82xFoaW9UGv49fCBOtb2ECdItVxeL0GjKzo3Q25z5enR3DgN5tn77
	 jt2b1vOwB5sYQ==
Date: Mon, 19 Aug 2024 18:08:30 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Serge Semin <fancer.lancer@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Magnus Damm <magnus.damm@gmail.com>, patches@opensource.cirrus.com,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Gabriel Fernandez <gabriel.fernandez@foss.st.com>,
	linux-mips@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 5/5] dt-bindings: clock: st,stm32mp1-rcc: add top-level
 constraints
Message-ID: <20240819-gatherer-sedan-154904ce49ba@spud>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
 <20240818173014.122073-5-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20240818173014.122073-5-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_100838_013757_522C4394 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============8288839471127752057=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8288839471127752057==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rQtkFboImljYNJPX"
Content-Disposition: inline


--rQtkFboImljYNJPX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 18, 2024 at 07:30:14PM +0200, Krzysztof Kozlowski wrote:
> Properties with variable number of items per each device are expected to
> have widest constraints in top-level "properties:" block and further
> customized (narrowed) in "if:then:".  Add missing top-level constraints
> for clocks and clock-names.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--rQtkFboImljYNJPX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsN8DQAKCRB4tDGHoIJi
0pVLAQDwyIKwfsPuyqXb02vbHEEbL8TGRHM/QQvfFPhvZCI9zAEA71idxnNe3Jq5
wxYq+g9QkUAnqtmBwUD3Hm7yuVfTDgs=
=1VCV
-----END PGP SIGNATURE-----

--rQtkFboImljYNJPX--


--===============8288839471127752057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8288839471127752057==--

