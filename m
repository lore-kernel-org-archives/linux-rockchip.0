Return-Path: <SRS0=TfDj=NJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFBAC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 12:57:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 632F06102A
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 12:57:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 632F06102A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h66g/aLMv9bdQGmmwMOignmfHBgS0lr/sUevn+1JrU0=; b=JiqfshpnGdLxKR9vNagsak7Vii
	ivDScpyS3G5St8CuEYHEmEqA2K71o+67DsW5iyJimZmIImdcxmoPR+F09oTUF+zEu87RUHYZkAdcZ
	wcLQVUZwtF0DgJBrYazXOp4iIHEJA75gNi6bTYqsGaPkQTLXWDh/xt2t1t0gh8dBFlMxZVWrT/GBA
	YI7Kjjlp5KiuxxbQozzNQ76S60oyyHHgMI8qMxiCmzxHrCenkc3MKOA7vq3kRLn7REfKmqKvSreFm
	+mhho/OpDCP7LdbMx8NXuoVFAHy3J1pAOf8rx+jjJWmsvFpzXYsLq/pIXDqh+8No1ptrwq3fmBWUh
	mtydPyYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGL7q-005asF-OH; Wed, 18 Aug 2021 12:56:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGL7o-005arr-Ko
 for linux-rockchip@lists.infradead.org; Wed, 18 Aug 2021 12:56:57 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id F33B661053;
 Wed, 18 Aug 2021 12:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629291416;
 bh=oUNMZ3N3BnzZiuVDegJM0Y3OIg2AOXjLtpwnoWnPOcA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IGPmsKA0z6tyfzG8q5As0YJjUf/y6AFPeJtlhlXeg8477075l4+6AP/DThInqBqyl
 20JGpTLPBW34foVHKMvkf0IqeD0o0GCBlFKkkITtddJlw/AVTSuvqJrLjaZ2KPSN8E
 32iEXxalcAGPGIB7ecFGB39Fu+cj8NmBz9B0b8EGYmeENi/+fxkzmkW9RbmGjcUdBs
 WbeFslXQodgSA2kNzST2Oo/8+/YK6ETq3SCjRlIRDZckW0g5VEXHnbLcT1W257Vnru
 H1iyCe6ReS+xtSQwHyEhQ3+jgbVP6wgNYD854MWZ1VFo5/FeycTkMsWU0+3+IJ3vbv
 p8N30s61nLvSA==
Date: Wed, 18 Aug 2021 13:56:31 +0100
From: Mark Brown <broonie@kernel.org>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: lgirdwood@gmail.com, ulf.hansson@linaro.org, lee.jones@linaro.org,
 zhangchangzhong@huawei.com, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] regulator: add PRE_ENABLE event define
Message-ID: <20210818125631.GA17664@sirena.org.uk>
References: <20210817033848.1396749-1-jay.xu@rock-chips.com>
 <20210817033848.1396749-2-jay.xu@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20210817033848.1396749-2-jay.xu@rock-chips.com>
X-Cookie: Save the Whales -- Harpoon a Honda.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_055656_741262_E6D37AA7 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============2501297699688232854=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2501297699688232854==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8t9RHnE3ZwKMSgU+"
Content-Disposition: inline


--8t9RHnE3ZwKMSgU+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 17, 2021 at 11:38:46AM +0800, Jianqun Xu wrote:
> Add REGULATOR_EVENT_PRE_ENABLE to allow to notify driver that the
> regulator is about to enabled.

This doesn't apply against current code, please check and resend.

--8t9RHnE3ZwKMSgU+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEdA34ACgkQJNaLcl1U
h9AnWAf/U/DuYbgl0iPGbSpeyY8l4hRw+vanENiMTm2Q1gbrFsFWVh6ldSMuDHT4
0NB0J/k+zBhMthcnjR3C38hBMXZZY3ruYzeTtAK33RJDBQv5gF7x1RWGmDwxnMQI
mEo8pOimdDhCSqpcomIuv05W+Fplq0zowOXbhjmQRHwZOyTgyLUX89b0cOeDV+Cb
6UQC2R/C8LSrURUtLyFFqvb37Q7MfIT4MTD+8BaO+fGOrvPJXKICsbpjZ4ow7UPV
C6S+4fAoMZGimeXxWLHsvtE7ErDdyPUR4aTBJL9vNwwWERswEOntlL0e0+YpYUCt
C+cuyIbh0V6AfIypW7Gv8uFXnWrwmw==
=5oQy
-----END PGP SIGNATURE-----

--8t9RHnE3ZwKMSgU+--


--===============2501297699688232854==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2501297699688232854==--

