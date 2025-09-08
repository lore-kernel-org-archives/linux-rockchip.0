Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55896CAC587
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 06:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JNnFZ+la02foXUDvs0CrcD+oZortryWvNJzDYRzHreE=; b=iECuxTIfqeHQCCDLNnWw4pAI9n
	XXZjxnSlyNklcSmX5svlot4jp3jQzcA/SCcWSSZOOuED+sqaX3g8lgb1vwKA9BLKxkUs59iRc8oUb
	efwPf+uA8VB9Gb92e8CVsQ/Q01EbII96JarsU5xfTWgzUZSb75NASLn0PSolSIjcU2DjKMuf/J3eX
	miyHVhrOe6OpWtGmxi5IktvtUIqYkoN1XZd/rtG2scS5QEYGiqPT0dbqRrsKHWyPMFfduVFEEJ8kZ
	iMT3P+tFGjBBPta3LPnczHH1h4gtW9UvDFa9KFBWikwTWtf3Yrm3kNb/lo2CJLFAHT0uB1tFAIGe1
	SHM0OIAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvsBl-00000004p8d-0Cvh;
	Tue, 09 Sep 2025 06:50:49 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uviAi-000000025lE-1LBy
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Sep 2025 20:09:05 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1757362128; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=E1mI5O+BDwsYYpSLAByTqShmsSFPlSYjA0QQG11arz0JIb3l0hXMKZswHsKy6q6pZ0xJqFQs9ZiKcFFaZvUulJqUav1h5cnAXEhRucURC+3xI7XurBiTddAVdJ14lzIUuvQW/8yjGHVr2iJrwbaUHIy6iOiowe6sZzgOOytlhHc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1757362128; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ZVHLGUJZLSkdI8nNXcaoalwzWkaiHSFvSSx0MmfhHLY=; 
	b=Ri6vHzbBorDOsfQYgge4VSpSZQaD0JucXQjQnv5bzhkwCuW3WQdaBhJjVWEUpETh3cy0+xpYhSaFNwKg4lVtlHm8zXSUPrrQGTRialWdBOQuRQV5/lruGlwQWXOut0pLTnehEZ0uREXKpnWYuGV0Zo2D9kTjNJt8s6rX7c9YhkI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1757362128;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=ZVHLGUJZLSkdI8nNXcaoalwzWkaiHSFvSSx0MmfhHLY=;
	b=bzhLdmNeSoKiUCCs+h3HRUTeksAj05YUsr2VX04toyCYMTy/TbaoVB+S5OklYhvS
	QGKRfqt8MuXyrFuhLiICxnLP56psSav6qle5AARsAZ8jZwdFNfPzAwsSKX8rKK2imua
	Ixcw1adB75NrB4EP8gE1xT8u3ikXDLeSJhCy5RCM=
Received: by mx.zohomail.com with SMTPS id 17573621245361.8411634081112425;
	Mon, 8 Sep 2025 13:08:44 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 2E84F180B26; Mon, 08 Sep 2025 22:08:41 +0200 (CEST)
Date: Mon, 8 Sep 2025 22:08:41 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH] pmdomian: core: don't unset stay_on during sync_state
Message-ID: <dr5qspjhwxaxutiilgx4rvfbrho4bijoll6lciv2bc7c7e7r7m@pgmxztqje5ux>
References: <20250902-rk3576-lockup-regression-v1-1-c4a0c9daeb00@collabora.com>
 <3556261.BddDVKsqQX@workhorse>
 <CAPDyKFpSY+FeKh7ocjQ_nGNZA5+3tWAL8e7ZNKXKNFP-yoiu_g@mail.gmail.com>
 <1953725.CQOukoFCf9@workhorse>
 <CAPDyKFofhy5wiNsHUgdtzFwGtO3QPqhVuu1KsPLBWHF08JzqyA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPDyKFofhy5wiNsHUgdtzFwGtO3QPqhVuu1KsPLBWHF08JzqyA@mail.gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.4.3/257.348.87
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_130904_429301_3B1B79C3 
X-CRM114-Status: GOOD (  35.39  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com
Content-Type: multipart/mixed; boundary="===============6311642117189192699=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6311642117189192699==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pjwce7oem4hc2zyx"
Content-Disposition: inline


--pjwce7oem4hc2zyx
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] pmdomian: core: don't unset stay_on during sync_state
MIME-Version: 1.0

Hi,

