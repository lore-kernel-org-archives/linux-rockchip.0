Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6424A606A31C
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 18:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=P3dM6kD5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256 header.s=dkim header.b=2YUCeZto
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=oH20cwp97JddLU5H1DsAcV9Lmq+ADJERlx3xtpWdnps=; b=P3dM6kD5dzkLU98HHtIgQyixR5
	/Ga1fIj+u8O4KkPJHc3kShf09igks5bahLaEd1tNZNsePdqXUUhGz6/COJ+sQmLcR6Oby8XDHcfDo
	YRVRkREqiiGbuk7EUCgtMz5mkZ3fJyKI9xc3+UwFdyfQxh84LN9E5v1kWaNOOIFx03DsHpXaQB3sY
	hXR11muLNSo0DbbGcPLVikuV8LYYXZCNBJdC9lYyaBfG26sgPEus34BbIhGC9O4e8r2KcM9cILiIW
	Ly9c5xNYfZncPVuUXo4uHudggvhXA576xDc00MSvge+e3VsReTBsI/4KgWakYUHuvKqtyC4Yq01fR
	Ocy90buw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWdo9-0000000E7ll-2sWC;
	Thu, 26 Nov 2026 18:02:57 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWdo7-0000000E7ks-2TI6
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Nov 2026 18:02:57 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 7BC711A1824;
	Thu, 26 Nov 2026 18:02:50 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 4461E60558;
	Thu, 26 Nov 2026 18:02:50 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9464B11E69199;
	Thu, 26 Nov 2026 19:02:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1795716168; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=OBmftwX5xkmh2yEUhqByt4ga8q9hssUc5Tn86F/AT9s=;
	b=2YUCeZto/xB7S8Ytj+9Kwaw2TcEYtRWgowALzmEFPgsU/ZYf30P0y364TFWHsW+aeHnpK2
	5POwVJ11e1JKblQsa7TAsF9so7aczS71cgkXTYx+AO+gRpw+XCK3795VrAYsCp15guWqXx
	0QHvk93ETtX7KUR+U4SI21olURehwtZdcSCOt2YqaDMMfT9YVX3AogK/EI7/XUMK6QoPgd
	jEKDfPsptO0+0Oh8gY59z/BBt/XqGs5XxejLraCkmYrgpmpxIliI1ptKntc9fCJf8ltWb/
	6NZ9MGc4bvEBa+4blKQusF+tPX0qdSjPHBhq5u+ycRch10LGov/ZJR8vinegjw==
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Thu, 26 Nov 2026 19:02:38 +0100
Message-Id: <DN5C92OQ40J6.21PMG8R70TEDK@bootlin.com>
Subject: Re: [PATCH v7] drm/bridge: dw-hdmi-qp: serialize HDMI audio
 callbacks with PHY enable/disable
Cc: <dri-devel@lists.freedesktop.org>, <linux-rockchip@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <stable@vger.kernel.org>
To: "Frank Zhang" <rmxpzlb@gmail.com>, <hjc@rock-chips.com>,
 <heiko@sntech.de>, <andyshrk@163.com>, <andrzej.hajda@intel.com>,
 <neil.armstrong@linaro.org>, <rfoss@kernel.org>,
 <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <luca.ceresoli@bootlin.com>,
 <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
 <royalnet026@gmail.com>, <me@timsurber.de>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.22.0
References: <20261112101155.47777-1-rmxpzlb@gmail.com>
In-Reply-To: <20261112101155.47777-1-rmxpzlb@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_100255_769363_65613397 
X-CRM114-Status: GOOD (  14.41  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu Nov 12, 2026 at 11:11 AM CET, Frank Zhang wrote:
> The following panic was observed during system reboot, it can also be
> triggered by the following sequences:
>
> - Disable the HDMI drm display, open and close the HDMI PCM device.
> - Enable the HDMI drm display and start audio stream on the HDMI PCM
>   device, then switch the HDMI drm display to disable, stop and close
>   audio stream.
>
> Kernel panic - not syncing: Asynchronous SError Interrupt
> CPU: 6 UID: 1000 PID: 2348 Comm: pipewire ... 7.0.5+ #4 PREEMPT(full)
> Call trace:
>  ...
>  regmap_update_bits_base+0x70/0xa8
>  dw_hdmi_qp_bridge_clear_audio_infoframe+0x3c/0x58 [dw_hdmi_qp]
>  drm_bridge_connector_clear_audio_infoframe+0x2c/0x48 [drm_display_helper]
>  ...
>  dw_hdmi_qp_audio_disable+0x28/0xa8 [dw_hdmi_qp]
>  drm_bridge_connector_audio_shutdown+0x38/0x68 [drm_display_helper]
>  drm_connector_hdmi_audio_shutdown+0x28/0x40 [drm_display_helper]
>  hdmi_codec_shutdown+0x60/0x90 [snd_soc_hdmi_codec]
>  ...
>  snd_pcm_release_substream+0xcc/0x120 [snd_pcm]
>  snd_pcm_release+0x4c/0xc0 [snd_pcm]
>  ...
>
> The crash occurs when HDMI audio callbacks access registers after DRM
> atomic framework disabled the PHY.
>
> The root cause is a race condition exists between ALSA and DRM atomic
> framework. During a modeset disable sequence, the DRM path disables the
> PHY, while ALSA may still execute HDMI audio callbacks such as
> audio_shutdown(), leading to accessing registers while the PHY is down
> and eventually a kernel panic.
>
> Fix this by introducing a mutex lock and PHY enabled state to serialize
> PHY state transitions and HDMI audio callbacks. This ensures that HDMI
> audio callbacks can only access registers while the PHY is enabled.
>
> Fixes: fd0141d1a8a2 ("drm/bridge: synopsys: Add audio support for dw-hdmi-qp")
> Cc: stable@vger.kernel.org
>
> Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus (RK3588)
> Tested-by: Tim Surber <me@timsurber.de> # FriendlyElec CM3588 NAS (RK3588)
> Signed-off-by: Frank Zhang <rmxpzlb@gmail.com>

I'm not really an ALSA expert, but the patch looks sane to me:

Acked-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

I'd apply it to drm-misc-fixes in ~1 week if there are no objections.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
