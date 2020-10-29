Return-Path: <SRS0=CN2P=EE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6082C4363A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 18:00:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 22D9520790
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 18:00:01 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="hR9Obpir";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIEzdSBl"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 22D9520790
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ypfhCq07uHDn6U38I+DFLxl8iDWAkkoH0V2u/92Y6CE=; b=hR9ObpirHS46T8VyGF699N4cN
	1OWlmPeaUTWPoYD8v/WpZG1KfQCtnp+BBOM2n1qxh1lHOSOxYX3braUU99nbkHFYTWfEJtsH+QBQ6
	Dx77IAZISrAbkdmLG+Yh2qYi7KgOJgcBnvBw0qcPBvzeBINFvdCtR9dsuO1cxZZacelVC18gZl4pN
	clwBIJXuRI8hLfYD64AmiS1wplYNYo7BIJzt3lzc3d+wCsFFolefI4+xLyVBkNidr+kqQjtE5E0AG
	wtSGnNznMyeKw/Pvft18nBybr8vdjykA/5RLK+ks7UoqgkD1B2H7LxDCwBsE+8+RxS4AEIrPAyoE5
	pW0VkZGJw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYCDJ-00054H-Tg; Thu, 29 Oct 2020 17:59:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYCDI-00053f-Ed
 for linux-rockchip@lists.infradead.org; Thu, 29 Oct 2020 17:59:53 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 85B6F20790;
 Thu, 29 Oct 2020 17:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603994390;
 bh=AZhOU2W6PRWrW++sUwojyV8r0hQKprOKEkuphmHahJo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pIEzdSBlrcWxEoEuNilbOwp5u8kO4Q26+P+M2ItJj0B4B0jOS8vPB+rK7f2uCMBqP
 E3CxhD3RUIbUpQkg5ZEUJwilewx80cqkLghXR+y/A1dSSuVeWgjXf2lgGqjSyDk52y
 C9cxJ8EjkUqHMLg6YkSrTj7sn2nNt4mOikajvZsA=
Date: Thu, 29 Oct 2020 17:59:43 +0000
From: Mark Brown <broonie@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 00/18] Add Hantro regmap and VC8000 h264 decode support
Message-ID: <20201029175943.GE5042@sirena.org.uk>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
 <d4d080658113ad97816eda9262736e5fcc7b017c.camel@collabora.com>
 <0dd9fb9d-3f33-b9b0-a7a8-6d3111e92d64@arm.com>
 <5a653c86f887bf8f3d34c4d620471300b612a4d8.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <5a653c86f887bf8f3d34c4d620471300b612a4d8.camel@collabora.com>
X-Cookie: Monotheism is a gift from the gods.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201029_135952_699344_4D769281 
X-CRM114-Status: GOOD (  17.39  )
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
Cc: Fruehberger Peter <Peter.Fruehberger@de.bosch.com>, kernel@collabora.com,
 Daniel Vetter <daniel@ffwll.ch>, Adrian Ratiu <adrian.ratiu@collabora.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kuhanh.murugasen.krishnan@intel.com, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4504906888134584946=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4504906888134584946==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Rgf3q3z9SdmXC6oT"
Content-Disposition: inline


--Rgf3q3z9SdmXC6oT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 29, 2020 at 01:27:08PM -0300, Ezequiel Garcia wrote:
> On Thu, 2020-10-29 at 14:15 +0000, Robin Murphy wrote:

> > Or maybe the regmap API itself deserves extending with a "deferred"=20
> > operating mode where updates to the cached state can be separated from=
=20
> > committing that state to the underlying hardware.

> > ...which, after a brief code search out of curiosity, apparently alread=
y=20
> > exists in the form of regcache_cache_only()/regcache_sync(), so there's=
=20
> > probably no need to reinvent it :)

> To be fair, and despite it could seem an anti-pattern, this particular
> wheel is so tiny and trivial, that I'm starting to seriously consider
> reinventing it.

> I've been thinking long about this but just can't seem to see exactly
> what benefit we're getting from using MMIO regmaps here,
> as opposed to just a simple macro with an index, a mask, and an offset.

As a rule of thumb if you're not using a cache or fitting into some
other higher level framework stuff that uses regmap then I wouldn't
bother for MMIO devices.

--Rgf3q3z9SdmXC6oT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+bAw4ACgkQJNaLcl1U
h9BrSAf/dmEzyzrzFZNPwE6FzIAV8o45wj261p4lQVkPR6Vl5CvsVKpC+h8d9ArY
t3plejxUu4tD6bQxgr4Z8hH21CstLRRfTBvMxw3B30qRx+WjCcoUp3ITBvQ4un9G
wUQsSkBqR9sbYFROEenraceUC4digdUJ4zUF+UKtmLcOH/qmrio1PSBsJyOugFRd
KHp5PxSUG18I93T1S/MLSuxpi11ZTvgXp3g41eDRia+joSz7OAHbTkeMsn8vkLYy
rMJpJDOC/UN+lOMqM7XLaD6nuY3jVDVoJqRPFDHOij/tPaDOmScjK4RRvWQwyNR3
OV4/0EqCGUf6z5RAwF6t6yedKSYzSQ==
=uxou
-----END PGP SIGNATURE-----

--Rgf3q3z9SdmXC6oT--


--===============4504906888134584946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4504906888134584946==--

