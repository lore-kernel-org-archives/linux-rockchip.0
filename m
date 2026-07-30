Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4B15C531D0
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 03:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kT4IKFy9pMGTST6vgWR9Mgpo0i5rBWQf5rKhrNhoxKE=; b=oKjmVcVJSqAjA8
	hYvKJg2Ex3rceVYyiiVVb3Gb4m10LHruknPqJeSc8eqMzG/Ht19lHfQ+aPj+kF7HSsDmIKYbBPt3c
	RZbqEMSiuwXobCxRnlhsVGsNn7hJz8mDTtNutmAwXbFN4VstVq/tjmlLLCYqs79/FGVbCY++cTcS8
	kWX5nC4FC1SRdgSDC602HkgemFYPuxgoCmL2q2waNKcW4NVR5koL817TujZB6aBoN1Fz3VtAlg/aF
	Dv71LtvMwypHgEKcQPDpi5gGegt2iQJiqPWMFTO9w9iLQVvbQeRi81TgLypFYK6HQWLfczHFqTMnP
	Qi0wbU7NtgUDKZUK5naw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpHcY-00000009RfM-11cE;
	Thu, 30 Jul 2026 03:39:46 +0000
Received: from mail-gw-fk003.vdone.jp ([160.251.152.193])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpHcV-00000009ReX-1v7I
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 03:39:44 +0000
Received: from mail-gw-fk003.vdone.jp (localhost.localdomain [127.0.0.1])
	by mail-gw-fk003.vdone.jp (Proxmox) with ESMTP id 0047F401895CC
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 12:39:38 +0900 (JST)
Received: from e3.valueserver.jp (e3.valueserver.jp [157.7.184.13])
	by mail-gw-fk003.vdone.jp (Proxmox) with ESMTPS id 582D5401449E3
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 12:39:36 +0900 (JST)
Received: (qmail 514985 invoked by uid 89); 30 Jul 2026 12:39:36 +0900
Received: from p1706034-ipxg06601niigatani.niigata.ocn.ne.jp (HELO ?192.168.1.120?) (jack@supremeoverlordjabs.co)
  by e3.valueserver.jp with ESMTPSA (TLS_AES_128_GCM_SHA256 encrypted, authenticated); 30 Jul 2026 12:39:36 +0900
Message-ID: <7b6b347d-f5d9-45fe-8255-27e01f23578c@supremeoverlordjabs.co>
Date: Thu, 30 Jul 2026 12:39:34 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/rockchip: vop2: give rk3576 VP2 a primary plane
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>, Sandy Huang
 <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260729232450.13797-1-jack@supremeoverlordjabs.co>
 <24547ed2-0950-48be-92cb-bbb0e1653258@rock-chips.com>
Content-Language: en-US
From: Tomonori Nakagawa <jack@supremeoverlordjabs.co>
In-Reply-To: <24547ed2-0950-48be-92cb-bbb0e1653258@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_203943_662911_5506235A 
X-CRM114-Status: UNSURE (   6.69  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2026/07/30 10:56, Chaoyi Chen wrote:
 > The description here is not accurate. VP2 can wire to different
 > display interfaces which depending on your board configuration.

You're right, thanks. VP2 isn't tied to DP - the VP-to-interface
routing is board/DT dependent. The actual issue is the plane topology:
on rk3576 the two Cluster windows (the only DRM_PLANE_TYPE_PRIMARY
windows) both have possible_vp_mask = BIT(0) | BIT(1), so they can only
attach to VP0/VP1. VP2's only attachable windows are the Esmart ones,
which are all DRM_PLANE_TYPE_OVERLAY. So whenever a board's DT wires any
output to video_port2, vop2_create_crtcs() finds no primary plane for it
and fails with -ENOENT ("no primary plane for vp 2").

I'll reword the commit message accordingly (dropping the DP framing) in
a v2. Does the fix itself - promoting Esmart0 to PRIMARY - look
acceptable, or would you prefer a different window or a driver-side
approach for VP2's primary?


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
