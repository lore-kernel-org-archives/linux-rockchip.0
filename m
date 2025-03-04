Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A91B5C282D0
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 08:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XECOBw6t3jRSGLUuh+WiEAb7SEIPLKvK0E6pYVg6+cg=; b=zJQp6cIJKEXpxAaxt/NfO4mnIy
	Wu3hbl7IvhAneIEgGJeA978Mx1aYAxcOK0FlgRm8mJKuOUixILZQH5Dwx+cYvxdi2P3VfH+DtQkLE
	zenOjljupDJtKaydkV3LNKEsCvuJpGk67woayQyGzJDUXztgpgyo+bNX009OkJKLz5wzT3LeHRA+c
	feg70RcB1DWcsJekHX65feoYTwCmEAUf+kMv/Aken48aHGD7hjZKebeXHU/U9E/TYB0bTf2NWBQ8S
	UPWp2Lb6mVpU+id0NxYfGXEcclunChAfqzrIjPENcdT94Ih+7pTelhR656lln7omHThw40Sk0JBGe
	3Ljz3/9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpNYk-00000003cG0-3G4I;
	Tue, 04 Mar 2025 08:23:26 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpNX8-00000003bu9-3163;
	Tue, 04 Mar 2025 08:21:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 053FAA4531B;
	Tue,  4 Mar 2025 08:16:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1451DC4CEE5;
	Tue,  4 Mar 2025 08:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741076505;
	bh=r+QgXwspE9bOIsdXuaHX5Fy587ozsozyvyxqkM7KM7E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dPwJ8SBDBr610xdCSiteMZ0vQQMEoAeLjKlooTDCQ6AwAtKnyEtTms8rhh+NQk+2V
	 gnna6yYT/kZKR+jEI06+nYnt/NX5ajaJbppAJljDNvujnvQWIbyuFgqwcVs8L/SwlW
	 Rw4CAmiKricAvytqpNEIH4Q179xKeZS/9+d+WaUtlnDhJqbT9/Q767NTYzymYdwCiY
	 RLyR+NpMenpAYFEg2fK6n3cZnHP5fw7fkNGxr0+VQ3gWhk6n0VW5OaL2avNFU/mwIs
	 S0FLt3/ZnmaYsgvTXh50/jYuTMrQeqXizLXm4WNuJYUZ5evnULGBgFb1vYvLeOmVWg
	 vbaWroNd/HuQg==
Date: Tue, 4 Mar 2025 09:21:43 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, kernel@collabora.com, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 10/12] phy: rockchip: samsung-hdptx: Add high color
 depth management
Message-ID: <20250304-delicate-crazy-tuatara-5ea4d3@houat>
References: <20250304-phy-sam-hdptx-bpc-v4-0-8657847c13f7@collabora.com>
 <20250304-phy-sam-hdptx-bpc-v4-10-8657847c13f7@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20250304-phy-sam-hdptx-bpc-v4-10-8657847c13f7@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_002146_819661_EA29F821 
X-CRM114-Status: GOOD (  11.45  )
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
Content-Type: multipart/mixed; boundary="===============4781415412455191304=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4781415412455191304==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="i3vrrx3psrj2lhwm"
Content-Disposition: inline


--i3vrrx3psrj2lhwm
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 10/12] phy: rockchip: samsung-hdptx: Add high color
 depth management
MIME-Version: 1.0

On Tue, Mar 04, 2025 at 03:44:09AM +0200, Cristian Ciocaltea wrote:
> @@ -1480,12 +1484,12 @@ static int rk_hdptx_phy_power_off(struct phy *phy)
>  static int rk_hdptx_phy_verify_hdmi_config(struct rk_hdptx_phy *hdptx,
>  					   struct phy_configure_opts_hdmi *hdmi)
>  {
> -	if (!hdmi->tmds_char_rate || hdmi->tmds_char_rate > HDMI20_MAX_RATE)
> -		return -EINVAL;
> -
>  	u32 bit_rate =3D hdmi->tmds_char_rate / 100;
>  	int i;
> =20
> +	if (!hdmi->tmds_char_rate || hdmi->tmds_char_rate > HDMI20_MAX_RATE)
> +		return -EINVAL;
> +
>  	for (i =3D 0; i < ARRAY_SIZE(ropll_tmds_cfg); i++)
>  		if (bit_rate =3D=3D ropll_tmds_cfg[i].bit_rate)
>  			break;

Why is that change needed?

Maxime

--i3vrrx3psrj2lhwm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ8a4FgAKCRAnX84Zoj2+
diuVAX4ozKl6gJOFIJUKtEjxOPipdOu9iB/HuKt1Vnl8PydF6Q+9rpNCmfTUHVLb
yeBXM+8BfitH+H7qMyogVHRVuaRdMoO5CdfQvz8UPrcFG/RFymk53sbJ9HgyBuDq
jqseFCQ4bg==
=aIsW
-----END PGP SIGNATURE-----

--i3vrrx3psrj2lhwm--


--===============4781415412455191304==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4781415412455191304==--

