Return-Path: <SRS0=QbJo=OL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B52EC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 10:07:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 978F861100
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 10:07:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 978F861100
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mFgzxKzULEP48a5Wy9KCr//E+gkt+/WGg8mLzXiDxA4=; b=qh5U+xN5HUmWSX
	Ih6eUkf7A063m8gdpZHXOr+3tfBgAeDygpHBFDekW6zfbEXAYkHkFFp55Ybh0f/R4VXjfPPRDQ4II
	dJAQYOoMOaK9NMQSvfZHjm467ELTKA4Q5sMnpbTuiKgt9Yw5IvwJKMWJFAILMT+ncB7a9V0/4lL7O
	bmkivf4EQVJIuo9xQNXCpjmlP+Sz/99At9Ct68ErtzHMRya9kdTH8lbv+x3UizgbFzk/tMkbaT72F
	Hd+jmLo3P0UI1ASaluXLOUcVZ5ozswjwxoYQc506TuNLg876vKw0RvLkXKHquoE4yLrubKRdIKteF
	azMaCX/brqOJ7xBS/sOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mScg4-004BB5-SS; Tue, 21 Sep 2021 10:07:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mScdF-0049Yn-5q; Tue, 21 Sep 2021 10:04:10 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mScdB-0001rd-Ti; Tue, 21 Sep 2021 12:04:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com, linux-rockchip@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: Check iommu itself instead of it's parent
 for device_is_available
Date: Tue, 21 Sep 2021 12:03:30 +0200
Message-Id: <163221857585.2031971.16493849753912180569.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210627084737.309163-1-andy.yan@rock-chips.com>
References: <20210627084737.309163-1-andy.yan@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_030409_262550_FAE1B099 
X-CRM114-Status: UNSURE (   8.83  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, 27 Jun 2021 16:47:37 +0800, Andy Yan wrote:
> When iommu itself is disabled in dts, we should
> fallback to non-iommu buffer, check iommu parent
> is meanless here.

Applied, thanks!

[1/1] drm/rockchip: Check iommu itself instead of it's parent for device_is_available
      commit: e1202c7a65b10258f9a11c1d2613c2aa91fe11cd

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
