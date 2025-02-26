Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD862C021B8
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 20:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oesYwxyrQumIKpHW0eUqgOjX7l3IJPjQb7wCTOjfcKQ=; b=HODwYTocMAEjNF
	D/6l4L6H2ZbkWot6lrjrA3TWdvFNQ55k2/GmWbZYJZJRr8oDWnabLR4tSBW7mgD1gOc3kLFojK3At
	ZPrlRXj9y5I2qOpkJleAznqbZW9c66K5HV9KRYJg42JUmH/WnBUNO4WMIfVHyWOR0L9FIzGOozR7J
	TdFrpYjd0zXyiu+S78OTytR0Tk8k3DyCnju3bt581gIh2qW4u64rdN6k4tNK5i4vGQiOI5cleR7B4
	ktawXopaQuCxDSP/zf06wjn32mTJLHNsmYoMSINcbqU7l9E8y3c1uFx3/FYVTMVACUT+VbuECdSsF
	nJPUrnjLGfx8oXNylntQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnO3D-00000005LsY-0WGJ;
	Wed, 26 Feb 2025 20:30:39 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnO1d-00000005LUz-2MIy;
	Wed, 26 Feb 2025 20:29:02 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740601729; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=GVF/BSCub2+zBPrelX6QxOCzA6j14zubYhJusOy8/L3BcUmI1dHU7V2o5KH68vuMPc1c4u4DnZAlo1cqcrtoGPu8EcmwgGlqCr83q5q3Mg4fVWk06nppeDgSr48o/ussH5jrk3uHheyQ/kuaWrjWE1D8aQvl6N9rDTZqLKFZBZM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740601729; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=nv1QFAqtfqaqDbLhbRbCHva2+HnRXTxPb+vZqOfAZjA=; 
	b=mWnTSCQnaR75mR9PSqKhB7CWvDuHAnr7MUd0tT8N1UrxrKKCZVLFzBgQkTS1+gBVq/2v9dGREbIrPjOSarhbzXujGyfTpqBD7MEhDMd7bwlpVNyq3dxtyKjuFHi5fz85sIqrweiuqXB8cOIjVuTO1C7WSSXbk+e7wAKb6F/Vrng=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740601729;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=nv1QFAqtfqaqDbLhbRbCHva2+HnRXTxPb+vZqOfAZjA=;
	b=EpnFP73DnbDwgqaUK9s87UEyOsRDqapehD3/cFxf7CIe2QSghghMO49MwLQHJf4+
	XC1uf0zhA00Ux2q5mlnu6UPlEGNCidbk8fGEUtSwPhCU0ldqwFu/i4aRtErmwNmUGUT
	9/rvVlzbtgYn16dLZWvNX4llR6VPIlq8nopcjqbQ=
Received: by mx.zohomail.com with SMTPS id 1740601727996641.1431143933187;
	Wed, 26 Feb 2025 12:28:47 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: gregkh@linuxfoundation.org, heiko@sntech.de,
 Heiko Stuebner <heiko@sntech.de>
Cc: rafael@kernel.org, dakr@kernel.org, hjc@rock-chips.com,
 andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, quentin.schulz@cherry.de
Subject: Re: [PATCH 2/2] drm/rockchip: Fix shutdown when no drm-device is set up
Date: Wed, 26 Feb 2025 21:28:42 +0100
Message-ID: <5271432.LvFx2qVVIh@workhorse>
In-Reply-To: <20250220234141.2788785-3-heiko@sntech.de>
References: <20250220234141.2788785-1-heiko@sntech.de>
 <20250220234141.2788785-3-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_122901_671634_8F453790 
X-CRM114-Status: GOOD (  15.05  )
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

On Friday, 21 February 2025 00:41:41 Central European Standard Time Heiko 
Stuebner wrote:
> When the drm-driver probes, it mainly creates the component device, where
> all the sub-drivers (vops, hdmi, etc) hook into.
> 
> This will cause the shutdown handler to get called on shutdown, even
> though the drm-device might not have been set up, or the component bind
> might have failed.
> 
> So use the new component helper to check whether the drm-device is up
> and only then call the drm-atomic helper to release all the drm magic.
> 
> This prevents failures when the drm-device is never set, or has been
> freed up already for example by a probe-defer during the component bind.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Tested-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Tested on a RK3588 ROCK5B by adding a `return -EPROBE_DEFER` into the middle 
of `rockchip_drm_bind` after `component_bind_all` already ran. Without the 
patch, I get a stacktrace in `drm_atomic_helper_shutdown`. With the patch, I 
don't get one.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
