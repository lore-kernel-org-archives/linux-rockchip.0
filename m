Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE252CF8574
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Oct 2024 10:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zr86CrQvo1xpOFBmUGTAuMBuymCV5CUSvWqTRYErohU=; b=cZ+XGgiOT/xb+kd5Glpy4xuAiU
	aW86a+TdfnNJqN5KHLTSOF3EjuHHiXeSwr+s9HsNju1/fZ4yfqxBoxagSGiTOFNF+4VIMQ/2gZpYO
	kA6xGt5R3eoM4SS1agBbjjahEoIOOHc4WEazdJP88cnJWetrQjCPIhSBkPfBOQhX4R9KZJjcDZp7C
	IPpyZkZ4iRkuDj1n/LQisopLro2Xp/ts0mG0tUgBlUxDL3bR5m9O4ecYPSvpswA2O2RE8lPSfxHMT
	XdSfwwbqHKH0S8iEbXd+PrwnTIe3WZah4K0AJ0qkTEE6OiQ3XHAHh7smBMm3rvMXWodjOl5OfiRdx
	r4H17uGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swIta-00000008lME-32gS;
	Thu, 03 Oct 2024 10:17:18 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swItV-00000008lLR-0uZb
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Oct 2024 10:17:15 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-37d00322446so808990f8f.2
        for <linux-rockchip@lists.infradead.org>; Thu, 03 Oct 2024 03:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1727950631; x=1728555431; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=X3CFMCkPlNFPBBDKHQENI3Kp3uKPTlcHA9zYpwqdNTo=;
        b=Uk7S5q5k2Vdr8D5NQXOmuajpsm0i0SSKWuD2Uep4zamFHIsWfONIZhA1kDq2I4cF4+
         0Mj7AUprTxblAKooGDexvI8UOeDPAchxUvyjZRhwPbkWmsZZTbPNPIoH5QfW1XysbLt9
         Z+hNcGddXBfJ2GxDIFJ8x7M5PZDDe21M/N2n/9JUEWMsiywIutbk9tsEXXjBtr9l7EEp
         mcSUC97ol+FqgL9pqZ4u4sTFkU5RM958Jx+TzbJwdl5mm+XnRnFmQss+TSb6hExdxYQg
         bnYFmBqkBdlMBxA+oeDUueNEq0Q6UVguq37BCPIaMVGoAc1njNjApGSefgqQtCdsDacj
         8/FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727950631; x=1728555431;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X3CFMCkPlNFPBBDKHQENI3Kp3uKPTlcHA9zYpwqdNTo=;
        b=FdgH0GUuBTVHUi4EzvzPWIT4clmQHG1Ikrv2qzOf4HmdUV63ciG09VWn24OgbUmiw+
         C5JVZpy+JPHK6AztRLXnhxO3Fv88hqxJjule/KOAoPnO4s6im7vX5+9rUJtYvniuZDri
         bECa4FG6U5u1j2dUoRrET3hJWR5FyLB2hrUObukfw4aJat3uvjw6CEj04xcHYSWbnBvC
         mOJC0bC9R474YyLIOhJDpXNLxytIY3B4pXNimblvQlFdPLPgYcbqTMOjCzdf2wr0cssY
         8OT+Htvj8PdcKxtmyBJAwQAab282HD4kqDCug+Ka1eB+94mKOHrqcNRLtt20A+arOw/e
         ahjg==
X-Forwarded-Encrypted: i=1; AJvYcCXGhvhD4U6z4YLQS1ZAh+sWmZV5PM5XsPGSU3iWm1lXu5o7u+1agQUYDSLiflDpKS0G2tw580KpDTQ91GpnIA==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywplvx2lR86wLInGOqqg7hkQ8DAv4Z0/cPORZQitgqWCMWRRqo1
	Sfm7jDkodfliZYVPJFHQVNNWMCeJFuU0FUeAc8qotIkRgY3t/HGzQ10hu79KRxQ=
X-Google-Smtp-Source: AGHT+IG10io4/2iPPzCSOTsOgTsFJPkNq+meFNwXwQCTWyJqrNQMbEET7n04sD8jVgWyjUBfqMxSVw==
X-Received: by 2002:a5d:5983:0:b0:378:a935:482 with SMTP id ffacd0b85a97d-37cfba1dc43mr5021696f8f.58.1727950630841;
        Thu, 03 Oct 2024 03:17:10 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d0822b878sm943889f8f.44.2024.10.03.03.17.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 03:17:10 -0700 (PDT)
