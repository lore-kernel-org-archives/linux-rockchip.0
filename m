Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83C94E77184
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 17:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUN2W21+EObAGM7u4EmjTkJgRL5gBTRoUjE0JWwmyRo=; b=hOuh/6fqjIC2Yk
	S3YXWV6clq3u/4Gak0xaVV3ECBGsa6pH2x2Y2nnIWJ+qPaIP+07XJq8JCfD5TTml9XeCn3BvU/kGk
	fO+DpWwEnEjTY4s90tlgdXSqjpxrTmEQa+a3Z2XfAGG9COhL350gNKBRKAxbxHYGmyfD7z5oA8o21
	mTvZff7qX+6tmdFX91aYIk/pqoW4TvbDzKVlnCuB8w7+MiLvvkgHfkc0adt1CLDTE2QrBh3c0QLe0
	IE1u+DKsxmHIj903C+kC0alZeIDJOh7fj1NGqwC/MZbe18C89/1QhevRVfHTLe6SLTJzNAztkR9Q7
	Fk6lLT9LJ85qTp5GKw4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNbKf-0000000EKOy-3Gcu;
	Tue, 17 Dec 2024 17:26:05 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNbJY-0000000EKDq-0sys;
	Tue, 17 Dec 2024 17:24:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 55A1F5C5E33;
	Tue, 17 Dec 2024 17:24:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB3A0C4CED7;
	Tue, 17 Dec 2024 17:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734456295;
	bh=1neTtSopNryfSXJpUTztXfgdin2CdL3yui9SkHic7sc=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=EogvqqU9oOnJ5EIFzyyngkskqdGRCP/nWMjNGQJtCFKlESW9sUMqjJVTyNyVoQnq+
	 4yNdtA2nMz0N1XY2WBX1TdDY+vqBXBMoOHrORVPaD+OOb1J/1G7Dttwkf65CrfLYsA
	 qiKUoUCw4nKMckzclhvvPO3LcLATPPlSJhGbmKJZAT3FXKUfKqVLnHkSVxKAx5Cs97
	 /F6P3waG2AKau25BW5taRar4r1CPCr3bVwUimy9TR5Mh/vjduIIlAuZmwMOAUI1Pkk
	 zjqJQOKuyDMXS6Nkhys8TXhpfnApHj8yLwZTaVkPcMvjTzmaYhpRa149+pxMeY2N8f
	 5XHqodI69Xq+w==
Message-ID: <2dad2c52bb2babf3af0196f17c74a9fa@kernel.org>
Date: Tue, 17 Dec 2024 17:24:52 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v7 06/10] drm/display/hdmi: implement hotplug functions
In-Reply-To: <20241217-drm-bridge-hdmi-connector-v7-6-cb9df2b6a515@linaro.org>
References: <20241217-drm-bridge-hdmi-connector-v7-6-cb9df2b6a515@linaro.org>
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
X-CRM114-CacheID: sfid-20241217_092456_302699_B8E9EBA9 
X-CRM114-Status: UNSURE (   5.69  )
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

On Tue, 17 Dec 2024 02:40:28 +0200, Dmitry Baryshkov wrote:
> The HDMI Connectors need to perform a variety of tasks when the HDMI
> connector state changes. Such tasks include setting or invalidating CEC
> address, notifying HDMI codec driver, updating scrambler data, etc.
> 
> Implementing such tasks in a driver-specific callbacks is error prone.
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
