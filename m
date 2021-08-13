Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6FC9C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 14:33:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9721A6103A
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 14:33:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9721A6103A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gXnlrFivtixGh5bPjaGhvAnfweDdehkJP3XAnaE93SQ=; b=F7lTqx5KTSduDymL/RYOeNVDbF
	YhDtWkvvJMaobWYhqNeviVLZXaFT2BijdAnW19NSIMaDQfJNCkCkYl/h+bCbDyS2Gj9t/AB9wMH/v
	EzrTqbeEWfejT18VYxM6ugdx23CbMqk8dqqBzayeFvGspmMuehQHFukOtPaaNEQqVx721AR1unJ3D
	e2Q5xVNfHBmOWjjyDN84hiBRGHLAPf5Yt3B51dBCwevrWTGOGAZeMwNSFkyb1Q0dkpnYz6gVXzkZA
	Q2Tf21HiMlFIhuJT/4pxVjIO8G+uXXR+s4ZU89YpKrfM+X4jM42WWA284oU+W3BOrYb1E6Jcc43Qe
	hvRy9W6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEYFQ-00CneV-Il; Fri, 13 Aug 2021 14:33:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEYFD-00Cncn-FL; Fri, 13 Aug 2021 14:33:12 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 635FD60F36;
 Fri, 13 Aug 2021 14:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628865191;
 bh=qvwL98T6cFe2Y5vJWvp7Ip3FI+1vuxrallktmBOzxPQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AtCOoTooXnFazv9toErMswqnyTuGT8vAb2T2Urk8jDe6T7wSPcMSSQr3ovy6y4CSU
 jBq6j5lgRZ+xyapnrUnlh8W50nwaUK8ut7dbjWXXFfAt5qXis/q+iZKvI1fwxAA+Ev
 k4y2S0/9ny9IcbOHP74G4fowSuazoOyLurcxK1Hoyu5iSvZ6AFQ15pd+ENXrnIep1Z
 IlN+95iGwpxivc76a6qlRIuxvYtqGvuXuqVc35S1TbfvnmAzF1mvRblRcu4WQLimap
 9VfzOB5EVVEtDg0LanY6kPGJJvHBVGef69qcgIjbM0LLaXdh3BLprPL327nCImuQhI
 JlMHieBQg7HoQ==
Date: Fri, 13 Aug 2021 15:32:50 +0100
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
Message-ID: <20210813143250.GA5209@sirena.org.uk>
References: <20210813113338.GA30697@kili>
 <01b7c3da-1c58-c1d9-6a54-0ce30ca76097@arm.com>
 <20210813135412.GA7722@kadam>
 <2917a1c8-d59b-43b1-1650-228d20dfc070@arm.com>
MIME-Version: 1.0
In-Reply-To: <2917a1c8-d59b-43b1-1650-228d20dfc070@arm.com>
X-Cookie: E Pluribus Unix
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_073311_583511_7B4B65DA 
X-CRM114-Status: GOOD (  12.38  )
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
Content-Type: multipart/mixed; boundary="===============8158565464703028151=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8158565464703028151==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="G4iJoqBmSsgzjUCe"
Content-Disposition: inline


--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 13, 2021 at 03:01:10PM +0100, Robin Murphy wrote:

> Indeed I've thought before that it would be nice if regulators worked like
> GPIOs, where the absence of an optional one does give you NULL, and most of
> the API is also NULL-safe. Probably a pretty big job though...

It also encourages *really* bad practice with error handling, and in
general there are few use cases for optional regulators where there's
not some other actions that need to be taken in the case where the
supply isn't there (elimintating some operating points or features,
reconfiguring power internally and so on).  If we genuninely don't need
to do anything special one wonders why we're trying to turn the power on
in the first place.

--G4iJoqBmSsgzjUCe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEWgpEACgkQJNaLcl1U
h9AFSAf+JfSBsijmhQEBvXaLJeAoZdPUWetw39rGAJkXJoXq1TDlPVwIyY6YsI7f
qhFuXZUU4IB1aUamDPTaGSznNZvr4qcwBWQWgERCbcaeGvVKsKs6KSBFhkWeRsJy
bjb2cBok90u+J+1M/nkshvcBs5CGy//o5dOoGkbpPDc8Q8uMjSIn/VaUi1YGezKn
ZMS+zy//JJg0Rnt2R5/z9ITFrczy6JoN/beCYqX+NQ4inOGIInr6Qh4zSduCrGFU
yUrKwixOg/6ziNCT9lCnCZfRSHiy2Vi3EwY6kw9A3ZGRy4/YC/DJq5xZr/POU0BH
Mn7sQqyXaDzxJ57fKC4yDTAJZ0b3cQ==
=hknS
-----END PGP SIGNATURE-----

--G4iJoqBmSsgzjUCe--


--===============8158565464703028151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8158565464703028151==--