Date: Thu, 3 Oct 2024 12:17:08 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: linux-pci@vger.kernel.org, vigneshr@ti.com, s-vadapalli@ti.com, 
	lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org, robh@kernel.org, 
	bhelgaas@google.com, jingoohan1@gmail.com, krzk@kernel.org, alim.akhtar@samsung.com, 
	shawn.guo@linaro.org, songxiaowei@hisilicon.com, marek.vasut+renesas@gmail.com, 
	yoshihiro.shimoda.uh@renesas.com, thierry.reding@gmail.com, jonathanh@nvidia.com, 
	thomas.petazzoni@bootlin.com, pali@kernel.org, florian.fainelli@broadcom.com, 
	angelogioacchino.delregno@collabora.com, ryder.lee@mediatek.com, heiko@sntech.de, 
	kevin.xie@starfivetech.com, kishon@kernel.org, dlemoal@kernel.org, shawn.lin@rock-chips.com, 
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] PCI: controller: Switch back to struct
 platform_driver::remove()
Message-ID: <tdxrmmqyzcufupnwkdbg7lwgadizm7v3lxjirykijbml7x54ze@upbdzycdsilm>
References: <20240923065706.728769-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240923065706.728769-1-sergio.paracuellos@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241003_031713_267494_83067222 
X-CRM114-Status: GOOD (  18.31  )
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
Content-Type: multipart/mixed; boundary="===============5722755435970225411=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5722755435970225411==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rjnidy7htz7yht65"
Content-Disposition: inline


--rjnidy7htz7yht65
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

I found this patch in next as 712359cb5e9d9553c1383fc5005593aa1988efc4.

While rebasing my patches with the same purpose I found that this patch
handled the indention differently than I did for two files:

On Mon, Sep 23, 2024 at 08:57:06AM +0200, Sergio Paracuellos wrote:
> diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controlle=
r/pcie-altera.c
> index ef73baefaeb9..b921bbb4de80 100644
> --- a/drivers/pci/controller/pcie-altera.c
> +++ b/drivers/pci/controller/pcie-altera.c
> @@ -817,7 +817,7 @@ static void altera_pcie_remove(struct platform_device=
 *pdev)
> =20
>  static struct platform_driver altera_pcie_driver =3D {
>  	.probe		=3D altera_pcie_probe,
> -	.remove_new	=3D altera_pcie_remove,
> +	.remove	=3D altera_pcie_remove,
>  	.driver =3D {
>  		.name	=3D "altera-pcie",
>  		.of_match_table =3D altera_pcie_of_match,

here indention is inconsistent already before, I replaced the tabs after
".probe" by a single space (and after .remove, too).

> [...]
> diff --git a/drivers/pci/controller/pcie-hisi-error.c b/drivers/pci/contr=
oller/pcie-hisi-error.c
> index ad9d5ffcd9e3..cb5fcfe032d1 100644
> --- a/drivers/pci/controller/pcie-hisi-error.c
> +++ b/drivers/pci/controller/pcie-hisi-error.c
> @@ -317,7 +317,7 @@ static struct platform_driver hisi_pcie_error_handler=
_driver =3D {
>  		.acpi_match_table =3D hisi_pcie_acpi_match,
>  	},
>  	.probe		=3D hisi_pcie_error_handler_probe,
> -	.remove_new	=3D hisi_pcie_error_handler_remove,
> +	.remove	=3D hisi_pcie_error_handler_remove,
>  };
>  module_platform_driver(hisi_pcie_error_handler_driver);
> =20

Here I added another tab after ".remove".

> [...]

Also the patch missed to adapt drivers/pci/controller/pcie-xilinx-nwl.c.

Best regards
Uwe

--rjnidy7htz7yht65
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmb+byEACgkQj4D7WH0S
/k5tYgf+LuoIx6Lg09wpZPStrA8H7eKEFOTQopqan1vq3Ga6jIP3hndsyTFj6OZf
nc+hpdGX44b/IU4C2JQ4NenmkkC42t67jkR3SW8CQN2RRdHsrnvepXnhMKCiLgn0
SJ+/Bl7eILgeXc1xSnLAkJ2M5NHiOP0UoFS8NjHKT8SNjdB9YYxzCzmY8PWpVRhM
ajzuoLPdluQecLTULOfNeSudy6WYTxUhBHBt09h+f8vnsLLM3H+1MU0EuZc9uWpk
nup/NJchVsDCCB12+SLDlgr18pJQcdcKZc42wafxczvyPoapzW2sHRI+7iwONDdr
ysFzK7ew968tXn9ZM/t00VMx6jmnNw==
=OYC2
-----END PGP SIGNATURE-----

--rjnidy7htz7yht65--


--===============5722755435970225411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5722755435970225411==--

