Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 147A0C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 09:12:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4102761026
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 09:12:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4102761026
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ucw.cz
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnWxsxcyStGwQfMbFMyoeJqmMR0p7u/W0nkH+pHLWXg=; b=FdGAnX9RZ3XUOiuXb8Qd4Pjt9
	i0RK6oGC+WpSRKwt8KsvdsK+5898HtboWZwjsfhpq79v9kwmpxKBViX5KVw9L7E8KmXTUeb7D/msR
	LrjFVVGvWgY1566t6XRwH0AHJeyAaJajI1jRY3rQXF9ajKBtVtxm5Uyp0MEq+x+NZPfAMYUkSQtXU
	OiQdef4caQ0mHnsDEg1tFVu4EuvDnQCRv3jWRqIZkj+dBbgooD0btaLCN99kkGX9GHfPmqSQQL9wZ
	+zmk9DCo7/lueK3QKycZpXtQUE54ucvPi8lTbrOxaLm1gnwDruUVRf4H5AidxgCRzS60l1L6cOJUb
	j8uJiJEpw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbJl9-001C0k-4l; Tue, 27 Apr 2021 09:11:59 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbJkw-001BzP-Ag; Tue, 27 Apr 2021 09:11:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ow8XcfD9gGy0ilZm242XwslHSj2f7Cbv5f4rAznYtXc=; b=LM+EqTVjFcapDV33K+Scp6LLN1
 KdckUKjfbPNGswHzZWCgEsdn1IPil62zZYU1+h7oni5QgZ08tB0SBD3UEtlW5K5SFq3qZ4u+ql/Ie
 4sifgVLJy8Ea+Kwc5upJjxhjpnpCn8lTbINLMWG9rZQLKXh8n0bsptIjqYUYElYZL2H6grGWJp73w
 30G47ytkmggbLZvh32le+xZUj0XJpjhLz7sOyO9AZ1Kwk7FVXd6aTISyIx15axYCSeP3NmKwC0MDr
 sL4vI+ea9q1fW3+VAbCX4kCJsY1CYnwVDVu7M7DgFsQiSpWkVUeLnM3ruGr21MNvcGASBjVEstx0t
 OloBN5RA==;
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbJkt-00GZRd-CX; Tue, 27 Apr 2021 09:11:45 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id CE3671C0B79; Tue, 27 Apr 2021 11:11:33 +0200 (CEST)
Date: Tue, 27 Apr 2021 11:11:33 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Tianling Shen <cnsztl@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Jagan Teki <jagan@amarulasolutions.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
 Marty Jones <mj8263788@gmail.com>,
 Jensen Huang <jensenhuang@friendlyarm.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rename LED label for NanoPi R4S
Message-ID: <20210427091132.GA9373@amd>
References: <20210426114652.29542-1-cnsztl@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210426114652.29542-1-cnsztl@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_021143_617879_50CB067F 
X-CRM114-Status: GOOD (  11.96  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0377293264955075192=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0377293264955075192==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="nFreZHaLTZJo0R7j"
Content-Disposition: inline


--nFreZHaLTZJo0R7j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon 2021-04-26 19:46:52, Tianling Shen wrote:
> However "sys" is not a valid function, and it is always on.
> Let's keep existing functions.
>=20
> Fixes: db792e9adbf85f ("rockchip: rk3399: Add support for FriendlyARM Nan=
oPi R4S")
>=20

Acked-by: Pavel Machek <pavel@ucw.cz>

--=20
http://www.livejournal.com/~pavelmachek

--nFreZHaLTZJo0R7j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAmCH1UQACgkQMOfwapXb+vIytgCgsvCEfJXxZS5O2ixhW9KWCWq2
w3wAn0V4RXIAUDnRv0twwb9Uy9EseOV2
=DyY8
-----END PGP SIGNATURE-----

--nFreZHaLTZJo0R7j--


--===============0377293264955075192==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0377293264955075192==--

