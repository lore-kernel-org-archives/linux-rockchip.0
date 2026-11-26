Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A81EA606A321
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 02:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3ySUwU4/;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=S/HsVM5Y
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qyE/nx/utDth+yMkRuAQueJ5oM9X35DBPt2IbZx7Nwo=; b=3ySUwU4/Xfi+t4Qwi7Mhbf+Up+
	iOhXBmqYVxF84IcawtSNwvpAocB50WTfK2GduVNQp69SjDCvAaW/Aus8AMGZhrHkmnU+QWHwytz/7
	mlfrMI4h66av4x/qKOCaHwQ+Zs/13rkvspSd+PB+QJACFuh1B4i+h8evKUAzsKEuntZhHksLT0wIp
	wPx+6i6e6euEHc2HfVS56xQQOoRzBIedXVlznNK3ct6NgHeUvWs/qK4pq3TBTByznjE+sMg3T+KXQ
	Ue443Su7OAgpga1mfTnlKamt68KLhy9GT1iWAqCDjDX+MSiH/2mAMPkXMlDIb47Zq0mYxoA1kBeJs
	HfSKPFog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWP1V-0000000BsBg-3fxY;
	Thu, 26 Nov 2026 02:15:45 +0000
Received: from mail-m16023652245.xmail.ntesmail.com ([160.236.52.245])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWP1M-0000000Bs9C-2ZN3;
	Thu, 26 Nov 2026 02:15:43 +0000
Received: from [127.0.0.1] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5609a9a43;
	Thu, 26 Nov 2026 10:15:32 +0800 (GMT+08:00)
Message-ID: <4476d230-aad2-4514-88cc-77535b2e04b2@rock-chips.com>
Date: Thu, 26 Nov 2026 10:15:25 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/rockchip: vop2: Reset the AXI master in vop2_enable()
To: Tim Surber <me@timsurber.de>
References: <20261125204511.2867433-1-me@timsurber.de>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20261125204511.2867433-1-me@timsurber.de>
X-HM-Tid: 0aa215a2fa2103a7kunmf50d3293eda2db
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCTh1NVhhJHRlMGEJPShhDGFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=S/HsVM5YLJ6VgxeQtTKKUrnj3ObtubRSAM/G+sEkeIUaLPNApiI8CrdE7spd+UWDEmRDOvu2yOwCofOyhxTRTVwZhsgtlQN7sf0X1QOV61OpGIowEEF/H8ABvmuvPFPfpnmURH3RhoKo5F8jGiGmLwPuL+/0+DBYwUYZnE7wkxM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=e+L8DXa2pMmItKQ77PKVtwOFGhGZJEc9cY2y3OfdnN8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_181537_265306_A042E0D2 
X-CRM114-Status: GOOD (  21.70  )
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
Cc: Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Andy Yan <andyshrk@163.com>, Daniel Stone <daniel@fooishbar.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Tim,

On 11/26/2026 4:45 AM, Tim Surber wrote:
> Asserting the AXI reset in vop2_disable(), while the IOMMU is still
> attached, can hang RK3588 hard when buffers are mapped into or unmapped
> from the VOP's IOMMU domain at the same time, e.g. when a KMS client
> exits and fbcon takes the display back.
> 
> Do the reset in vop2_enable() instead, before the IOMMU is attached,
> where the AXI master is idle.
> 
> Fixes: 67a391e50271 ("drm/rockchip: vop2: Reset AXI and DCLK to improve robustness")
> Signed-off-by: Tim Surber <me@timsurber.de>
> ---
> 
> On my RK3588 board (FriendlyElec CM3588) the AXI reset in vop2_disable()
> sometimes hangs the SoC hard when the last CRTC is switched off. Without
> the reset there, it does not happen.
> 
> Here is a minimal reproducer. Run it as root, with a display on HDMI and
> fbcon on it:
> 
>   python3 - <<'EOF' &
>   import fcntl, os, struct
>   fd = os.open("/dev/dri/by-path/platform-display-subsystem-card", os.O_RDWR)
>   try:
>       fcntl.ioctl(fd, 0x641F)        # DRM_IOCTL_DROP_MASTER: leave KMS to fbcon
>   except OSError:
>       pass
>   while True:
>       b = bytearray(struct.pack("6IQ", 2160, 3840, 32, 0, 0, 0, 0))
>       fcntl.ioctl(fd, 0xC02064B2, b)                         # DRM_IOCTL_MODE_CREATE_DUMB
>       handle = struct.unpack("6IQ", b)[4]
>       fcntl.ioctl(fd, 0xC00464B4, struct.pack("I", handle))  # DRM_IOCTL_MODE_DESTROY_DUMB
>   EOF
>   while :; do
>   	echo 4 > /sys/class/graphics/fb0/blank; sleep 0.3
>   	echo 0 > /sys/class/graphics/fb0/blank; sleep 0.7
>   done
> 
> Without this patch the board hangs within a few blank cycles. With it,
> 300 cycles ran without a hang.
> 
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 76d151b8bc52..a86ac9173aac 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -913,6 +913,9 @@ static int vop2_enable(struct vop2 *vop2)
>  	if (ret)
>  		goto err_put_pm;
>  
> +	/* Reset while idle; doing it in vop2_disable() can hang the SoC */
> +	vop2_reset_assert_deassert(vop2, vop2->axi_rst);
> +
>  	ret = rockchip_drm_dma_attach_device(vop2->drm, vop2->dev);
>  	if (ret) {
>  		drm_err(vop2->drm, "failed to attach dma mapping: %d\n", ret);
> @@ -973,8 +976,6 @@ static int vop2_enable(struct vop2 *vop2)
>  
>  static void vop2_disable(struct vop2 *vop2)
>  {
> -	vop2_reset_assert_deassert(vop2, vop2->axi_rst);
> -
>  	rockchip_drm_dma_detach_device(vop2->drm, vop2->dev);
> 

This looks great. But what happens if you place 
vop2_reset_assert_deassert() after rockchip_drm_dma_detach_device()?

>  	regcache_drop_region(vop2->map, 0, vop2_regmap_config.max_register);
> 
> base-commit: 479e381e77dcde0dfcc9d51e89ff3273da199804

-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
