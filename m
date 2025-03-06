Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58257C28B23
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 14:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1Th3nWdx6i+lQcvgElfhuAuMUORKVqvTY5r1Q4BNpJs=; b=0z9p2Rw2XkavfpBiw7IwoVw+/Q
	5NLDazxSB3QrTwcjrX46K9N79UY8Bwltz63a+OiYzaZlEIfPQYo6vFUqbtWLsBXHyXk5IigybPEqx
	BYUDq3+fLEtA92l6BrWxIvShNrCKvtocbzeXtNtH6nUqx87RZm49JfgKkZGoMbK74ppds1VZCStu4
	ew1HBiUUx0eFdL+W4noPUlyRhUHFIUq8peYb/aHi/B0koL8K/bwcmAfWqcBYOlASae13D+toWCwxG
	edgj1Ef++9p1t0o01gPITF5NPemX2yYdK7UOa3RtGSE09Swknsp6Px9RgwVlw4ZpNjj2pgxBA9c3K
	jY5p/abQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqCWy-0000000BEuJ-3Whl;
	Thu, 06 Mar 2025 14:49:00 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBNj-0000000B4Tk-3j5Q;
	Thu, 06 Mar 2025 13:35:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 147E5A44C5D;
	Thu,  6 Mar 2025 13:29:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE9BAC4CEE5;
	Thu,  6 Mar 2025 13:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741268122;
	bh=TEsU6Ht+78gm09L1SBIsP4bdIB/vCUld4RHRuN+JlCg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q+TL6TFUsUtdn/wseDX/hYan08UFevaGvb3dKbl/pMQO1gxynYz1WPVc+GwbDdGSg
	 G6VVxvTMlQ151wtr2rH2dXaRev4a14umu7sY4Zpa2E8jjqn2gzTw/l+8SCDIEpXjkQ
	 SSvUXWrM+81mTvqh60ZrJFDki3uEYB6At22GMnkZYwODW1iKnJgtlGNQ18rpCVuwuZ
	 rA923hDM/3tLy0TqI8K+ZM49CkkiPZGP4b/ICuIOQNEH0aHIwSOuINFcFghhD2ubZW
	 qGqH8P7KYxHxv4Pt5qntnkp7sYPguNuZ0Rl6JwC+DQwcBKr6i/dsnUfA0pel585GA0
	 i0LNrLA0fM4/A==
Date: Thu, 6 Mar 2025 14:35:19 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, kernel@collabora.com, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 03/12] phy: rockchip: samsung-hdptx: Fix clock ratio
 setup
Message-ID: <20250306-masked-voracious-octopus-be05b8@houat>
References: <20250304-phy-sam-hdptx-bpc-v4-0-8657847c13f7@collabora.com>
 <20250304-phy-sam-hdptx-bpc-v4-3-8657847c13f7@collabora.com>
 <20250304-small-mindful-mongrel-bd6f8b@houat>
 <155f609f-994f-4140-8453-7e38a5e6deef@collabora.com>
MIME-Version: 1.0
In-Reply-To: <155f609f-994f-4140-8453-7e38a5e6deef@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_053524_058292_19DC25CB 
X-CRM114-Status: GOOD (  25.87  )
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
Content-Type: multipart/mixed; boundary="===============6645800600435065602=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6645800600435065602==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="5o2wzlaqjbtp76c4"
Content-Disposition: inline


--5o2wzlaqjbtp76c4
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 03/12] phy: rockchip: samsung-hdptx: Fix clock ratio
 setup
MIME-Version: 1.0

On Tue, Mar 04, 2025 at 02:04:18PM +0200, Cristian Ciocaltea wrote:
> Hi Maxime,
>=20
> On 3/4/25 10:13 AM, Maxime Ripard wrote:
> > Hi,
> >=20
> > On Tue, Mar 04, 2025 at 03:44:02AM +0200, Cristian Ciocaltea wrote:
> >> The switch from 1/10 to 1/40 clock ratio must happen when exceeding the
> >> 340 MHz rate limit of HDMI 1.4, i.e. when entering the HDMI 2.0 domain,
> >> and not before.
> >>
> >> While at it, introduce a define for this rate limit constant.
> >>
> >> Fixes: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY dr=
iver")
> >> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> >> ---
> >>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 3 ++-
> >>  1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drive=
rs/phy/rockchip/phy-rockchip-samsung-hdptx.c
> >> index f88369864c50e4563834ccbb26f1f9f440e99271..cf2c3a46604cb9d8c26fe5=
ec8346904e0b62848f 100644
> >> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> >> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> >> @@ -320,6 +320,7 @@
> >>  #define LN3_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
> >>  #define LN3_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
> >> =20
> >> +#define HDMI14_MAX_RATE			340000000
> >>  #define HDMI20_MAX_RATE			600000000
> >> =20
> >>  enum dp_link_rate {
> >> @@ -1072,7 +1073,7 @@ static int rk_hdptx_ropll_tmds_mode_config(struc=
t rk_hdptx_phy *hdptx,
> >> =20
> >>  	regmap_write(hdptx->regmap, LNTOP_REG(0200), 0x06);
> >> =20
> >> -	if (rate >=3D 3400000) {
> >> +	if (rate > HDMI14_MAX_RATE / 100) {
> >=20
> > The rate seems to come from rk_hdptx_phy_power_on and eventually from
> > tmds_char_rate in the PHY config options, so its rate is in Hertz.
>=20
> The rate coming from rk_hdptx_phy_power_on() is in hHz, since it passed
> via dw_hdmi_qp_rockchip_encoder_enable() as
>=20
>   phy_set_bus_width(hdmi->phy, div_u64(rate, 100));
>=20
> > HDMI14_MAX_RATE and HDMI20_MAX_RATE are both defined in Hertz as well.
> > It seems super odd to mee that you then convert HDMI14_MAX_RATE to hHz?
>=20
> This stems from the ropll_tmds_cfg table containing the configuration
> params for the supported rates which requires the search keys to be
> provided in hHz rather than Hz.
>=20
> I agree this is nothing but confusing, that's why I fixed this up in
> "phy: rockchip: samsung-hdptx: Avoid Hz-hHz unit conversion overhead"

Yeah, sorry, I noticed it after sending the review. Still, I'd advise to
put that patch first, it's a bit weird to add more patch we're going to
rework later on.

Maxime

--5o2wzlaqjbtp76c4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ8mklwAKCRAnX84Zoj2+
dqsKAX4nqDcG5Vb45Qfy+reElIgfRIEkKdypEs03k8+dDGrmbgN4qMjCkJ/EBkjn
HbmMAisBfRB4vWfpfcqsMV2LqZBvfAivr19nVh8LflLAH8Q/WFHnP5NlHsqmOcuv
WXoDH3DoGQ==
=ZIQ8
-----END PGP SIGNATURE-----

--5o2wzlaqjbtp76c4--


--===============6645800600435065602==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6645800600435065602==--