On Mon, Sep 08, 2025 at 03:40:24PM +0200, Ulf Hansson wrote:
> On Mon, 8 Sept 2025 at 15:14, Nicolas Frattaroli wrote:
> > On Friday, 5 September 2025 16:27:27 CEST Ulf Hansson wrote:
> > > I would suggest implementing an auxiliary driver, along with the
> > > rockchip_pm_domain_driver. The main job for the auxiliary driver would
> > > be to get the regulator in its ->probe() - and if it fails because the
> > > regulator isn't available yet, it should keep trying by returning
> > > -EPROBE_DEFER. See more about the auxiliary bus/device/driver in
> > > include/linux/auxiliary_bus.h and module_auxiliary_driver().
> > >
> > > Moreover, when the rockchip_pm_domain_driver probes, it becomes
> > > responsible for pre-parsing the OF nodes for the domain-supply DT
> > > property, for each of the specified power-domains. If it finds a
> > > domain-supply, it should register an auxiliary device that corresponds
> > > to that particular power-domain. This can be done by using
> > > platform-data that is shared with the auxiliary device/driver. See
> > > devm_auxiliary_device_create().
> > >
> > > Furthermore we would need some kind of synchronization mechanism
> > > between the rockchip_pm_domain_driver and the auxiliary driver, to
> > > manage the regulator get/enable/disable. I think that should be rather
> > > easy to work out.
> > >
> > > Do you think this can work?
> >
> > This sounds similar to something Heiko suggested to me, and I agree
> > it could work. It does seem like a pretty painful solution though,
> > in terms of needed additional code and complexity to basically just
> > tell Linux "hey you can't get this regulator yet but please try
> > again later without our involvement".
>=20
> Well, I would give this a go and see what you end up with. The nice
> thing with this approach, I think, is that we get a driver and can use
> the -EPROBE_DEFER mechanism.
>=20
> Another option would be to explore using fw_devlink/device_links, to
> somehow get a notification as soon as the regulator gets registered.

I think the main pain issue with this is fw_devlink actually. The
power domain consumers are all referencing the main DT node. So once
it has been marked as initialized (of_genpd_add_provider_onecell()
calls fwnode_dev_initialized() at some point), fw_devlink allows the
consumers to be probed. As the DT node must be usable for processing
after the normal pmdomains are registered, this means the consumers
for pmdomains with "domain-supply" will potentially be probed too
early resulting in some extra -EPROBE_DEFER. OTOH that should be the
status quo, so probably it does not matter.

> I think those kinds of dependencies are better solved by using
> fw_devlink/device_links.

I think the regulator dependency tracking would happen automatically
when the auxillary sub-device uses the power-domain sub-node as its
device fwnode.

Greetings,

-- Sebastian

--pjwce7oem4hc2zyx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmi/N8UACgkQ2O7X88g7
+ppCahAAqkRqtVsC2durQTJGemBzq0yjG7dqCWIVfUIy4528VeNzKUM68rhTEM3Q
DDCirmiWqQAa0loyj8c1BClUDHE1GYlLPZlFhJYT5X3riH0O9tvS9vqk89BlCqUw
vV3iXxgnaB3Lf5otlZzGW7cIdh5NfOEDtl4uAB+oTdDhPtGSOIqVTyK2lez/qgyi
J0ECOTVmc0XbvI6/nWgyj6WMVqpq8rJxsd/TBS2PmAfW0V4dFhr9BTOoeYOZowNB
PPm4y0UOzS6YaprDF2F9jpPqY9yb/cSQJwZpteZaeNGdqlBucS22AvnmBTGQpmH3
gCDj+ThQfm3kvTASarp/i4kv7KXBZFsecdbw8MnFu8rzryVC9SKRPIaKzKVqNdgk
/ddMfYkWdoGp31DXc9EowBSNXBipYYpz7R/OInML/c1Q6/OAFeeys2qUy1iI/3zz
IjOpu795St7XHwIYyLMNAzjP0AckJRm55+lUnxS7CpOTJGPYDELz55dM6YT9e+0Q
xX8jmJwa79pffiCVV6BcMscMwxji7OMhoS0pbJ4S+BHuvdrEN+MmgJUNBDOeDG7a
vvOpc8/6+y4LjZhV/zxRMGTKdTVQDnHuchg3uKaImghIplGEDkXsghrST5cAT4Aa
zJpy1DDzDeUG/XWypyoRrnW+UlQ8SgIBPKv8shYELogchijmi7w=
=o5Sb
-----END PGP SIGNATURE-----

--pjwce7oem4hc2zyx--


--===============6311642117189192699==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6311642117189192699==--

