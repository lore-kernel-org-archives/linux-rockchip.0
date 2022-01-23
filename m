Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 442FBC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jan 2022 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qs0pWclpPIpZ0an92qO5tVCL9nQ8V7xJVn/suR/1mzc=; b=tbvvag0U121rc1
	dK3BaONFDZ7aiNB+Nc23F5Na5rJ8h+BWQb2MKLn8fj99TrGhqM+A4LV5F8/Vp2TqcJOJYvJLW6bJG
	/O1g8w7uQ4Y4ZdXwwEF7UCQPQUhjmAj1TVUKP8lvlLazKbE74RJRkkkkGvogCSziVdGg3c1uyR5YO
	VJjB2wrEwLqc34MxDBXxNs1lsOGgBIGJyLe8cQWiKCzxwTUfYmzgloICpJcAUL1OxLXndqeg78dWX
	lY7Li8JDubEA2YxtrbYNU1fq12wV+P1GmPD6WTnz3n5GUhFGkoiiTYVb6ylMHtTaMJzYG5Zvp/xT3
	GC94aJ1XR6xm6qIt24eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBf8O-001BqX-K2; Sun, 23 Jan 2022 15:50:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBez7-0018ex-K4; Sun, 23 Jan 2022 15:40:54 +0000
Received: from p508fcdea.dip0.t-ipconnect.de ([80.143.205.234]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nBez0-0005OB-FH; Sun, 23 Jan 2022 16:40:46 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Mark Brown <broonie@kernel.org>, Brian Norris <briannorris@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Liam Girdwood <lgirdwood@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Lin Huang <hl@rock-chips.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 alsa-devel@alsa-project.org, Sandy Huang <hjc@rock-chips.com>
Subject: Re: (subset) [PATCH v2 0/3] (Re)enable DP/HDMI audio for RK3399 Gru
Date: Sun, 23 Jan 2022 16:40:43 +0100
Message-Id: <164295214821.418606.10125525976562860474.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220114230209.4091727-1-briannorris@chromium.org>
References: <20220114230209.4091727-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_074053_751774_82F7AFF6 
X-CRM114-Status: GOOD (  12.50  )
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

On Fri, 14 Jan 2022 15:02:06 -0800, Brian Norris wrote:
> This series fixes DP/HDMI audio for RK3399 Gru systems.
> 
> First, there was a regression with the switch to SPDIF. Patch 1 can be
> taken separately as a regression fix if desired. But it's not quite so
> useful (at least on Chrome OS systems) without the second part.
> 
> Second, jack detection was never upstreamed, because the hdmi-codec
> dependencies were still being worked out when this platform was first
> supported.
> 
> [...]

Applied as fix for 5.17, thanks!

[1/3] arm64: dts: rockchip: Switch RK3399-Gru DP to SPDIF output
      commit: b5fbaf7d779f5f02b7f75b080e7707222573be2a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
