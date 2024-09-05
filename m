Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05E67CD5BC8
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 14:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lyJgl3sYpwME5vGh4pN2q/8nZAP4WgU/eBeLOTFoqMU=; b=Kb6F/XeQ8X6TqV/T8w1wwbudYC
	MAJhB/M7kO17oIf8MHaVo49Vl7y3/5wEyId4vE8hhghojBH9LqEjU6XpdD2gaQ8qbTwa4+glCCMbo
	Ej5i/iVm+pSiY14tsYeSqvs+iXVDQXAZ+3bOIQw9zqDFwqcYDLfWiFGsYwb+8bZXZavHf88LomOyn
	gEFRhzk0aQh+vLnlzRTdf3UYfvEUpW9DMryjEmZaDbFxy/N+T1xRnUIEYHz3IoNSpO9QO1wzkipPV
	jqccJY1MDH0Z3q7x9YV5h3tGKuWIxlaULEV+HPZoBmWH5RfDc0a26CrmA7rhc16hv4TOvAEhZ6Ajn
	V0JK8f6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smDEQ-00000008ej4-2LoZ;
	Thu, 05 Sep 2024 14:13:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smDDR-00000008ea5-0xK9;
	Thu, 05 Sep 2024 14:12:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0602D5C5BA3;
	Thu,  5 Sep 2024 14:12:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8636AC4CEC3;
	Thu,  5 Sep 2024 14:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725545524;
	bh=LiM18QQ8KZAdWmtS108wtpHVsXHV+blPnGP7wyjLLYc=;
	h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
	b=bnZMJDNihQFag3NjCVTfjamz2+EUvxUgZm+SQaw/xpWFUyXpOZEBCHamNfLshtGug
	 /XnxEG/2u4ODiNWmiP3C5yB0TkoT+uINqmybvGTNeP9eXckdiNBp2C9bCl0yh/8IO8
	 5z/Yt8apcKsBP5JyOv5FuoiXoLShM573HjQaV6lBM/yFpVE0lhppXBnr8Nj3yIi2q3
	 lvwNXvGUlF/Q4ZRiZmYH5/HCWXkGzHqSQYOoEDJNgHv4DvL5T9GWBA7At8F6qCOEwr
	 C/ms3hT/ttBHItLRnFbhv1tFxl5i03U3XZahbkOYyVuJppQVSR0W1cLcFy1aGHwgiM
	 S4YJCnnD9LZhw==
Date: Thu, 5 Sep 2024 15:11:59 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Damien FLETY <damien@flety.net>, Olof Johansson <olof@lixom.net>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	"soc@kernel.org" <soc@kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: PATCH: Turing RK1 DTB Fan
Message-ID: <d966c347-6cc3-4cb1-b8d5-33c37f693a21@sirena.org.uk>
References: <bZF0liAaH-7lJuzf_4iIfAWAgwYauu7IpIJMMpY7BT8mZXiKZFZ797Sa9gONDEt2wIFlLd4l10qSfs44ZAiBJ7_c3yvAFci4kuOdeYy7ZQU=@flety.net>
 <CBBY-R4n8r7s8-gRkQLEWfFmBE-2ncks_UUQnnajujY-KYz4Xug2rwDI_pOZYLBi2d3qy-gP9c4l0i61ptlm39t_wscyvJPVV5CTlsdm-as=@flety.net>
 <52a52558-2f7a-41ca-a0ee-98ef4eca3e6e@app.fastmail.com>
MIME-Version: 1.0
In-Reply-To: <52a52558-2f7a-41ca-a0ee-98ef4eca3e6e@app.fastmail.com>
X-Cookie: The horror... the horror!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_071205_344407_EF708F54 
X-CRM114-Status: GOOD (  10.16  )
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
Content-Type: multipart/mixed; boundary="===============0349168972854175954=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0349168972854175954==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4yUVLDQtxfzSSGWT"
Content-Disposition: inline


--4yUVLDQtxfzSSGWT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 05, 2024 at 01:23:34PM +0000, Arnd Bergmann wrote:

> - Use 'git send-email' to send the patch in a form that can
>   be applied from the mailing list.

There's another tool 'b4' which does this too, plus wrapping some other
technical bits of the upstreaming process:

   https://b4.docs.kernel.org/en/latest/

--4yUVLDQtxfzSSGWT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmbZvC8ACgkQJNaLcl1U
h9C1Lgf8CXzL/OxY4rM8auy+qZrwePpfNccMQKLqt6qZj5W0NPkggd/r6Mrr9J4Q
rKIKF7FAjD3TtQfVl3UyAqU19msTcG+9TSZBjQFr7OXT4hcvxdpzlMA97vcRyoh+
fogu+4rT4KcnBiURQHqtKTUWwVqQRBJZGaveNL1MqEMt6eVzkwFHN5bhr23EPOk5
s3+bbSQELNWV8NrFGR8f2nXLriv3VWqk3YnWuNhEZj0UosVgAkQslgvgVwVHyzHT
+dWgfT1aMC/DihaTHc21PYkZtqp6+v+qQDzafEnIrcUKziJ2C/irFa9CuHlxIIY9
c6j+TksJ4fqLmbgFxiqQBHr1KZtPcQ==
=Bity
-----END PGP SIGNATURE-----

--4yUVLDQtxfzSSGWT--


--===============0349168972854175954==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0349168972854175954==--

