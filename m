Return-Path: <SRS0=hTL8=M3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8561DC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Aug 2021 16:15:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4E22860F35
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Aug 2021 16:15:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4E22860F35
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sQwr253gCNgA+KpDfLvXbddsmiJhSSBVVUZKV5AXeSE=; b=19sqCMdGvx+Lm84w0/YWEVT5q9
	IQWi/pNeIdamw0DYDspeVyC+mixLFW4d5V2AFCRaoDllZL+P7vYsSFu58Ycn/BcER7HSUmJbnVm7/
	Zr4SfZ4zqdEHOl8wXVsNWtuDIjCWtLNgjo5krbvZc2/ylmn++0xUMCzZmYlaggA/w7t2pes5/cEc7
	m/Bm/2mJUiRQ2y18CYxobdNRBsceOmuSQv2KhLwzFzX8f3i7VBBcuKC7//+tX9QTaX0FfAUHLqMFu
	37Szmy4Xw/0n0xOjKpfn4R0K0EvFwRFrxYKfE7Pnn+bvITLVNAoV/4voAWKfCBSpBlx+B+y+ctlYg
	xZLbTzXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBJY8-006jxa-Rs; Wed, 04 Aug 2021 16:15:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBJY5-006jwx-Uw
 for linux-rockchip@lists.infradead.org; Wed, 04 Aug 2021 16:15:19 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8AC5F60F35;
 Wed,  4 Aug 2021 16:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628093717;
 bh=SU7iytpCAGzQPHujZgCX1j7w+mEyOgO8m5L4Sfkfong=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c0iuJnE+Iq2qLARWx2kO/wSRb9gScSFH2nSxE+ddHBNkgc+DefJHN4DSiqejGP2/E
 4gHjzSW2bJZufF+GODGh0BLiCo8vrStx6Wr2Ikc+kDy/gPKWdX69wjdvTURirYRdQP
 yCY2AuyK9zN73Zw4glL3i/xCcNy0f80gjzop3EzmqAthLGu/Cz+tnGKkt1eiTrwyRG
 K8cXR8i87ZRn3/oJtNKkCmeR3IRw5GAE/eGTXrj7z9AZrnuwaaX4hoKsEaLHL6tXQu
 L67m89axZ3atNglt5rGg0LeIeJMJ97jK3SOy+DmbDdY5sV/RTCrdK40YD4t5iZoxqN
 wlemh04Wm9Y8g==
Date: Wed, 4 Aug 2021 17:15:01 +0100
From: Mark Brown <broonie@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mmc@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org
Subject: Re: [BUG] mmc_regulator_set_ocr can't cope with regulator-fixed
Message-ID: <20210804161501.GB26252@sirena.org.uk>
References: <CAMdYzYrx8pgeyK7u=kcopZ+Wae+fQdr_uM4AuVjqWKfZYikgcA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdYzYrx8pgeyK7u=kcopZ+Wae+fQdr_uM4AuVjqWKfZYikgcA@mail.gmail.com>
X-Cookie: MOUNT TAPE U1439 ON B3, NO RING
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_091518_058689_518EAD99 
X-CRM114-Status: GOOD (  17.70  )
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
Content-Type: multipart/mixed; boundary="===============4523424604418389410=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4523424604418389410==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i0/AhcQY5QxfSsSZ"
Content-Disposition: inline


--i0/AhcQY5QxfSsSZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 04, 2021 at 10:32:52AM -0400, Peter Geis wrote:

> Removing the vmmc phandle from the sdio node is an option, but then it
> doesn't fully describe the hardware (it's also a non-standard 4.4v).
> I had considered changing the check in dw-mmc.c [1] to continue in the
> case of -EINVAL, but there are other places in the regulator framework
> that can also return that and it doesn't address the underlying issue.

What is the underlying issue that you don't see as being fixed if the
MMC code is able to cope with not being able to read the voltage?  If we
don't know what voltage the regulator has then no amount of wishful
thinking is going to give us that knowledge, if we want to proceed with
controlling the device then the MMC code is going to need to make some
decisions about what it's safe to do given the limited information it
has available to it.  Otherwise there's no option other than providing
the information about the voltage.

--i0/AhcQY5QxfSsSZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEKvQQACgkQJNaLcl1U
h9C12Af8DblVDI9WXSmbrPRXViKHLSNZFzqp2ZuGthopEX5957SrGd87e5iV+I/g
gre6Jo3qS3dGIailxhWX4Tcyd/OztkwsS4V9ep1FBb3Iqo6qBbByMHwD/w2wF7sw
zYDzwdN0yUltexPHqnPjxatTxrTL09SM8NnIl0018t1hl5UKtM/KU8YN6nFJEPLH
4Q2ooIe2pPSz7gsg4fW1xsmxJXCqUulFtoyK59mwoHrvfdrLWWIXvvCh87c7LCxk
kwhYlg3SbIcZlZvLL1lVcMbPnZj6F3lClwHbzhy8jAP/LXF0rtFjbvDjZJZUImq/
3BOF/lOC6PcaomF/mguPVTzZj2XXoQ==
=L2o3
-----END PGP SIGNATURE-----

--i0/AhcQY5QxfSsSZ--


--===============4523424604418389410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4523424604418389410==--

