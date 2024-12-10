Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3707E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 23:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CQFYwt9phYxjQ6Zio81ClWmpkn1l4w3ZCLgNiRXvjuM=; b=ufJW3JMDq3SAQoUlH4OXWIU7CX
	PQYK3GKnZeDFDxNODCsdGnHhZIINyo6FlhE90JA4zumt/9XRHoK+nEBypymzxEJYrnNxFtiYPbKLZ
	PQDw3URxiwwPVFj3oEBULD0Rgx4PJzlVt/eOTNbCp8q7Be4yfxdUyibmI82X4W1Uoj1pp+CM6HbOh
	tWybege456cbLxOfTb0Z2L2Az9VBCpudsowMHno+mnvU5EWkN4ZBdUnm0++b4UrhT4M8BA9GnD1o8
	FTkthnGu8rXCWqnpfBFXCg7XzKWabOAYeDHGW56BXQanY2xQdOM4U/tmy2La+Whv3LKhri8Dttpta
	LOxArb6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL9hu-0000000DATw-10Ev;
	Tue, 10 Dec 2024 23:31:58 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL9hs-0000000DATV-1z2I
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Dec 2024 23:31:57 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1733873502; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=No23tB1s4uQL2//VxNn9c6cmf0ILbcdF8L+MjrujVVQnlThvWFhpLwKW9BnkDi3H+o+zScoHs9En7Yhb7VLKQFSGMSFuXQ/Woz2o1nVRZwm9s+2r9Gmyj3C8/J4GIDr9rc7TxPigmS5daMHYplRn/PNl9b5qdfPdnePL0gq7+g8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1733873502; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=/esxm4ccOpsRmlVwxzHA1qgkxtGDH4KowfW8w4IjlnU=; 
	b=aLjb6fWekAguV1cAviJJRL7HvWwfeIDka25bEQIINmZdqQ4DAyxOKRy0/axaIFlMbWzmyC4hXBVUrkaTeWCNxoUwcal4e6hijZBBRP76kJJfUxhq+j1K06adb+WmOAXjFryOm2pBzpskuP/jN3FN4zk1hlWQeCBoKhXgUtOijBg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1733873502;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=/esxm4ccOpsRmlVwxzHA1qgkxtGDH4KowfW8w4IjlnU=;
	b=cJMAoxjqG/c+lk4Lf/QbopxlHtyZPSUmkBX4vg0zRqXkUA8zbIy98WLVSpscI73m
	9b20ediy3/FSyNXpR+lhbiCLnPKj7qHma60873G6BcsOD8MLg5m9YN1dGp5y5odC5w1
	EtyVDEEOGlYHeZO9dvp4deiKs/iFnrQFu1oL2omw=
Received: by mx.zohomail.com with SMTPS id 173387350122675.54327848516868;
	Tue, 10 Dec 2024 15:31:41 -0800 (PST)
Received: by mercury (Postfix, from userid 1000)
	id 0F9A710604B1; Wed, 11 Dec 2024 00:31:37 +0100 (CET)
Date: Wed, 11 Dec 2024 00:31:37 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Mark Brown <broonie@kernel.org>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v4 0/7] Fix RK3588 GPU power domain
Message-ID: <bd7egcj3mni3is2ozofapadpunawjch4b4pvay6obdfuyxcxny@c74ozkx2ab5e>
References: <20241210171023.141162-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20241210171023.141162-1-sebastian.reichel@collabora.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/233.855.81
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_153156_559783_096AA1C9 
X-CRM114-Status: GOOD (  10.75  )
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
Content-Type: multipart/mixed; boundary="===============1133264426927704931=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1133264426927704931==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xmnd76cb7mnv2box"
Content-Disposition: inline


--xmnd76cb7mnv2box
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 0/7] Fix RK3588 GPU power domain
MIME-Version: 1.0

Hi,

On Tue, Dec 10, 2024 at 06:06:40PM +0100, Sebastian Reichel wrote:
> Changes since PATCHv3:
>  * https://lore.kernel.org/linux-rockchip/20241022154508.63563-1-sebastia=
n.reichel@collabora.com/
>  * Rebase to Heiko's for-next branch
>    - update DT patch to handle new RK3588(s) boards
>    - make sure to use a clean topic branch without HDMI-RX code (Heiko St=
=FCbner)
>  * Add Tested-by from Heiko St=FCbner

mh, I accidently re-send my v3 branch as v4 :( To avoid further
confusion I will follow up with v5 tomorrow. Sorry for the
inconvenience.

-- Sebastian

--xmnd76cb7mnv2box
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmdYz1gACgkQ2O7X88g7
+pqlEQ//TGDn2w/SPBr8NIGD0D8V9EIsCXN8lSJsjKxhL1VKU1R3nQlNT7ZmRJmI
A+DJXRfaMqnCPWiiZCQ6B8w1EqqEpfl7SLsN5g2NSu0jXBC5PKZ2Y2RNbT8/10Zn
83Kr68fYQ89vFl8mDlXchQzGGeQwR0XsW6A1uYbS9Gzs+UW7iTi9ukn+TAYp5SdP
1NZ/Km4jw2XvDsa0QRLanQk4cKC2s3rbwoYj4Gn3LRdGiyHfsUBQvDc8Bcksk409
hh3D2UoYYS6PTdHQ2Xb8FCNqz4TxhcvsYbofEKHT3BTwwla3chojQR1xMYDD37wE
CfebaCu3v+ziwL19mY9OEqbs65oQgbXtu1Z33if0RotVQY4bwtSQwm0UHoTLRF+r
tT+l8Ra161U6v6Sq1FKxXwK33jadjIrw1OG6PSP6nmOGVJTVDyMBCUgBHjtjpOVS
BVQgr3Vto3VcSNNT+g/VQfAD5hzabM4lF0MjjRpCQeYAouR8LPdJe4DeJNid/2Hi
r2oNRXRHNtwh3WBS31Ec9XG8YlkHo76Ch7813pIaSvAHA/9qFY2wQldkKtrCu5+1
gRyWIpdMPdPPg6pim3468bO+5eExkbzkPEs50uOCw1/pyF9uA1Pxmi2Q11+2zc8f
kWA5nUjFP+n1C29zd1jb389TFxGYoFOqWSu+c1srmjWRcAj3uv0=
=s7wl
-----END PGP SIGNATURE-----

--xmnd76cb7mnv2box--


--===============1133264426927704931==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1133264426927704931==--

