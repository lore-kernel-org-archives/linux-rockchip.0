Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71EE1C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 17:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:From:To:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OzC/xzzEND/R7+jFFDgMm5FrPhWdOiZI4rFZNBXUJi4=; b=c7E2LRWD8kfe7M8eOQfARFFju8
	5r930A3tUQGOC7BwGwEJOuJMIudvI96qfhrtqwIfZzxQnK2Pbz+Nb7O4s4M1CS4rH40FIfv1jXA1H
	k8LbqwCyf6gTEAkSR+gxZWwgQYZjhA3crkhanidcb3gMR2eBeWW/ZcBDGO8qLv+hYKeGco9Fy8xv2
	0G45RmWKJ22s4RQyCh/U6lT6QQs21ZQq56pPJ57aV9ONGG89XZiR48rPlZGueTeS5Fr1/ZDiPklFI
	m3RHD/nBxgyMyUVY55BM+W8gw63A5C7KC7n+Yuyu7u+Exn6401l1OkackL5+l81jjpJcQrQqKTJ7b
	xCIRIhDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ro56B-0000000AouA-1uU9;
	Sat, 23 Mar 2024 17:24:03 +0000
Received: from mail-4018.proton.ch ([185.70.40.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ro567-0000000Aosn-1vbh
	for linux-rockchip@lists.infradead.org;
	Sat, 23 Mar 2024 17:24:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thefossguy.com;
	s=protonmail; t=1711214635; x=1711473835;
	bh=hLd9g0J+arhug+21RAMsKmSEAuU65lTeZKlInmYv/o0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=q8pqdrayecYfqrEuANc8LK9O5kKn9h5cphBj9UumlvrDAVHKSrVxzDyJE2t5F9b5U
	 Aoe807R7CUJOlv+pR641GkAk/wGuHw7meGMLJ8NaMEhV4Ioy9ZqOMXRlCmENkIR4kx
	 wQ1PREruEKOtR/cuJpiK3T1YjVqs2XTlJsp1Zb4yaHWnxK8G7ef9ZhOsDYPDevV0YN
	 eCAPYjydSRmeXZQHdKCl14AACNpfJQ2z2bvbscO93RsszIIHZyE/VbP7x64/fisf5B
	 bL5eQRQCWVvObycGUmNrwGekIkkQ2xdxsv6RCs2dgNNj2tbqOMFYmotGoFOZ2M2KTe
	 8+NbVT+9gnO9A==
Date: Sat, 23 Mar 2024 17:23:38 +0000
To: Linux regressions mailing list <regressions@lists.linux.dev>
From: Pratham Patel <prathampatel@thefossguy.com>
Cc: "sebastian.reichel@collabora.com" <sebastian.reichel@collabora.com>, "saravanak@google.com" <saravanak@google.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: Fixing the devicetree of Rock 5 Model B (and possibly others)
Message-ID: <28S1EMw5YOnQIBpQ8_qaZZ6c9Go-j6-lLuWWbRpe6-MtRUd7Ay-uXq8JHbVVtJv3LzpxjI8jYg7ukNntbN22PVV-hOWbuTY8FNWgvM4zSwI=@thefossguy.com>
In-Reply-To: <092a7c4c-0a75-4b27-acec-385fdcfb9f7a@leemhuis.info>
References: <tQ0L3-34g4t-mzfQIP6KDe5OYelGnEo6Udzq6Kb_nEcljppSQUXOktpE__nL-CdLOu9gW-4tIIbjtSbqrdCrjEkdhZLPiiHTqRcCB6WORuM=@thefossguy.com> <092a7c4c-0a75-4b27-acec-385fdcfb9f7a@leemhuis.info>
Feedback-ID: 104309535:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_102400_154441_F5E61E4F 
X-CRM114-Status: GOOD (  11.12  )
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
Content-Type: multipart/mixed; boundary="===============8946565757040935244=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8946565757040935244==
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------f1e788887cf9d788045acc7ae71ae8322eea6a98cb58be5654c24d039bf47d68"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------f1e788887cf9d788045acc7ae71ae8322eea6a98cb58be5654c24d039bf47d68
Content-Type: multipart/mixed;boundary=---------------------ae8a0b7b1b36c345004b08b7de4976a5

-----------------------ae8a0b7b1b36c345004b08b7de4976a5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

On Saturday, March 23rd, 2024 at 22:47, Linux regression tracking (Thorste=
n Leemhuis) <regressions@leemhuis.info> wrote:

> =


> =


> On 23.03.24 18:02, Pratham Patel wrote:
> =


> > Since the introduction of the `of: property: fw_devlink: Fix stupid bu=
g in remote-endpoint parsing` patch,
> =


> =


> There is an earlier bug report asking for a revert of that patch:
> =


> https://lore.kernel.org/all/ZfvN5jDrftG-YRG4@titan/
> =


> > an issue
> =


> =


> Is your problem maybe similar to the one above?

I don't get that exact message in the boot log but yes.

> Ciao, Thorsten

 -- Pratham Patel
-----------------------ae8a0b7b1b36c345004b08b7de4976a5
Content-Type: application/pgp-keys; filename="publickey - prathampatel@thefossguy.com - 0xF2DDE54D.asc"; name="publickey - prathampatel@thefossguy.com - 0xF2DDE54D.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="publickey - prathampatel@thefossguy.com - 0xF2DDE54D.asc"; name="publickey - prathampatel@thefossguy.com - 0xF2DDE54D.asc"

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgp4ak1FWmZjR2RSWUpLd1lCQkFI
YVJ3OEJBUWRBa2VYM3NrdFI1R0lZQTM5VXhoRTlZcitZMy8zd0ZXUmwKZlZ5T1hsaWdnS2ZOT1hC
eVlYUm9ZVzF3WVhSbGJFQjBhR1ZtYjNOelozVjVMbU52YlNBOGNISmhkR2hoCmJYQmhkR1ZzUUhS
b1pXWnZjM05uZFhrdVkyOXRQc0tNQkJBV0NnQStCWUpsOXdaMUJBc0pCd2dKa01lcApYbTlkS2Er
V0F4VUlDZ1FXQUFJQkFoa0JBcHNEQWg0QkZpRUU4dDNsVFJRTDQ4NE9oNDE3eDZsZWIxMHAKcjVZ
QUFDYlFBUDlMc1NwUlQwSTV2TC8ycHpBa2F2UVhLdStWR1BRMk44RUVYZGpSVkRseGl3RUFwMVpS
ClB0M2k5RG9qcXg1OE9MQ2R3N2xHMlVwdkJGZ2dCeGVrV216d1dRbk9PQVJsOXdaMUVnb3JCZ0VF
QVpkVgpBUVVCQVFkQXJlOWp5aVR3VFBGSjNaazJvTVd0ZDVxSi9zcWNKRUZrckZxNUpVVzRWalVE
QVFnSHduZ0UKR0JZS0FDb0ZnbVgzQm5VSmtNZXBYbTlkS2ErV0Fwc01GaUVFOHQzbFRSUUw0ODRP
aDQxN3g2bGViMTBwCnI1WUFBRFRGQVA5WUZIL0FxKzVFd3pHQ0xJZWhNNGJsUW5hK2t0cnNPRWlw
VllVTVZMd0tjQUQvVktHQwo0eFRtTENUQUNDcFNqRjdVRzBVY2NNOVU0T21ZV2RlVU9HUk1hd1k9
Cj01cTBtCi0tLS0tRU5EIFBHUCBQVUJMSUMgS0VZIEJMT0NLLS0tLS0K
-----------------------ae8a0b7b1b36c345004b08b7de4976a5--

--------f1e788887cf9d788045acc7ae71ae8322eea6a98cb58be5654c24d039bf47d68
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wnUEARYKACcFgmX/D/UJkMepXm9dKa+WFiEE8t3lTRQL484Oh417x6leb10p
r5YAAHYlAP9lfb3BSFKYtWm/S0bfoj6e7K4Y+l8y9pnmg7U4pWoPkQEAjxWI
9LvXFmeUGLD2Z2Lu+WoJ7RU/hCOljmBRtQHtEgU=
=V9PA
-----END PGP SIGNATURE-----


--------f1e788887cf9d788045acc7ae71ae8322eea6a98cb58be5654c24d039bf47d68--



--===============8946565757040935244==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8946565757040935244==--


