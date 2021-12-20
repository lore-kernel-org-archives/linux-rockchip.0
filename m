Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AD6CC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 14:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhC8XeJJAeS5zVwfLSri9wOCUMyZZM8y2olWLXiz3iE=; b=ZHhogRwd3XG0xt
	L1np0NYRtX2SkAbU0t3KaI9VXX3bl+NStFfcdt5qlm1Yx4/40x8RBTV2kXDUME7ERCe21lTE5shOR
	thifLhq4GBCBFu3+7YXuj2bwVPdbQvjnbsAgVAmR+Y+IheCfEtV4C/rYfd3DAHAf4E4jqcNUly+iy
	rFfZgqIvHpUy3Ec/mJTegIFC4X42mF23kkmTtAnbM5/6hpIo2ESEv1+IOuw19VZ26ETmrnQ9rqN6R
	BPeNlmXCu3oQLONlRiMKqbaVG/uSP3HtkJE+p6SFd8J1VWuqhhBc6ZcK8KZm4dLr+VyxShJ5+F0Jk
	U57Qf8dgwT1VsY1UfXmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzJTP-002kGi-Pa; Mon, 20 Dec 2021 14:17:07 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzJTK-002kDQ-TW; Mon, 20 Dec 2021 14:17:04 +0000
Received: by mail-wr1-x42f.google.com with SMTP id t18so20352771wrg.11;
 Mon, 20 Dec 2021 06:16:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a/dzY1YCMEV94GDlHxnTZ/IoYWB5Rh81LbeOowMZqGM=;
 b=DbTR8CjGEPLkZcPfOQ2bSAJfI05BlsSyq32/NLepId3eolkmcS9Pto2grXsGk3QGf0
 WygF/ZVVBR2pExvvl31kqs/EhMfpcXJg054Zc3Pkt6YPi6pMIlIYrbwcxSKy1zRYp2DG
 RKgJF/mIc/ZF0ylL6/eoJKaRBK2mGsGxs6cDe9KVV1bvfuaRn6BxtlEiGtqIPHTlo+bI
 lds8ckISUoa9lG2rpVEtXsdFQXu9QN9fxNJZp0TjDDNBS2IXd7htik8Z8+9TEttAw7Kv
 ABzpkLqOhAO/WCR7u5zTzqouc5awXRDaG8AfabSJYD7JjvOu2sAU/LnMc9Pjv1WRd3fT
 C2eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a/dzY1YCMEV94GDlHxnTZ/IoYWB5Rh81LbeOowMZqGM=;
 b=kLefjupEmsJTdtcXdGuwhVjowUEcVL54w+N5SdawWcREHB21sz+zqC1iUo7xxVw2Jk
 yn1x/k/jJStyXQOauh7OJj3B/zkiMEilJ0PUxFXrHim8eaPTxTEEmLbG6pk24BHnX47f
 gDnrE3Ax4hl2ENE456FeYtPi/x3JruKcN8jBPXTEtzmA8tdj7Ve1ePwgiJaOl3wcnEz1
 pG9Uskawonj9mnaI9/yw4MXGtsTryUZSsT0v6uQdYCsoZuexl8kCu+ciLCD78UQJGv84
 yfRP9iKkF5fXWvIdRXULeGE+w4Cb/TGP8iUljB4sBOf+rdLZuWgtdVu3Mg+yAvj+xXQY
 Us6Q==
X-Gm-Message-State: AOAM533ZlgY3/Qni565JYFVRC1JSewRQgnkB3onef9o0W0uqKAcR/6Qn
 H/aYoqLCF3bCEXbih1xNHaQ=
X-Google-Smtp-Source: ABdhPJwT5z75o2wjTM0/dL1UWGRH+dib+dAm4J1nut2+VYcXmQnUNw+lNsC3i2A1+u6HPPElJU1/yw==
X-Received: by 2002:a05:6000:1a8c:: with SMTP id
 f12mr7072124wry.644.1640009816983; 
 Mon, 20 Dec 2021 06:16:56 -0800 (PST)
Received: from archbook.localnet ([217.151.114.10])
 by smtp.gmail.com with ESMTPSA id f13sm11754555wri.51.2021.12.20.06.16.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Dec 2021 06:16:56 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 22/22] drm: rockchip: Add VOP2 driver
Date: Mon, 20 Dec 2021 15:16:55 +0100
Message-ID: <5637649.G3HFo5JPcS@archbook>
In-Reply-To: <20211220110630.3521121-23-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <20211220110630.3521121-23-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_061703_042492_AB409E10 
X-CRM114-Status: GOOD (  19.68  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Montag, 20. Dezember 2021 12:06:30 CET Sascha Hauer wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> It replaces the VOP unit found in the older Rockchip SoCs.
> 
> This driver has been derived from the downstream Rockchip Kernel and
> heavily modified:
> 
> - All nonstandard DRM properties have been removed
> - dropped struct vop2_plane_state and pass around less data between
>   functions
> - Dropped all DRM_FORMAT_* not known on upstream
> - rework register access to get rid of excessively used macros
> - Drop all waiting for framesyncs
> 
> The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> board. Overlay support is tested with the modetest utility. AFBC support
> on the cluster windows is tested with weston-simple-dmabuf-egl on
> weston using the (yet to be upstreamed) panfrost driver support.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

Hi Sascha,

sadly I'm getting

[    1.668856] rockchip-drm display-subsystem: [drm] *ERROR* failed to get vop2 register byname
[    1.669621] rockchip-drm display-subsystem: failed to bind fe040000.vop (ops vop2_component_ops): -22
[    1.670584] rockchip-drm display-subsystem: master bind failed: -22
[    1.671164] dwhdmi-rockchip: probe of fe0a0000.hdmi failed with error -22

on a Quartz64 Model A.


> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "regs");
> +	if (!res) {
> +		drm_err(vop2->drm, "failed to get vop2 register byname\n");
> +		return -EINVAL;
> +	}

This seems to be the code that triggers it.

Any ideas as to what could be causing this?

Regards,
Nicolas Frattaroli




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
