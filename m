Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5E83CD1299
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 14:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7irRCkQHnxS6Yva3ICxa3m8jN4jVRJ/CHFCqCj8vCs=; b=LORXQ11FpGTv3B
	vqBPwUnGj2Wd4kl3RE+q2Ai+GxFJxCkE3SHDHJo8bmrfStkItUoggUIEV2jK+Qgc/YhuAD+iLBbGD
	iQHQZXFJz3FAR4v2LbtOd4fE8cbX9FCcbQB9w1QZGAlmWwupYj46LryT9KvUz8AQfCXP3QVcvqTeM
	Lq/jcpwK0S8m0uwDZTce7vre00lir4LAz/e8VJ6r7plIsrm13k2Mrg2VwqTW+MVg/p8HXmeJTRfnL
	oWYvDFf5fpdLKvZOfG4/NezEkd/vwIedQ5OeAar/ijvLxi6OVQXEgcmUyFEN337hNSULN8HrYP7PA
	4phBARElnmcIn0gLv1ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNzv-000000030t8-0nN0;
	Thu, 04 Apr 2024 14:23:23 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNzs-000000030rW-1GM0;
	Thu, 04 Apr 2024 14:23:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E614ACE3152;
	Thu,  4 Apr 2024 14:23:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A946EC433C7;
	Thu,  4 Apr 2024 14:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712240597;
	bh=b3EY+mNSXgIdLMY9ITw3WfxFk9HC0dMLqxJZU09hjE8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=DBDBAMHM+iUVP8sdLO6xyOXK5QN4LOaKEBdtm96HhyodtSg4mQFfkEzbHYhFfdhPU
	 jWu5uizAHYxisLUzLoDFXQSD3omyacqUGqDFvwlwbumzMxwdZPrI6WsijMaWTi5964
	 AcQypyAXYTaT3fSWw2oNDopr3HQ6uH+bCxXMTQ+fUxVdDfUW83kLQbTC4179qAoqnX
	 YV5epJlTJ8QvH0uJO7VQOwTb0SJJZURvkKkHeZyAqRh0XMQ2kPFdTfRbrCvOtVE0Qf
	 pUFwWJO/y5OXAKcM8geNdbOS2KM3EjNZQCiZCk0KEU6I7moGYRAN33r+qS//XcFs35
	 uders58eF6Fbg==
From: Maxime Ripard <mripard@kernel.org>
To: Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, 
 Jani Nikula <jani.nikula@intel.com>, Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20240404124101.2988099-1-arnd@kernel.org>
References: <20240404124101.2988099-1-arnd@kernel.org>
Subject: Re: [PATCH] drm: fix DRM_DISPLAY_DP_HELPER dependencies
Message-Id: <171224059404.143870.12869649896294820835.b4-ty@kernel.org>
Date: Thu, 04 Apr 2024 16:23:14 +0200
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_072320_550863_5791F647 
X-CRM114-Status: UNSURE (   6.24  )
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

On Thu, 04 Apr 2024 14:40:51 +0200, Arnd Bergmann wrote:
> Both the exynos and rockchip drivers ran into link failures after
> a Kconfig cleanup:
> 
> aarch64-linux-ld: drivers/gpu/drm/exynos/exynos_dp.o: in function `exynos_dp_resume':
> exynos_dp.c:(.text+0xc0): undefined reference to `analogix_dp_resume'
> aarch64-linux-ld: drivers/gpu/drm/exynos/exynos_dp.o: in function `exynos_dp_suspend':
> exynos_dp.c:(.text+0xf4): undefined reference to `analogix_dp_suspend'
> 
> [...]

Applied to misc/kernel.git (drm-misc-next).

Thanks!
Maxime


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
