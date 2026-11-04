Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7702E609C5B8
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 20:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=eznwZDR3;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=AjUAAIFk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pI0nk6od25r2dReDu7jhdjjxB89YE1CswVjXfqJRNio=; b=eznwZDR3BKUif7ATUHxHrZkKRb
	3zyLIMRELjwVs+UWhnkpPvA+toAeg3Ykz9LEFAqhnXtdE79uAehXfrrt1GzrsNW04z2FfKYpcy2x8
	uqFlDHY1UMqWwKLGJYMVZ0ujqW1so0HBPm2HfIOxoRTGFFAPiZjOTGfKld6/+ykdEpvDkxFi7lVBz
	k8vrZI2fghjVrHPznEE5ft/VekI4qwNX+cv+1nDWlDgbqakdtMAEcdu8e7oDB8e2QGy890UaMPylq
	sHPfdGEVgJ0OQmhO+92VpxDXVupTTtocbvVLro9Wir43UpLbyR6xvoh8G42yo9z9GIj8VdReqh6PR
	Un7R8Gbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOi2H-00000006xYa-0tCP;
	Wed, 04 Nov 2026 20:56:45 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOi2E-00000006xXa-2Y0b;
	Wed, 04 Nov 2026 20:56:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1793825800;
	bh=DFMoN9VaSVJOOLJDXLMmcmecZLc78udASKoTWQJ1IOI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AjUAAIFkiuW98FJu5/ylNWovxCKnIXervDCdQA9Fh+rgpKxR7cLC9LjGYn0/xDgvN
	 DWOD0IX9qA45/2uCKokePyD9FH/mO/GX69INb+wLz7GtvLwG0dAvffxnF8C/0NbEWC
	 /mdZCIG442dQaiRve9lBLwbkCqo3zst9+3FUxjsUlYcA2T0onpOAb0rjejTUdDC2qV
	 VXbyWi0+92XST4OaZMgkU8AMALOZhHqAxdGouxgoNPMoufb/GcrShfQTXzgv1GaOLX
	 8YraaGnH6x7gnOXPAzOkUzqIhEh2dimoCaPvn5+mBwScM3HyJYvymkvfsk+CCdSzgk
	 aAWnlwKfjZJ2g==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 54F2617E066C;
	Wed, 04 Nov 2026 21:56:39 +0100 (CET)
Message-ID: <f9797a72-2fd0-4127-b741-dfc6cf3306f1@collabora.com>
Date: Wed, 4 Nov 2026 22:56:38 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 13/15] drm/rockchip: dw_hdmi_qp: Support 10-bit YUV422
 output format
To: Daniel Stone <daniel@fooishbar.org>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Stone <daniels@collabora.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, kernel@collabora.com,
 Andy Yan <andyshrk@163.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Igor Paunovic <royalnet026@gmail.com>
References: <20261014-dw-hdmi-qp-yuv-v5-0-6fab0fe43a9b@collabora.com>
 <20261014-dw-hdmi-qp-yuv-v5-13-6fab0fe43a9b@collabora.com>
 <CAPj87rOMjFEjOQ9TVgbGWu3gTwVjmjuFNtnFiyxbWO+g_RPqeA@mail.gmail.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <CAPj87rOMjFEjOQ9TVgbGWu3gTwVjmjuFNtnFiyxbWO+g_RPqeA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_125642_830054_CECA3AD9 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Daniel,

On 10/30/26 1:52 PM, Daniel Stone wrote:
> Hi,
> 
> On Tue, 13 Oct 2026 at 23:52, Cristian Ciocaltea
> <cristian.ciocaltea@collabora.com> wrote:
>> @@ -229,7 +230,14 @@ dw_hdmi_qp_rockchip_encoder_atomic_check(struct drm_encoder *encoder,
>>         }
>>
>>         phy_cfg.hdmi.tmds_char_rate = conn_state->hdmi.tmds_char_rate;
>> -       phy_cfg.hdmi.bpc = conn_state->hdmi.output_bpc;
>> +       /*
>> +        * YUV422 always transmits two 12-bit components per clock cycle,
>> +        * regardless of the color depth, which from a rate perspective is
>> +        * equivalent to three 8-bit RGB components.  Force 8 bpc here to
>> +        * keep the PHY PLL output aligned with the TMDS character rate.
>> +        */
>> +       phy_cfg.hdmi.bpc = (s->output_mode == ROCKCHIP_OUT_MODE_YUV422 ?
>> +                               8 : conn_state->hdmi.output_bpc);
> 
> Same question as for the VOP2: why only special-case YUV422 when
> YUV420 also needs special treatment? And presumably in a way which
> can't just be mashed into bpc, because the maths doesn't work. So
> would this be better off being handled as a separate output-mode
> adjustment?

For YUV420, the halving is already in the TMDS rate, so the PHY PLL output
equals the halved VOP2 DCLK - no special handling required here.

However, since YUV422 is not deep-colour packed, its TMDS rate equals the pixel
clock and therefore the PHY must get 8 bpc.  This is essentially what
drm_hdmi_compute_mode_clock() does, forcing 8 for YUV422 for the same reason.

I replaced the ternary (and the related comment) with a documented helper.

Thanks,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
