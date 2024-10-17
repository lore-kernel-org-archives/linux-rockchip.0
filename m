Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 774AAD3749A
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 14:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CNkyzq0fyGMJnWl1u/srEWDkwVG7GOdsutPOTKXH7Dk=; b=FzlHZdREPnzXZ6
	J6rvy08nQrLVM2YjIbTvqKrlQfqqmN6xG1uZLVRcHj4suGqc3urcpSdMsgEdq1HH63vzxPsTjvyVW
	o9js6bR3iTXttfqVTyhKDa4lM4h5KOD7ur5E/oxMXIVGYCjnju2ZPbTieNwmI+qaowVoabd+eCb7i
	jpXRM7TPZ0ymuLwECHl5y8QwKKSZs8qZbXt3P9IDfm6EDoof9qyWMCsMnRHqDbEgxVn7r0OO8mZKO
	gqfstZXqBld+y1ttdGgKnXOgNFqDyf/TLyZd1Ewy/A/gQEsJ8vesx7JdboIyaPhS56NCyLQWNr+6Z
	Th3aK8P+nvE2IwFNAUzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1REi-0000000F43z-1rNO;
	Thu, 17 Oct 2024 14:12:20 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1RDp-0000000F3pY-3SVv;
	Thu, 17 Oct 2024 14:11:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 7553CA44019;
	Thu, 17 Oct 2024 14:11:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1D9CC4CEC7;
	Thu, 17 Oct 2024 14:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729174284;
	bh=P7LRMT5V/UAyFIi2zjmQ8b9UCs/nHWtLwIpUD5KHXEk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=GfkODlVKHsJs4WEAUl905tfbJfpPdYBTdfoCoXofZmItiDs/4HizBJj9RBBE48ih4
	 W/Bw42A/lq2IeoXZimuhybKEs82zyRTvZ2hQavgauH4bYRUpq9qCJXsrScAXdQd55G
	 LTcTeJk4AWepF1iEiBuMrsgT/Gv8jOdPIFG2ifE5OdizRABk/MXNwWf10w70yXmnZJ
	 lg/0JK44YH1o8vC8sr6Tvk4V0ZcrG5iteD+p0fDStyxAllIS3RNrzzf4MSDWnVEglL
	 crgkUosfeNtf1VmdwcV8CaMztC+8OS9ox8qc8abN24hGoiBBkP1+be/pT+n8Rcu0aF
	 cltg8Ev5uxTdQ==
From: Maxime Ripard <mripard@kernel.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Simona Vetter <simona@ffwll.ch>, 
 Simona Vetter <simona.vetter@ffwll.ch>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>, 
 Algea Cao <algea.cao@rock-chips.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20241016-b4-rk3588-bridge-upstream-v10-0-87ef92a6d14e@collabora.com>
References: <20241016-b4-rk3588-bridge-upstream-v10-0-87ef92a6d14e@collabora.com>
Subject: Re: [PATCH v10 0/3] Add initial support for the Rockchip RK3588
 HDMI TX Controller
Message-Id: <172917428139.3344404.160573495360164649.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 16:11:21 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_071125_982287_47A75B50 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

On Wed, 16 Oct 2024 23:06:50 +0300, Cristian Ciocaltea wrote:
> The Rockchip RK3588 SoC family integrates the Synopsys DesignWare HDMI
> 2.1 Quad-Pixel (QP) TX controller, which is a new IP block, quite
> different from those used in the previous generations of Rockchip SoCs.
> 
> The controller supports the following features, among others:
> 
> * Fixed Rate Link (FRL)
> * Display Stream Compression (DSC)
> * 4K@120Hz and 8K@60Hz video modes
> * Variable Refresh Rate (VRR) including Quick Media Switching (QMS)
> * Fast Vactive (FVA)
> * SCDC I2C DDC access
> * Multi-stream audio
> * Enhanced Audio Return Channel (EARC)
> 
> [...]

Applied to misc/kernel.git (drm-misc-next).

Thanks!
Maxime


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
