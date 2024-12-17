Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CAABE7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 17:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0P+uAeqxvlg/1Ecytf6fh5B3M/oAp2p/rYDdYHaBBs=; b=3HQFwJoyYHqoNM
	2ZuNg254MWfhIFQxZ0n8J+bZDAJU13MXE39qfpSY8zMYzyyIYnYkHQCHPjmov51omPRfgm9YsVf4J
	96ON339kjoKkW74EU/ZGYPlmJtcPWCkL9UQc2j8dMwBiZTMPUqTTl3xIRTLfSWFsX6vWbhrpGJwe7
	cChKGYP420BRBVajlNplMEHIAZQFsCr9MmVOJwgqKwpMi5P2KyL7AYQSDTw5oAeocFEBtq7MmicNL
	oc6XoPlt0zHW3tI2JQ1mak7S7VCxsSOWO4xb+SVkqYxoWyqgPaZBuor9CAtUuc3WJ4RvGCa16tKTW
	Wvv9V/fMfzU0u0BL9H8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNbLk-0000000EKfV-03eG;
	Tue, 17 Dec 2024 17:27:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNbJm-0000000EKIc-0MCL;
	Tue, 17 Dec 2024 17:25:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5B8205C66F5;
	Tue, 17 Dec 2024 17:24:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70CBCC4CEE2;
	Tue, 17 Dec 2024 17:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734456309;
	bh=nCvy4GS2XUqGmqTA94soHiboSzyVX7nHBtkKXyCp+Cw=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=IXeMSPbb3US4V7xq2w1X5bwx6pWIgZ1xAGN84LaSw+VEEftIbRMCd01KUZ5qcUAjg
	 G1jk8Rt5EUqTwLddGOxGxiddJ4ShkICVMy2YcaF10CzWd2RxBSar788si2r9ARNs6c
	 SgB59cekKqtIDCouRcMPnHWTFbeEj6CzKP5gUL/IDRfI/4jZZeqaXIvFRd/nB1AkJ+
	 SMzNWBYv6x53Fo92UjsXX/SlszevX4pGC9xvsLAFsGdmZ/POgQvP9jLhNAc3f3SSYE
	 Ac0jgrgXf6ngEt3C0M0M0/ud0oNx/c0mZgyv9+f1JDI5YcENrN1CK5HwuneZd4Jn09
	 l+f3EDeTJTHAA==
Message-ID: <b2ad15d2d5049701f34099e0df7fb727@kernel.org>
Date: Tue, 17 Dec 2024 17:25:06 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v7 07/10] drm/bridge_connector: hook
 drm_atomic_helper_connector_hdmi_hotplug()
In-Reply-To: <20241217-drm-bridge-hdmi-connector-v7-7-cb9df2b6a515@linaro.org>
References: <20241217-drm-bridge-hdmi-connector-v7-7-cb9df2b6a515@linaro.org>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-sound@vger.kernel.org, "Alain
 Volmat" <alain.volmat@foss.st.com>, "Alim Akhtar" <alim.akhtar@samsung.com>, "Andrzej
 Hajda" <andrzej.hajda@intel.com>, "Andy Yan" <andy.yan@rock-chips.com>, "AngeloGioacchino
 Del Regno" <angelogioacchino.delregno@collabora.com>, "Chun-Kuang Hu" <chunkuang.hu@kernel.org>, "Dave
 Stevenson" <dave.stevenson@raspberrypi.com>, "David Airlie" <airlied@gmail.com>,
 =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Inki Dae" <inki.dae@samsung.com>, "Jani
 Nikula" <jani.nikula@linux.intel.com>, "Jaroslav Kysela" <perex@perex.cz>, "Jernej
 Skrabec" <jernej.skrabec@gmail.com>, "Jonas Karlman" <jonas@kwiboo.se>, "Krzysztof
 Kozlowski" <krzk@kernel.org>, "Kyungmin Park" <kyungmin.park@samsung.com>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Liam Girdwood" <lgirdwood@gmail.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Mark Brown" <broonie@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Maxime Ripard" <mripard@kernel.org>,
 =?utf-8?b?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, "Neil Armstrong" <neil.armstrong@linaro.org>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, "Phong LE" <ple@baylibre.com>, "Raphael
 Gallais-Pou" <rgallaispou@gmail.com>, "Raspberry Pi Kernel Maintenance" <kernel-list@raspberrypi.com>, "Robert
 Foss" <rfoss@kernel.org>, "Russell King" <linux@armlinux.org.uk>, "Sandy
 Huang" <hjc@rock-chips.com>, "Seung-Woo Kim" <sw0312.kim@samsung.com>, "Simona
 Vetter" <simona@ffwll.ch>, "Takashi Iwai" <tiwai@suse.com>, "Thomas
 Zimmermann" <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_092510_165429_A5BF8D60 
X-CRM114-Status: UNSURE (   5.76  )
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

On Tue, 17 Dec 2024 02:40:29 +0200, Dmitry Baryshkov wrote:
> Extend drm_bridge_connector code to read the EDID and use it to update
> connector status if the bridge chain implements HDMI bridge. Performing
> it from the generic location minimizes individual bridge's code and
> enforces standard behaviour from all corresponding drivers.
> 
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
