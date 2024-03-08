Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D75EAC5475B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Mar 2024 14:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C/Nbey+wSWLaxChgkbHVZLHYQ/u0YxQfwhdZ+t2WVBk=; b=bTYKtIdEujYWdINvyuC//kt9Z2
	DS+M++aIRe57bTV0D339XBuL/Kzy9AFWJ9vFDlq3LxnKsUHNM7+LlBn0hbdYcsK/aJDxQYQjVJ3e4
	zVrVzgnfW3N+N+PfPkh7WrZKO+4ZtPdFECNFk1XdCnYtv9kG1C3oSZL44f4s+PkLaVYJ4wNKlgbY4
	fo7z/5xyNXd+MvdUxOt7nEIUq/dZSCedTSRlpMy5yfWBdI2vIO/akK3dqpa5+ZVdfgmu2cr4vVeiX
	KRY0tHZGwZjgFyoaGdNpbvkta+qsjN2DC43C9f4rYB5n3Ec475uE2EYue2XgGKd9htnjcZscxQlpS
	QvEd7TBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rialB-00000009QBa-1iVz;
	Fri, 08 Mar 2024 13:59:41 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rial6-00000009Q95-3Zz9
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Mar 2024 13:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709906375;
	bh=wSi4nzC0Vzt08/nuVCBCe2oCPowOBtKD5PTL8hk2eX8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DO5OmbA7WAJ/hucDDXeUDMSVsX5f2wVSGBCDfJb5/6S4uvD5LG9jc9nU9btKXMUfh
	 2UdDujqwmY87UsHm5P2r8Etf33wzHsQZKeSvRaqO0O3/bd7PQkuNUqj89gXAdrCYB4
	 1HnyCR+3AUsRqOxONFC6Zaf3dmLd1K31BZTm8tT/hE9d0U4Zh4Vwdnpbo1HrlY5wBt
	 EM9cPPwMi3r9Kxy1vVXRVw1X/kY7fiHNnTSfSzIy8S6rzDk7IhVZy2LMRF0Ej5ogRs
	 W/2vROjVYSkkWR3xcvmGTAZusk96kyTcY63Kc10AqV3vUoFZ1MoOrnJXliTi2dlYDV
	 XPrUhwxljOx1g==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1F15437820E8;
	Fri,  8 Mar 2024 13:59:35 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id AE8CF1060B10; Fri,  8 Mar 2024 14:59:34 +0100 (CET)
Date: Fri, 8 Mar 2024 14:59:34 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Ilya K <me@0upti.me>
Cc: "andy.yan@rock-chips.com" <andy.yan@rock-chips.com>, 
	"heiko@sntech.de" <heiko@sntech.de>, "huangtao@rock-chips.com" <huangtao@rock-chips.com>, 
	"kernel@collabora.com" <kernel@collabora.com>, "kever.yang@rock-chips.com" <kever.yang@rock-chips.com>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "mturquette@baylibre.com" <mturquette@baylibre.com>, 
	"sboyd@kernel.org" <sboyd@kernel.org>, "zhangqing@rock-chips.com" <zhangqing@rock-chips.com>
Subject: Re: [PATCH v8 7/7] clk: rockchip: implement proper GATE_LINK support
Message-ID: <wzvv4x6lnb6caocrbt3zrwmeyszfzamvuiw4r4rbq4l5oigsni@ivkdrnkbqdtu>
References: <1456131709882456@mail.yandex.ru>
 <uwr335fla4nfvv3mdppcoly6hcsayav26r4r6txmbwrb25ftw7@rxwjtan7evww>
 <20561709904626@c6cdvt45gvthiay5.myt.yp-c.yandex.net>
MIME-Version: 1.0
In-Reply-To: <20561709904626@c6cdvt45gvthiay5.myt.yp-c.yandex.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_055937_115574_BAAA0AD3 
X-CRM114-Status: GOOD (  20.23  )
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
Content-Type: multipart/mixed; boundary="===============9037398716033042424=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============9037398716033042424==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i6ww3rv7vsc4trrr"
Content-Disposition: inline


--i6ww3rv7vsc4trrr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Mar 08, 2024 at 04:30:26PM +0300, Ilya K wrote:
>>> This change seems to make my Orange Pi 5 (RK3588S) lock up on boot
>>> :( Any suggestions on how to debug this? It doesn't really log
>>> much...
>>>
>> I suppose with this change you explicitly mean the last patch, which
>> has not yet been applied? That patch effectively allows some clocks
>> to be disabled, that have previously been marked as critical (and
>> thus always-on).
>>=20
>> If that results in a boot lockup, I expect you have a peripheral
>> driver, that does not enable a required clock (e.g. because of a
>> missing clock reference).
>>=20
>> I assume you have a bunch of other patches applied on top of
>> upstream and not just this one? In that case it might be sensible to
>> first apply this patch, do a test boot (it hopefully boots). Then
>> step-by-step re-add the other patches and check which one breaks
>> when being combined with this patch.
>>
> Thanks! I think the email bounced from most of the mailing lists anyway..=
=2E The
> exact tree I'm running is here:=A0https://github.com/K900/linux/commits/
> rk3588-test/ and the last revert commit is what makes things boot again.

Please update your mailer to send plain text mails instead of HTML
when working with the kernel mailing lists. Also please do not
top-post.

The tree seems to be more or less what is working on Rock 5B and
EVB1. Please try a partial revert, which just undos the removal of
RK3588_LINKED_CLK (the define and the usage of the define). If that
works the next step would be to step-by-step remove usage of
RK3588_LINKED_CLK again until finding the clock that needs to be
critical.

Thanks,

-- Sebastian

--i6ww3rv7vsc4trrr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmXrGcAACgkQ2O7X88g7
+poVbg//UJ3XmMkd6xZv540xz36f77DgCd0fGZQ4aDs6BquhWebJOq0ZeYy/rKJp
C+zZWWDTU3LMeOxd4AaNcPom3gxMcMNtq1iozq5lcLShj6iZF1i2MQkdKAD6SZu1
aTWSIfcWgkb0hRVJsiDEh0rO1Dx1BZLTvDz8XoJXBjU3p1e9NTg0qo/Oexdrp/6U
JSFA51qpZiBXKflT6WBWkS1WnqKtQxZaQPUHVpie2t0slipvibk8TH3YU2x6rFKr
iX3mMjvGqZJajHWZpD6U2n8gWmmHkLYXE4/HZIWXpI+ZfzeXd2ztM+ok6szMzj0E
RhuTKgQWgJw8MRXq3UnLnWSIpIVNTEVp4tUOixAEHfiQNtFeP63q7WPK7QCKKoEp
JFoBf5tK6yE/2JAkocBceSUa3yP9hVwX8Cj5AWgqYODtJtKfpmDBUq9i0q9SABtW
JgAGVXDa5DFl+uR5gpKb+NS4gj+JNvHutMvSYUdOv+kjdPeywjQ23hbWxzIYQ0sV
Ixy0cIzSZAq5Yj4O7h+IRktdAiV9wRBGF4EY6NWKVInp5Ebgmu3yKgykWJUnU6jE
+DHdsH4daIF/kXG/fS7ZskGLbZjQxgATydpU2d+0q62JGNQMFClG5LIFTOGk56+4
hx6rDthq1plpMB1AjI45SZJcbkMBg6bPLS2sXqwK3606HzBEdm4=
=SQIQ
-----END PGP SIGNATURE-----

--i6ww3rv7vsc4trrr--


--===============9037398716033042424==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9037398716033042424==--

