Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9460B606A32D
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2026 02:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Dc3QV5+i;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=ifU31Qgi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=IUz88T7y1buznZxmDgEXxOoFLJHpD07OJcFApzhtc4Q=; b=Dc3QV5+ikU6tcuCbfRq8RKR3Po
	lD1Gk83nP8W5MqdfGO0nFRbQyQHEH/itRBqKD2zrnWs8mxAHaIZrN67BwNiq+SEcceS5NrqwAPDSH
	anfIMyIXjOTRj7Oh005REPB/QbyvhcyKiSJyzwd0NL9sWDVz7cTad3SepSSWBKl7PeXSjsyD206++
	V0nm7wLAQ5A4kUeeknPeTYd0CPRx142gGyjT8b81oVONX+nhRECZKLYhuvn5jjISw0MyBeL8W4lpg
	dCmw4iZHolA5FK/mcVeKhzY56zinWb2Mb4X4BkkFDHGU2WtFJNQem/UkYOb46QDpJYVm7MqBLB3xY
	1M3xt3uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPWHr-0000000E5Db-1edL;
	Sat, 07 Nov 2026 02:36:11 +0000
Received: from sender5-op-o11.zoho.com ([165.173.182.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPWHi-0000000E5CX-2UQQ
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Nov 2026 02:36:04 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1794018955; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=MtPclBf6Oq00X7GJgLcyoqNjzMkXF+RPs8dNEViqwb3kWHkglMRvBofPGGVnH553GGDEry8yUQVJaPOy8Lr3gt2N10s5HENi0Bor1/yjz2gmNZKYAMzXCBoAUDhkotuPockGqdVgny2y4rQBZVjP+o5J6kJUKRmwZn3uo7NCI6k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1794018955; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=v712UGBT916bmhBnvp8NE4rFlnCTJxp0AJI2r2bH/p0=; 
	b=AitNI4VBDs1jIkOAA+E/qaRLrI0+tdNbgiL8bPP22bdOmprcCLxfG/HbDTmRKhDQNExEh4lvr1MVgDXa1JRf1meBADEiKC90xtq6fm7BUik3oPViA8MSZlHAmx4/NpUu3ZVE1VVUvnDN8DuGsoEtOyNObpKE7i+3tfBtG/ZNBhI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: a=rsa-sha256; b=ifU31Qgix9ED1k9JqJjLhZtis7WD3n5gK5HApCN24ahGx/mA4YNN6WDAjw521c8HHdiWP5oOrjtrbdm+Uu22KBG//5Q/34Ys6d81jrEtr8qhXdRA8lkZVUObNDKxFkLy5KcFI4mKkYyi3C963KqDFSQDP9riezWXCmDadbpPObs=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=v712UGBT916bmhBnvp8NE4rFlnCTJxp0AJI2r2bH/p0=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1794018954405705.4847357899479;
	Fri, 6 Nov 2026 18:35:54 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id A49FF180312; Sat, 07 Nov 2026 03:35:51 +0100 (CET)
Date: Sat, 7 Nov 2026 03:35:51 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Mark Brown <broonie@kernel.org>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>, 
	linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] spi: rockchip: Fix runtime PM underflow on CS error paths
Message-ID: <au6LMNctO1fx_Kcl@venus>
References: <20260806191854.922530-1-eagle.alexander923@gmail.com>
 <179397711825.3231166.14531785924256368148.b4-review@b4>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <179397711825.3231166.14531785924256368148.b4-review@b4>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.13.1.5.4/293.995.13
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_183602_934338_9AB925F9 
X-CRM114-Status: GOOD (  23.59  )
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
Content-Type: multipart/mixed; boundary="===============0006025272035256842=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============0006025272035256842==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="loz7exf7kqwri6c5"
Content-Disposition: inline


--loz7exf7kqwri6c5
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] spi: rockchip: Fix runtime PM underflow on CS error paths
MIME-Version: 1.0

Hi,

