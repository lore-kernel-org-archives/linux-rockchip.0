Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4BB6FCC07B
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Mar 2026 21:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/XtGArCT8jCOEvpgFr6OxZnjT39sOYPTJbfTvc2Rog=; b=NlJqrIUVbpFL1s
	nSC/CV2BrdHRXsmdJ4Ft0EdMDdspPC616OAOuFiRXLBt2SlCPCFwIoWKviTwvZM6bmGSGUsSaWSMK
	8shruGRDH1vxjls3SyWh1r9S3KdntdjEz9PJj5U0dJXI1M1tXsmm6a0Ji/DL8wa4LIdp4UfPDmS0J
	YIdO9Hq3PkdXxt6yYaa/lJl8B/mlqbcmcvRJXo+axYIoJe+qrVpEpWI9KGLqwbmS5x7Fc6kUJIPk2
	7AvVeE0P2BklCI3aH/T2UfBGLB2TLswuORxFVWDej1U9S3RzKiCuo0rzemIyj+nelNYuJKygWCdC6
	cnD/Pqutw7Yjo/J+f6iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vycTl-00000004VPU-1uN6;
	Fri, 06 Mar 2026 21:13:01 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vycTi-00000004VOr-1VIN;
	Fri, 06 Mar 2026 21:13:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772831574;
	bh=B3ZQFTxLKvPDQJlB9WceKgL9Q9b2Kjqcl9wrROdqszg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FfbICJYnylQFqJN22LyzAWy5L8DZbeKVizCF05BAECwOxaMOLXc50Y4G9vIrEmQ6f
	 H2q7D+swC6HGyQa93gC2reBv7RT7Wq2A5Bc+7XNE7oAu6fUD2ZETMAUF8CppfSU3bc
	 r6Sod6AgqMM18qn+caFCyaNK2TR5JJ7IkhXJ7FmSYhinr7bVvUHiTM8/uug2I21y1O
	 khxg8wKMnwRbxVD+Irj2riN8iMeNKIbMUmYXkG/pAz44PBE+rQc8XhJjAzqcuQPHof
	 XrF1WfrI8qRIR1dEjow8DVXF/Pt4OJiwkP7hL85kXeTD3s2w08YYlPE7/J27ezivBw
	 hKkE/cnHKv0pA==
Received: from [192.168.1.90] (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C68D817E0959;
	Fri,  6 Mar 2026 22:12:52 +0100 (CET)
Message-ID: <e9ec9cd9-6bc0-494c-a804-132f240a5aa5@collabora.com>
Date: Fri, 6 Mar 2026 23:12:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 12/22] drm/rockchip: vop2: Recognise 10-bit YUV422 as
 YUV format
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-doc@vger.kernel.org
References: <20260305-color-format-v10-0-a58c68a11868@collabora.com>
 <20260305-color-format-v10-12-a58c68a11868@collabora.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20260305-color-format-v10-12-a58c68a11868@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_131258_581569_BD31D186 
X-CRM114-Status: UNSURE (   9.23  )
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

On 3/5/26 4:19 PM, Nicolas Frattaroli wrote:
> The Rockchip VOP2 video output driver has a "is_yuv_output" function,
> which returns true when a given bus format is a YUV format, and false
> otherwise.
> 
> This switch statement is lacking the bus format used for YUV422 10-bit.
> 
> Add the two component orderings of the YUV422 10-bit bus formats to the
> switch statement.
> 
> Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
