Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1002C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 08:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eri0jNL37t/ByboBJU88t2DBUYumALNsogTcXmFQcv4=; b=m5DQLpDdSiRl33
	CK9MZwzthxkJMMnMI49FM9y/Kh7yQ4W7+QkE/n0Sp1pG4iXw00YeF04XkRGTA+d7o768tCUble2g2
	atqDHfbh3jL2JC53mYwoQNzx1PZ4OJ83Ezxq69SNLu9BiGRUOjSAAwcZg+kAX5WuzbJManr6aWKoU
	uHc0f2+bDS67zzaR9vsgonO5cZGl1UoyUHvCXI3cxXJhQhxiOR159YBqXWfHsEiWDuzjjXqyrxMqQ
	X6bFP8+hY1lG5vWJ6uJFanbhtC2OXMHwoP5fZ/w3ZxZZfA6Ojgd2cZZ04Q63RjLhPMjR9QfEslaw4
	FrfTGh6risjowUQDjgTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwHSy-00000007UOP-2WSl;
	Mon, 15 Apr 2024 08:13:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwHSu-00000007ULP-1urU;
	Mon, 15 Apr 2024 08:13:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5EBAB60C07;
	Mon, 15 Apr 2024 08:13:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3273C32786;
	Mon, 15 Apr 2024 08:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713168803;
	bh=yNPyaoE+1YD2n6GMJmfwIULv/0PA81dmRmXg2JvJ6yM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=gnq6zfL47dW3bC/D+/fHSKBjwzPTKNZVXoSF/k/3LYrKSqevWXQ6zZAmlE9xcF9T6
	 iQG3dwp7oGhtjr/XDAEKcgYR3Tt8vVum9TmQDCGXM0AW8cx2tjYIIMBNhgsMlxBc7i
	 Syc5MhpbougAAjW3MJh3EYfByTz1MHScd+w+Sm5kfns6Q/Pe0OJoMyPAxl/v66PLtv
	 FZ8aX/rbZfK+DXQ/qrfMbKIH7ZJmoXxCyaZq6DW/L6sHt+fcvmpHjeKEZNUlwLZWfc
	 MiL12hlC8QW2TMknwHhn2TM/5dG8rZVee0IKJ33QwwxYx3IzJtRWcLhUzg8r4rYrxd
	 IADiDi6+sTxLg==
From: Maxime Ripard <mripard@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Jani Nikula <jani.nikula@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <20240405143531.925589-1-arnd@kernel.org>
References: <20240405143531.925589-1-arnd@kernel.org>
Subject: Re: (subset) [PATCH] drm: fix DRM_DISPLAY_DP_HELPER dependencies,
 part 2
Message-Id: <171316880026.200641.2717784608814103660.b4-ty@kernel.org>
Date: Mon, 15 Apr 2024 10:13:20 +0200
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_011324_613379_0A907A48 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 05 Apr 2024 16:35:10 +0200, Arnd Bergmann wrote:
> After my fix yesterday, I ran into another problem of the same kind:
> 
> aarch64-linux-ld: drivers/gpu/drm/bridge/analogix/analogix_dp_core.o: in function `drm_dp_dpcd_readb':
> analogix_dp_core.c:(.text+0x194): undefined reference to `drm_dp_dpcd_read'
> aarch64-linux-ld: drivers/gpu/drm/bridge/analogix/analogix_dp_core.o: in function `drm_dp_dpcd_writeb':
> analogix_dp_core.c:(.text+0x214): undefined reference to `drm_dp_dpcd_write'
> aarch64-linux-ld: drivers/gpu/drm/bridge/analogix/analogix_dp_core.o: in function `analogix_dp_stop_crc':
> analogix_dp_core.c:(.text+0x4b0): undefined reference to `drm_dp_stop_crc'
> aarch64-linux-ld: drivers/gpu/drm/bridge/analogix/analogix_dp_core.o: in function `analogix_dp_start_crc':
> analogix_dp_core.c:(.text+0xbe8): undefined reference to `drm_dp_start_crc'
> 
> [...]

Applied to misc/kernel.git (drm-misc-next).

Thanks!
Maxime


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
