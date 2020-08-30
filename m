Return-Path: <SRS0=N1pG=CI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69E4C43461
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 19:42:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 93A28208CA
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 19:42:40 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="fXQe7Mj0"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 93A28208CA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mb+6D0mTxIxVjYezsmZTvSLXyJNmCt+U0YNfEQvo7Ik=; b=fXQe7Mj0LBP3zsPtBjyvJFlgq
	SiEwn6hxheCI3wPmXvqy8HdodGdHsgYJQQxxUQjpAVpuDpSXyRcobHYhWsiOJxJLwtjzEJJJAqnrh
	E9b2nOQ2bisHlNmyjnRcqvI9tEbQn60cDFyI09J0ImyTzN2RtoULhmtNL6xO9A0POofOPca4FsCRt
	eJcsn3tNtIDhfuA77COMBeAiu+mhKNUHx7AtYJW9bJIKUJVgVSPqHLo3eR0t+OiabRpG8I3qfOnl1
	SHpwEzJd2wN+BHSgaMgKPVzcK6ocA/L2e6wJrYMM7I+cT3S974QF3dFwTNNq4nclIOoHdku/rBCpi
	bSvSeclNQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCTDo-0006TC-0o; Sun, 30 Aug 2020 19:42:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCTDl-0006Ri-T0; Sun, 30 Aug 2020 19:42:34 +0000
Received: from p508fca7b.dip0.t-ipconnect.de ([80.143.202.123]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kCTDl-0002KX-2E; Sun, 30 Aug 2020 21:42:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: arm: rockchip: Update ROCKPi 4 binding
Date: Sun, 30 Aug 2020 21:42:27 +0200
Message-Id: <159881654154.22245.2247081403353499005.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200807094826.12019-1-jagan@amarulasolutions.com>
References: <20200807094826.12019-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200830_154233_959659_BB7F4F3E 
X-CRM114-Status: GOOD (  10.85  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 7 Aug 2020 15:18:23 +0530, Jagan Teki wrote:
> ROCKPi 4 has 3 variants of hardware platforms called
> ROCKPi 4A, 4B, and 4C.
> 
> - ROCKPi 4A has no Wif/BT.
> - ROCKPi 4B has AP6256 Wifi/BT, PoE.
> - ROCKPi 4C has AP6256 Wifi/BT, PoE, miniDP, USB Host enabled
>   GPIO pin change compared to 4B, 4C
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: arm: rockchip: Update ROCKPi 4 binding
      commit: 75a0a65a301f557bf0306d7983f8cf31ac91de56
[2/4] arm64: dts: rockchip: Mark rock-pi-4 as rock-pi-4a dts
      commit: b5edb04673700125bfd1d13e6c14747b1ecba522
[3/4] arm64: dts: rockchip: Add Radxa ROCK Pi 4B support
      commit: c1075b7fcca81f58ebc5d723f07b23f84ae93daa
[4/4] arm64: dts: rockchip: Add Radxa ROCK Pi 4C support
      commit: 93e0e8ce5fdf549f1715dad00bfbb21b2f69ba8e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
