Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9A46C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 12:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CaHcqAn85sdu4+W2SZPbToTm98tx1q/A165rBGhoIAk=; b=QuGAp97rDjnFZN9o7TVzPuPGSg
	HonCGk6sUURx76Uac0Y0Ws0knZq92bob5WY0Z3HKl6cjkh5kZ9uyWATs6kyiZJxboK8EezayMhPVr
	pthxRM4a39UIWtiMliy4oMnEwGDlrKV/+L8ETBftx3G5uIWaXpsGIdD/FR04vaZL+gSPlfjauGr4w
	RBsSIHgkdaJOs4Kjgu/dm4HWLyLpUxamVkemLiXAoB9hZLpGNqeQRzBuOHP1g+k9x5mYPwhdfG9mg
	aZXyzhvBdZVpWO/EX87HVm2U9oL5wsibN3bl8Nrt+DvdzlMxml4CSubu8wSif37MooQRtsPBrdexj
	+glvubmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2BMW-007gPo-Hb; Fri, 17 Jun 2022 12:46:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2APk-007Pix-8I; Fri, 17 Jun 2022 11:45:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9CC2D61E31;
	Fri, 17 Jun 2022 11:45:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9898DC3411B;
	Fri, 17 Jun 2022 11:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655466323;
	bh=G02EHsP0i0hcRdjLFNd0iVg8HQg/SfUQ/ToemVQl0rE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mgqIzxXuf+ImZ4rEI3dxKP09dcoIV8IiXHXBXN/k0t56pc6yCwEg3N/KK1HII5Gsp
	 XRN+yN3qdfqaTZ4bKG6acyLDhwQlav7x8as3HOsA4JC0QMSrKZ0942b/KADOey6suN
	 37hagpMtaEunJPklqJSGldFvBP87RfrTk2xLWU0vZ0qU87BHq8bRBpq1tXestMvyAt
	 hdLic6IPyk3hNXUcL9Qxq2BRHx5Q6VF1LsUXRmzV1SyIvHshV99/Y+RGnvOkgLVKws
	 9d5VP/UAAuwc8hvhy4wR0S8JLfeoJYhvxTHEsqtetcvk0gT/O2ZarZnYVXP0VOnpKR
	 KM95Xhnstdlmg==
Date: Fri, 17 Jun 2022 12:45:18 +0100
From: Mark Brown <broonie@kernel.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] spi: rockchip: Disable local irq when pio write out of
 interrupt service
Message-ID: <YqxpTqvaQb4cohTh@sirena.org.uk>
References: <20220613092744.9726-1-jon.lin@rock-chips.com>
 <YqcveggUU7yaXuk1@sirena.org.uk>
 <b97ee70c-70ee-6b15-65d6-a176125dcfd8@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <b97ee70c-70ee-6b15-65d6-a176125dcfd8@rock-chips.com>
X-Cookie: 98% lean.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_044524_413639_FE5A422C 
X-CRM114-Status: GOOD (  20.54  )
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
Content-Type: multipart/mixed; boundary="===============4760120424006813001=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4760120424006813001==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CLGvc6v7On6xFTSG"
Content-Disposition: inline


--CLGvc6v7On6xFTSG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 17, 2022 at 02:24:10PM +0800, Jon Lin wrote:
> On 2022/6/13 20:37, Mark Brown wrote:
> > On Mon, Jun 13, 2022 at 05:27:44PM +0800, Jon Lin wrote:

> > > +	spin_unlock_irqrestore(&rs->lock, flags);

> > So this is effectively just disabling interrupts during PIO, there's no
> > other users of the lock which is rather heavyweight.  What's the actual
> > issue here?  We should also have something saying what's going on in the
> > code since right now the lock just looks redundant.

> For lock: In order to avoid special situations, such as when the CPU
> frequency drops to close to the IO rate, the water line interrupt is
> triggered during FIFO filling (triggered by other CPUs), resulting in
> critical resources still not being protected in place. For local IRQ

So essentially we're so slow in filling the FIFO when starting a
transfer that the interrupt triggers in the middle of the initial FIFO
fill?  Something that tricky *really* needs a comment adding.

Ideally we'd just leave the interrupt masked until the FIFO is filled
though, looking at the driver I see that there is an interrupt mask
register which seems to have some level of masking available and I do
note that in rockchip_spi_prepare_irq() we unmask interrupts before we
start filling the FIFO rather than afterwards.  Would reversing the
unmask order there address the issue more cleanly?

> disable: Turning off the local interrupt is mainly to prevent the CPU
> schedule from being interrupted when filling FIFO.

If it were just this then there's preempt_disable(), but what's the
problem with being preempted during the FIFO fill?

--CLGvc6v7On6xFTSG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmKsaU0ACgkQJNaLcl1U
h9B+Lgf/aLgqdBeHId+v7ymWQ/Ek1vdJ2rjI0CAdGbF8OAmLPqjmOXm8neX8rAJc
OSrQaiXEUmHSsWanCg2AuyX2kQ++TDePT55bA1wCTMwR8ICHSdK6GbdQaxUg7hk3
H2uyaPCZWr9bEsH0xM2//kgl26MqQ1PZhO/rirE+E3OHi0AOjeX/wSipAOn/X6+4
YNz/UW3cvbYWO+Oa8Lz5m2AB56Med0qOswwl65jp/jyF9f16UuwUfEyCbdY469/m
yUpz2PdongU1+0DVlaB8a4nUsUlOCENQzYmy+aPVIRp888Tbz4OYBq9ISjbPY2zU
WIleNV4RTnqq6TcM6o3thBpkJGuW/w==
=fIJJ
-----END PGP SIGNATURE-----

--CLGvc6v7On6xFTSG--


--===============4760120424006813001==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4760120424006813001==--

