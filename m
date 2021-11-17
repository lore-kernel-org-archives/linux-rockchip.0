Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FFDAC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 18:05:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3B70261AFF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 18:05:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3B70261AFF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q5xwCv4BG4Pxgct2EzZQKMFAktJ/0rxsjWTybu4pFis=; b=2bWtbn6vnfMF/S
	Q+P34o2DkFYku/ifpL2jDKMOqBebsyTzkmbNY+EIc1SJp/wEDZ5akRRLdVcG8mOnisw7Stka+bhut
	OyLDlr5m557N/eN6UInnoNIouna3XilS9HqLPD8OLpjnnjMAVgeoS/C05MbMzkw4W0ga7rqJmG0Ub
	G3a00I03UJVCJmB2ADOWdVq053Q6HlJkg6Lf7IIL2p7Kia4JKQmAj7bNtvb5ZbMC83oHni7zKiFzX
	QmE+kz7TiGkkuq4h9pJsvHJxE8r7uv5mC+eWIZ2ookt8UH2kcGvIFDVFlmIhTSs5WkD09nPT57szn
	PZ2mmmnYjbtokbD4gtZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnPJV-0062n5-CS; Wed, 17 Nov 2021 18:05:41 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnPJR-0062l7-Tj; Wed, 17 Nov 2021 18:05:39 +0000
Received: by mail-lf1-x12a.google.com with SMTP id c32so12660772lfv.4;
 Wed, 17 Nov 2021 10:05:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=goPjarRaFDhR5RKzDZXMFKr9KKxmBjam0CLChkgNBPk=;
 b=la62jfOG5N0u9pLWKDbxj+bMTXQgU5GnVosWOnM1Orb3DcUpao+LlY+8MOaD/fIkrz
 ub++EVJQ/byA1YDFNU0tWpK4zvUplKSQkJtkZrU7u/Yt+KFO8FDTrSsTy5LVdk8ItYtb
 oIfasY1g0BRFF6u1YkQn1dEU9/QoSSSoYNxF6uB7RMXOaabgzV2Wiy2HnTraNRgbvzs4
 y+qptb0hqmJwp8WxUW5USJHD4/VxUhnsck5A6CYRNQpe+Xud2MKtga9QdDm3h3kvK8v/
 Qnd9mfVSjy6L/GfuXfoMbSKyEBtmYeMF+ILF33nKGSTnvl/ZhjfbCM146pWCNm39tiYI
 4hWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=goPjarRaFDhR5RKzDZXMFKr9KKxmBjam0CLChkgNBPk=;
 b=uX5ayr2HWLLhB2eHBw2Jsl1ApdpU8CYp37uv6XrtzCa15QJ52to+aDQR2wc19LbxDx
 oO1E7rY73ntD7Kh7iwdzO4kEyGi37eK/9ZBeFJlBnCByC3PupL1kNSwFzWwASBK30Lhq
 KR+0U6xqLfRv7QiO37FRIsUhcsGXNaXFHkJeC8B+bdwkdFUiXATDV3qNPU2riKR92/kr
 pvu6bppqy7XcP+4d6XNSbrgDw5sOQip/AuHKbeRHfcK1nu8cZDGYrifK/dWZ50pERfdt
 fF8eQ7Iz1LKq7aXz9V6iucBMGfSoFE9mpt5culPsgujnQ30/NqkxXBPJmAgrPJEaBzTO
 mNTA==
X-Gm-Message-State: AOAM5310Mf0l7xoZd3vaQLreuw+Z4sniMEflK7MW65lYZBoKi40Zz73l
 QBvgtS+e+t1GtgmQ6Fo7R6I=
X-Google-Smtp-Source: ABdhPJx6+4q0npbUXEfpAcmjPMhq1fVBLVq2/D1U5rYLTr1eorQjxaKaz34IrXxQROiPzcdC5BTpTw==
X-Received: by 2002:a2e:a378:: with SMTP id i24mr10122647ljn.290.1637172335571; 
 Wed, 17 Nov 2021 10:05:35 -0800 (PST)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id p10sm65212lja.0.2021.11.17.10.05.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Nov 2021 10:05:35 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 12/12] drm: rockchip: Add VOP2 driver
Date: Wed, 17 Nov 2021 19:05:33 +0100
Message-ID: <7182753.rMVL1d3Icj@archbook>
In-Reply-To: <20211117143347.314294-13-s.hauer@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-13-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_100538_053402_A6818AEE 
X-CRM114-Status: GOOD (  19.02  )
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

On Mittwoch, 17. November 2021 15:33:47 CET Sascha Hauer wrote:
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
> 
> The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> board. Overlay support is tested with the modetest utility. AFBC support
> is still present in the driver, but currently untested due to the lack
> of suitable image sources. Also the driver has been tested with weston
> using pixman and (yet to be upstreamed) panfrost driver support.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---

Hi Sascha,

thank you very much for your work on this! I gave it a try tonight,
and unfortunately it appears to currently always attempt to use
1920x1080p60 as the mode regardless of the monitor. For example,
on an old 720p monitor I had laying around:

	[  225.732342] rockchip-drm display-subsystem: [drm] Update mode to 1920x1080p60, type: 11 for vp0, output 0x00000800  HDMI0

This results in a broken picture (all white with occasional glitches).
Somebody else observed the same behaviour on a 1440p monitor.

Thanks,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
