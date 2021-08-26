Return-Path: <SRS0=LXKC=NR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D66E8C432BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 12:52:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A4AF360F5C
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 12:52:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A4AF360F5C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NQ1PRgqC8Lw1ZaQlEhBonhqcES1FoyVq7Kgxqq/8oCM=; b=mB2tMRARrC6suJJ/mqXxjeqhN5
	WUEEMjdjy7biORAUOf1KNXJKOicLY5ztasnRNaHOYqQ8XZSW3JNDZ+0fxne0+UoOKmUCWopZNDZ0U
	dkvI3F1oGU6qGr2F87loJ05wrXEcanNwBmyNTatUgufw4FecQOJSUhAhMNLqDtVchHVJiSJ59M2ng
	NIQPXkGGsCgzXtFHrajwqWz79ePkOBL3fzezXt9dkKO95r6JlOCX8lQtvNniD6GXl2P5nvRpexmK/
	R0fmRLXMWw4kF4fzp3ujdUK09MqGNKcYv6XeHGqUMsboPhvjToiOnLzG92LTa4zNgkbxmc0ILDP4U
	wHZbruJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJEs1-00AAV4-LW; Thu, 26 Aug 2021 12:52:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJErz-00AAUY-Bg
 for linux-rockchip@lists.infradead.org; Thu, 26 Aug 2021 12:52:36 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7A07E60E0B;
 Thu, 26 Aug 2021 12:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629982355;
 bh=k+jKDPMkrQDoBPL6bBTji+fg/yJH4WCO5skRGfORL90=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R5ii20vj8IZkbZ2ySUYS1CHi5JAfY0HZFhupeuFGb6R8VxaE+14Didhpc0zKN8Mh6
 S0XUSNNx/0d/ALp90WOgZre9BuUtOk/HErVQd2Fa500wynIxd48Yx0mn0bdiPjmCe7
 DNJ0YSiKNKqqF6UQ1iqvuuadEQqASkrYYjNXnsAdiWG35aNNqWkZeGY4zCn9CBJXAg
 XvZIE77Wtw82mJz43QDq4vfYJCjkpr2HwpnUTGY1C+lIHlOurrlLaRC+9Uuef/UKJw
 eO+AuCuiUnnRA2xYBgnoLnr1t9afSlhm0auWKCGuT3zGf3kgdzhjtMmCbgQHEwhQlO
 CsZkFkBWO86hQ==
Date: Thu, 26 Aug 2021 13:52:06 +0100
From: Mark Brown <broonie@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Subject: Re: [PATCH v3 05/14] ASoC: rockchip: i2s: Fix concurrency between
 tx/rx
Message-ID: <20210826125206.GD4148@sirena.org.uk>
References: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629950520-14190-5-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <1629950520-14190-5-git-send-email-sugar.zhang@rock-chips.com>
X-Cookie: /earth: file system full.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210826_055235_462219_3648448B 
X-CRM114-Status: UNSURE (   9.27  )
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
Content-Type: multipart/mixed; boundary="===============1931086424165098318=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1931086424165098318==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sgneBHv3152wZ8jf"
Content-Disposition: inline


--sgneBHv3152wZ8jf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 26, 2021 at 12:01:51PM +0800, Sugar Zhang wrote:

> +/* tx/rx ctrl lock */
> +static DEFINE_SPINLOCK(lock);
> +

Why is this a global and not part of the driver data?  It's also not
clear to me why this is a spinlock and not a mutex.

--sgneBHv3152wZ8jf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEnjnUACgkQJNaLcl1U
h9DhSgf+MgL/IQ9Mq6omKDRWYltsw14qyPu33shx7ZijOx+Opu9cYlPB75kmxRWv
ylkwSG6o1RVEmHD/Y7XifgmrS7/pk9aqxCYTF7fdgfzA6Vj20AwJxcdRq5hXtGXg
3rCgH6yqOL3qysd2VYiNOTO8jPNaq9wzeB4kwS8HC8DtBNvXXCtgID85w6Ihmqd+
FNm9G7td36rGQWX2OFy/pGWAo77ZR55VtaLM/7WWBeC0oxZ6QXO/3xwFvbFqgXF/
gLWxHGW5siQgtzqk1NDS/fmSjlQtQgTjKY3PxawKGwtTW/smMt6mp+Jz94YvbT8J
JaZ90zWGfcxu9o8JkUqGN8YIbk8k/Q==
=FFmq
-----END PGP SIGNATURE-----

--sgneBHv3152wZ8jf--


--===============1931086424165098318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1931086424165098318==--

