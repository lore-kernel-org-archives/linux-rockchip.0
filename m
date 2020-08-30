Return-Path: <SRS0=N1pG=CI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA27BC433E2
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 19:42:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9D4552071B
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 19:42:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="2Yuhah8N"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9D4552071B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pk5LNNiYON3DCBvN+wZAncTfQPaTx4GrOl888B6tj2Q=; b=2Yuhah8NqTMTTvMz5LK1YCK+H
	rH0YtVv9V2JPV6Vf8l8El8YtuPbdC89c/5D8qgf/xv/KQOQqQpucYAzB+gkS2vhDxylboi10X8eRm
	+L+6ZwiuJJJLflLW427QP56rkA3bxd4Zs6YNsDPNTjVEJNxqHclluPr/Sm4ObByfPg9vjda9RoUoM
	HF6RCBr3HCiAKu1FxceeJpCNGukGdlTiQLUV8N6UHnYbXYU950RITk8+mEs7Mmb6VU2NqU5FiKmDV
	/Zbjvz6r5MpYOCsZ4qKDemn3DsvGSSysDiV+y7AguNA5mCFuvgYsztApf+zuUlOY1RRno/zM6mouB
	t8MEAZxgA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCTDn-0006Sm-GS; Sun, 30 Aug 2020 19:42:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCTDl-0006Rh-QA; Sun, 30 Aug 2020 19:42:34 +0000
Received: from p508fca7b.dip0.t-ipconnect.de ([80.143.202.123]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kCTDk-0002KX-MM; Sun, 30 Aug 2020 21:42:32 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix power routing to support POE
Date: Sun, 30 Aug 2020 21:42:26 +0200
Message-Id: <159881654154.22245.1792882618820762854.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200818184505.30064-1-jagan@amarulasolutions.com>
References: <20200818184505.30064-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200830_154233_866491_B826F837 
X-CRM114-Status: GOOD (  13.67  )
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

On Wed, 19 Aug 2020 00:15:05 +0530, Jagan Teki wrote:
> When POE used, the current power routing is failing to power-up
> the PMIC regulators which cause Linux boot hangs.
> 
> This patch is trying to update the power routing in order to
> support Type C0 and POE powering methods.
> 
> As per the schematics, sys_12v is a common output power regulator
> when type c and POE power being used. sys_12v is supplied by dc_12v
> which is supplied from MP8859 in type c0 power routing and sys_12v
> is supplied by MP8009 PoE PD in POE power supply routing.

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix power routing to support POE on rk3399-roc-pc
      commit: bd77d0ad7a698f5e04edf02328d11e808a71d87c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
