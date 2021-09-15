Return-Path: <SRS0=WjyS=OF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9683C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 14:11:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 84FB661164
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 14:11:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 84FB661164
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3llB3h6t9UelMeh8ELmwh3liO7D2FDcKZQm1ly64f1k=; b=JyatpJLu8WVlYG0v54BojJglap
	szHXhskmmCxjSM8jBHCf6w3euHGreDyOeKVdVxCvRunp+Twq+f7moYrkegvL8SsMNhw2EUXTo9ejp
	7s0TTxEDmV3aH/Ytz6/WSnys1rFbsTUuPUHpGr8zFRSoecKhktvTj+tOLRry9eQ0Maq6yd19wK8lr
	A9bEJfS62XHCkOcAIuYRkbthLhuRe0EsBm3dRXQaJNlr3wYEDEeakoNaiCEbiXz/FjzXSPco7KjOY
	RSL/a3gwG0pcXFhboEinP8sJBAOvGC9Q2e1922U07UViifVNtgALsEwKA+txvThRkLn8vUNuHF2ck
	JC98b3cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQVcx-009HXD-OM; Wed, 15 Sep 2021 14:11:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQVck-009HUy-6N; Wed, 15 Sep 2021 14:10:55 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2D688611C1;
 Wed, 15 Sep 2021 14:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631715053;
 bh=YbvuYcfAW5Fjwy98n/gQJCW044gac9hZzpuoydBe/dQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NhHMNxjD3PIagYWukAJT16WejQu1Dbiq44S2cQuGmDemU2s0PzXskS0Mb6Irn2nY0
 BvejqDNI6tgKrU1ojfMAGWva+cvxOeL1smppWSvCJUDTI7NVGjiBan1X2KNSHfm7Cv
 SSpy5IqfbXrxWkAx/ybCRQtL/d6EL853pp8VMM72yCXx3IQT/T5e6tI417NVsb0NcG
 apEMwbvZhpq0W4c93pt3BoeiITIqoc9OSZs4wJcnpAcw2hMTEjTT57GRqIozJsev+y
 lxg8x+/sbjcNbn/yBiGmplD1n/bTKDfkkMtprEac4uc6TZbXNEVB2zY8NoV8SVuzGK
 BaTvvFkw5hLng==
Date: Wed, 15 Sep 2021 15:10:12 +0100
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/4] dt-bindings: sound: add rockchip i2s-tdm binding
Message-ID: <20210915141012.GC12513@sirena.org.uk>
References: <20210903231536.225540-1-frattaroli.nicolas@gmail.com>
 <20210903231536.225540-3-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210903231536.225540-3-frattaroli.nicolas@gmail.com>
X-Cookie: The more the merrier.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_071054_293382_66911AB5 
X-CRM114-Status: GOOD (  15.88  )
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
Content-Type: multipart/mixed; boundary="===============7559642802714635998=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7559642802714635998==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XWOWbaMNXpFDWE00"
Content-Disposition: inline


--XWOWbaMNXpFDWE00
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Sep 04, 2021 at 01:15:34AM +0200, Nicolas Frattaroli wrote:

> +  rockchip,frame-width:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 64
> +    minimum: 32
> +    maximum: 512
> +    description:
> +      Width of a frame, usually slot width multiplied by number of slots.
> +      Must be even.

Why is this in the binding?  This is normally configured by the machine
driver setting the TDM slots, not through DT.

> +  rockchip,mclk-calibrate:
> +    description:
> +      Switch between two root clocks depending on the audio sample rate.
> +      For integer multiples of 8000 (e.g. 48000 Hz), mclk_root0 is used.
> +      For integer multiples of 11025 (e.g. 44100 Hz), mclk_root1 is used.
> +    type: boolean

Why would we not want to do this, and assuming it's to do with
availability can't we detect it simply through seeing if both MCLKs are
available?

> +  rockchip,tdm-fsync-half-frame:
> +    description: Whether to use half frame fsync.
> +    type: boolean
> +

Why is this not part of the normal bus format configuration?  I don't
know what this is but it sounds a lot like I2S mode...

--XWOWbaMNXpFDWE00
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmFB/sMACgkQJNaLcl1U
h9AyVgf/R1hx+9U5odYrV/J4RA9uPRmhSRnrn3d9jvqBMcYWbZUVHv4dTKqn4SqK
QUkjtLocXUuai3S1P/4XuaoN0HvXjNaPsGxo7967IUUgfxrWbRiBIsG+DQJiAMWS
95KX7lNSNmjf8ZGDY5LTp78M8fhzUpB0zedTNQw5D9r8aCHTBAmIUw+fKOJFlucS
ndk/eJHrgcxpcvaVZX8nuRdgAfJpv/i4v4+K6I/dAHsiGOkbFwiJiOIZ+psy7wpr
lp5ioBhSuQQEH/sA62y0nSDVXggOJEPp+APhIqeiGDTmiZ9gabhBClhDHQ3aylpJ
9vmhvE2NT59s90BGBWMnFEQfyqdk4A==
=s91p
-----END PGP SIGNATURE-----

--XWOWbaMNXpFDWE00--


--===============7559642802714635998==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7559642802714635998==--

