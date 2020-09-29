Return-Path: <SRS0=Bn3x=DG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.6 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CA0EC4346E
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 10:45:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9BC50207C4
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2020 10:45:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="cIdlcoVg"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9BC50207C4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KqmEIll3hCldYNrCIUBncuwSEyHhwRBEDyQhzOdCpXw=; b=cIdlcoVgoxHWUQoQyuscixlr5
	gn6tOH4vQ/EDsVVo7txP1vToGLUVryUKLexqJayFV51OzibXhn9qoFLIbRzgmzHc1G6VQPbFpIztm
	VnfRVIFDtt+oyok0rnmoMjjsKntbtRVQsQjBx4udZOAMxkBJNr6N9B4J3yEme5RS+nJ3mH9hovyzP
	OAdkbLg4u+HfxkVtxJ+hqdCxNkIVPaB9WEaBIwsyic/NUCrs7786P5H4W+iRAzZyNZTNiAjtci/Ia
	GLrjU8sW4HkqL9kfeF/N2R/UlSrZc9Vdt8hPLPqeKFkmDlEt6AFP9Co+Spkpoo5RCDb9OKdUqYkz8
	AnUDdBwuQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kND8b-0002HO-3g; Tue, 29 Sep 2020 10:45:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kND8Y-0002Gu-MY; Tue, 29 Sep 2020 10:45:35 +0000
Received: from [95.90.166.74] (helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kND8T-0007Qg-U5; Tue, 29 Sep 2020 12:45:29 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 2/2] Rockchip dt32 changes for 5.10
Date: Tue, 29 Sep 2020 12:45:29 +0200
Message-ID: <1834049.gShM3QRH0n@diego>
In-Reply-To: <16010805.MhVyP8KKtY@diego>
References: <16010805.MhVyP8KKtY@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200929_064534_740818_927DCE35 
X-CRM114-Status: GOOD (  12.15  )
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
List-Id: <soc.lore.kernel.org>
Cc: linux-rockchip@lists.infradead.org, soc@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Arnd, Kevin, Olof,

not sure if this got missed, but I can only see the arm64 pull request in
the soc tree right now, so here is the 32bit part again.

For reference the original pull was in 
	http://lore.kernel.org/r/4293766.LrauBeaUkW@diego

Please pull

Thanks
Heiko

The following changes since commit 9123e3a74ec7b934a4a099e98af6a61c2f80bbf5:

  Linux 5.9-rc1 (2020-08-16 13:04:57 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.10-rockchip-dts32-1

for you to fetch changes up to 0cf10e6f94335495f90fc62fb75d9569f6a603fb:

  ARM: dts: rockchip: replace status value "ok" by "okay" (2020-08-30 21:47:07 +0200)

----------------------------------------------------------------
cpu-supply fixes (supply for each cpu core not only cpu0)
and a spelling for the status property.

----------------------------------------------------------------
Adrian Schmutzler (1):
      ARM: dts: rockchip: replace status value "ok" by "okay"

Johan Jonker (3):
      ARM: dts: rockchip: update cpu supplies on rk3288
      ARM: dts: rockchip: rk3066a: add label to cpu@1
      ARM: dts: rockchip: update cpu supplies on rk3066a

 arch/arm/boot/dts/rk3066a-bqcurie2.dts            |  6 +++++-
 arch/arm/boot/dts/rk3066a-marsboard.dts           |  6 +++++-
 arch/arm/boot/dts/rk3066a-rayeager.dts            |  6 +++++-
 arch/arm/boot/dts/rk3066a.dtsi                    |  2 +-
 arch/arm/boot/dts/rk3288-evb.dtsi                 |  2 +-
 arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi |  2 +-
 arch/arm/boot/dts/rk3288-firefly.dtsi             |  2 +-
 arch/arm/boot/dts/rk3288-miqi.dts                 | 16 ++++++++++++++--
 arch/arm/boot/dts/rk3288-popmetal.dts             | 16 ++++++++++++++--
 arch/arm/boot/dts/rk3288-r89.dts                  | 16 ++++++++++++++--
 arch/arm/boot/dts/rk3288-rock2-square.dts         |  2 +-
 arch/arm/boot/dts/rk3288-tinker.dtsi              |  2 +-
 arch/arm/boot/dts/rk3288-vyasa.dts                | 14 +++++++++++++-
 13 files changed, 76 insertions(+), 16 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
