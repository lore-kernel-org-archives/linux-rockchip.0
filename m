Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1670BC02198
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Feb 2025 14:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tCwY9LwLvnM5d/12l3WuRkeowv0jseSvUvkrp2CtBB4=; b=yFDHgNXBtkFmS7Hfhi6KuuFgaZ
	wNvZ545aZ8aQyJCh6QMz6yoItOuJcg0XYTA/bY28xvZRIG5aoWZW72H6YAR4aCJIR15lp+KRAV6CC
	AGtE5h9zRKl+Lch6GA0R8w1wJ2+CIHIGQQ8aGGRaNxzYM4bQBtht3VGxrhaBOLe0Lc8aDKZxl5V56
	Xw+7+cgOGA3WitvcKaUwyf4SAvGUUbQj5QxR1D6muLzbmCrNp15s3sytRXCCjb4M34UbtF0k4W4vm
	pffUXP+awctqKiLQ13cUNyB+eh4iaGD4ghdmAlXit2JQmEKTbYp/FtR8qIItBctuhwO7FlCWVo7gZ
	GmqbdnFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thUoU-000000008NJ-0372;
	Mon, 10 Feb 2025 14:31:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thUlg-000000007sX-3VLh;
	Mon, 10 Feb 2025 14:28:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AC7145C55FF;
	Mon, 10 Feb 2025 14:27:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBC10C4CED1;
	Mon, 10 Feb 2025 14:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739197692;
	bh=EzTEtZ2myVnXIZ24uN49qpBxcFhB3crO0seUCyVpGfg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gxhUTaXTUTI0ugvO7xoYJDKeCLEmCREUQUP3GJlmw5KdTweB6j//oBqZ6cHQ9rIAw
	 9UfOC3wxNTGAM0k2lEW1pooVxXV9xZn8W6Y7dxLMBlQaykFOgpErO/3UCKZKpgjrJ2
	 VNElSthIfeY8dlps7TTYEVs6Gc+Xoh0K7ppTy1e+Nn3gYY0QLFhx3tg6CGxtA5qA4w
	 v39MplyLaqteTE4/HZ6ey8QxgOGe2RSZZzPnVYNArnh9vTtBlA59DefOJplt/2FZC7
	 J2NkyN9EJYxl6Pm9qw34agxIXtL7EMzk58DD6QGuTbQhH+MTuLabA+uyWNhUbwXPfq
	 +LPEYEwxynUlg==
Date: Mon, 10 Feb 2025 14:28:06 +0000
From: Mark Brown <broonie@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: ASoC: rockchip: Add compatible for
 RK3588 SPDIF
Message-ID: <8cf5071c-0f3e-4a5c-8866-571aff717974@sirena.org.uk>
References: <20250120-rk3588-spdif-v1-0-1415f5871dc7@gmail.com>
 <4315116.iIbC2pHGDl@diego>
 <56d128d7-c4bd-48de-b823-0b88147220e1@sirena.org.uk>
 <870305083.0ifERbkFSE@diego>
MIME-Version: 1.0
In-Reply-To: <870305083.0ifERbkFSE@diego>
X-Cookie: A beer delayed is a beer denied.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_062812_915366_F0FA8EEA 
X-CRM114-Status: GOOD (  20.89  )
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
Content-Type: multipart/mixed; boundary="===============7644893731788962348=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7644893731788962348==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="npqY4rgAKF91WSV9"
Content-Disposition: inline


--npqY4rgAKF91WSV9
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 10, 2025 at 03:04:22PM +0100, Heiko St=FCbner wrote:
> Am Montag, 10. Februar 2025, 14:20:58 MEZ schrieb Mark Brown:

> > directly if something has gone wrong you'll have to resend the patches
> > anyway, so sending again is generally a better approach though there are
> > some other maintainers who like them - if in doubt look at how patches
> > for the subsystem are normally handled.

> With it being 3 weeks since the patch was originally posted, I thought
> it might be the time to ask if the binding-patch was still around.

> I vaguely do remember you saying in the past that if a patch hasn't
> been applied/handled after X time-units, it wouldn't be in your inbox
> anymore, but am not sure anymore ;-) .

A big part of what that form letter is saying is that it's better to
chase by resending since that ensures that if things have been lost the
actual thing that you're looking for action on is right here.  If you
just send a ping either it'll get buried along with the original patch
or there won't be information to hand.

--npqY4rgAKF91WSV9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmeqDPYACgkQJNaLcl1U
h9DVogf7BPOYta+bQCVLrNNjoe5Z+7pVxkJCieo659XYOA1nbkym8aIQTdh6RVn4
QalKJ98JYC34XWtZ6bM3+0En7DmjQ3lBRfW5VGl96k/DEvcLiPnMw1X1X3hD/txP
qimrvrIY+V0TxuZD/EBMt6PyqJLu4nJLi4hKkk9NQUK5ElDEnt0gwsx9h0nZpVdC
4iTXpm95j8QJ8eQq039hpMfyYUqsBUSaSAmePzHtecpWk3u5Md3nNRdNVUSGyGU9
uSLO/rY4MbagswLBqq7LDdVF78VSPFuRH0IoEioVXvFuKFLhnn3KfO/LwXL1cYzh
pNCEp+G/XfFXmu6jahMCuiTOjKIOKA==
=0+At
-----END PGP SIGNATURE-----

--npqY4rgAKF91WSV9--


--===============7644893731788962348==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7644893731788962348==--

