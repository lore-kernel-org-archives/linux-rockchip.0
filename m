Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7E13E77179
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Dec 2024 17:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cIYyajP+DGJmkYKU03jQdctgA7GZdPUF98mQNRJ6eok=; b=Uac76KlW1zmCYJUWpzCI8kKHEE
	YguDryYeBkyfL2HKaj5wNADm6s5IQy6HGP42ZTctNW3mlnrvnmPmCzhz9QSFcETDB/M8JinL6+UhX
	TT8IMWKcxlq4hxGdl8ojmxXyfGlp3KcKi8bRILFpzDbUBYT/Og6x0bhp/cy8+Rrsk1yAD+TrZrNr4
	gZXDwav3LQBrDdrd/3j2ahiXpWhVV5VUuTeHn2JrhM1hVHu/iaXfJL6MBuCOA0BfyYg77pV34vB9/
	xEkZjySd07XivaxDVFksjoX+UBHV57vDQuSWhcX3BPoei8HpAExjMrcDa+hMY+Wz+HWGHqYWdkBrT
	fTQi4ynQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJbhD-00000002Gm6-2vbP;
	Fri, 06 Dec 2024 17:00:51 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJbgA-00000002GZY-3j0s;
	Fri, 06 Dec 2024 16:59:48 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1733504381; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=f3isgZAAVQROAKB+sviCZjpp+zyjQkj3XLS2laHyVCgdIS6VbzZ+hgvGPUyWHygzutpftzalS9U3d7i47FTbl7ZtG6lamZxjMdzh/z9Bql1/mnTN+9CqBBZ2Kn+srr4jJWVEoNfZUWeWvIgBApLVXAs0uRVt8RJRpG5YgDk6uoM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1733504381; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=xNVPYInbDo/m1K6u9klXT99pnNhKMyXFgxqw/lq+NuI=; 
	b=gIpulh8Wx1CKWzRm+av2DP7FEjUT/S37R3Ict6LXvMj0k7I7sSZMipW/x18RM58RJlm3XStpg4Lu89EQWDMSunPnH/ezDrZPlYzMuwjpUq/RueaA8p0Kva5IHCMSnxdWcyLkwhm4a8N9L9jCrC7NWjyzZGGmP047L2wVSaIZs90=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1733504381;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=xNVPYInbDo/m1K6u9klXT99pnNhKMyXFgxqw/lq+NuI=;
	b=VXhh32cJhKQWXTCE+qIlBthQ3aWC4Sak6KpF5yhkVCajBpZWrhHDCDe3klV9H6me
	rL4cIIUMELdF0gPCJCxDLJ7Pd8hwMQ+bMJJ+6+7zqzC4QzLFy4CqGxFbaR1jW+zdmrv
	WZv8HMxyEeLWCs/CQKfMpFI/j5ScAMDJnxLK5yF8=
Received: by mx.zohomail.com with SMTPS id 1733504379368564.8733754480363;
	Fri, 6 Dec 2024 08:59:39 -0800 (PST)
Received: by mercury (Postfix, from userid 1000)
	id 3F86810604B0; Fri, 06 Dec 2024 17:59:35 +0100 (CET)
Date: Fri, 6 Dec 2024 17:59:35 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 0/2] phy: phy-rockchip-samsung-hdptx: don't use of-alias
Message-ID: <vdg36bpis2bzawbei6eacojttuth5ihtp7o5fabs6f6rkctikl@hofd3mjepunv>
References: <20241206103401.1780416-1-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20241206103401.1780416-1-heiko@sntech.de>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/233.478.56
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_085947_000438_D6E2962A 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
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
Cc: kishon@kernel.org, linux-rockchip@lists.infradead.org, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0348537470328513190=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0348537470328513190==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zxls2fxk2byapnnk"
Content-Disposition: inline


--zxls2fxk2byapnnk
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 0/2] phy: phy-rockchip-samsung-hdptx: don't use of-alias
MIME-Version: 1.0

Hi,

On Fri, Dec 06, 2024 at 11:33:59AM +0100, Heiko Stuebner wrote:
> One nice comment addition and removal of of_alias usage for core
> device functionality.
>=20
> Heiko Stuebner (2):
>   phy: phy-rockchip-samsung-hdptx: annotate regmap register-callback
>   phy: phy-rockchip-samsung-hdptx: Don't use dt aliases to determine
>     phy-id
>=20
>  .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 64 +++++++++++++++----
>  1 file changed, 51 insertions(+), 13 deletions(-)

Full series is

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

--zxls2fxk2byapnnk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmdTLXAACgkQ2O7X88g7
+pr8sg/7BNdpQkGIGLwMdrX+F3YVz8wFfbFq5Kg+BrqM4O1w10VcTOOxMriGEdxw
OMJpE3WksnBMT7EXGHtczqL8nexDnv9r+rHla8Jp0myRKMj4LAo7gKhLBv7W0sgB
XN6mj5oLM1dx6YgQDNUBCGkiAdY7MK1j4NRIcdHEVTJ4zOaeLl0wZCkXQK1H1/XW
XQjtubsowP1+6I3tQ+QfyYCIyvzAGVV6//yYAHDNSIjHrdEKULp6puGkCrJ2Y4NZ
CAcO+Ee7i9vttFDpZwDg6u5RS08vjBc7HBCNcQ+/wHsMl7I3BjbcWvgEvdIN0DXy
LeeNR8EJ7wZmlaCZX1I8WzXEhsS0Ek/TsaGW5u98eV2/sqqHO6yBNnddVQa4c9j2
tcVS/XVK9WsBR/9NPFxgOyuod+6xoOufI7QAEXcGdoQDMrCW7tKoDmmEmuqMLfCv
v1u65jqKi8GgaLXW02MsJb/Kx3myUaQMBiJocZ6eHUIO7IbAFnJpGureYaWFUOpD
O0YpUQFxK08GOnMJkvMICml8J2E8UiEjgpjL2ZbZtuxVZrDq8U1j7PCiyfMMm0mh
ISpMivLqTTRjAOHYdQU+kWNOvRmqwXgHTRJD7rOKo3I0gGt4NP53084kPEtyb6oD
t+jsJDOw6CmdGW6zXa28gFrMbbO40X7ih24VGfKXIXFVzgN9lHQ=
=Wj79
-----END PGP SIGNATURE-----

--zxls2fxk2byapnnk--


--===============0348537470328513190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0348537470328513190==--

