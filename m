Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FA4FEA4FA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Feb 2026 10:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQC40dLziaqWqa2pF4u9EN9RdyGAp6axHaWzM0H6hGo=; b=f0TRZ6XiBpnbd4
	21oCunCIFhxUN9WlA8LVrwY4mEd1+zGdPL95/hldpmCFSreNq2/DxafSutVt9nitM9Bmpl9ewEmUW
	qgglBN0uLtJAjwdAKLTbBIPSb6AFuyJJJ6P1p+Rbk3mmrfebAg8t1iG0jt7o9UhF6SKhf3gIM4pap
	FG7YUdfrlCnpP7Csh7VHsgfRt3Zx57V1XSLeO2M3J6Ce8qHRmqR5DT0dS/in4+PK4kT8dsABI+FRw
	aopjKTlnCDOs78agaIY8aYO+bZ9lw2WULrOO1ChpTqZe6iQwp1zGOTNXt8/aoR8Gepo571EpD0lcX
	ZIjfqxquq3UnWHX8vqDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTeI-00000000735-43I3;
	Mon, 23 Feb 2026 10:58:46 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTeG-0000000072H-2oIP;
	Mon, 23 Feb 2026 10:58:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1A10641750;
	Mon, 23 Feb 2026 10:58:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 725D0C116C6;
	Mon, 23 Feb 2026 10:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771844323;
	bh=QeUhpW5ZHW9W03OdaYVWS7lJzgfUrHq85mrNLwMR8Vk=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=aj1Uq+jELXnhsmWirdvYXtFjNwW/Rep8UbqYN8xtGttRFRcgPABYThU4kqtQkUdbj
	 oCqFah1xawKiFHLvUx6BSDEPpDEZ7HHvL+qDCu6x/+KA4b+n8b5kCJoC3mlSQgZ2kH
	 mvA3ltgbo0NBovsEGT473nQ1rM/uAPc4+YnGeg2vsTSkzfcH9YSzsb9CiXJVEMixKp
	 MzqbqwwuakbbHRHvg/Ro0rT/FftY1XwvnF5vWJpUlvXwMyINy9SWC6K+e07O57JDr6
	 lGWLTC4WQnN8g/KM6SMVUFBGl/raTGAmbutKnkh9uvHRLf8g+vniJA6mj6FMrsYVwb
	 bnXy15uAZMPeg==
Message-ID: <37669584817bdca3d569e80047c94949@kernel.org>
Date: Mon, 23 Feb 2026 10:58:40 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v8 06/20] drm/display: hdmi-state-helper: Try
 subsampling in mode_valid
In-Reply-To: <20260216-color-format-v8-6-5722ce175dd5@collabora.com>
References: <20260216-color-format-v8-6-5722ce175dd5@collabora.com>
Cc: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, "Alex
 Deucher" <alexander.deucher@amd.com>, "Andrzej Hajda" <andrzej.hajda@intel.com>, "Andy
 Yan" <andy.yan@rock-chips.com>, =?utf-8?b?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>, "David
 Airlie" <airlied@gmail.com>, "Dmitry Baryshkov" <lumag@kernel.org>, "Harry
 Wentland" <harry.wentland@amd.com>, =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Jani
 Nikula" <jani.nikula@linux.intel.com>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Jonas
 Karlman" <jonas@kwiboo.se>, "Jonathan Corbet" <corbet@lwn.net>, "Joonas
 Lahtinen" <joonas.lahtinen@linux.intel.com>, "Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>, "Leo
 Li" <sunpeng.li@amd.com>, "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime
 Ripard" <mripard@kernel.org>, "Neil Armstrong" <neil.armstrong@linaro.org>, "Rob
 Herring" <robh@kernel.org>, "Robert Foss" <rfoss@kernel.org>, "Rodrigo
 Siqueira" <siqueira@igalia.com>, "Rodrigo Vivi" <rodrigo.vivi@intel.com>, "Sandy
 Huang" <hjc@rock-chips.com>, "Sascha Hauer" <s.hauer@pengutronix.de>, "Simona
 Vetter" <simona@ffwll.ch>, "Thomas Zimmermann" <tzimmermann@suse.de>, "Tvrtko
 Ursulin" <tursulin@ursulin.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_025844_748679_76C7D5D0 
X-CRM114-Status: UNSURE (   6.03  )
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

On Mon, 16 Feb 2026 14:01:20 +0100, Nicolas Frattaroli wrote:
> drm_hdmi_connector_mode_valid assumes modes are only valid if they work
> with RGB. The reality is more complex however: YCbCr 4:2:0
> chroma-subsampled modes only require half the pixel clock that the same
> mode would require in RGB.
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
