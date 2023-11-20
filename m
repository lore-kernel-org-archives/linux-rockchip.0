Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A147FC2BB3F
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 16:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=viII7RLIwih4fyymcVKB1eUXi30v5UmkjWvmE5FFCag=; b=rcGWSxib6oK8ug
	Ff+fUXeTiPcruZOihjTMtGyE4m4tLF2tSCrUkBgVEuVIreNlTbREz/mYRrABmHuqlQS2bdwoSP7H9
	QkKB0v6X1RN3jpFga3Gv9Pw4kwuuQhoYompjmZLzW2041EjQ5Asn6P7hLxnIia0c8OTuydaV+/35d
	sd897EjOxkGyLxQlv8WlrbuUGu5Wy3VbbfGCTYiRaIrBUF9eTScpDFYsvVHFEyu5z4g1KkQQH88/r
	mkJrlHRhxRdEtrdsfVW3vtEx6hMG/mJiaCp2xVI+fLNnLX1AioFdMOr4y14Nv5itFdND3mCt3rxiT
	qN1qPYouZIpRAQDqtQyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r56uE-00D5tg-0Q;
	Mon, 20 Nov 2023 16:13:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r56uA-00D5oz-2i;
	Mon, 20 Nov 2023 16:13:47 +0000
Received: from [194.95.143.137] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r56ty-0000O8-VB; Mon, 20 Nov 2023 17:13:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	Tomasz Figa <tfiga@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Christopher Obbard <chris.obbard@collabora.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] drm/rockchip: vop: Fix color for RGB888/BGR888 format on VOP full
Date: Mon, 20 Nov 2023 17:13:26 +0100
Message-Id: <170049679718.1726490.18211882317992551010.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231026191500.2994225-1-jonas@kwiboo.se>
References: <20231026191500.2994225-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_081346_881072_F218D0D3 
X-CRM114-Status: UNSURE (   8.97  )
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

On Thu, 26 Oct 2023 19:14:58 +0000, Jonas Karlman wrote:
> Use of DRM_FORMAT_RGB888 and DRM_FORMAT_BGR888 on e.g. RK3288, RK3328
> and RK3399 result in wrong colors being displayed.
> 
> The issue can be observed using modetest:
> 
>   modetest -s <connector_id>@<crtc_id>:1920x1080-60@RG24
>   modetest -s <connector_id>@<crtc_id>:1920x1080-60@BG24
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: vop: Fix color for RGB888/BGR888 format on VOP full
      commit: bb0a05acd6121ff0e810b44fdc24dbdfaa46b642

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
