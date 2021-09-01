Return-Path: <SRS0=SdcM=NX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28F51C432BE
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 16:32:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E44F961059
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 16:32:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E44F961059
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ipM9fMeapalLbDrvmHGSpNhn9RQAqnFRF2Vy5tOJ2pw=; b=IFfretIyMTBJHhIJ+OqHzNLEqj
	Qd0x2r8PyT5Y8nOwmNbgH7sTBk7hLc5MHz7fYeMZ7vzyn9/wK4Qo4nUoHtZ4zWdd8fcXcvzusNc9g
	9a2SzZ/UiKDl7FgyhbOMIN4cZTgE/Qb/7ketsD0LYK5QjXMIFXgWzV3vBo6I1B1wBKrD+asdHZNji
	MquOhRTaVkciXa7ks8s4ITuDgjy/eMv4aDU55XVemAbNXmXH3KGNNEUhp8t5MduIR747NqO9OvtHI
	dWXL1vzjnCeRhWjCJimHpeSOsyFkKqB024E7jbq2VGq6CZZHSXqZzD+YstIqGz4OHDJESPjnlGDf7
	BEhaGnOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLT9i-006XJH-Tr; Wed, 01 Sep 2021 16:32:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLT9U-006XHD-BN; Wed, 01 Sep 2021 16:31:54 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 64B0E61058;
 Wed,  1 Sep 2021 16:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630513911;
 bh=y1c/D5zmMC7JOawbBXs6fSznzulN2NVBOiAlLNEuXjQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nJfILASUEEvPpkbVT3jXOHbnpOLmaCtRY+zj8Hkk/381At+HqeYDbjdk6jg4zpBGf
 oisPk9SEFbfgBc/f34pmOy0jFLgSzl2B5C5jmLA/UTGh7QrocNq0PV8gw7dge9B39S
 XMahVwAjFGVzfAnoOO5FMROUS+hpQLG4cKmPOED4hCsV0/Cwq72QeCYp4gKm8lXsbE
 R1nb2xuERJUBkpc0trcENT9pTJi5KsKV9MTLMPogur073v23ZFW72HnxQw8csxlE6I
 Ni19M9xpCn/tlBM6UL+6+P5xdiO8D39XPgLo5beT2/rjM92oiEo3VQy+SQbJjz/xNV
 10AFAhYiDS3QQ==
Date: Wed, 1 Sep 2021 17:31:19 +0100
From: Mark Brown <broonie@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] ASoC: rockchip: i2s: Fix concurrency between tx/rx
Message-ID: <20210901163119.GA39417@sirena.org.uk>
References: <1630305525-65759-1-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <1630305525-65759-1-git-send-email-sugar.zhang@rock-chips.com>
X-Cookie: Walk softly and carry a BFG-9000.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210901_093152_443626_9FFBCF12 
X-CRM114-Status: GOOD (  10.67  )
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
Content-Type: multipart/mixed; boundary="===============8769402038828533915=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8769402038828533915==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cWoXeonUoKmBZSoM"
Content-Disposition: inline


--cWoXeonUoKmBZSoM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 30, 2021 at 02:38:45PM +0800, Sugar Zhang wrote:
> This patch adds lock to fix comcurrency between tx/rx
> to fix 'rockchip-i2s ff070000.i2s; fail to clear'

This doesn't apply against current code, please check and resend.

--cWoXeonUoKmBZSoM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEvqtYACgkQJNaLcl1U
h9BxBgf/RAh8wv4l2S8GAWfb2mR6GABSQYH7DftN+pPbe66GT0X+/FYi45mTxL/D
9i3Ya1ynoYCArBhICLM6UCKgYLLRE2pgT6EYyGK8u6aBrpT6XzHDx/cB1oBsZY18
avB/Jl7c6nbNRcF3njxkB2WmefKJ9HW3aNh6QyDxz2s0u78vzj8yWzkjBsAKETHC
kHD8dEAI9pTx6lX35vqzUv0chFU1xgBa4BrWjZRAiMu1W7HCrJeIIoe+K5LbZh6/
Wo2x+YRGdtbaq6vQ0pZCGcPFL25u+JSnEI0o5aMyhNtUh4n8IFnuhI0fzMSpDkFK
JA35vTg1ULgBhuAvLtJW28lVK1J0Iw==
=4hGe
-----END PGP SIGNATURE-----

--cWoXeonUoKmBZSoM--


--===============8769402038828533915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8769402038828533915==--

