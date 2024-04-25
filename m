Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26FE3C10F15
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Apr 2024 16:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEKmClkBV21iEMcUAGZaaO752DNGXIACy3O11k0a7U0=; b=JAGL3fGBPOOJdm
	QZCDhXGeNZCsSeYwADZxU+If/yPBskxgVivbPcwQ3mUEqB45ybQ/DvU/tdMqR6DxXfUbfCf7Xh4qp
	bs3EQhLQ9Fe3Z0ZRugGTyQ2MmRy/s4M6Plr1lf2i6nFObEoU4rFt46CT29xC5Be69ji0jXMjEP4A/
	SGHs7xdZWBHY0qF+mqyE2M82/PoNLNjwzT83ObZ5PsqRf0Y2VbR3ZCu711D3PM7xQkhaYJYx6jeQa
	RJaxkPH9BTNaR6UHBX9e2Yy4DYmyqR2TPftAb4tpZhAVjBN5WOMm41KD8q/ospZ86R1+KWhihd2fL
	RNhW9S10u+HFU5Bf4S9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s01XK-00000009H8p-0jAu;
	Thu, 25 Apr 2024 16:01:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s00SN-00000008woR-14pd;
	Thu, 25 Apr 2024 14:52:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Z5m0Kx+MV8klc/BDvTFFzfRjbPECME29KyhNnCUxQEw=; b=OPL977YsPOJYrgdiriV7WSFDHw
	GssuALceu86kYJwFDuusE3oEGx8khLeX6mmAzvR70+DT7GfZjbi89oM0rfOlydNZLYxotRT9tXWoN
	bFU0IHLNR+XSJb4PX9KEXu1eyXTm5FyEciVN/NPaR+Ps+jFGpWj34GZoTmDnsb/gXnFkPe1eb9Q/1
	ysiWW9X1Ty06hUfz0SiK4m5VjEnaLYd6n8PbVVBpIyTxHS9Z7PZ51FWomUuEyB7Fh+khdjJXzIW/v
	pyOGM5DbYeUHLZ9LnaVVnpo6bUeSJXM5/dV0e4dEOg4pOY0rOB4LlE4e2inMIjfjZHvMr2cHikHFM
	JejsWONA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s00SK-0000000ExcC-0GEs;
	Thu, 25 Apr 2024 14:52:13 +0000
Received: from i5e861d82.versanet.de ([94.134.29.130] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s00S1-0003Vg-2q; Thu, 25 Apr 2024 16:51:53 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: tzimmermann@suse.de, mripard@kernel.org, hjc@rock-chips.com,
 s.hauer@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 1/1] drm/rockchip: vop2: Fix the port mux of VP2
Date: Thu, 25 Apr 2024 16:51:52 +0200
Message-ID: <3237003.e9J7NaK4W3@diego>
In-Reply-To: <20240422101905.32703-2-andyshrk@163.com>
References: <20240422101905.32703-1-andyshrk@163.com>
 <20240422101905.32703-2-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_155212_244586_E9F22797 
X-CRM114-Status: UNSURE (   9.54  )
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

Am Montag, 22. April 2024, 12:19:05 CEST schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The port mux of VP2 should be RK3568_OVL_PORT_SET__PORT2_MUX.
> 
> Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

on a rk3588 with VP3 connected to a DSI display
Tested-by: Heiko Stuebner <heiko@sntech.de>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
