Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8DAAC43458
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 15:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e7Rwwvj9I1LhF5jDC6If5470wUE48n2h3J/thVTCzS8=; b=JNhVqb+p7yauTs
	CYQKCL/GOm7CYuxpslue7ZMrjsaf7C56tAG8mKAgokTgYJpPKHwHJ6zU052hqN4yvyA070diVyDIz
	kfZ6SD6Fc6bxZmh1PICtEvxvzm5yQfWxIiJYoXdXkVWVAzzYYNvpqMZnTdjPHubyJSChJqjx/+RuX
	TvQXBPJpAg1++maWaau+aqAlUIk97U/bbWRd5WthrsmBoWOj6mPTJKWjVz8O6TewmehDRkQuFkIqK
	bIJ3gJSZKRajaP7Njraij/1jZs6H8fBjU+CwaFiMHIFs5OWPox8gf4yBNN8ORf5nm/ZICKiZt0PyW
	HK1ayDFgLoxmtQz2XttQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7ge-0000000FHYQ-3dji;
	Tue, 07 Jul 2026 15:26:16 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7gc-0000000FHYA-36JP;
	Tue, 07 Jul 2026 15:26:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 06960600C3;
	Tue,  7 Jul 2026 15:26:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 410AD1F000E9;
	Tue,  7 Jul 2026 15:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783437973;
	bh=MZ56DDrZ444AnzoDnctarAM6nsaXJcoaH8VJdC05tTg=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=mWOeqBh+cvwgYCKLrNp7nIO0QQXbUmqfZniCfZdCn5+Oji4sKSuNR1J+w7vVCBdcq
	 2k8gcSlM1O/Pprwvg1LasA5neLSuED4xGfSzCuowaF5FhGWTCJIsQppVLcX4I9Xqq5
	 roM8eMWJqvjEq1Nl6Olaw4OHS7+91TyZznzEaWshp/ike2A7znuccp/uymjM3j+xTW
	 96OSAvT4PrRYpNGs3Je26/M0sYPxUaQoG9EJQ8d5olFNaUG+Vd22o0md8LExK9cWJp
	 8dbtKgKTxSWwiwchg6TrLx50JuQ9F6layshtYor+CMfQRsS2a6F1yJjnLV5Aj+LiZU
	 mKoi5ook/o2UQ==
Message-ID: <4d3e7b8e441404aaece9c3572b4b8722@kernel.org>
Date: Tue, 07 Jul 2026 15:26:11 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v8 08/39] drm/display: hdmi: Advertise SCDC source
 version when scrambling
In-Reply-To: <20260702-dw-hdmi-qp-scramb-v8-8-d79890d00b6a@collabora.com>
References: <20260702-dw-hdmi-qp-scramb-v8-8-d79890d00b6a@collabora.com>
Cc: dri-devel@lists.freedesktop.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, "Andrzej
 Hajda" <andrzej.hajda@intel.com>, "Andy Yan" <andy.yan@rock-chips.com>, "Daniel
 Stone" <daniels@collabora.com>, "Dave Stevenson" <dave.stevenson@raspberrypi.com>, "David
 Airlie" <airlied@gmail.com>, =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Jernej
 Skrabec" <jernej.skrabec@gmail.com>, "Jonas Karlman" <jonas@kwiboo.se>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Luca Ceresoli" <luca.ceresoli@bootlin.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 =?utf-8?b?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, "Neil Armstrong" <neil.armstrong@linaro.org>, "Raspberry
 Pi Kernel Maintenance" <kernel-list@raspberrypi.com>, "Robert Foss" <rfoss@kernel.org>, "Sandy
 Huang" <hjc@rock-chips.com>, "Simona Vetter" <simona@ffwll.ch>, "Thomas
 Zimmermann" <tzimmermann@suse.de>
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

On Thu, 2 Jul 2026 17:46:21 +0300, Cristian Ciocaltea wrote:
> The HDMI 2.0 spec advises that compliant Source devices report their
> SCDC version in the Source Version register.  Do so when enabling
> scrambling by calling drm_scdc_set_source_version().
> 
> Failures are non-fatal: SCDC version negotiation is purely informational
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
