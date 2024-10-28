Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36619D3399B
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Oct 2024 16:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=steXytTKg8OccVIHBd5vyfpJzDXJu7bod+N+7fn5KEQ=; b=HbMEgYxIHoBUTyKn0HDCclgAOY
	38M2WifL//1p5dUhkys+jD3Y93Lk6SLKijUHNDo4gKLHbZjfHxXvJeqAdXdhuFhzFu+xjEE334zVj
	Sl2mFSaJ9tZi53RYy8ZOq5ckSWcY42aVa033kHc63abR6wQUrLFO52SRP1A66gm2j+04VADmQcu4o
	C5xLKX+Ra7wkUXKFsoRfRHRDfoezo43pAeKnxjC6fcc9PPFIcO83249nEiCZ6Fb1qWGs0tlzWhsnh
	zbjOoZXKUUvIG6+d9kUlwrV3WoUgNl3FDpJrdpz5IoS0O7D2HoxiNR9k0gS3P08kovDTiXQzBRA1H
	3ErrtXZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5SFU-0000000BPrq-2Xw8;
	Mon, 28 Oct 2024 16:05:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5RqT-0000000BLMg-2TMG;
	Mon, 28 Oct 2024 15:39:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C42BF5C5B61;
	Mon, 28 Oct 2024 15:39:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CDF4C4CEC7;
	Mon, 28 Oct 2024 15:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730129992;
	bh=Fx4vDdViRJ8GcQyvhRhbci3FJE9Eix0UuCepUomfBko=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MIU4DVl/ICbBONRfOJ78jWcnPlXWX85nIcNollz35p37CBnWr9WE2D9YFGUqwpy6T
	 AvMZkI8V/mOsMw7s3ICzEeTM7go3Wbb1xF4fflMPVLaR94dzQiXS9mSokovK150zzg
	 Dl+56JLPy1/2kkXed3l09MLTA0Ra5c+m1gyVO8m+ELozLlI304K04eSdUx42QlTzkt
	 cuuZxEqgUg1ezOWocpl4laFF4Afho3rBK4cGrMXZjZDRHZXa88FLFc2xa6kf0DoH3t
	 V6s/obpZt83YsWAihAQpvAWPl1LYvwI3ARFkaPn3EOCrj6rhO0Aii+53fPf+qEQMIE
	 aOHXQT3sJ6WSA==
Date: Mon, 28 Oct 2024 15:39:47 +0000
From: Mark Brown <broonie@kernel.org>
To: Mikhail Rudenko <mike.rudenko@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Liam Girdwood <lgirdwood@gmail.com>, Alex Bee <knaerzche@gmail.com>,
	Lee Jones <lee@kernel.org>, Quentin Schulz <foss+kernel@0leil.net>,
	Linus Walleij <linus.walleij@linaro.org>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>
Subject: Re: [PATCH] regulator: rk808: Add apply_bit for BUCK3 on RK809
Message-ID: <a979db13-9ced-487a-ad35-47d6ea50ddf2@sirena.org.uk>
References: <20241017-rk809-dcdc3-v1-1-e3c3de92f39c@gmail.com>
 <87v7xcp7bh.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <87v7xcp7bh.fsf@gmail.com>
X-Cookie: Remember the... the... uhh.....
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_083953_710800_34E29425 
X-CRM114-Status: GOOD (  13.15  )
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
Content-Type: multipart/mixed; boundary="===============4705761337220697322=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4705761337220697322==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5gCpyIDO+BYmkXID"
Content-Disposition: inline


--5gCpyIDO+BYmkXID
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 28, 2024 at 06:20:55PM +0300, Mikhail Rudenko wrote:
> Gentle ping.

Please don't send content free pings and please allow a reasonable time
for review.  People get busy, go on holiday, attend conferences and so=20
on so unless there is some reason for urgency (like critical bug fixes)
please allow at least a couple of weeks for review.  If there have been
review comments then people may be waiting for those to be addressed.

Sending content free pings adds to the mail volume (if they are seen at
all) which is often the problem and since they can't be reviewed
directly if something has gone wrong you'll have to resend the patches
anyway, so sending again is generally a better approach though there are
some other maintainers who like them - if in doubt look at how patches
for the subsystem are normally handled.

Please don't top post, reply in line with needed context.  This allows
readers to readily follow the flow of conversation and understand what
you are talking about and also helps ensure that everything in the
discussion is being addressed.

--5gCpyIDO+BYmkXID
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmcfsEIACgkQJNaLcl1U
h9AP3gf/Uo6vVVZ6YhtYq18TjA/BmdNMf6/mLW1e27b4glU3DHiJ0/C8Yi0FIFgq
v0b2Xiczw/KjSc5T/xu/lz4epzO5vCnqOQ6zk+xzUyOkAg5OGcEEXnq7Ru75YJUL
+CZj+n8OzccZ+OBtwCSV4AJeValaUO06/ZSRdkY8Y62/fQphXNTJ0SpBBMEV1LJd
Nb2aL2R5gkQzxRdzEEtG/I8BZIh5XG9PtC+LgkqsoPBCZKderLmJ5huCkrnuBVUN
DZAF6s6jYDG+wjXYzdfdII4o3l44UDarGzcViWIYlZCeuhw+YPXNxNp0L8Z28bFs
ln4TlJl1jvXbqEciGDsDAjPI3RmpYA==
=29HX
-----END PGP SIGNATURE-----

--5gCpyIDO+BYmkXID--


--===============4705761337220697322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4705761337220697322==--

