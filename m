Return-Path: <SRS0=gs2I=DM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4917C4727D
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2020 11:01:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C3D320795
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2020 11:01:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="0cTk+mFE";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="SD/Qgw9F"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C3D320795
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MJ0Bkr2Od0Sw886xF621zd4xAEG4/mR3TdNkjlWRUx8=; b=0cTk+mFEmcjrKXTEpdHmexKki
	DtlCgenSTO27nvn1pVcZ57gBM3WcrZOc5bMFMvsJzJenyG6D+XzOcxn0GeSKyULpgUvwhKZWcpifE
	P10KpZPJA+eyO2CdPGwkwX9lzbHY5zABXWgr0DcYndoO/NpYmhIfLCuI5pSlWOZf3rwQfB8DAcIlQ
	QsdyHJz1U+4K9EDYsw8PeQY7oOm7ntJWyMHTGIxg1NnRMC3OQvEr1uL7yeabpe9oXo2M9KLWL6GLX
	dCpWPCoLUeqDxEHa+4AjnyC2uRZLMf+IKAvtIND42XfJO0lY80pEdhqWQapt41V0LukMgvRfxEV+e
	TdPZD762w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kPOFF-0004PT-LH; Mon, 05 Oct 2020 11:01:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPOFD-0004Oa-C4
 for linux-rockchip@lists.infradead.org; Mon, 05 Oct 2020 11:01:28 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 831DF20578;
 Mon,  5 Oct 2020 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601895686;
 bh=zT1ggZQfYdTWKaaKhhfthWc1Wmu2z51MEgqhMdjk+B0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SD/Qgw9FIMuzORoe+m+VTXdFP3akbnWWNU81Odi9c5GKdU7J+GKmby2c8netpfgmA
 adZ1oHsaoFEdzavqQfYQskxWQibYcQ5HrNcWX5oNl7SvediEUDK9mfzz+po5gPOLGv
 GYaHousl0JgdpMqFSA4SRgxVcsLFkSnV03Ue+OnE=
Date: Mon, 5 Oct 2020 12:00:22 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: Another round of adding missing
 'additionalProperties'
Message-ID: <20201005110022.GB5139@sirena.org.uk>
References: <20201002234143.3570746-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20201002234143.3570746-1-robh@kernel.org>
X-Cookie: Most of your faults are not your fault.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201005_070127_470156_424EDB83 
X-CRM114-Status: GOOD (  13.33  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, linux-leds@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-rockchip@lists.infradead.org,
 linux-serial@vger.kernel.org, linux-mips@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-gpio@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, openipmi-developer@lists.sourceforge.net,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-hwmon@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-spi@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 netdev@vger.kernel.org, Baolin Wang <baolin.wang7@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: multipart/mixed; boundary="===============8691848632791761388=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8691848632791761388==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6sX45UoQRIJXqkqR"
Content-Disposition: inline


--6sX45UoQRIJXqkqR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 02, 2020 at 06:41:43PM -0500, Rob Herring wrote:

> Another round of wack-a-mole. The json-schema default is additional
> unknown properties are allowed, but for DT all properties should be
> defined.

Acked-by: Mark Brown <broonie@kernel.org>

--6sX45UoQRIJXqkqR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl96/MYACgkQJNaLcl1U
h9DVIAf/YahMxzxRA1HRo6CR552Pzfu8pWuFTeWzZTi4iIVW4oR/TUvjaBuMBAZF
jIi3Kk2yR9lW+bCaPvUIjXsdB31S0iHgXORKR9ByRsx4fZS4MC/x9KFlv/v5dziQ
nMO+lF+vyZQrYQrfwQmBJ5JdbeM9r2Oh+tUBcsKZkPsvg10glGuisr1mO1CEaEuL
zcz31MfKpdGbLUEOlPzruZ5uNt0/FHU6FxOusAGW9lkYx+c7GjNWtdDh8h7gzd1n
SzrDKnBlTWCZ+Owy2r9hJS6ow+fIjoYDT+Xtp6AvrSk9oJ6hggQ6NyxPpesZWbKV
3Kfe7+KGLuHI4AMEU0u/czJWmNdEJw==
=5yDb
-----END PGP SIGNATURE-----

--6sX45UoQRIJXqkqR--


--===============8691848632791761388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8691848632791761388==--

