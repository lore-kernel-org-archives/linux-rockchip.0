Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C3B1C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 19:59:29 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8B618615FF
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 19:59:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8B618615FF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rPghkGxz5ljNXtkocEJOESNiqFu8nHPDKgjcRoCtqKw=; b=H574EktW+k7V3wO+TUUjntEcV
	6WB7D5lXzUNuTwxp0hm0jdOUfAdV3jV2ckCmZ681uF1GbmlvFpr+aK0KeOJ1J/MJwwwFpOCqph8gi
	Jn69sNpAJ1XDKMpQ0+U9LxjTyj3ImbuJxHaOkff5baiZYSQqRh9t9KpziKzWNhs02dPrkOdzCZp0o
	sNuXm8MpVonChQVRp8GIbcmdeHuDCPACG9HXQ9VsS+QLRvY8n8UrmkqKWs7vxHIEllbnetJumxx/S
	T6JZTrRPhdKe5jBVqzSlDPPTJFIAITO2fEnMdG+vVZ/HtYeWRBLZHYni95QeiT/KqF/jhWdnef6KU
	Td3CKKbtw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhdxx-008tQr-KD; Fri, 14 May 2021 19:59:21 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhdxv-008tQf-P3
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 19:59:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=erjC9DMbYkudgie37WvwoESPUVCn/5A3hv2P627gTBA=; b=3/jLA1nS6msWXjpQQ31Vn12ICV
 cmwLG0DUzWYZUVoDnN9lKhc9KDIh+enw055QocIBtR1+2miEWXJ8hKhgI/2LHRySx6CtHg57OvUCu
 W7V+P8/ThDVKHHUI+C3X/epA33U8de7QviaUGa8qE9q7XOyy98TAXRThQd7ZJz+2vIJsCMRQUkuKN
 uXH0fJIAmp5cIGEN+33SE1k4QM8fB6hom240Ud79U8MjFd4Cp3rDpVR8EHAX8YW6G6Rd35OekcyTa
 KiaQdZpa5NPas3y7rcagOAmvrGIskXDKLqdHc3f01A/Nx35Q4WUvL8EIQU6mYr2midfhYrQSDVssS
 8e2AJtIw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhdxt-00CDpq-4E
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 19:59:18 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 25B7361574;
 Fri, 14 May 2021 19:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621022356;
 bh=kvpM2wP0uIglMvvx7Q23dMMBxKa2Vo33yjfFPo9LiLQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O1WtW9SfpMHAjK+C5VCcOBrmdexpWk18bUjozXxg5NNigk+ATDstnA8GiZ8CrMJBE
 Bzpl/ejl47SjBh4Dg+4EsuQIN9vMbZYEXgKLzhpzoCl5m6WvDpZsHVExQb1aBwO41F
 AHxsW9bxzm8aXtNDS6oeAdN0Hge2MIoDq7lINRpgldCFi3uW4WvqC9M1H4RO12Ldvu
 bdeBnRZdRYkpejr5mt765gXxNEau/svpcwYSZcvAIBW9+qrpM3ZgP0XfI7tMxv7D7v
 7E1huwY7iaIDs149Fb0kEh0vQmqe1YD8R0ku1pyRNezMNCJAltFcG3h9f3qUu4rKTG
 grrWg1tlG/qVA==
Date: Fri, 14 May 2021 20:58:35 +0100
From: Mark Brown <broonie@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
 perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v10 2/4] ASoC: Add Rockchip rk817 audio CODEC support
Message-ID: <20210514195835.GD6516@sirena.org.uk>
References: <20210514171940.20831-1-macroalpha82@gmail.com>
 <20210514171940.20831-3-macroalpha82@gmail.com>
 <20210514174958.GC6516@sirena.org.uk>
 <20210514183324.GA20917@wintermute.localdomain>
MIME-Version: 1.0
In-Reply-To: <20210514183324.GA20917@wintermute.localdomain>
X-Cookie: Necessity is a mother.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_125917_210362_C6E6C0A7 
X-CRM114-Status: GOOD (  22.74  )
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
Content-Type: multipart/mixed; boundary="===============8486947605915022187=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8486947605915022187==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZJcv+A0YCCLh2VIg"
Content-Disposition: inline


--ZJcv+A0YCCLh2VIg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 14, 2021 at 01:33:24PM -0500, Chris Morgan wrote:
> On Fri, May 14, 2021 at 06:49:58PM +0100, Mark Brown wrote:

> > > +	if (!node) {
> > > +		dev_err(dev, "%s() dev->parent->of_node is NULL\n",
> > > +			__func__);

> > There's no need to fail the probe here, you won't be able to read any DT
> > properties but that shouldn't stop the driver binding.

> If I'm not mistaken this is actually telling us to fail if the parent
> device (the PMIC itself) isn't present. I think I'll remove this as not
> necessary since if the parent node isn't present the mfd driver will
> never load, meaning this driver will never load either.

So it is - I edited incorrectly when I went to reply.

> Below this line however we're failing if the codec node isn't present.
> Are you telling me we want to bind the driver if the node isn't present
> (such as in the edge case where the driver is present and the PMIC is a
> rk817, but the CODEC is not in use)? I will remove the return code if

Yes.

> you think that is what needs to be done. My concern there though is if
> we do that we'll either be in a position to again report a bunch of
> errors for the edge case of users who want to use the PMIC but not the
> codec (in this case missing clocks and whatnot) if we try to bind the

Why would there be any errors?

--ZJcv+A0YCCLh2VIg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmCe1moACgkQJNaLcl1U
h9BDCgf/fcUp6NX1vj4DehSa1d/ysInM3TiL047VkuC5a5gJXUHV+mazQKyvfx7p
4HM9osvdJP9DxW0DMRceJuGUOAMAaZtSi6lpkF95RElw5FUQ46U+lnKcQwWyKyRp
lbqHNiIdwkdoGj9cHr1wp0sQPyQyMUFTMrIydZ6SHaTUkk4i4jOlqsBeMg7f4OGy
itcLEGC8BtzddPnNFM//0oiqDSZfGj7S0yzqyAwtULqndz6E1xQ79hG9IazoFn5C
S8pRJqdITTk/hB+azI+x52JzZrG4Cs1hHezvR8tIY6iSrFjG2SOITEK+KDiVq74/
42JnTRAyk8OYBqh1+b/u3QlvAFAzqQ==
=wmN+
-----END PGP SIGNATURE-----

--ZJcv+A0YCCLh2VIg--


--===============8486947605915022187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8486947605915022187==--

