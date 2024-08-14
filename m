Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32BF7C52D7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 11:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:From:Subject:Cc:To:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5psEM4LE8B/6SXOSvLuUMaJrU7gWIbnfEcgBBBJNvEs=; b=fu5pesijWgxSNhg8YOOzN6FucF
	0ausPZuPuLuqsXqL26iWEDyNJHGaFh3MeF9hSsk757wYflMR5M00xGhyR9XgyI3gf2tOq9zhu7FGd
	yhUHlp45hIYrQjubWeXrRnbWfFChUDd+GL1G3xGVx/9r1Q7fbygUWaeH6HLkh3ZSNSUFzdLenUcXf
	b2nX9ln5dgdsvUNsFiBgHz7svJPNgfz3/mKhqK01uyrbfQb+cUU8sc8QhjyId7fvojATI2HpKSkZj
	U7QnZwGepvWNHUrb12dvHZa6BMRcnpMUhKWi7OZctIDocDaQrbcNPIFFETxcI0NSkYfvdXAPctbFj
	dlSxVZ3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seCHI-00000006n2M-19bs;
	Wed, 14 Aug 2024 11:34:56 +0000
Received: from out-174.mta0.migadu.com ([91.218.175.174])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seCGh-00000006mqo-30ro
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 11:34:21 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1723635257;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=GtsydK3H2mtGrPUzBQhR5SKnRk+T0FBFM4LqeGBRGo0=;
	b=L32EFz5TVtcaOdUG+wAtIwcfmqFVG2LtCUevJwpkq3iWmMYTxFjhkEZ+ntGpip+e7n8iHq
	/FH3z0mbJIs+h+eo7bCT1ANfJxfvur4eSKjehvO6xKhRWSRHsLhfb1ztveGGgdF+RjHIkl
	7F0mUEn0rH8TgJKCnG1WeVR6eKV5JciiB/dLiPlRwbrAWY+db43ncJK1ph8bb8wyD/nKYS
	aR2eKeZ8FqBOsVGI/qbtwFvEEC1mZTP+sKkTmDiFcTGFPHYQjuXVUq73GFK5CJK0Q82+KO
	gyehPgFFi+e3viVGyvBYi7UFS7xVxX7tXrUTMWOj67RTgC1bxnPd67stDYH3oQ==
Date: Wed, 14 Aug 2024 13:34:13 +0200
Message-Id: <D3FLPC79YN2S.34PAJFECP21X9@cknow.org>
To: "Sergey 'Jin' Bostandzhyan" <jin@mediatomb.cc>,
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: "Daniel Golle" <daniel@makrotopia.org>, <robh@kernel.org>,
 <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH V2 1/2 RESEND] arm64: dts: rockchip: Add DTS for
 FriendlyARM NanoPi R2S Plus
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org>
 <Zq7LBqKVvVVVLg7a@makrotopia.org> <2309282.ZQ0cqP7t2B@diego>
 <20240814112138.GA21761@ветеран.su>
 <D3FLMBPACMF8.249JV2GI2QGHA@cknow.org>
In-Reply-To: <D3FLMBPACMF8.249JV2GI2QGHA@cknow.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_043419_932305_51DBCB7D 
X-CRM114-Status: UNSURE (   9.58  )
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
Content-Type: multipart/mixed; boundary="===============6600126376268867052=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6600126376268867052==
Content-Type: multipart/signed;
 boundary=49f49828ccf4e026245bb992825ca7b630ee10042c0f52336e40d8fcb356;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--49f49828ccf4e026245bb992825ca7b630ee10042c0f52336e40d8fcb356
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Aug 14, 2024 at 1:30 PM CEST, Diederik de Haas wrote:
> On Wed Aug 14, 2024 at 1:21 PM CEST, Sergey 'Jin' Bostandzhyan wrote:
> > In case you tell me to go ahead with a v3 set, should it be in this
> > thread or not? I understood RESEND's should be new, but updates should
> > stay in the thread, right?
>
> No, a new series should be its own thread too.

More correctly and hopefully more clearly:

No, a new patch version (series) should be its own thread too.


--49f49828ccf4e026245bb992825ca7b630ee10042c0f52336e40d8fcb356
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZryWOAAKCRDXblvOeH7b
biSVAQDc78xS+e8oE/At1dhcSqzFBPxTRCOkxyjn6j3XFmn7lwD/XOQQ3uHY5LsI
lh1vWwLCcz3GWt1nOikJztST3kvHaA0=
=oWIP
-----END PGP SIGNATURE-----

--49f49828ccf4e026245bb992825ca7b630ee10042c0f52336e40d8fcb356--


--===============6600126376268867052==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6600126376268867052==--

