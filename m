Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 030E7C00A8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 19:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6torOtHVPnLSO7cnoUVgODNBNxo4K9dqmiBo7k+Jplc=; b=tTIgWdjMAQr7OV
	jN3PoqWEXK0fcnznaFxFzkinuWHzXydHaomKkGsPsXGIFPmeaHHos61JUJmqOBQrZHLV5lCvmR2eA
	Xs9pxtm29wuf5FM5uUnhhu+T+vgIb7zuoip529UQ0LbvSbsh1QZwbk0fN5rja+Bc8zGvsYsXAj5cm
	k9up6QIAI8MBfyUA468Lp9Gw4BdEZPFKZ4dSHEjbRbR4FoHP1u7rm7of4aSBSfDc8g1leXt4jpLfz
	NG0KsKrjUVZOgZ2cAvZXGWZAVSEoA44pRvcJdULShMUTmqeIeEYCIjov2tI6qJmwA1PSh7OcGCe4j
	1Dppvl+UkHbT85xBnNgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvNOT-00Am6T-0Q;
	Tue, 24 Oct 2023 19:48:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvNOP-00Am55-1f;
	Tue, 24 Oct 2023 19:48:46 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qvNO9-0007MI-BB; Tue, 24 Oct 2023 21:48:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	David Airlie <airlied@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	Christopher Obbard <chris.obbard@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 0/2] drm/rockchip: vop: Add NV15, NV20 and NV30 support
Date: Tue, 24 Oct 2023 21:48:26 +0200
Message-Id: <169817682323.1800793.13214115140253891113.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231023173718.188102-1-jonas@kwiboo.se>
References: <20231023173718.188102-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_124845_550569_799E02E1 
X-CRM114-Status: GOOD (  11.54  )
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

On Mon, 23 Oct 2023 17:37:13 +0000, Jonas Karlman wrote:
> This series add support for displaying 10-bit 4:2:0 and 4:2:2 formats produced
> by the Rockchip Video Decoder on RK322X, RK3288, RK3328, RK3368 and RK3399.
> Also include 10-bit 4:4:4 support since VOP can support that also.
> 
> First patch adds new fourcc 10-bit YUV formats with 4:2:2/4:4:4 sub-sampling.
> Second patch adds support for displaying the new fourcc formats.
> 
> [...]

Applied, thanks!

[1/2] drm/fourcc: Add NV20 and NV30 YUV formats
      commit: 728c15b4b5f3369cbde73d5e0f14701ab370f985
[2/2] drm/rockchip: vop: Add NV15, NV20 and NV30 support
      commit: d4b384228562848e4b76b608a5876c92160e993c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
