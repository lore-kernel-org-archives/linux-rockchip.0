Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9304C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 07:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0zEX7umCntFwTlpI+AT5rtFZ5LTiLLdxtMemTflRuY=; b=XK0uAozfHYwBQd
	F5Yo1EkRxQoy51KRCLkvFnUHvnEyzv2x8JMPGaT9CNlWyiiW9TVNJMHG846l6XqI2NYhzZVbd7UjP
	nyzfuRt4uhp6j7ZpYZIVJvxUrLHnmdeA1qDSQxN7xkqvdcs7e9G4xZGQWdpYzbnFtoRUYAR42Dgks
	CTorMc3u+WtYrX+Md8yHvcU2WbkrqocLMSSrUIy/nWMaLOu4sZxDNdcCMO2JARBLUQ1r8t02/U4ES
	/clJwNSxqgamj9YLTKWwTc2bmZhsPwHXwA/yc/898SObV/hePvh4XuUrtjd03NirZFXhBjaCGbvxo
	r/WiCCvy+Y4iom39MVXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o26YR-00610m-OF; Fri, 17 Jun 2022 07:38:07 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o26MR-005wWJ-TF; Fri, 17 Jun 2022 07:25:45 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id D16F15C0151;
	Fri, 17 Jun 2022 03:25:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Fri, 17 Jun 2022 03:25:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1655450738; x=
	1655537138; bh=t6QXcNLzauxbqf0PNTG8MvaAdoQQFis6uQHBpNA5m+I=; b=n
	r/26OCnEDIr6jYGUp00hxr/NMoxkf6xXfRuhMockkxh6n/wloYbpla88d1SGLc3P
	BtUBgD8RZGZwQq1VPEdFsxTpp0vbEShL/ls6VxYlg3QMzR0vwLar8HSi00UlQ0gL
	CH0ldBnQE8fgusDetIp4GspeBfNwxFV/Kux0Hx5Gn4thT/XQgU8PMW4HgsFFcXRm
	Zivnb/+Onrj1LGZ5AHx2nvHV0C75KC/tYxnCCabt/MYKO/z8c0fQcLinaQbHGkZ/
	ReDK0Ixt6XyqgHi5Jl8vZzwm7V5ELSXQsKa2v6qLRWnUgG5G2P5dohWhsokjAjTc
	L+OzZ1aV3f76OQGSJyChg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1655450738; x=
	1655537138; bh=t6QXcNLzauxbqf0PNTG8MvaAdoQQFis6uQHBpNA5m+I=; b=C
	kYUa18GGhGd0oZQ43NnZDN3+5y/3awo+Sws0Pq3eb6UKVOekXJ4Y7ZEHvLp36JHj
	tycJVtu9HwZf6jSnqxW4zSYXVJbe86AaaXxlWH7q4QH3qe9lRa6jd+fNATp9LPAT
	uMB4hcgr49bGrbUHs5jLTWfsDcAY1XnxmodGaA/DgxKZG0akk8naBHEsjI+9wBbi
	bdBT2GvJE4pNDjc9Q1xJKM5StazQkLXgIHK2oujsy/VM2X0INDscm2W7ndAJ5rcf
	mBBIfmMwMR/jziK5WAQT6SO63sjbrOoLYrgXG/T1UfFrVqW/5w3OIEWPJWQoFPkh
	/k+4PB1FRuFRA5/pGTzAw==
X-ME-Sender: <xms:cCysYuGbj_tXIkPunEurAIwroXW5XpxjXpF4QSJbzxhbPXclwax6XA>
    <xme:cCysYvWgkzuxSA4c7vUx_UbBJT8gLLCv-uNPJbxN_6t01QjqR06uBZtc0l9wxHzhR
    zr0LWaTeAJNrwG7Sv4>
X-ME-Received: <xmr:cCysYoL-s8_MAzYdUOgHxl_upF4_8dJ4RyvHl_ZD6Qzg5t8bcXrIWoJ5sq56JxsiML5p_3EqajNOb9VnX0x1uY0f2nUbuWm7o5g4tUo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedruddvgedguddujecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefukfhfgggtugfgjgesthhqredttddtvdenucfhrhhomhepofgr
    gihimhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtf
    frrghtthgvrhhnpeetgfelgefggeekkefggfeludeiudffjeffgeevveekjedukedtudeu
    teefteefgfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:cCysYoGVB8cZQ7yOz48SmLfp873hgDRpdEpPRutGsvxTCLizycl41w>
    <xmx:cCysYkVSvHtiRSBPNAhrPCzXsNP5d45QhqafU_iIo0w9pj_rG6ibZQ>
    <xmx:cCysYrOhmw8cG_xUkAWqqi3Xw5qv0x5wtJ9n4l4N9ZI1Bu5NZbr7WA>
    <xmx:ciysYvyJISiAd-XGF0UUbZ-Rv8dPZGqNpVjs7CZjxA6lvgGh5OS30A>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 17 Jun 2022 03:25:36 -0400 (EDT)
Date: Fri, 17 Jun 2022 09:25:33 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Charles Keepax <ckeepax@opensource.cirrus.com>
Cc: broonie@kernel.org, lgirdwood@gmail.com,
	kuninori.morimoto.gx@renesas.com, airlied@linux.ie, daniel@ffwll.ch,
	vkoul@kernel.org, nicolas.ferre@microchip.com, nsaenz@kernel.org,
	shawnguo@kernel.org, linux-imx@nxp.com, cezary.rojewski@intel.com,
	pierre-louis.bossart@linux.intel.com, linux-mips@vger.kernel.org,
	linux-amlogic@lists.infradead.org, daniel@zonque.org,
	srinivas.kandagatla@linaro.org, linux-rockchip@lists.infradead.org,
	krzk@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
	linux-omap@vger.kernel.org, linux-xtensa@linux-xtensa.org,
	peter.ujfalusi@gmail.com, jarkko.nikula@bitmer.com, heiko@sntech.de,
	jbrunet@baylibre.com, kernel@pengutronix.de,
	alsa-devel@alsa-project.org, patches@opensource.cirrus.com,
	dri-devel@lists.freedesktop.org,
	linux-rpi-kernel@lists.infradead.org
Subject: Re: [PATCH 03/96] drm/vc4: Migrate to new style legacy DAI naming
 flag
Message-ID: <20220617072533.foajsg6z3c2js3nb@houat>
References: <20220616143429.1324494-1-ckeepax@opensource.cirrus.com>
 <20220616143429.1324494-4-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220616143429.1324494-4-ckeepax@opensource.cirrus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_002544_564966_7834B29D 
X-CRM114-Status: UNSURE (   6.87  )
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

On Thu, Jun 16, 2022 at 03:32:56PM +0100, Charles Keepax wrote:
> Change the legacy DAI naming flag from opting in to the new scheme
> (non_legacy_dai_naming), to opting out of it (legacy_dai_naming).
> This driver appears to be on the CPU side of the DAI link and
> currently uses the legacy naming, so add the new flag.
> 
> Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Acked-by: Maxime Ripard <maxime@cerno.tech>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
