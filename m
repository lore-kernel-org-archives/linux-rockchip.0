Return-Path: <SRS0=KV8+=EO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A89C388F9
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 00:36:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0CD8C20702
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 00:36:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="aNqTwQBj"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0CD8C20702
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aRwUhjiBo7XsxAGi/gkD92wdq5my8NOfO+cjN8xIeyI=; b=aNqTwQBjwxTakIMcg4NYdS+xh
	gpGJB9V+nXt4qPM59g/n/IxrtLhmOQ/nEyOEEfx/7r4OO3cQhaz7Q2nlgYBOIIMryW6p6RhSzND5a
	/veQ6gwl301u5idBnZhqusvPp8qUQncsXmjkPoAMuSrmEuwjhJ7wOsHb9/mD/dc19mZmyyLYPSUj9
	E53sDIivKifvcXW8/27k02/Vukna0eEszsD6dKMObpDoIoYKPQOBDiamb/qBxqD5dMWYA0h6hLWg9
	TVhXCpsCcnX4eXRE2jrsG7AVEiOAnqNfwYLAjIgy0SxUQKrLs3wzgoNWKzuhQbZMusHmHNB6CItaa
	QDwBScU0w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbYgd-000590-5L; Sun, 08 Nov 2020 00:36:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbYgb-00058T-P3; Sun, 08 Nov 2020 00:36:02 +0000
Received: from p508fc3ee.dip0.t-ipconnect.de ([80.143.195.238]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kbYgT-0008Ps-Mr; Sun, 08 Nov 2020 01:35:53 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Reorder LED triggers from mmc
 devices on rk3399-roc-pc.
Date: Sun,  8 Nov 2020 01:35:52 +0100
Message-Id: <160479574913.328911.1441170250420756577.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201104192933.1001-1-m.reichl@fivetechno.de>
References: <20201104192933.1001-1-m.reichl@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201107_193601_840092_B9E481F7 
X-CRM114-Status: GOOD (  10.44  )
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
 linux-kernel@vger.kernel.org, dianders@chromium.org, wens@kernel.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 4 Nov 2020 20:29:31 +0100, Markus Reichl wrote:
> After patch [1] SD-card becomes mmc1 and eMMC becomes mmc2.
> Correct trigger of LEDs accordingly.
> 
> [1]
> https://patchwork.kernel.org/patch/11881427

Applied, thanks!

[1/1] arm64: dts: rockchip: Reorder LED triggers from mmc devices on rk3399-roc-pc.
      commit: 7327c8b98e2e14c47021eea14d1ab268086a6408

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
