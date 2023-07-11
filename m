Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E80C6EB64DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jul 2023 15:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qDvW4sAU3cDnUFJNXjxlEKiHa2DDL8sKNTXyV7LnbeI=; b=N7p+h2qL/D755RoK9RI368jEQC
	q0K2YFNxFZqcVpiLo4aUCiouBgo+puImLCe89gyJUEN/83JUYKJnyIjRojhbxzXLmHPsatxXNtprd
	selXPB4o2e4HCXJb89ccOzCryETwN1cB1IGSg45vfA8oV6Jg0JMITjGFqnhXSJzaZSjeuQy9nyZif
	I+gmZaPr3j6mgR+GSOaxtx0I8V3DiAaQyvlN6SnAy1EiY+oAeMHTO8pMdGDJUWeC89anYbOtHYBlt
	Gc7IoTrQv9GTVMQTgROwLuyKZvuyse7gvdHxMZFKuPGmfsgpL+UDglnmK9iuCfqwanrwQc8J+8w7E
	2XFvr/vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJFdZ-00FJ3M-30;
	Tue, 11 Jul 2023 15:50:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJFcu-00FIyL-1W;
	Tue, 11 Jul 2023 15:50:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 046936155D;
	Tue, 11 Jul 2023 15:50:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A565C433C8;
	Tue, 11 Jul 2023 15:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689090607;
	bh=Rfrk1uyNxWMBBOGH5Jxn2umsc9+1UwzSvXH/XCQVTMk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tQcn8OvC6bRBN7WzpsoGdLVO3L4xuskzngmmfRCEj2SQ0jAC+8jd5iN20p9gHRbpg
	 XUbhNgU9wAusI4gCQRZQWpSdosA5W/FQG4z1AWEgo24Qhpez1zvl8Qd08L+UQadjys
	 qOLdKWVQ3JbXYchCASI4opWSvhez0uMrvZY11sAMGFC7hweCIW8F+sFtyDKkG13nS0
	 BpkHBiCRn9aeI6z28Cfu2Vk50UunuJFeo1j1nrYJyD6L4Kr0GqQXWYq2XqyGdtwIe+
	 r8LZOFGfyssDNKEB3zOQjK+1KK7aegmO8dmKUMp5no+2+L0MPlqIAyMOrhHo2iXkMt
	 IC4BE92YJ2DdQ==
Date: Tue, 11 Jul 2023 16:49:54 +0100
From: Mark Brown <broonie@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Yang Yingliang <yangyingliang@huawei.com>,
	Amit Kumar Mahapatra via Alsa-devel <alsa-devel@alsa-project.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tharun Kumar P <tharunkumar.pasumarthi@microchip.com>,
	Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-riscv@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-trace-kernel@vger.kernel.org, netdev@vger.kernel.org,
	Sanjay R Mehta <sanju.mehta@amd.com>,
	Radu Pirea <radu_nicolae.pirea@upb.ro>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Max Filippov <jcmvbkbc@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Richard Cochran <richardcochran@gmail.com>
Subject: Re: [PATCH v2 04/15] spi: Replace open coded
 spi_controller_xfer_timeout()
Message-ID: <dafdb3d9-572f-49d3-82d7-f0d7667df5dd@sirena.org.uk>
References: <20230710154932.68377-1-andriy.shevchenko@linux.intel.com>
 <20230710154932.68377-5-andriy.shevchenko@linux.intel.com>
 <cfaffa00-4b61-4d81-8675-70295844513b@sirena.org.uk>
 <ZK02efTYxV3czigr@smile.fi.intel.com>
 <5959b123-09e3-474b-9ab0-68d71cfdd9a2@sirena.org.uk>
 <ZK11flZf/1grJ1Bd@smile.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <ZK11flZf/1grJ1Bd@smile.fi.intel.com>
X-Cookie: marriage, n.:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_085015_317476_574E6DB0 
X-CRM114-Status: GOOD (  20.01  )
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
Content-Type: multipart/mixed; boundary="===============5156846956633861231=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5156846956633861231==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z/wyG6sqMhUk9SL4"
Content-Disposition: inline


--z/wyG6sqMhUk9SL4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 11, 2023 at 06:30:06PM +0300, Andy Shevchenko wrote:
> On Tue, Jul 11, 2023 at 03:14:54PM +0100, Mark Brown wrote:

> > Like I say we *should* be fine with the refactoring without this, or at
> > least if it's an issue we should improve the validation.

> For the speeds < 1000 Hz, this change will lead to the div by 0 crash.
> It seems that the current code which this one removes is better than
> the spi_controller_xfer_timeout() provides.

> If anything, the spi_controller_xfer_timeout() should be improved first.
> So, for now I drop this for sure. Maybe in the future we can come back
> to it.

I don't think this is the only thing that might fall over without a
speed, what we've generally been doing (and do try to do with speeds, we
already need to default in the controller's speed and so on) is to
sanitise input on the way into the subsystem rather than trying to
ensure that all the users are handling everything.

--z/wyG6sqMhUk9SL4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmSteiEACgkQJNaLcl1U
h9DAYgf9GamF50fucbXVx/aZUwGY2hD+eGYGVpMwfSRhuUlWbnbam1vDqMkEllpk
X95Rur4vRJQA8erYbUKnhyABsYUSGd8CKx8/mDgvePWDPlYZ3TkdMV8z/j59HZbA
WhFO3yBSJzNOgDxpftw96yBP7l7eZZHabEpeUAOx+SZ04jtNfdnRHeHBIBKL+YUT
eFnArWnhTo4dUwNTaAojL5Lfgos/MGY9ABY3b2E4ZkjSaHCUTOa2rxKo9zjc43tE
gdVuQ8cvshKLUDx2CFZ4oux+stLEOfjcsmR0prxZp3q9t2ywp1CsOHBY1ndd/8Ds
SnUGepjz95NgZBU7ewJoIuRhKJUQtA==
=GGl+
-----END PGP SIGNATURE-----

--z/wyG6sqMhUk9SL4--


--===============5156846956633861231==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5156846956633861231==--

