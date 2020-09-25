Return-Path: <SRS0=GXEY=DC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE92C4727D
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 16:52:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 40F4920936
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 16:52:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="E9i0Bk/2";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTdBKkL5"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 40F4920936
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V8bymYHd6lGsOJEEQNHyfAE3JQXGDXB4Al9XlVTPqtU=; b=E9i0Bk/2UkLjr4EvdvU7Ufhed
	5bzFjtGoOW24YLC1LLd3/Bahe6zBSrNC2rATInaAJDffcCr0lqlKt9Ibv/25T58aSpMUVhb//O56n
	BIihxfNklQogBMdOkUMuXoTaIfcbFhbmYimU2osr+OYLyeGG8LHO1GbKCONw2Joi82Hw+I8SxAfQq
	3MGT8fi5fgrmV4AaiywlJHmXf70N2MgsjlIgsE0o/LeYVFVTL6MV6/tsQfyyd4NigxI1XS49K7B9Q
	j+2+hcncTJeuUtDn2UMxBDGw/ZKsHzPu115CUq7dUijPFSUjo3Th//5r/7aQ0biExmnjiYR1QSa2N
	E7CrXqpGA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLqxc-0006GK-DS; Fri, 25 Sep 2020 16:52:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLqxY-0006FZ-L8; Fri, 25 Sep 2020 16:52:37 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 414C2208B6;
 Fri, 25 Sep 2020 16:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601052754;
 bh=pAs4PaULX4H5SxYmIVtY8k566DgwXqnpA8RvoFzZpYM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YTdBKkL5tYw/mImn8swZhrGk9vzf6nzl7Hw0XikzigszJWCPBiP+hWaf/13VbN389
 5FIClElHwfvwmJnLWq40CsK3iFZD6ElWocTEo+6s1fIGB2yQyY4hiuAK019ZjvVNCA
 cRFeddNyhDjvsggDQf+fZfo+WddkNz8XZaVKIJ6A=
Date: Fri, 25 Sep 2020 17:51:39 +0100
From: Mark Brown <broonie@kernel.org>
To: Tuo Li <t-li20@mails.tsinghua.edu.cn>
Subject: Re: [PATCH] ALSA: rockchip: fix a possible divide-by-zero bug in
 rockchip_i2s_hw_params()
Message-ID: <20200925165139.GH4841@sirena.org.uk>
References: <20200830095106.4412-1-t-li20@mails.tsinghua.edu.cn>
MIME-Version: 1.0
In-Reply-To: <20200830095106.4412-1-t-li20@mails.tsinghua.edu.cn>
X-Cookie: Onward through the fog.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200925_125236_762872_C31237E2 
X-CRM114-Status: GOOD (  12.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: alsa-devel@alsa-project.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 tiwai@suse.com, lgirdwood@gmail.com, linux-rockchip@lists.infradead.org,
 baijiaju1990@gmail.com, perex@perex.cz, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3917390864273023585=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3917390864273023585==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VaKJWhUROU/xPxjb"
Content-Disposition: inline


--VaKJWhUROU/xPxjb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Aug 30, 2020 at 05:51:06PM +0800, Tuo Li wrote:
> The variable bclk_rate is checked in:
>   if (bclk_rate && mclk_rate % bclk_rate)

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--VaKJWhUROU/xPxjb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl9uIBoACgkQJNaLcl1U
h9BPeAf9H4D1Q4H2endgDKFyhv77X9QSGBc0ttIMBIVm0+Sak3GDEkoTnPh6d9Ug
JUOIrJ0MsnS1f4sLC2Vj/NASTEa+cBQLQ2Vup5OBfkCQXBaWSm3J+UwQzujiX3o6
K/1Z4eyCfi83a5nWTlGqrzA7VLcG8Og4YcttIXGxXcOOctfzXrH+NUtZDzXvxxfm
Bn7o/Ja/4wlLRPpbXPowMn7sNlZrxwNAtNhmOobCOgZtCGPhJLvdrEk035oQK/82
y+s3JQChKzfTsDyyo10KR/nC7unePe9EWdsuEobaX47B2OywzsjRX4nD9Jw8NjRD
WRUxBaZJYk3Pblx0uegXkIv09S+Z+A==
=kTPr
-----END PGP SIGNATURE-----

--VaKJWhUROU/xPxjb--


--===============3917390864273023585==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3917390864273023585==--

