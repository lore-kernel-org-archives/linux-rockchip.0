Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCEC3C35274
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 09:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I3w8c+RN4H1e1sPH/pEmU5Ux2z5xAx78IiG2k0VlBsw=; b=X3lsqk26gzkDHw+jaPu6644MaK
	WRieYv91oDPjnMa3HMQ2Bc2QUTO2q6H62i2O4785rjhISzxbsJ1J3Nwnn/sxbqGqjSyquwMZUSkd/
	bEBnm+FSy1fHtikUjiu7p6pWV0tnwzSf2EL+caA0x4/lju2ku3nPZTludMtCxUWvYbhnVE9v7uSap
	MeEIKPww+dGV5y1q78hssYKfZP91AApCM5kvvUNNLOcsgzm2e8uJZTP6b1DyiJf6u0nBdVtxFxZD3
	RH5cvFsowT1oO/268tZhC37CdbbypQz0MLj0/vbbL5gkLNG/swLwIdQVK6ZMikLCxllJvqC1/Us/i
	OZQkxE3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGF1O-002Aqz-2n;
	Thu, 21 Dec 2023 09:07:14 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGF1I-002Aos-14;
	Thu, 21 Dec 2023 09:07:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id DED28B81F9D;
	Thu, 21 Dec 2023 09:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8BAAC433C8;
	Thu, 21 Dec 2023 09:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703149626;
	bh=e4HwI+rYcJHOJPcuJl4AqF12SZkaucHI/9Vovq6T6p8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b856BG6L9vLS0sdCXBgb52Gt/Pt4sqc+2n2ncutFNWVGpa3KsxOb01pBpalzXQ/1m
	 jPzxgTVD8CtRJTrcunmi7c3f0smXiR2+O2+uEx8e4M6iLXfvbb5PeHncqjArNYmclK
	 lEKUemErrE0JOuQv5OQ9xNHh+Qy3T9Gsy0yT1Jg3SJOZ66xqjYMUJOzWqXk8hjsdE4
	 p746EmlkTIaqEN54KIp2WjlFuCYvhi3LJ4ShAFuL+Qu8Jwa9OttanUZhwjCe8pY5pf
	 Zbv4lpw8PgS2QweswLZ4Dn+i5+7Ads+HdObObzi9QCITFtlG5AZMKFw4Cv/AOaZ31I
	 YuhgD45wOJ1Yw==
Date: Thu, 21 Dec 2023 10:07:03 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] drm/rockchip: rk3066_hdmi: drop custom fill_modes
 hook
Message-ID: <j2cpes3kyssj6cw34v5z6clef4buzb2j6srvmrniumbn2kptqx@ovf2yvhxlslr>
References: <f86ec29f-194a-800d-0aaf-9e16e551b37d@gmail.com>
 <410b116b-cb63-7ba7-3689-4f0832ab5796@gmail.com>
 <evaq3yfbqf4gchsps2qoojemtii7tmcss24aruiuze5kkzlnhy@mih7rky7viqz>
 <4aeef6df-2616-0741-00a3-6e45ec63f920@gmail.com>
MIME-Version: 1.0
In-Reply-To: <4aeef6df-2616-0741-00a3-6e45ec63f920@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_010708_660506_2CAAED90 
X-CRM114-Status: GOOD (  22.98  )
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
Content-Type: multipart/mixed; boundary="===============0251401338151569314=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0251401338151569314==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6x4c6jydyzhxy4vm"
Content-Disposition: inline


--6x4c6jydyzhxy4vm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 19, 2023 at 04:40:12PM +0100, Johan Jonker wrote:
>=20
>=20
> On 12/19/23 13:55, Maxime Ripard wrote:
> > Hi,
> >=20
> > On Mon, Dec 18, 2023 at 04:49:06PM +0100, Johan Jonker wrote:
> >> CRTC size validation for the display controller has been added with
> >> Commit 8e140cb60270 ("drm/rockchip: vop: limit maximum resolution to
> >> hardware capabilities"), so we can drop the custom fill_modes hook.
> >>
> >> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> >=20
>=20
> > I'm not sure those two are equivalent. CRTC and connectors usually have
> > different requirements and capabilities, and thus different,
> > supplementary, mode_valid/atomic_check implementations.
>=20
> Rockchip RK3066 CRTC and connector resolution max_output are equivalent.
>=20
> From Rockchip PX2 TRM V1.0.pdf page 17:
> - Video Encoder
>   Maximum frame rate is up to 30fps@1920x1080
>=20
> - Display Interface
>   Support LCD or TFT interfaces up to 1920x1080
>=20
> - HDMI TX Interface
>    HDMI version 1.4a, HDCP revision 1.4 and DVI version 1.0 compliant tra=
nsmitter
>    Supports DTV from 480i to 1080i/p HD resolution, and PC from VGA to UX=
GA by LCDC0 or LCDC1 in RK PX2

My point is that there's two limits: the CRTC and HDMI controller ones.
You should put the CRTC ones in the CRTC driver, and the HDMI controller
ones in the HDMI controller driver.

If they are equivalent, great, it's going to filter out the same things, bu=
t...

> Compared to the drm_helper_probe_single_connector_modes() this function a=
dded an extra max_output
>=20
> Checked in rockchip_drm_vop.c is:
> https://lore.kernel.org/linux-rockchip/20230216102447.582905-2-s.hauer@pe=
ngutronix.de/
>=20
> +	if (vop->data->max_output.width && mode->hdisplay > vop->data->max_outp=
ut.width)
> +		return MODE_BAD_HVALUE;
> +
> +	if (vop->data->max_output.height && mode->vdisplay > vop->data->max_out=
put.height)
> +		return MODE_BAD_VVALUE;
>=20
> For RK3066 VOP max_output:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/d=
rivers/gpu/drm/rockchip/rockchip_vop_reg.c#n506
>=20
> This patch was made with HDMI in mind.
>=20
> 	.max_output =3D { 1920, 1080 },
>=20
> This first part was added by Heiko, but not was not part my patch that I =
submitted:
> -	if (maxX > 1920)
> -		maxX =3D 1920;
> -	if (maxY > 1080)
> -		maxY =3D 1080;
> -
> -	return drm_helper_probe_single_connector_modes(connector, maxX, maxY);
> -}
>=20
> Original patch:
> https://patchwork.freedesktop.org/patch/msgid/20190330095639.14626-2-jbx6=
244@gmail.com
>=20
> +static int
> +rk3066_hdmi_probe_single_connector_modes(struct drm_connector *connector,
> +					 uint32_t maxX, uint32_t maxY)
> +{
> +	return drm_helper_probe_single_connector_modes(connector, 1920, 1080);
> +}
>=20
> Rockchip RK3066 CRTC and connector resolution max_output are equivalent.

=2E.. a user / dev unfamiliar with the SoC won't have to go through that
to figure out how it's handled, it will be obvious.

Maxime

--6x4c6jydyzhxy4vm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZYQANwAKCRDj7w1vZxhR
xSAjAQC/cny6EDPS6Yo2LIqQuLPlGA1yohiqkZolkGVOCEB3rgEA+W93tTlZ5lV2
ZZIvJUVxNMzYtlqJpZ9Tk7HKVNiPegk=
=tcho
-----END PGP SIGNATURE-----

--6x4c6jydyzhxy4vm--


--===============0251401338151569314==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0251401338151569314==--

