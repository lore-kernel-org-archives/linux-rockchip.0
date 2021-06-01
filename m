Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF45C4708F
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 20:46:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1DE76613B1
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 20:46:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1DE76613B1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bsLWwPfKqxgd3K41WIL+JNQhW3Xk08OXfCyGsyja7zs=; b=LYVYTNYWolaM0U
	oS8Ugh38CpMsGMiPvwyPrtLFCUVH0IoqxqNR+enwbOSXJDNHLtkpNfuWlEZdLfny6Ii5tNj4sPOSN
	X4XpDrnolp+ZZwvZN57t2iyEb5wQ++ooOAXQyK3upKIEzEMhSoGPzkyhnONR9Jb8CMl1BNEgG/iji
	dEudgT9JcZNHWDeGy2cJ9AjQjVjD7U9uT0yN8bNUDqhEPdbVSTj3892VUwntVdZQS7YfpN73rxd7+
	I5BndSQkXfQEX+brJ5ieM2IQ/4704ovBF+PeVyCmtkO86sI+FE175XVQyLvYe4h7W1TWITcME5obD
	xS0zM8u4SFw7vdK5/AVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loBGv-000opo-SV; Tue, 01 Jun 2021 20:45:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loBGm-000oo4-EO
 for linux-rockchip@lists.infradead.org; Tue, 01 Jun 2021 20:45:49 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1loBG5-0003ST-OY; Tue, 01 Jun 2021 22:45:05 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Lee Jones <lee.jones@linaro.org>, Chris Morgan <macroalpha82@gmail.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, robh+dt@kernel.org,
 perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [GIT PULL] Immutable branch between MFD and ASoC due for the
 v5.14 merge window
Date: Tue, 01 Jun 2021 22:45:04 +0200
Message-ID: <8906844.gsGJI6kyIV@diego>
In-Reply-To: <20210601183351.GA31227@wintermute.localdomain>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
 <20210601173944.GA2173308@dell>
 <20210601183351.GA31227@wintermute.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_134548_529984_605B8C73 
X-CRM114-Status: GOOD (  25.81  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 1. Juni 2021, 20:33:51 CEST schrieb Chris Morgan:
> On Tue, Jun 01, 2021 at 06:39:44PM +0100, Lee Jones wrote:
> > On Tue, 01 Jun 2021, Chris Morgan wrote:
> > 
> > > On Tue, Jun 01, 2021 at 04:58:32PM +0100, Lee Jones wrote:
> > > > On Tue, 01 Jun 2021, Lee Jones wrote:
> > > > 
> > > > > I've applied the non-Arm patches.
> > > > > 
> > > > > The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:
> > > > > 
> > > > >   Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)
> > > > > 
> > > > > are available in the Git repository at:
> > > > > 
> > > > >   git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git tb-mfd-asoc-v5.14
> > > > > 
> > > > > for you to fetch changes up to 437faaa6cebadf8ff4c2c28d7cb26ed4e34aeb14:
> > > > > 
> > > > >   dt-bindings: Add Rockchip rk817 audio CODEC support (2021-06-01 13:40:41 +0100)
> > > > > 
> > > > > ----------------------------------------------------------------
> > > > > Immutable branch between MFD and ASoC due for the v5.14 merge window
> > > > > 
> > > > > ----------------------------------------------------------------
> > > > > Chris Morgan (3):
> > > > >       mfd: Add Rockchip rk817 audio CODEC support
> > > > >       ASoC: Add Rockchip rk817 audio CODEC support
> > > > >       dt-bindings: Add Rockchip rk817 audio CODEC support
> > > > > 
> > > > >  Documentation/devicetree/bindings/mfd/rk808.txt | 188 +++++++++
> > > > >  drivers/mfd/rk808.c                             |  81 ++++
> > > > >  include/linux/mfd/rk808.h                       |  81 ++++
> > > > >  sound/soc/codecs/Kconfig                        |   6 +
> > > > >  sound/soc/codecs/Makefile                       |   2 +
> > > > >  sound/soc/codecs/rk817_codec.c                  | 539 ++++++++++++++++++++++++
> > > > >  6 files changed, 897 insertions(+)
> > > > >  create mode 100644 sound/soc/codecs/rk817_codec.c
> > > > 
> > > > Looks like the builders reported a W=1 warning introduced by the set.
> > > > 
> > > > Would you like me to fix it and submit a patch?
> > > 
> > > I can't seem to reproduce the warning, are there more details as to
> > > what is causing it?
> > 
> > Yes, it's a W=1 warning.  Put that on your command line.
> 
> Got it. Want me to resubmit the patch? Looks like I was requesting a
> return value from a function and not doing anything with it.

from Lee's earlier mail I guess he prefers a followup patch to fix the issue.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
