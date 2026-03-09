Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 832A8F41808
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Mar 2026 15:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78wutYs0BRU6LqRT1H7cACHgtiH8gIVudl75m0gW2Jc=; b=tlpO5vhztgB/yv
	dzPom5fMGgU14mdOr78t+19AUeuRePCZ0DmV2WAP2xzKlCLB0DamvZmBb91I8HWD3fGeUXxLsK6H2
	Tg6HLQHzBscCCVt7eKYt6FWmgLyUg/lvzo/luICpjqG3IYeQt5LRHwSZ0IApMQ8I4zwUQjwHEZhLL
	SiSpqH4dNu63JyJxl3kpX3oOWmXXncRvBs/1dJAcwlV1qkbsoo35YfFOUYDn8sW55TkaJsbcr9wv2
	4eqLMyNAnk89QHTxT3IJGAIOroAvHHl9rb06lZWoDZTRoOWPDbQ5bLvDVRhgcpvIlVFk7n3r3ucgR
	HLjo+owydFlDuAy9TfkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzciv-00000007cji-28oQ;
	Mon, 09 Mar 2026 15:40:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzcit-00000007cj6-1f3l;
	Mon, 09 Mar 2026 15:40:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 93CCF43212;
	Mon,  9 Mar 2026 15:40:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E379BC4CEF7;
	Mon,  9 Mar 2026 15:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773070846;
	bh=PAZtWAN2KXcJZD7/+GRucZaV1mlBN/m2M2sQSznJBTs=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=YBoYJCf5n3qeMJbCX+q02URKqcH0Zp1vdaoDvCdqaUhChNeqctktQVkt7x6Sjoy9E
	 YqCr4mz7cvTkCE9lM/gZxrrcJg3Cvt4haSVqOSZ0xxiD6tFD+LkZeqEuAbcDoQH3sL
	 3PrRLMiQHHfImkUf6Qy0zsKqCgcirHTKzr/4TrSdGB8aivQTVaOIZC3ry10EVKa0tz
	 kONfIfrhQJPOO/AWYCQW3nV8CgWGUBCxmECRhLkviIu2ElTPFLAAOzqrWEgK6WCVk2
	 s1CpFKBc1QmQ3xlNYYgi3ySEJbPqumHAgqCWhBS085mq2C80X5vQp8VH786pOGkUEn
	 xA5qJyPDORRCw==
Message-ID: <92644dec70015171f22b9e7ad4d9386f@kernel.org>
Date: Mon, 09 Mar 2026 15:40:43 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v10 21/22] drm/tests: bridge: Add test for HDMI output
 bus formats helper
In-Reply-To: <20260305-color-format-v10-21-a58c68a11868@collabora.com>
References: <20260305-color-format-v10-21-a58c68a11868@collabora.com>
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
 Huang" <hjc@rock-chips.com>, "Sascha Hauer" <s.hauer@pengutronix.de>, "Shuah
 Khan" <skhan@linuxfoundation.org>, "Simona Vetter" <simona@ffwll.ch>, "Thomas
 Zimmermann" <tzimmermann@suse.de>, "Tvrtko Ursulin" <tursulin@ursulin.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_084047_457152_7205BDFC 
X-CRM114-Status: UNSURE (   6.64  )
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

On Thu, 5 Mar 2026 15:19:47 +0100, Nicolas Frattaroli wrote:
> The common atomic_get_output_bus_fmts helper for HDMI bridge connectors,
> called drm_atomic_helper_bridge_get_hdmi_output_bus_fmts, should return
> an array of output bus formats depending on the supported formats of the
> connector, and the current output BPC.
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
