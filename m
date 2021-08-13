Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85DB3C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 15:31:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4440260EFE
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 15:31:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4440260EFE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=37xBukjt7nHTeARv1B/TqOTaRSgBIoY2DRM5Pzw6oyQ=; b=el1h2OFbKKitqh7J/UJdxgEERa
	DL7Kyt/jHSzF8M2dph3cuX+umK8u/0f4uGJDgNwzSk+W1m6fx92uQTTessU8iz+0K0stTKWq3pdaG
	vzI47+ypIuRA3rlU+lWNcdxNgzWi6+nSpig/Rbr8R4G+bjWq/E5sJdVXlTrmQsLyLtkNbV4iGqGhm
	EFRKECeYNAxMpoCza3eEhRh4GCmivZSd5acCXdHayD3rShlX74B4lvjEmysj5qkkxZNdvELk8JQjw
	ikXh+9Pqaz7jGqfUSmvNpvOGL5yhj1KvGJDrwhdl6M1/RhgV5FTcE+Y6o84IfAI0JO3tEkG/IBlUH
	TFMKn2tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEZ9V-00Cy6K-Sw; Fri, 13 Aug 2021 15:31:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEZ9F-00Cy3l-G0; Fri, 13 Aug 2021 15:31:10 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3121660EFE;
 Fri, 13 Aug 2021 15:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628868663;
 bh=JwwGuM2BqIZs9zpC6YK9XxufVemngqiGneP+sZSA5EE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nY+lSNQfv/TGRqXFuBK6yyZ+uB+4HSKjc/j9LO6e58ZoSk14cW/PUEQNjB5DLvLhN
 lMhrIUjU/WuzgPgUU6//eeGHdLehuYWzFyVKlqQlvqK0zwN4Nj1FvtXYUP4fTqPt3i
 to1skHlqSY4vjJrIVdPn5AArct8g1S6Qoq8rLlD4yPGEUhdqNoDSU9Vd930ZB8+keI
 x8AdZ/iwxMZWnG6JUYDnHDzxlMTmlWHYZ8IZc0UOquPLKMwHY/Gkx9skO4wLDHtNU4
 OQDQ5X+H9Wn/Ask4Ayu162cwaIIPmc1OfTzU0RomfWNpzzxgAYqoWxqH5EHXTfskEd
 xSlpw2OeXKg2w==
Date: Fri, 13 Aug 2021 16:30:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Simon Xue <xxm@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] PCI: rockchip-dwc: Potential error pointer dereference
 in probe
Message-ID: <20210813153043.GB5209@sirena.org.uk>
References: <20210813113338.GA30697@kili>
 <01b7c3da-1c58-c1d9-6a54-0ce30ca76097@arm.com>
 <20210813135412.GA7722@kadam>
 <2917a1c8-d59b-43b1-1650-228d20dfc070@arm.com>
 <20210813143250.GA5209@sirena.org.uk>
 <566c26bb-c488-8c86-f47e-6a748b9b6c77@arm.com>
MIME-Version: 1.0
In-Reply-To: <566c26bb-c488-8c86-f47e-6a748b9b6c77@arm.com>
X-Cookie: E Pluribus Unix
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_083105_615712_8F15870F 
X-CRM114-Status: GOOD (  22.21  )
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
Content-Type: multipart/mixed; boundary="===============7769968847287242894=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7769968847287242894==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b5gNqxB1S1yM7hjW"
Content-Disposition: inline


--b5gNqxB1S1yM7hjW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 13, 2021 at 04:00:45PM +0100, Robin Murphy wrote:
> On 2021-08-13 15:32, Mark Brown wrote:

> > It also encourages *really* bad practice with error handling, and in
> > general there are few use cases for optional regulators where there's
> > not some other actions that need to be taken in the case where the
> > supply isn't there (elimintating some operating points or features,
> > reconfiguring power internally and so on).  If we genuninely don't need
> > to do anything special one wonders why we're trying to turn the power on
> > in the first place.

> Sure, once you get into it, regulators are arguably a rather deeper area
> than GPIOs, so in terms of the NULL-safe aspect anything beyond
> enable/disable - for the sake of keeping trivial usage simple - would be
> pretty questionable for sure.

enable and disable are among my biggest worries frankly, if the device
was supposed to have power and that didn't work then there's probably
some kind of issue.

> A lot of the usage of regulator_get_optional() seems to be just making sure
> some external thing is powered between probe() and remove() if it's not
> hard-wired already, so maybe something like a
> devm_regulator_get_optional_enabled() could be an answer to that argument
> without even touching the underlying API.

I'm fairly sure a lot of the regulator_get_optional() usage is just
abuse of the API, every so often I get fed up enough to send patches
converting users that look like you describe to normal regulator API
calls.  People really don't get the dummy regulator stuff and seem to
think that _get_optional() is what you use to avoid writing any error
handling code :(

--b5gNqxB1S1yM7hjW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEWkCIACgkQJNaLcl1U
h9A88Af/fCT+eznJ+OGWktrk7Ss4jZUVj0ZLLoXhrm38qQ1Sm9WRQr1d4TETmjlY
L6xIUzkJae36oARdmMDMBCOHytAdCL5Lu55IkKXcISEWFqGJB3Yi5Ea3ddW2F03H
zHXEo0Pcn8OXoipdFM/LYNVYy3YqAlhPWFCA4fVw2w95RBj4R477UF+Vd7LLaP8x
8xriyUuvHtZ7Kh56e3kBvtBxxQkzR+aOoLPI/bj0gapS7PIOOuLfrltPB3fRyb65
7oXj276oOT7SmYeLVkAPQxbtEcMrHwPFKB7LoAZcTTdsVu69QsNEPjQzrTyYzLnl
ZtjyaaqarWXZHcu1tJKDUQqN8evk/Q==
=b8Pd
-----END PGP SIGNATURE-----

--b5gNqxB1S1yM7hjW--


--===============7769968847287242894==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7769968847287242894==--

