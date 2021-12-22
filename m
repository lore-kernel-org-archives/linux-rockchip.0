Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 761DAC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 17:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2P5GzmC/wU1WqTMinoY0D/ldvcilGXTh/Xxcgwa+XOk=; b=mXyB51z60EBeq3
	lFw92mxPmYRfBpnxrjAYngduP3RrLIWhULY4Ufu2wS3JKeAzOzDwGiD7xraYRT3E4iB5fQ1k5op0A
	4t3ifmWsP882AEnorrjcJ89xzcz9jVHdXxQLSQus5KTPnSmGxPNp85YiHHFjiwX/QlNmMD3O7fA3u
	AqS9ClxRcZUhTl71+JB3xYby8ms89bnUgpf6rbRkR6HTWuPYed03WuWMwcy6QRvyLYItVeHm/O1d2
	hmhyyqv5mhjS6ro+uWJ9elkKH1MXKwE26o43b4xfRXHim5tCl2xRuCQnCpDZCJc+NyNd9D35G6ZcR
	7ChvsDkeRyWRH+dylBGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0553-00Awye-4K; Wed, 22 Dec 2021 17:07:09 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0550-00Awxz-Q4; Wed, 22 Dec 2021 17:07:08 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 a83-20020a1c9856000000b00344731e044bso1872772wme.1; 
 Wed, 22 Dec 2021 09:07:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xf0dcGkvmURFRRNeHLTQphIAlqufMTucRtU3DVITyFY=;
 b=RCVUlNvIf2TY1hZQ2BN3r7OcxX0mQkrpHTo1Xj5KCDbfFss8/WsANNVOQaJoQt36XX
 vt5FB0/ZaNCw0oT9EzetO/35FMtQcEf0iHBiFnhdNM1a/yOT3znsrOk2ovuXhCP9MsLj
 kqNzaai7C3ovmFxJ8plk9KfgerLUXa0NB9urt6Qzjov8ecyJgbRdZ8Qa35Kj4LP5ErEr
 H/oQSA2M3Bd6sQ8wNvIQsBVj0KDgg+AeSbRm8eIwUBNC+YukWgez412JYmnKlMb6vVNh
 FlZJiXK+277nT2aHd8oMaqgamCw1rxwpTJiumj+k3xOI7VhCxKJZRn+rLQp7ysvI4zBm
 gkMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xf0dcGkvmURFRRNeHLTQphIAlqufMTucRtU3DVITyFY=;
 b=AszvE1OholhDHaI3N8TqneBtQtjuwj3tKX1Da4CIZIUd/+y3uUwfI/u/OZeOMVKwk9
 XLib/kia7nxHjegSEllcFl+fs/QDMNGGbIfXzUiDtLVC36kkMDe2DDt8GuxjpAJ41ZwG
 gueIU5+8/IaysP6SgDD7DYEcPE1EF1jkWWyb18sbmLuLipZE2SA1o/S5jYDjTAx8Zcog
 ZAckjksdm3sIln7U2Ecd7LDuvHNsN8HyUNBYWIxloTQN4YcnauYcZjjC9agFxSwGXVOP
 GFLg0QsqX3NZkN55pAj/ofKIHMoljBfBkRMAXGb5i2Vah7KwXic4UViJQgM+Z9N6VuK/
 gnrw==
X-Gm-Message-State: AOAM5303A+GqM/TNH3cZyOrmNahE4jpzsvkw2dscwtsT054qn2WEFDwA
 ddTNbEDpJN3cr0WEBXdGLdY=
X-Google-Smtp-Source: ABdhPJxHHsH7bFTy6QqNlKLW9op/sk+p9MsGhCZ8BoEj0/Y1+Hg7+OLndTV/9ExKMNaqsZgnSML3ww==
X-Received: by 2002:a1c:5404:: with SMTP id i4mr1534466wmb.107.1640192825110; 
 Wed, 22 Dec 2021 09:07:05 -0800 (PST)
Received: from archbook.localnet ([217.151.114.10])
 by smtp.gmail.com with ESMTPSA id y13sm2796186wrd.89.2021.12.22.09.07.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 09:07:04 -0800 (PST)
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
 Sascha Hauer <s.hauer@pengutronix.de>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Subject: Re: [PATCH 22/22] drm: rockchip: Add VOP2 driver
Date: Wed, 22 Dec 2021 18:07:02 +0100
Message-ID: <26571551.24qHfsk75X@archbook>
In-Reply-To: <1761858.GBYTvM79DV@archbook>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <20211220110630.3521121-23-s.hauer@pengutronix.de>
 <1761858.GBYTvM79DV@archbook>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_090706_903582_4B32B3DB 
X-CRM114-Status: GOOD (  24.71  )
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

On Dienstag, 21. Dezember 2021 14:44:39 CET Nicolas Frattaroli wrote:
> On Montag, 20. Dezember 2021 12:06:30 CET Sascha Hauer wrote:
> > From: Andy Yan <andy.yan@rock-chips.com>
> >
> > The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> > It replaces the VOP unit found in the older Rockchip SoCs.
> >
> > This driver has been derived from the downstream Rockchip Kernel and
> > heavily modified:
> >
> > - All nonstandard DRM properties have been removed
> > - dropped struct vop2_plane_state and pass around less data between
> >   functions
> > - Dropped all DRM_FORMAT_* not known on upstream
> > - rework register access to get rid of excessively used macros
> > - Drop all waiting for framesyncs
> >
> > The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> > board. Overlay support is tested with the modetest utility. AFBC support
> > on the cluster windows is tested with weston-simple-dmabuf-egl on
> > weston using the (yet to be upstreamed) panfrost driver support.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
>
> Hi Sascha,
>
> quick partial review of the code in-line.
>
> For reference, I debugged locking issues with the kernel lock
> debug config options and assert_spin_locked in the reg write
> functions, as well as some manual deduction.
>

As a small follow-up, I've completely mapped out the calls to
vop2_writel, vop2_readl, vop2_vp_write and vop2_win_write and
coloured in whether they were called with the lock held or not.

The conclusion is startling: Most of the code absolutely does
not care about the reg_lock.

Here's the graph as an SVG: https://overviewer.org/~pillow/up/6800427ef3/vop2_callgraph_modified.svg

vop2_isr here needs to be paid special attention, as it also
acquires a different spinlock, and we want to avoid deadlocks.

Perhaps we should precisely define which lock must be held for
what registers, such that the vop2_isr can write its interrupt
related registers without acquiring the "big" reg_lock.

I'm also not entirely sure whether I should assume vop2_readl
needs to be called with the lock held. This needs some
investigating both in terms of whether the hardware presents
a writel as an atomic write of a long, and whether the code
assumes the state between readl calls is ever a consistent view.

Regards,
Nicolas Frattaroli




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
