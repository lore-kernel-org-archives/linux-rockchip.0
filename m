Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDFEB606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 01:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4p6Dc3ms;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=GedTyRb0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=68YRn4fh5hr9YKi8FFjn67wjpY+zIdpynS/Z+pi4MXY=; b=4p6Dc3msiF1gN7ztE+h5l3oAt5
	OdGA0wXusn9Pmf19KhEqEWSEBLKGs3bIuKqB978tm29EeiVhOHqTpPsTCzvmJiduIPUjEpMHY9I8p
	QwdyZOmeG8uCBQFJeOGjVMN3FrZ/+DSLcaUvUIGBlVhwus11fa8SFRWkDlkn4j5ozPN3SAWndA5yB
	qu343ObIFkTBfd03fuI9MevTrtgF62666wWTHvFGQsifIvV/o95EAySpdq0fyWptM2CKqb4AVZBSP
	zoFVKkwJxsNOF3x+7VWBT6T1COJE3+jD0X8hVrbPfq93lqC6MejcvEcnaYu1neApvfTIobxiAPNs3
	fjgmgHxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTUrr-00000007Um6-28un;
	Wed, 18 Nov 2026 01:53:47 +0000
Received: from sender5-op-o11.zoho.com ([165.173.182.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTUro-00000007UlM-35UP;
	Wed, 18 Nov 2026 01:53:45 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1794966818; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=SMP+etA0Km86ZmZzSdQz7vwF6RkI0N+EFo1Hqr96jinrWKBE+YC9TxYwI9xdNKKEgnSRpJyqggnfPms/xLj/XkvKBt3cHy7S6XwKZ21e4YFgsxQ+yu4k4AyxRybMNut1S/T/V+kjOuAwFoUmkIi4X6FNDB0AQUVlWFXjMR4kgO0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1794966818; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=nQKDTwDBF1/ggwMSLdB5vYCc2ZxBOitSyxm8OOIMw/4=; 
	b=RbM5kyTWcHZbWshzpYxjOeMa8TybvYKlbFca3MwYZK6mJ9BlAp3Txk/zsaoyzlrJuTY7ZbDGGFCqX17bn2BDlg1nZsD/jZtZkDtFNnwjJN7uUU1TPk7lh0zCL3TdjeZb7hrMIgl4Fns/4Dtq10/XPLFRH+PWFhBK2wqlxm82I+4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: a=rsa-sha256; b=GedTyRb0MSUBj2wl2F/MatucdK90d24aNgeK5jnxVF7e/RobDbOiref3RtAZkvTJ6gbXnATRgk2ruYHqkoxUopB++CWV2ipt80WHouhyWzx2lZaZfSZyHdpOv9Cb5JlZE4ThtA7Hv58OoFY2u+o8eYRkSqYnOWRHGC95OrhDTj8=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=nQKDTwDBF1/ggwMSLdB5vYCc2ZxBOitSyxm8OOIMw/4=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1794966815662459.097755113708;
	Tue, 17 Nov 2026 17:53:35 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 691EC1805DB; Wed, 18 Nov 2026 02:53:32 +0100 (CET)
Date: Wed, 18 Nov 2026 02:53:32 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: broonie@kernel.org, linux-spi@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, quentin.schulz@cherry.de, 
	Lee Jones <lee@kernel.org>, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v3 6/7] spi: rockchip: Move to pm_runtime_resume_and_get
Message-ID: <av0CaMF_jOyqMYA0@venus>
References: <20261117235021.2013719-1-heiko@sntech.de>
 <20261117235021.2013719-7-heiko@sntech.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20261117235021.2013719-7-heiko@sntech.de>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.13.1.5.4/294.949.34
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_175344_864560_DED3B35B 
X-CRM114-Status: GOOD (  22.61  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8064872778072598450=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============8064872778072598450==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mxp2qjembnrdivaf"
Content-Disposition: inline


--mxp2qjembnrdivaf
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 6/7] spi: rockchip: Move to pm_runtime_resume_and_get
MIME-Version: 1.0

Hi,

On Wed, Nov 18, 2026 at 12:50:20AM +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
>=20
> Currently pm_runtime_get_sync() is used, which increments the usage
> count even if the resume was not successful.
>=20
> Move to the more modern pm_runtime_resume_and_get() which handles the
> usage counter better.
>=20
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---

This only makes sense when combined with error handling. Keeping
the use count increased makes more sense for the current code:

pm_runtime_get_sync(); // keep use count increased on failure
random_code();
pm_runtime_put(); // always decrease the RPM use count

Meanwhile your new code would result in double decrease on error:

pm_runtime_resume_and_get(); // only increase use count on success
random_code();
pm_runtime_put(); // always decrease RPM use count

Realistically random_code() will SError anyways without runtime PM,
so it *should* actually be pm_runtime_resume_and_get + error handling:

ret =3D pm_runtime_resume_and_get();
if (ret)
    return ret;
random_code();
pm_runtime_put();

For this pattern pm_runtime_resume_and_get() is better than
pm_runtime_get_sync().

Greetings,

-- Sebastian

>  drivers/spi/spi-rockchip.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index 8bb55d52d346..ce1629e5a513 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -255,7 +255,7 @@ static void rockchip_spi_set_cs(struct spi_device *sp=
i, bool enable)
> =20
>  	if (cs_asserted) {
>  		/* Keep things powered as long as CS is asserted */
> -		pm_runtime_get_sync(rs->dev);
> +		pm_runtime_resume_and_get(rs->dev);
> =20
>  		if (spi_get_csgpiod(spi, 0))
>  			ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER, 1);
> @@ -734,7 +734,7 @@ static int rockchip_spi_setup(struct spi_device *spi)
>  		return -EINVAL;
>  	}
> =20
> -	pm_runtime_get_sync(rs->dev);
> +	pm_runtime_resume_and_get(rs->dev);
> =20
>  	cr0 =3D readl_relaxed(rs->regs + ROCKCHIP_SPI_CTRLR0);
> =20
> @@ -924,7 +924,7 @@ static void rockchip_spi_remove(struct platform_devic=
e *pdev)
>  {
>  	struct spi_controller *ctlr =3D platform_get_drvdata(pdev);
> =20
> -	pm_runtime_get_sync(&pdev->dev);
> +	pm_runtime_resume_and_get(&pdev->dev);
> =20
>  	spi_unregister_controller(ctlr);
> =20
> --=20
> 2.53.0
>=20

--mxp2qjembnrdivaf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmr9BRkACgkQ2O7X88g7
+pofmQ/6A20dmueybUWTFdl0o+NBnIXaATuHRlPP3e09YZRc7fxiP+8xf1zDz6pu
hZlrABEximLecP0t6Xb0v9JAz9GwafkCACqZgecmsnG68SLTBq+AF0GsPDbryFT5
H0P1tR8DVGaj1c+B309/2R0cn8qzxCc/zPHN7VO3yCI8ro+jgdJbXfdY4yAabqv5
mvVFISo3ornXBtMdQQvRo3cQSdLG/zwUi8apSbU4elGS4Y5EuFyZrvfEN537/MII
r5atMh5a1wIfswrMLwCqCNW229siyPLLlz6bG1WpMMD6PRtYnW/XjSMp0QvlZ82J
M0p/ykLDcX4BIv/EU1xOdIbqXO+23PRLX2yGqiwW5IzI+J3294VL98YnKfHuKFDd
glVT71V+NhTTz5+4bsILZVTnJRP+nzzBtZRnjTyVL3TkNFwufovCdGMukrhfO0UU
BeaTewGu1z3af/ldaKzX22UsmKBNqr+/8euDz+qvk//vst0jcKTkMWIdOUKYtFHZ
jh9JRSf+wwWVzxkDUulOhyn8RiArFKLuEXq0qZTSUNpCBvJJRojFd/xrvzIETWy0
S/wYHd44jG+t1Yu9g9m8d78YM9rAyEyrLOnrEE9NiqURWWrePI/pQZRCEf11e4Zb
1vtJFoxKnnARp6KjyuJW7CGuJa2Amtf7EVpTiWB7Rgqf1OgR0wc=
=2x6H
-----END PGP SIGNATURE-----

--mxp2qjembnrdivaf--


--===============8064872778072598450==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8064872778072598450==--

