Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 642BDCF9C6B
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Sep 2024 14:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1uhByaEMPoD788EErLZxWKhJ1sKsZ0m4W6Z0lsAEj3Q=; b=Y2QNYLsMQgAhuw
	9+nQGoNzBtSwz+ULJ4Wv3HnbFmQzn39V0li8H7+OGyc0PYFJNPspI2/D/C/eCbNCbvmT77xR/7JZA
	oQtdYlxsyttZCkvcEutR4dJmIWKYcdbanL/+Y9DXi5ACBTlkaotTvKEz/j/9kB6KDqfzIN/1VdxKz
	NsC9O0qcDi7fMg4FYrDlWEmd/38z1sO/Cc9FjkILjiSi7dhpSlh+jgwboCWFx6WgpUTQ5V9kgirv4
	TBSx9bWY7XWs3VU1qEfJzaFw/lw+Qon3/WokWECDWZweemC0zkaW5RwpINeJRF3hEByqwfkELn5Rp
	6TL9k2FgT7fovVfRefIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st65M-00000002UID-2FfS;
	Tue, 24 Sep 2024 14:00:12 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st64B-00000002U63-3tgK;
	Tue, 24 Sep 2024 13:59:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B5D41A4263A;
	Tue, 24 Sep 2024 13:58:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDC29C4CECD;
	Tue, 24 Sep 2024 13:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727186338;
	bh=wOmAV/NVLES4Ot48enknKQtgF1inWU6rd8X6FWlO0uM=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=JRG32gE1VKNj4N+5DNAxkHvHz/CX1JdjHGhy9bm28gSPxCjinn+c5Tuo1TiBbChXM
	 mUpbI0EVjkhhdCAr4pT/ctEN7TPDayOO4gn+88agO/VctgNpiGW2olGHNcP4qtMhDz
	 TNYPBA39zkbx7w2NVZGSqteanVouQvXE3Dp1mBDy6qtdbvRTbpex909QA6pjXdehbM
	 kdoKkTZPxwunnXwKV/hWPA1hRCAkUxsFsWz9sQTFvert+qZhIEUeJxN+dHk4i7UIl/
	 huU8XLhyuxIsZRbiz4NPO655yyR1Cs8qC1IoSLOruIyFoLJq+Rrci0tSglT1v857TB
	 GNTAZMsNMTiLg==
Message-ID: <097f09d73db95dddcccfec9008e2a362@kernel.org>
Date: Tue, 24 Sep 2024 13:58:56 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v7 1/3] drm/bridge: synopsys: Add DW HDMI QP TX
 Controller support library
In-Reply-To: <20240914-b4-rk3588-bridge-upstream-v7-1-2b1348137123@collabora.com>
References: <20240914-b4-rk3588-bridge-upstream-v7-1-2b1348137123@collabora.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, "Alexandre
 ARNOUD" <aarnoud@me.com>, "Algea Cao" <algea.cao@rock-chips.com>, "Andrzej
 Hajda" <andrzej.hajda@intel.com>, "Andy Yan" <andy.yan@rock-chips.com>, "Conor
 Dooley" <conor+dt@kernel.org>, "David Airlie" <airlied@gmail.com>,
 =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Jonas
 Karlman" <jonas@kwiboo.se>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Luis de Arquer" <ldearquer@gmail.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Mark Yao" <markyao0591@gmail.com>, "Maxime
 Ripard" <mripard@kernel.org>, "Neil Armstrong" <neil.armstrong@linaro.org>, "Rob
 Herring" <robh@kernel.org>, "Robert Foss" <rfoss@kernel.org>, "Sandy Huang" <hjc@rock-chips.com>, "Sascha
 Hauer" <s.hauer@pengutronix.de>, "Simona Vetter" <simona.vetter@ffwll.ch>, "Simona
 Vetter" <simona@ffwll.ch>, "Thomas Zimmermann" <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_065900_068243_710D0A55 
X-CRM114-Status: UNSURE (   5.63  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, 14 Sep 2024 21:56:51 +0300, Cristian Ciocaltea wrote:
> The Synopsys DesignWare HDMI 2.1 Quad-Pixel (QP) TX Controller IP
> supports the following features, among others:
> 
> * Fixed Rate Link (FRL)
> * Display Stream Compression (DSC)
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
