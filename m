Return-Path: <SRS0=GXEY=DC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46066C4727F
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 19:29:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6526D235FD
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 19:29:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="fQwOY3fW";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPLPzGJr"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6526D235FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VyEbVuAH+CCOVSc3KZoNoVaotb7VytZvLVPuabA56/w=; b=fQwOY3fWEdBMlMjT037XIt9MQ
	EpksQNBnQfHoTcf5t77RJeCx5Z6fzR/EpDRYbRqix0GnKeEa7h95BJdCyzZL/bul/3l5OkCF1cjky
	00upxSlqWTIjB+4EEaIg+/i6kmKLZI845izmsp3jUnjRduAmdXkHWZqZeANS6dPG/gK4ijHnTTUCo
	/TYr4I2fEw2VQiMfVFmRuGRXvZ/da8mZpo2W+MVFw0yk9HUjW4ODYTxFf+mW3k1afeibumID6bf4j
	LUqyLHjgwemRiq0dJ6+ZID/oM2A9VPZRiELxXXd5k31pnOWJnnmQntF5/3f5hPUwiVHIIrZUrDlUw
	WQrv+HOsQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLtPe-0001uZ-7t; Fri, 25 Sep 2020 19:29:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLtPY-0001tz-Og; Fri, 25 Sep 2020 19:29:41 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97E2A2344C;
 Fri, 25 Sep 2020 19:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601062179;
 bh=Qnb4GmVJK+KSCmaIF8ewnftUKFwuL9MIqaQIMNr/Qzw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TPLPzGJrSwQ0wxzHBcU6TR3tcD6MY9WSGBpePQIRe5XEDzKYOeVVrfPb4kAL62Wap
 xXlF4cGDV5hJPlr4h72d1KC5PnVzMWTnK9RE9dT3Sny6+xFHB6WvNzz2B506eBw26s
 o8N6VSV5tPwW5UVDzEiRnc1iHxdHX3k0LtJFBOqw=
Date: Fri, 25 Sep 2020 20:28:44 +0100
From: Mark Brown <broonie@kernel.org>
To: Tuo Li <t-li20@mails.tsinghua.edu.cn>
Subject: Re: [PATCH] ASoC: rockchip: fix a possible divide-by-zero bug in
 rockchip_i2s_hw_params()
Message-ID: <20200925192844.GA10127@sirena.org.uk>
References: <20200830095106.4412-1-t-li20@mails.tsinghua.edu.cn>
MIME-Version: 1.0
In-Reply-To: <20200830095106.4412-1-t-li20@mails.tsinghua.edu.cn>
X-Cookie: Dime is money.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200925_152940_884301_5B66501A 
X-CRM114-Status: GOOD (  12.17  )
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
Cc: alsa-devel@alsa-project.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 tiwai@suse.com, lgirdwood@gmail.com, linux-rockchip@lists.infradead.org,
 baijiaju1990@gmail.com, perex@perex.cz, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1023722387840021756=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1023722387840021756==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jRHKVT23PllUwdXP"
Content-Disposition: inline


--jRHKVT23PllUwdXP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Aug 30, 2020 at 05:51:06PM +0800, Tuo Li wrote:
> The variable bclk_rate is checked in:
>   if (bclk_rate && mclk_rate % bclk_rate)

This doesn't apply against current code, please check and resend:

HEAD is now at bbd59df075ab Merge series "ASoC: Intel: sdw machine driver updates for 5.10" from Kai Vehmanen <kai.vehmanen@linux.intel.com>:
Applying: ASoC: rockchip: fix a possible divide-by-zero bug in rockchip_i2s_hw_params()
Using index info to reconstruct a base tree...
M	sound/soc/rockchip/rockchip_i2s.c
Falling back to patching base and 3-way merge...
Auto-merging sound/soc/rockchip/rockchip_i2s.c
CONFLICT (content): Merge conflict in sou

--jRHKVT23PllUwdXP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl9uROsACgkQJNaLcl1U
h9C92gf/RsB/lEQG1UKkloEDE1VbvFPSaiYS79/aMhlVUBUW116VogCV7sq/mQ10
WEG6ygMD4mUoU9PAYXPpn8+boQJ9fVNNYF76UmKpMHm6ZjopJ6gZZ/ARj3jBje4H
QgtJEYhcYFodqFs5LP5sVswlq06rguAH1cYrHgM9YYYZtWimsqfD2SD63QZaog8m
eBgk0duJ4ys5HzfPUhpfRgXjH8r6LNHCLRQy8UW1vHHYG3yfpUA9YNLITMHWbyq0
eDUZJzcpnErjHj3FaHoxjm4ohvOnlVMz+U9+LEjuz0Z8VfBk3SE7C6Rj1dN3JpdA
vR+WgSZG2A7qGkMp20/0IX+qKdILbA==
=cION
-----END PGP SIGNATURE-----

--jRHKVT23PllUwdXP--


--===============1023722387840021756==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1023722387840021756==--