On Fri, Nov 06, 2026 at 02:58:38PM +0000, Mark Brown wrote:
> > The Rockchip SPI driver manages runtime PM reference counting around
> > chip select (CS) assertion: pm_runtime_get_sync() is called when CS is
> > asserted, and pm_runtime_put() when deasserted. This balanced pair is
> > expected.
>=20
> > @@ -256,6 +257,7 @@ static void rockchip_spi_set_cs(struct spi_device *=
spi, bool enable)
> >  	if (cs_asserted) {
> >  		/* Keep things powered as long as CS is asserted */
> >  		pm_runtime_get_sync(rs->dev);
> > +		rs->cs_claimed =3D true;
>=20
> This sort of boolean tracking of reference counts is extremely error
> prone, and note that there are two chip selects on the device.  This
> should probably at least be per chip select.

I ran into the same symptom while working on RK3588 system suspend
and came up with a way different root cause.

I haven't found the time to investigate more closely, check for a
proper Fixes references e.t.c., hence it has not yet been send. So
take this with a grain of salt, but it seems to be not Rockchip
specific:

-----

=46rom: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Sat, 5 Sep 2026 00:26:40 +0200
Subject: [PATCH] spi: Fix runtime PM imbalance on pump transfer message err=
or
Cc: kernel@collabora.com

The current SPI message pumping code may drop the runtime PM twice when
an SPI message cannot be send:

spi_master spi2: noqueue transfer failed
rockchip-spi feb20000.spi: Runtime PM usage count underflow!

Fix the problem by always keeping the runtime PM count increased when
exiting __spi_pump_transfer_message(), as the caller handles decreasing
it.

Note, that the function already keeps the RPM usage counter increased
for the error paths following after the prepare_transfer_hardware step.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/spi/spi.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 40cda0037ea5..9cd1cabfa0b3 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1951,7 +1951,6 @@ static int __spi_pump_transfer_message(struct spi_con=
troller *ctlr,
 	if (!was_busy && ctlr->auto_runtime_pm) {
 		ret =3D pm_runtime_get_sync(ctlr->dev.parent);
 		if (ret < 0) {
-			pm_runtime_put_noidle(ctlr->dev.parent);
 			dev_err(&ctlr->dev, "Failed to power device: %d\n",
 				ret);
=20
@@ -1972,9 +1971,6 @@ static int __spi_pump_transfer_message(struct spi_con=
troller *ctlr,
 				"failed to prepare transfer hardware: %d\n",
 				ret);
=20
-			if (ctlr->auto_runtime_pm)
-				pm_runtime_put(ctlr->dev.parent);
-
 			msg->status =3D ret;
 			spi_finalize_current_message(ctlr);
=20
--=20
2.53.0


--loz7exf7kqwri6c5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmrujoMACgkQ2O7X88g7
+poXuw//e/AAKsrPGLc0TGTC0FEDRJWx2suSUGQbQhMTSKVm4mDU0ed3DHZU8lf4
btu+nzbxqdX4I5Je2w3lbeLk5jJKj0zduPNG0qVKq4R8N9Z0qETKYxBPZjvHQBa6
88Vbds8T25hRjOD3Icv3xjMhytvsAfhzkdRQeruzkUdCeiAxACPzeW2s38EPfklY
BHW2UoufPdO/j2o93TQ+AMUMXS++7vcziulWt74nw64p3mbtv302rJG0lPKge2Xm
SIvjZ03zYcUiLVALNOj3VvxRCbln7P0+WccawSdfS7mqZioKQ2eaHB6SGxz81gKb
oTvgY2NufpbvYt/Q7AB5TFzhR1e6/rgtGesFSv8k+J03r59aZqzc0qU4A8xjP9mb
VHUkDTroHdJSj0bdlOwezfNxJ568wDzEvUdOyIlrW3xcMSki3ODjEzZR7f8qAavD
rahgjmg8JFnRyMi8xEERXQxHIFmbF0V7z0RtXpGMZpSvaDdBmkmIZqxcmNh8Ki8i
ZDnQeoGJzoKh0PmMqrJdiHoLdSlVI4zUe9QDA4vEfapwXNHqXaoX/GXV40+GKNSQ
hayP/UwHBRCrTJF4Af/R0VtGIDF/uSX3Ws/0j26TQj0hiUTXO757xLrzjZMiYtBq
1aNpoFrnn/vHK4ETd9/3UP0rVZwfsuopY6scyn4LJnvIZDy9Y3Q=
=Lhsf
-----END PGP SIGNATURE-----

--loz7exf7kqwri6c5--


--===============0006025272035256842==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0006025272035256842==--

