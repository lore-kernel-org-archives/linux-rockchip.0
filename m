Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1D55C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 14:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d7CfDsMWred+uls0XcxXpewNAD679eBSbx13ygBMKHs=; b=a86P7lK4201KppxK7p3b/IL88+
	kz1QA+uhYWJdCPpwazKQIhzkbk/pm86Iae2Q1FLJtAxbfUjLn24mdDCgjt5/CN0r3P+3xGYpxj+xu
	wlsKyyAD/XEogMTCSVbF2kwAo9NOZFc0sfVNXJ53SXmHHm37t/5fZBSw/rNL1kCjVIxZWtnnp6774
	UQ7qLzOG5/LOT3bs9dm1PHZQLmgfhlX5vbMlbT5GTjrZatW38P6443tuQ3087xXEEoRKVy7CgDtl6
	sd3gtYC+Raav+YxUYixd0wjQiEzx9jyA3+9JhyZqy+561+g2vZUYdtvH7HjNEYNfgjw+0Q0aPyjDI
	qF2DTkwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rveTM-00000003LOB-3De1;
	Sat, 13 Apr 2024 14:35:16 +0000
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rveTJ-00000003LMP-2ra4
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Apr 2024 14:35:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=dPk0
	cDacUvwbrHHuf9fZXLRbdY/HN7S5wX29Cy0IFyk=; b=f1xi1YgacavXRDSt6xtN
	LvS4ALlTEAcOlRfGb8vyAFs8ysega+SUXmBbQ2z1BSK5kgHOPfvVaW7Dk3hHKrsS
	cxfUbpkwMFqx1QOXiq2GZXTLo3cHcIcYJGEmQLtK60c+ZkhksY07L22O94u0aNpu
	FlyzDY++jCJSe8UdT257ReMr8csMORsb01IR5bOskz1PjykKHs8PfS7/V+yE3Qto
	Q/mtH9gmDrtyxmX/uCF0PgvqtTk0bDn5sMJczCKdT6Z48TtziMasNrA6brcx+jn1
	AIaMpQhA8LoAW2cWPqFnemid54eYIsrOUmTtQUXNZKRYP35ahggC/XGvyH/OqE60
	Rw==
Received: (qmail 1533133 invoked from network); 13 Apr 2024 16:35:07 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 13 Apr 2024 16:35:07 +0200
X-UD-Smtp-Session: l3s3148p1@9IltS/sVoppQk7GI
Date: Sat, 13 Apr 2024 16:35:06 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>, linux-i2c@vger.kernel.org, 
	Andi Shyti <andi.shyti@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 13/18] i2c: rk3x: remove printout on handled timeouts
Message-ID: <dnh4yiajjqcxcq7xjvj35quda7yrf7tubp2l2ktsaf4zgzai4n@xdefxkk76yyg>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>, linux-i2c@vger.kernel.org, 
	Andi Shyti <andi.shyti@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
 <hgdhrf2jiovfxcppdtsq32sfbk4xuq7ewiwq4awwztj4mp3yez@kj6ixihkcxhe>
 <af8ac48f10a1636ab2486aef91e01c3f@manjaro.org>
 <8358604.T7Z3S40VBb@diego>
MIME-Version: 1.0
In-Reply-To: <8358604.T7Z3S40VBb@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_073514_117452_B3DE5D3F 
X-CRM114-Status: UNSURE (   6.95  )
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
Content-Type: multipart/mixed; boundary="===============3034084543205126965=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3034084543205126965==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3rm5ajlyb22bpc7l"
Content-Disposition: inline


--3rm5ajlyb22bpc7l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Also we're talking about two lines of code, I wouldn't call that bloat ;-)

With this patch, yes. But once you allow debug code, it is hard to draw
a line which debug is still okay and which is too fine-grained. And then
you end up with a lot. Over the years, I developed the tendency to try
to have less but meaningful error printouts. But I don't enforce it
strictly because it is too much bike-shedding discussion.

In case of this error printout here, it is just wrong. But, see, it also
came from this tendency I don't like to have printouts for every error.


--3rm5ajlyb22bpc7l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmYamBoACgkQFA3kzBSg
KbZ5mQ//Sz4z/OJ/HyrUnuAtL6eJjBPkhIyxgjlxGgFSZ7sPECcUBR6Y0itNh20D
LVMfF3XdU05v1wHMbmysTKBje3SdNsBMhLpM4hYXC65CLyO9mlPGeath+W0yMtGR
DQIaItYs4WssxmRd9C9gbi9XDINsMq8JfSccPtVgFqWMXowYtnJHc+y9ykMH65R0
YT9X05NYGdCd9aNEfyDDb6I4t4S3v3p20/va00L/jfaQubpoTomDfuhtOGy04cQn
xzT1PAdTR6HPLN+2Nl0FUHMUhO1GaJzsn5MT5XSuuHzIgQ+d4zrVzfPXziP1fJP8
jsR/FMHBc7uhFtinY5YW+8DURLwA6zwe8pGNvuf5StFfGQK8MIefDH6cIOz4c3y1
xCbz9B7a/dOKB6Q8VkFLgvEC2Uxcj8J0klrG1vuxAtqTig30dm/zJO44gi9luivY
mUdkrCF6JDQlBuWdyku1U26vGbUZq/y5x3xLU++BkuaDBRQNyBo9rZi5up+FhZTe
rsRKO+Ey5ils8d1zyElAnaUylSoMrFlMpTb7IATzM4+v59+T9kCv1DL2cOrYJKb2
NU+Mp6yjYXAmK8fP/OJzO/7FzMlS7nxGue1XKaTH2NNM9Dq/SEvQIU5JZKJs27MJ
oYVVlVRo2cXhZIZ6Yfo9WvO91vYe9lWTxl2+MIJKhs9dhzNlTYo=
=I1ij
-----END PGP SIGNATURE-----

--3rm5ajlyb22bpc7l--


--===============3034084543205126965==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3034084543205126965==--

