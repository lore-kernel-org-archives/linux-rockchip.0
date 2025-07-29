Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9773C87FCA
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jul 2025 20:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eRUtrmAQKcUPw5y/0JZ2GPwoTdbkSFZeHvCNYM0YmcY=; b=S2Sw1A66ZbHEhe5KS6EKdhy1Xf
	l+RoRE2R9Nam3QYXT+DRlYINnR4ZScOqQrN2vrMcF93sXRUA1asb1DAUxoDm9K3vEvfMcXI1YTbdD
	8ftF5oigaVI0zDj6m2ihH/TtoQbzIOTkXyDiC6i70VLSF4fpX9SYVKoNMP383btSTHg4Rymp4ZphB
	p3TWcuXUhblZLJni606RWSlb3Jx2CoixmLOhs+A6WRyDuUsTKDIZry92SCz59inkWctQ+/LrBN8lk
	3haElwDtNQ7LAlLMCuwcGgM/oQLA3KCsfAKq7C4syPgnP+YLvYWKpcp+hulK7RjDfqpePtQNVE8tD
	jnjsYasQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugqWR-000000001Sb-0x9l;
	Tue, 29 Jul 2025 20:02:03 +0000
Received: from out-181.mta0.migadu.com ([91.218.175.181])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugqTy-000000001Au-266X
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Jul 2025 19:59:32 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1753819157;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OcthrL0Xe+fdbwJ+7ct553yzhsg4eVUVDzsOcSB6eAI=;
	b=xH6bv/Vl6xdZ1vLDAdzZn5s3YjOUgRr+1aTVe6G+zr84L6yRGGOVX8FLfWGaUOvAUNnlE8
	OkJnIsxTPLgZPwebAIBIXU7JOWLjxBeLZadQnyYcyV+Y2Vfgkp+aCcSlX7UpwqmPpScSHw
	YNl6ErX0r7qmEXJMigEFrzj+eF52Z8nbqK4AhrYbWaMXjiGQpixAa5p5AkJXzTjPk2TNKY
	3CwvGNBQZyVzE5aSpvyt8P+KqlQRTV4IXH3fqrGTUEFoluwLKK8OInxSTONR6iuXkLLqf3
	hlc1zw9l4s/WOFJWkT9fyDHI25o1uymTqosLMs6a2gIyxx6PNBl6s7qtaftYpA==
Date: Tue, 29 Jul 2025 21:59:02 +0200
Message-Id: <DBOSZZ7TMD2P.U0MGKUR3DXN@cknow.org>
Cc: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH v3 4/5] arm64: dts: rockchip: Add missing dp_out port
 for RK3399 CDN-DP
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Chaoyi Chen" <kernel@airkyi.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay
 Abraham I" <kishon@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Sandy
 Huang" <hjc@rock-chips.com>, "Andy Yan" <andy.yan@rock-chips.com>, "Yubing
 Zhang" <yubing.zhang@rock-chips.com>, "Frank Wang"
 <frank.wang@rock-chips.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Amit Sunil Dhamne"
 <amitsd@google.com>, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
 "Chaoyi Chen" <chaoyi.chen@rock-chips.com>, "Dragan Simic"
 <dsimic@manjaro.org>, "Johan Jonker" <jbx6244@gmail.com>, "Dmitry
 Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Peter Robinson"
 <pbrobinson@gmail.com>
References: <20250729090032.97-1-kernel@airkyi.com>
 <20250729090032.97-5-kernel@airkyi.com>
In-Reply-To: <20250729090032.97-5-kernel@airkyi.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_125930_678738_F23FA157 
X-CRM114-Status: GOOD (  14.27  )
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
Content-Type: multipart/mixed; boundary="===============2640458390174820919=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2640458390174820919==
Content-Type: multipart/signed;
 boundary=2fd07b92180be8290edbe889ada7baa056994820fa28317a2cadcfeab9c7;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--2fd07b92180be8290edbe889ada7baa056994820fa28317a2cadcfeab9c7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Tue Jul 29, 2025 at 11:00 AM CEST, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>
> Let's make the ports nodes of cdn_dp in the same style as the other
> display interface, and match the style of ports's yaml.
>
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-base.dtsi | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi b/arch/arm64/b=
oot/dts/rockchip/rk3399-base.dtsi
> index 9d5f5b083e3c..edeb177bc433 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
> @@ -618,7 +618,11 @@ cdn_dp: dp@fec00000 {
>  		status =3D "disabled";
> =20
>  		ports {
> -			dp_in: port {
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +
> +			dp_in: port@0 {
> +				reg =3D <0>;
>  				#address-cells =3D <1>;
>  				#size-cells =3D <0>;
> =20
> @@ -632,6 +636,12 @@ dp_in_vopl: endpoint@1 {
>  					remote-endpoint =3D <&vopl_out_dp>;
>  				};
>  			};
> +
> +			dp_out: port@1 {
> +				reg =3D <1>;
> +				#address-cells =3D <1>;
> +				#size-cells =3D <0>;
> +			};

Patch 5 adds a single endpoint to dp_out (without a reg property), so it
seems that #address/#size-cells is not needed?
If you run ``make CHECK_DTBS=3Dy W=3D1 rockchip/rk3399-evb-ind.dtb`` it
should spit out a warning about that.

Cheers,
  Diederik

>  		};
>  	};
> =20


--2fd07b92180be8290edbe889ada7baa056994820fa28317a2cadcfeab9c7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaIkoCgAKCRDXblvOeH7b
brfGAP91vbmzqtSHHq487babaTkFfCZ5yunCKjR4z8ny048RbAEAionq5YOmCJoU
pi+lTvFwVYBJkyoMcr/Yv7tpfvlC2w0=
=ePLo
-----END PGP SIGNATURE-----

--2fd07b92180be8290edbe889ada7baa056994820fa28317a2cadcfeab9c7--


--===============2640458390174820919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2640458390174820919==--

