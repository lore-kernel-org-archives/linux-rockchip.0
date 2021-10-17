Return-Path: <SRS0=g7df=PF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56FABC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 21:52:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC2A060FDA
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 21:52:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AC2A060FDA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73QTCXKfY5hpeIw6Wdm83YBkMTtpP4zjC4zWacZ/jCs=; b=M/7BlUr0Tp1ZwK
	LXlOMbz0/FSHZKR7GW7BlbMNVJ0eL0npTRgPkikbTDnArb85E16zW9Ljt6Q0WrsOVAGUqJeCgW3pJ
	RP3KRmy/ndgPGTBVXdzVzF4JA0C1rE0A25WRytqDLG8Yrclwe7hbgDQEGDETT4S9vmGpifuLYEQgP
	UWyUWjqrluie4HLJeTFE9A/Zs49NE/T7VF0aSIJvJdNpopn7T5jUOirWdXVWO2ROrkdOxHj8rmZQo
	d1Y9Kb3e1xKQ+Z9/6CtLCkwLrcx0JzWioDnrhy7LarKU24q6XPLHXXG+aqMTnfWGRF2VvwoKZsB5l
	kefLc1QbTNpVvyC3tMJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcE5B-00DOiS-79; Sun, 17 Oct 2021 21:52:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcE59-00DOhe-7Y
 for linux-rockchip@lists.infradead.org; Sun, 17 Oct 2021 21:52:40 +0000
Received: from p508fd4f7.dip0.t-ipconnect.de ([80.143.212.247]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mcE56-0004w2-3u; Sun, 17 Oct 2021 23:52:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: vop: Add timeout for DSP hold
Date: Sun, 17 Oct 2021 23:52:33 +0200
Message-Id: <163450753814.562592.2607935368161273314.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211008153102.1.I2a5dbaaada35023a9703a8db7af501528fbb6e31@changeid>
References: <20211008153102.1.I2a5dbaaada35023a9703a8db7af501528fbb6e31@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_145239_297025_7084879E 
X-CRM114-Status: UNSURE (   8.64  )
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

On Fri, 8 Oct 2021 15:31:04 -0700, Brian Norris wrote:
> If hardware is malfunctioning (e.g., misconfigured clocks?), we can get
> stuck here forever, holding various DRM locks and eventually locking up
> the entire system. It's better to complain loudly and move on, than to
> lock up the system.
> 
> In local tests, this operation takes less than 20ms.

Applied, thanks!

[1/1] drm/rockchip: vop: Add timeout for DSP hold
      commit: 085af7d28897deb08a4f64a29e55525f963cc041

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
