Return-Path: <SRS0=V4ex=M4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 293ACC4320A
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 12:47:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E7321601FC
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 12:47:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E7321601FC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v5d2JCtc1h3D3qj2GdPNi8m/SyVGJXBD1F7hX9XR7BQ=; b=o+MwUOQq8Malbq8OYx7VOVz1Rl
	TgKZ5tUJsVqjtYCY+JAAJAh15IgqRgEUIqhjDmdSfTVAVCV8GhR1BjQI7bovPgZrroMDEi/zA4c5O
	dQJhUjrGlqlwMwxXhufe1CzHhN2HU1+OAXj4+mQ+CGKahV5L36XLNUspezzTI/Zz0o//LxGb9I3Wt
	ZCarn5inXqaKcbWN93tD97oxW/2qgBXYOV+9mKK/M6H10AGPmPHtoiLXgiupvSiKJ2zZC6UK28ySB
	scavxxdHDy9aABEh9WYy5T7Oq77pub6WXoFjxWj84Hk1RXigX2hzfk59cw+tSo4LGrNphM4TrSy+c
	NQDVF7Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBcmD-009XLq-BI; Thu, 05 Aug 2021 12:47:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBcmA-009XKW-QI
 for linux-rockchip@lists.infradead.org; Thu, 05 Aug 2021 12:47:08 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A719C60E97;
 Thu,  5 Aug 2021 12:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628167626;
 bh=kMQY6aXotHYC4p1x2ZCwkER9VrbqS7BOEPHl0qOdbl0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fm3BZjczDQ2+LdzJrxVmZJRipDr45xGLn57fBW2eTDIubwQeumuffrzsf7geb1j4R
 XXkaLI7Nm5IrK4oVJNRHaE7F5JS3s6UjGdj3Tc4Z7G6Xp7hSrkdaEXZfTC2ivzwoov
 zpuxPEyjM5UjKKW9YYL6VsbKFrYteyQk0Vv5+bGq4/twGtG9Jgt7PnMAfqqG/AsAOi
 w4j5Vhq/kAYiKMEOsV6p7Z9Wi29twv2wMRKhtkt8vRnJvMT4Wjk9Ur0uWuCMQsefoJ
 JlQ1S2w3KUKxgxy9hdc+BanlCLF0m0k/bE22iZhGENI/ofXE395k35APuOGCZktaWd
 +YeFftygtS5QQ==
Date: Thu, 5 Aug 2021 13:46:50 +0100
From: Mark Brown <broonie@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Jaehoon Chung <jh80.chung@samsung.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mmc@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org
Subject: Re: [BUG] mmc_regulator_set_ocr can't cope with regulator-fixed
Message-ID: <20210805124650.GM26252@sirena.org.uk>
References: <CGME20210804143357epcas1p1c67eca591d8bb557c11b8175baaa8550@epcas1p1.samsung.com>
 <CAMdYzYrx8pgeyK7u=kcopZ+Wae+fQdr_uM4AuVjqWKfZYikgcA@mail.gmail.com>
 <a9aa636e-326f-a848-dd69-41df87c013af@samsung.com>
 <CAMdYzYr9PX-9=kkCAfGe8Q0-D+gRo_qCwse8SiGVsmod7fffiA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdYzYr9PX-9=kkCAfGe8Q0-D+gRo_qCwse8SiGVsmod7fffiA@mail.gmail.com>
X-Cookie: MOUNT TAPE U1439 ON B3, NO RING
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_054706_913001_46B04F94 
X-CRM114-Status: GOOD (  19.92  )
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
Content-Type: multipart/mixed; boundary="===============1003859922146863845=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1003859922146863845==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+2GlJm56SCtLHYlr"
Content-Disposition: inline


--+2GlJm56SCtLHYlr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 05, 2021 at 07:38:06AM -0400, Peter Geis wrote:

> Also, I've got a possible fix to the dw-mmc issue, the following patch
> changes the behavior to only enable a fixed regulator, not try to set
> the voltage. It's a split between the behavior when vmmc isn't defined
> at all and when its a variable regulator:

One thing to watch out for with this approach is if there's things that
really need a specific voltage to be set then you'll have to stop those
things happening if you've got a voltage regulator that can't deliver a
voltage in the required range.  I don't know if this affects MMC or not,
if it's just a case of being less efficient it's not such an issue.

> diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
> index d333130d1531..b30102980261 100644
> --- a/drivers/mmc/host/dw_mmc.c
> +++ b/drivers/mmc/host/dw_mmc.c
> @@ -1446,11 +1446,13 @@ static void dw_mci_set_ios(struct mmc_host
> *mmc, struct mmc_ios *ios)
>   switch (ios->power_mode) {
>   case MMC_POWER_UP:
>   if (!IS_ERR(mmc->supply.vmmc)) {
> - ret = mmc_regulator_set_ocr(mmc, mmc->supply.vmmc,

This patch is very whitespace damaged FWIW.

--+2GlJm56SCtLHYlr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEL3bkACgkQJNaLcl1U
h9AITwf+MrB+PWNVhpqW56tmJ9SGz8jrEIwUWscQhB2kdQKUFfRkN5wgnUliCrN6
z1aJqb2h4eiZWj5sVGXyQqMuFHRVh7+AIpXhkxPdBf7bn/CTJCgG13eOOP7FELnh
A3Ax+i9Y2Hhz8GxVFlokMxrCZo20pS+Z4qCTrENO0rzSppWlogkS2CBFNDUGndNs
lj8K9wLpqFSJFRPUqRdyohpR44cPpsB7hOfeJOh9Le+BdGfqMb2Zkhvwu++oP0is
NTe/bxNPjb0ta+njFHhF8UOyaBuTa7DeH/9snbYazu70pOZa2bZKiIcMr18qZ0O9
Edd5L///Ydo5pXWt+3UokRFB2cwkbw==
=02YF
-----END PGP SIGNATURE-----

--+2GlJm56SCtLHYlr--


--===============1003859922146863845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1003859922146863845==--

