Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38272CDB482
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 14:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrtCnqTWS4t0bznFzsKJFnr5eleKY7MgWVbcxMWjuL4=; b=WeDAt7P8KJWYAS
	a3i+w0RdzfG13iHzzK4yfqf4xXmNN8MCkbFhTb4FxvZroVjuxObdPo4ekH9RSAE57xf8ltSnWyDzb
	2wmnDotcNDAN7ttJdzj4Pfyepa7kuQo+tGkNJ1Z9vCPv0NFmmG/mBYSn+NItOBMzpb/ED0ll46wG7
	euLYnR+v80ChpeacoZT8QrlaHoRU/RrIHkn7vop1I6oT54Rqk8voYXugqeR6Cyc0l9baXlXM2cMFK
	dIisgFrbEbXRTu9aj59tfkDnfVUyqjy2Sysk6v005uXTtNDAf7v1s3lXwrV4LpS2+h0zI59DpPlh3
	lJYdnnvVvXpxCcgFJwIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsOJx-009pY5-1j;
	Mon, 16 Oct 2023 14:11:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsOJt-009pX6-13;
	Mon, 16 Oct 2023 14:11:47 +0000
Received: from i53875b5b.versanet.de ([83.135.91.91] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsOJd-00062e-DJ; Mon, 16 Oct 2023 16:11:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Tomasz Figa <tfiga@chromium.org>,
	Dan Carpenter <dan.carpenter@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	linux-arm-kernel@lists.infradead.org,
	Sandy Huang <hjc@rock-chips.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	Mark Yao <markyao0591@gmail.com>,
	kernel-janitors@vger.kernel.org,
	Daniel Vetter <daniel@ffwll.ch>,
	rjan Eide <orjan.eide@arm.com>,
	linux-rockchip@lists.infradead.org,
	Shunqian Zheng <zhengsq@rock-chips.com>,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] drm/rockchip: Fix type promotion bug in rockchip_gem_iommu_map()
Date: Mon, 16 Oct 2023 16:11:26 +0200
Message-Id: <169746544051.926160.339275214162402772.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <2bfa28b5-145d-4b9e-a18a-98819dd686ce@moroto.mountain>
References: <2bfa28b5-145d-4b9e-a18a-98819dd686ce@moroto.mountain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_071145_365619_6D9E6C15 
X-CRM114-Status: GOOD (  11.94  )
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

On Wed, 11 Oct 2023 11:01:48 +0300, Dan Carpenter wrote:
> The "ret" variable is declared as ssize_t and it can hold negative error
> codes but the "rk_obj->base.size" variable is type size_t.  This means
> that when we compare them, they are both type promoted to size_t and the
> negative error code becomes a high unsigned value and is treated as
> success.  Add a cast to fix this.
> 
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: Fix type promotion bug in rockchip_gem_iommu_map()
      commit: 6471da5ee311d53ef46eebcb7725bc94266cc0cf

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
