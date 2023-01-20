Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2283C05027
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jan 2023 09:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dOJV/TjMat5Qpi3/4VAHGIvwup65DPO7QKzXWrHt4bQ=; b=Ejb/P2FxW5viOZbRbywR/P45wa
	lJjOneaPcIhCP7OkkP10qtsxewSTbA3b8FCVx2oS3h44uyZNV/bgtduAOBnRk7rblhE8oBwTYQUu+
	f7EVGQRY26CpVazpT0AD7dhORd+ZEErIdNoRLiYSOv54x9TAyxvdrMOQBKCXEndfcnGjlgkAf8n0I
	uWGeJLMJMJka+q0WN4IGG4pGIFJU4pnF31QtMDv3fIWlwOwZY0jg1YeByqOUqObGIEEnOrb4xivFm
	o1vrWDquW4E8jkXsK1AwUeMF77WPcDl1SwVxzLCErNQ5+ihLe/9qeK8gSszc/wSVVCgSWOZJVd5xn
	qWEGoXnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pInfd-009M8q-SK; Fri, 20 Jan 2023 09:26:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pInZx-009Jeh-85; Fri, 20 Jan 2023 09:21:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B3CE161EC1;
	Fri, 20 Jan 2023 09:20:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C435FC433D2;
	Fri, 20 Jan 2023 09:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674206456;
	bh=8YtcQpd8nHqXd+973881i712KyZxniPOL90+PIO7yEs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cPslklE8R0UMrCR8HRxvxN9YgbL0IeGdmwGT45RX0wKN8WWZhzMTFbR8a7hUpTXxm
	 ggwDk8Ax1tCZ5EdbCfLY5TO8s3Gmk/ltiP8tyB8B9fVu7nqm6X1kX5MKAGvycKo1V1
	 +e1jDMfXNV6ElS7jkIez1GYWWzZb6ZKeJGP5/qJjNmJ9q9P4hGrrrkh/jhu5W/GnE6
	 mWgqnUKPeKOjFcRnz0RadIGpswmxZg32Fs8Qfpq7WJG+UQAhE13JNsZHx8XXfFSS1T
	 CeGlugFV4gbPmrwogXRfVguayEYXgg/bR5L9tMtlf+OOEouGWPevzflSwFZ8EHZUi/
	 pE4IOtLF0xHuA==
Date: Fri, 20 Jan 2023 10:20:53 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org
Subject: Re: [PATCH] i2c: rk3x: fix a bunch of kernel-doc warnings
Message-ID: <Y8pc9bhrqmpUn3v6@ninjato>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org
References: <20230113063805.14457-1-rdunlap@infradead.org>
MIME-Version: 1.0
In-Reply-To: <20230113063805.14457-1-rdunlap@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230120_012058_633498_2B776405 
X-CRM114-Status: GOOD (  12.78  )
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
Content-Type: multipart/mixed; boundary="===============1260267916205334644=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1260267916205334644==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1mLmRMcLlcLNbu+v"
Content-Disposition: inline


--1mLmRMcLlcLNbu+v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 12, 2023 at 10:38:05PM -0800, Randy Dunlap wrote:
> Fix multiple W=3D1 kernel-doc warnings in i2c-rk3x.c:
>=20
> drivers/i2c/busses/i2c-rk3x.c:83: warning: missing initial short descript=
ion on line:
>  * struct i2c_spec_values:
> drivers/i2c/busses/i2c-rk3x.c:139: warning: missing initial short descrip=
tion on line:
>  * struct rk3x_i2c_calced_timings:
> drivers/i2c/busses/i2c-rk3x.c:162: warning: missing initial short descrip=
tion on line:
>  * struct rk3x_i2c_soc_data:
> drivers/i2c/busses/i2c-rk3x.c:242: warning: This comment starts with '/**=
', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc=
=2Erst
>  * Generate a START condition, which triggers a REG_INT_START interrupt.
> drivers/i2c/busses/i2c-rk3x.c:261: warning: This comment starts with '/**=
', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc=
=2Erst
>  * Generate a STOP condition, which triggers a REG_INT_STOP interrupt.
> drivers/i2c/busses/i2c-rk3x.c:304: warning: expecting prototype for Setup=
 a read according to i2c(). Prototype was for rk3x_i2c_prepare_read() inste=
ad
> drivers/i2c/busses/i2c-rk3x.c:335: warning: expecting prototype for Fill =
the transmit buffer with data from i2c(). Prototype was for rk3x_i2c_fill_t=
ransmit_buf() instead
> drivers/i2c/busses/i2c-rk3x.c:535: warning: This comment starts with '/**=
', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc=
=2Erst
>  * Get timing values of I2C specification
> drivers/i2c/busses/i2c-rk3x.c:552: warning: This comment starts with '/**=
', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc=
=2Erst
>  * Calculate divider values for desired SCL frequency
> drivers/i2c/busses/i2c-rk3x.c:713: warning: This comment starts with '/**=
', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc=
=2Erst
>  * Calculate timing values for desired SCL frequency
> drivers/i2c/busses/i2c-rk3x.c:963: warning: This comment starts with '/**=
', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc=
=2Erst
>  * Setup I2C registers for an I2C operation specified by msgs, num.
>=20
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: Wolfram Sang <wsa@kernel.org>
> Cc: linux-i2c@vger.kernel.org

Applied to for-current, thanks!


--1mLmRMcLlcLNbu+v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmPKXPUACgkQFA3kzBSg
KbZZlg//UOAed1QTL3dLoSCkkvMRc1WMvTIzeC1OkEhJ0MZCp0/dt0f0pm1N5HFE
gRutbiIsWvT/9Tgl/QHE5GZFTtjayRO6QMGBkbZDh2EYTTNV/+zN5BfzgcVd4cZj
PY68lXO6pTp/2KEN7BqvHgTAnxffZwkT9/di8q8K9kTvRa7DHkTns5WYKNbLJY3H
c0cJL5uuGbJIKRFvDE6sBP+B1FvxJe9UTNlQYNuGMd92NanFFI+73+RwQl4jCWlk
CSuEbO7m5mmIjSaWkjBL2D4WCa/5d3YcIHCT41qfQ6hnaiqFn6+zC8AQRQM8TX/S
TNftvL054IGuCoMkUiGZdyaO0CwpEWwclp1r9pC38896I4W0MSlivAhFOvlCVszJ
cts3x85CH11XhicO3sT76nGsIv2nIMHbEINQmZ7aMWzrfcBYlJ/mLKR9nbKbDPC1
sZOxYq5xE4+g8ogFJpSAb97eT82LyIQpalRhL2NKFIr4LbuNPgrN/cfNp1nV6egh
WT6WwglfD5HdDKu9bH0gDVFEkRPDWUxyR+0UTeg+SfGO6ITV1C0QyODdRYV7si4U
7FAqVqB1TR7xv3xvs7YVvvYNysE2Bj0mCPm1yTu/vyDrLmGO8XfTGrAYvIJ1YT4Y
OXhvYoxfbjSxY8SrYFDX6JU9iux5Bx6y+OjMO1Jedgm8foD6qkU=
=EIvS
-----END PGP SIGNATURE-----

--1mLmRMcLlcLNbu+v--


--===============1260267916205334644==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1260267916205334644==--

