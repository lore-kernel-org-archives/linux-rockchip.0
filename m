Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34A01C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Nov 2023 23:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QRILyPQZCHTSz3bjOeLQ8zx+gVztmasA7erGWW7cTnM=; b=fbLU0qYLEdTSrj
	t6li5zSjpZk5Vxm/dlpT8RjXuEWFdYucTXYfN7Z4FG0x0sBCCngDJak1zBawCtOh8ZZcZ1h2UERhG
	MAOGVl+zD67jI7aYXwmWImy4IFczhlHI95NKIEB62CkmAuMwP2nbTj3zPGYBJ9Z3QLTek1HPSaxwd
	Hy9DaK4h37vefGGX7a7iu1PFi6fvsZsUeuI2duV6pnD6O5mlymDAH+uislVoj4FITpgU+l4xaXrZl
	/ezlQDb7xc77wfaugCec6rqk4YMOMYFDJ6I8+8cbNmufveJYzr0giN760v7lyk/7YAxyCUBI6bT+z
	yAsqaKRs4Jzf6mQayibA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r32vD-00Gypk-0y;
	Tue, 14 Nov 2023 23:34:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r32v9-00Gyp9-38
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Nov 2023 23:34:17 +0000
Received: from i53875a73.versanet.de ([83.135.90.115] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r32v2-0007h9-GE; Wed, 15 Nov 2023 00:34:08 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com,
 s.hauer@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 09/11] drm/rockchip: vop2: Add support for rk3588
Date: Wed, 15 Nov 2023 00:34:07 +0100
Message-ID: <7034316.0VBMTVartN@diego>
In-Reply-To: <20231114112855.1771372-1-andyshrk@163.com>
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112855.1771372-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_153416_010531_C63DDFE5 
X-CRM114-Status: GOOD (  12.42  )
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

Hi Andy,

Am Dienstag, 14. November 2023, 12:28:55 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> VOP2 on rk3588:
> 
> Four video ports:
> VP0 Max 4096x2160
> VP1 Max 4096x2160
> VP2 Max 4096x2160
> VP3 Max 2048x1080
> 
> 4 4K Cluster windows with AFBC/line RGB and AFBC-only YUV support
> 4 4K Esmart windows with line RGB/YUV support
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

not a review yet, but when testing and the display sets a mode,
I always get a bunch of

	rockchip-drm display-subsystem: [drm] *ERROR* POST_BUF_EMPTY irq err at vp0

messages in the log (initial mode to console, starting glmark2 from console,
stopping glmark2 to the console).

I'm not sure what is up with that, have you seen these messages as well
at some point?

Thanks
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
