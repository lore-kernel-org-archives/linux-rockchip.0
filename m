Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AF99C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 08:52:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2D00F6103A
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 08:52:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2D00F6103A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5CpI/gNqJO+Fg9H1bVGCBKfYYseOIkSM+zlUZnDhMg=; b=472E13gk1TeREP
	lVNJyURTwKH9tHZvauTr3OT3N2SvteALlKjEBmMx1sUtNy5YFhtKnSiRZFP3CX12vTZfmw4DnzwL8
	WvNA4TZKbIkOKDGmkS7jYdTPObkJ52HxjQjlI224MCj1Ecnpu4rxNqGNeByITuwj99Py2SZ+2goXR
	lvFIHst3utKX5GaAGKub2+CC3bAfLvOwCxA/D0IohWcAmZQ3HdBEwZwnnIyCQzf56mMTICKc8cJFm
	smiW1RcJxeIWAPIdi/49PceQ3N4zmSsPkw47MzY2yAM1WJUJz228oQ7AlQnkCHCIM7Z1TNKN5J5jC
	6RoL2fViM3XjPbocr2tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mESux-00CFva-5t; Fri, 13 Aug 2021 08:51:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mESuu-00CFtf-I3; Fri, 13 Aug 2021 08:51:53 +0000
Received: from 82-99-180-238.static.bluetone.cz ([82.99.180.238]
 helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mESuo-00077D-Kb; Fri, 13 Aug 2021 10:51:46 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Chen-Yu Tsai <wenst@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add Scarlet Dumo Variant
Date: Fri, 13 Aug 2021 10:51:41 +0200
Message-Id: <162884469491.2596417.3007403443594611487.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210812094753.2359087-1-wenst@chromium.org>
References: <20210812094753.2359087-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_015152_661761_6F1B14D0 
X-CRM114-Status: GOOD (  12.92  )
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

On Thu, 12 Aug 2021 17:47:51 +0800, Chen-Yu Tsai wrote:
> A variant of the Chrome OS Gru-Scarlet device is missing in upstream.
> This variant, dumo, is the same as the Innolux display panel variant,
> but requires a specific calibration variant for its WiFi module.
> 
> I'm not sure if it's better to inherit from gru-scarlet-innolux. I kept
> them separate from now, like in downstream ChromeOS kernel v4.4.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add gru-scarlet-dumo board
      commit: 1aec043e2bcfc28a7b3946c852c89c008cfceb30
[2/2] arm64: dts: rockchip: rk3399: Add gru-scarlet-dumo board
      commit: ae328485ba0d5e2e0ff058438afbd8371badbc19

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
