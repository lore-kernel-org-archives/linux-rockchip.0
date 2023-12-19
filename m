Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9AF1C41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 15:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P84E4rvWQTiYDPiVhQqeyWvFgPpIoE2iuyc/PLXFpjY=; b=EGMaQcRFyJ4jx38SHJghoPGh3V
	Khgv3EuV9l6fIqf+iusSFQpmWbCyTbng1nyiC0bkQCw3JzWkKqnropsHci/7ofFFbSGG3Lv89JE9X
	1tnJUo/2UkOaPBEbYRuDT+/pSIdJQgzJq+hGSo0cYQq7lv4hDwAnHY8UxWXOE0UqQl90bF6WMPSud
	UavOvQuFKJY2m1NVip6gKwF3RohvOrcOb3BQIMiz72cfEvsrxbBlu+XhcWRX8+lCJcWktT/EQ4pN/
	jStne5miTEeJwksShGYwadKcTj1yqt+KbGI0sLxdguiQ2xXXS7DiEsw0laOPDTbK9rFNUtw6g/EHd
	L39InmQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFbxv-00EXpg-17;
	Tue, 19 Dec 2023 15:25:03 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFbxs-00EXoq-1q;
	Tue, 19 Dec 2023 15:25:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1C58FCE0D01;
	Tue, 19 Dec 2023 15:24:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E2E5C433C8;
	Tue, 19 Dec 2023 15:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702999497;
	bh=Z5r2iggyiWlPUAZbWAbSjId+ThoZdOn1YxqIEOkmg14=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=buhQIoJLeN5iHjaWohjmRrk5VWSZn6oA5JdwE633t2ZsQQzHMnDODzR8dPHY6nJ/G
	 DFhEnNXKtocvSZVUCjyIoAq0by/qlC0oZzasjUvF2s1d1pUj+1SfXaRr3ZG3A+UtIN
	 ZNmZqPw+9mz3ej65InMoq8E4hBPk9PaNcj43YVJac0e3WGbLTCeooBW1Cr16ip91lT
	 AfgNXB/gKnnY3iPAx1exxOuTJHsT09D+l/LU8ZxWT4jIy/ixOEtWD4x+9ZQO6UGshB
	 iKfjHWl8qGtoda1kXtVu19iAo0CgDkdSZPbOrKT0kja7UOHzsPq30wWccubUf12gsc
	 jN+i5oI61hoYg==
Date: Tue, 19 Dec 2023 15:24:51 +0000
From: Mark Brown <broonie@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: wsa@kernel.org, linux-kernel@vger.kernel.org,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org,
	linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] i2c: make i2c_bus_type const
Message-ID: <2512ee2f-05ce-4496-9ac3-f3b3a2e4a6b6@sirena.org.uk>
References: <2023121942-jumble-unethical-3163@gregkh>
MIME-Version: 1.0
In-Reply-To: <2023121942-jumble-unethical-3163@gregkh>
X-Cookie: System restarting, wait...
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_072500_844560_0D95FEAD 
X-CRM114-Status: GOOD (  10.73  )
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
Content-Type: multipart/mixed; boundary="===============4525559920309131503=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4525559920309131503==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="afW+xaqZsOSbFAHv"
Content-Disposition: inline


--afW+xaqZsOSbFAHv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 19, 2023 at 04:22:43PM +0100, Greg Kroah-Hartman wrote:
> Now that the driver core can properly handle constant struct bus_type,
> move the i2c_bus_type variable to be a constant structure as well, placing
> it into read-only memory which can not be modified at runtime.

Acked-by: Mark Brown <broonie@kernel.org>

--afW+xaqZsOSbFAHv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmWBtcIACgkQJNaLcl1U
h9AWBgf9GIWnQ9OsLWyHoQ5nwfN1rt2XudsksR4RCKj8rPvwWV4xiTJr8Iwyp5Bx
uHkUb0QULlGDAZmPQwWIeuEq3QlFMuc1K7ohvPcPhOdJ8ecvhmNdh9lha/whvlK3
S4XnAlWBg4Jq4g3P6y/C3y7nnIzIbY0K/9uN8HfuGqu9fwo5gXkof3puksGa5ghB
s3t2PrpYTByhEbroKX7SqMDhtAqLwl2yGbOICXka4zQh3ynthlZ3ycPywXf7/Hvx
BPva1UzeezeEiDGSKhMvPbMxWh5vVMeoEkQEYmDZRAoAEd522vwZmob8Yawn9Bn1
Ex2gRrHzcFRCr3D6s8U8hBe32grcLw==
=PG7I
-----END PGP SIGNATURE-----

--afW+xaqZsOSbFAHv--


--===============4525559920309131503==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4525559920309131503==--

