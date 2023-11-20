Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0245C197A0
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 17:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zm6925U/Z35lEyLbtleodqkQEy+7rj6mX1cXWDaaxpA=; b=g2C+Z3bkLyAGVK
	k/9mywctmVUFVH5opfWoGrcm/p6RUbyRW2csXW2zpjqIRkXHxjXEEikYg8d28ULttobwwabR3heox
	NayafRFDbC9VvoCLsGy2V6Hb1m6zQavfUF5n12wUWQxyBfsozWMLW2P2maixGoRwnv1CI342rNW3d
	P9vUvWQRAraRadU+Hzr2JC77kOsMOavAoLAx4WsocjqGus3eDiP88N8A9J5vsZYD83FQtrxIageb3
	p0qOmmKt8/Hk6wbANacolIqJUqVkKUCF40kMPWPJ/0BTetXGcQg9AAZp/Sj6UEw+nYFCj+wlPGDge
	n0Ub6N31XYO1yWt6Ca6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r57fQ-00DY2y-12;
	Mon, 20 Nov 2023 17:02:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r57fM-00DXzI-22;
	Mon, 20 Nov 2023 17:02:33 +0000
Received: from [194.95.143.137] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r57fJ-0000jr-95; Mon, 20 Nov 2023 18:02:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
	David Airlie <airlied@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Christopher Obbard <chris.obbard@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: vop2: Add NV20 and NV30 support
Date: Mon, 20 Nov 2023 18:02:19 +0100
Message-Id: <170049972584.1779880.3039151921455735557.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231025213248.2641962-1-jonas@kwiboo.se>
References: <20231025213248.2641962-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_090232_669423_49E9F8B6 
X-CRM114-Status: GOOD (  10.13  )
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

On Wed, 25 Oct 2023 21:32:46 +0000, Jonas Karlman wrote:
> Add support for the 10-bit 4:2:2 and 4:4:4 formats NV20 and NV30.
> 
> These formats can be tested using modetest [1]:
> 
>   modetest -P <plane_id>@<crtc_id>:1920x1080@<format>
> 
> e.g. on a ROCK 3 Model A (rk3568):
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: vop2: Add NV20 and NV30 support
      commit: 5fc6aa7db080fd90ef00846aac04e8a211088132

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
