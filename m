Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39587C54E58
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 17:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:From:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xHCgAPW0NzypYdCBcmB9Ai56aqBxwzL3u0RmI0lLG1E=; b=3op
	r0wjSEgncks4mnlmUrmDBHu1rfZS5He4bRol6ZzmJQpp/qtACDzYLESsSzBOnf0B0y0ZNknGZ0t+7
	n/mG/ScaSJabdXwMTmEyF6oOZFX2Yzh96dISzsa76KXtW+qS03E6MqWTb0sM2z7Riy5V6O0xkX6ME
	+iP8ChhL9ALvc0lnY55ihNbhI0TWWHXxkfodZLJGcbk8LURQyKzkaYoYn7AjrPWJAlwRDLJIfOyti
	cHmQldwhiyPmXD3BzGntWYoXm5ALwWtFylwrTZmMw3zD6r3NKPs4hKl8avHT4RgbgYSnNzTUWnypE
	FoU46XP021sJxIKnC7mTh4UMnquiqjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ro4lg-0000000AmI7-0KlX;
	Sat, 23 Mar 2024 17:02:52 +0000
Received: from mail-4022.proton.ch ([185.70.40.22])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ro4lb-0000000AmGH-3bfT
	for linux-rockchip@lists.infradead.org;
	Sat, 23 Mar 2024 17:02:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thefossguy.com;
	s=protonmail; t=1711213358; x=1711472558;
	bh=MOWxTE0LblY9DjHp6xvHXR+dNjwb9gyrT6Bdl3jULYM=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=O1vMnH14S9ECDduacDf1d5GXHglynF4vpqGjZ4VPv78aikkbNCNtwnYcbxzLxwkTn
	 Ch+L8mISP8PYSya9toKglHel3tOn3RysBd73aKFcWtJDyqblvLdbQwNJ5k3h3EadFn
	 0krL9oB83e0e76NnACDphttEP5ollFB4KKvspfJgasZ4JLheUcaY2+DDpOn4vNu68N
	 mX/1tFCCGIFJK+RpEJeDb6Kb2c2BFa4QpD0iuv+QZAkF2UmlpWaqMx8XKmrOmd8wAa
	 XBGupi7aO193oWcjMrUyUpLDUbUV6I6L8QSG0Vqzb1eZo6I2HJckRtMVPwaFAwf19V
	 Us4jjW8dG5oyw==
Date: Sat, 23 Mar 2024 17:02:19 +0000
To: "sebastian.reichel@collabora.com" <sebastian.reichel@collabora.com>, "saravanak@google.com" <saravanak@google.com>
From: Pratham Patel <prathampatel@thefossguy.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "regressions@lists.linux.dev" <regressions@lists.linux.dev>, "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Fixing the devicetree of Rock 5 Model B (and possibly others)
Message-ID: <tQ0L3-34g4t-mzfQIP6KDe5OYelGnEo6Udzq6Kb_nEcljppSQUXOktpE__nL-CdLOu9gW-4tIIbjtSbqrdCrjEkdhZLPiiHTqRcCB6WORuM=@thefossguy.com>
Feedback-ID: 104309535:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_100248_241903_6CD226A8 
X-CRM114-Status: GOOD (  11.75  )
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
Content-Type: multipart/mixed; boundary="===============0996292864012823081=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0996292864012823081==
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------9fbc6d827d5b25b8ec5d0d21b3f1f4a54ca515d16ca64f730918341a8d911348"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------9fbc6d827d5b25b8ec5d0d21b3f1f4a54ca515d16ca64f730918341a8d911348
Content-Type: multipart/mixed;boundary=---------------------87a844869beee976bdc9af190bfad2e7

-----------------------87a844869beee976bdc9af190bfad2e7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

Since the introduction of the `of: property: fw_devlink: Fix stupid bug in=
 remote-endpoint parsing` patch, an issue with the device-tree of the Rock=
 5 Model B has been detected. All the stable kernels (6.7.y and 6.8.y) wor=
k on the Orange Pi 5, which has the Rockchip RK3588S SoC (same as the RK35=
88, but less I/O basically). So, being an owner of only two SBCs which use=
 the RK3588* SoC, it appears that the Rock 5 Model B's DT is incorrect.

I looked at the patch and tried several things, neither resulted in anythi=
ng that would point me to the core issue. Then I tried this:

```
$ grep -C 3 remote-endpoint arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dt=
s

                port {
                        es8316_p0_0: endpoint {
                                remote-endpoint =3D <&i2s0_8ch_p0_0>;
                        };
                };
        };
--
                i2s0_8ch_p0_0: endpoint {
                        dai-format =3D "i2s";
                        mclk-fs =3D <256>;
                        remote-endpoint =3D <&es8316_p0_0>;
                };
        };
};
```

So, from a cursory look, the issue seems to be related to either the DT no=
de for the audio codec or related to the es8316's binding itself. Though I=
 doubt that the later is the issue because if that were the issue, _someon=
e_ with a Pine64 Pinebook Pro would've raised alarms. So far, this seems t=
o be related to the `rk3588-rock-5b.dts` and possibly with the `rk3588s-ro=
ck-5a.dts` too.

I would **love** to help but I'm afraid I device-trees are not something t=
hat I am at-all familiar with. That said, I am open to methods of debuggin=
g this issue to provide a fix myself.

I would have replied to the patch's link but unfortunately, I haven't yet =
setup neomutt and my email provider's web UI doesn't have a [straightforwa=
rd] way to reply using the 'In-Reply-To' header, hence a new thread. Apolo=
gies for the inconvenience caused.

  -- Pratham Patel
-----------------------87a844869beee976bdc9af190bfad2e7
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
-----------------------87a844869beee976bdc9af190bfad2e7--

--------9fbc6d827d5b25b8ec5d0d21b3f1f4a54ca515d16ca64f730918341a8d911348
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wnUEARYKACcFgmX/CwEJkMepXm9dKa+WFiEE8t3lTRQL484Oh417x6leb10p
r5YAAKA/AQCkw7cy5Xleb1CszXzbi/+SMY/azZf3PhmHDQSDAXlD7AD/bGg/
Hgdzv+VyRF3bwym4zEmt0uIwU8vj74qgQCGsaw8=
=kvaJ
-----END PGP SIGNATURE-----


--------9fbc6d827d5b25b8ec5d0d21b3f1f4a54ca515d16ca64f730918341a8d911348--



--===============0996292864012823081==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0996292864012823081==--


