Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69280C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 04:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JkZv4MZrR6cLh6ASdHw8pfOaukA1TpU4YB2QMDX8uDs=; b=1Fm5HFdniuGJsv
	e4dlmUMFFhsbgqW995CQrJIBo+jA5yAco0H2tkqhZtX6J8BB3o2ErpsO8lDVQOFe4wDhNfQ6f9n7m
	6IIjiODjQ4NzfFJXdKe1mCY7NU/kjmPTNvPA65ZMli609MmCI+T8xPLkYRtwJkGjZ2sUseqId3DJc
	rnotM/KfaKber88EOj8Qf/PxeGVjXjmdnq7IdiSLKg14UC+FHZBZJiXsMKcFCWbO8nLUFeii5Y/HF
	ZdYpsg6dcoFN3fpwnbqmhEuuHNEgcI6qbZYkMxK34fsJFjFAw3tjcvo/INElPa6pKUkXjSgMpXN49
	xADAoSEa8yc9z6jUZEug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4asa-000C51-9H; Fri, 24 Jun 2022 04:25:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4asW-000C4E-Pn; Fri, 24 Jun 2022 04:25:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7FB68620E4;
	Fri, 24 Jun 2022 04:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0687C34114;
	Fri, 24 Jun 2022 04:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1656044705;
	bh=3ofsG0+fqo2VqX2279Vp6KsempNjI6fWtI6ny6qteEw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QllQgw+Ri6XNAsWcIFs07OVlBE/AksnQiAY538Aiyghx+J5UsJRoGo3YBQAjTPG72
	 +wRTzRJOAFm+Mc0852z7JLjKFUAZlaGdobe3C/mZ+je8tYtvUsNb4BUiArhJfnZNHL
	 8+eZCZpayWwGyS6LNKWyckaWmCPGoApBIGT9LpLZxufSPBbEAPHmdhH862Uljavi+o
	 Ag0vH5hxLFY7AMfL6JdQm3DxoeezDVOgw1YS5od8ZyWC36/NyRBXxgnhcv/xbHEmEl
	 FdEkTi8swLOE61IoRKPv6ZsrN2oi7WDA6f/8oxmr4RSE7//+weuU2N9CUzjAH97H5w
	 DJTjTykyDjUIw==
Date: Fri, 24 Jun 2022 09:55:01 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Charles Keepax <ckeepax@opensource.cirrus.com>
Cc: broonie@kernel.org, lgirdwood@gmail.com,
	kuninori.morimoto.gx@renesas.com, mripard@kernel.org,
	airlied@linux.ie, daniel@ffwll.ch, nicolas.ferre@microchip.com,
	nsaenz@kernel.org, shawnguo@kernel.org, linux-imx@nxp.com,
	cezary.rojewski@intel.com, pierre-louis.bossart@linux.intel.com,
	linux-mips@vger.kernel.org, linux-amlogic@lists.infradead.org,
	daniel@zonque.org, srinivas.kandagatla@linaro.org,
	linux-rockchip@lists.infradead.org, krzk@kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
	linux-omap@vger.kernel.org, linux-xtensa@linux-xtensa.org,
	peter.ujfalusi@gmail.com, jarkko.nikula@bitmer.com, heiko@sntech.de,
	jbrunet@baylibre.com, kernel@pengutronix.de,
	alsa-devel@alsa-project.org, patches@opensource.cirrus.com,
	dri-devel@lists.freedesktop.org,
	linux-rpi-kernel@lists.infradead.org, frattaroli.nicolas@gmail.com
Subject: Re: [PATCH v2 02/96] soundwire: intel: Migrate to new style legacy
 DAI naming flag
Message-ID: <YrU8nRLVJghIzAEb@matsya>
References: <20220623125250.2355471-1-ckeepax@opensource.cirrus.com>
 <20220623125250.2355471-3-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220623125250.2355471-3-ckeepax@opensource.cirrus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_212508_916634_67024704 
X-CRM114-Status: UNSURE (   8.68  )
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

On 23-06-22, 13:51, Charles Keepax wrote:
> Change the legacy DAI naming flag from opting in to the new scheme
> (non_legacy_dai_naming), to opting out of it (legacy_dai_naming).
> This driver appears to be on the CPU side of the DAI link and
> currently uses the legacy naming, so add the new flag.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
