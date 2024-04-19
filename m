Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3D14C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Apr 2024 11:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2lzMb9WKcQcvJJjq/3vYXW/d+pdcjOpGV4tUWkPIao4=; b=EGI7S6JZUF2fBy
	mmMcP7IOng8GJxif9uVFhF5GNk46mXHnZAxAySym9UgnMhiFZp4sPj4+VR+1HcrWKfNbM/glBhEWi
	jC3z6gGOqZtlaw/pP/0Uset/EzReIBROnnNFSsHJXhVE0CKY0ogI405PprW7CRjeyxRfT78WCduiF
	Zp1LpOAjLAlIEi5+t5Qx92KLIB5VOi3FQNvbZeGuNAIlkVaaiuu8HRIn+RVw9gCaKY+JoZgkoZVeY
	MtMiqOE+qH5dJWnYVmVW7IQzuK5lRcZ+QQ7KNzDhL8Yl2uucvTp+KMhL3ZyFY6eMVq6cnUnK0sWRh
	y2djv4Tq3vr03mnGzHbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxmHJ-00000005RHw-46rk;
	Fri, 19 Apr 2024 11:19:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxmGz-00000005R3v-1qq0;
	Fri, 19 Apr 2024 11:19:19 +0000
Received: from [213.70.33.226] (helo=phil.intern)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rxmGk-0000RL-88; Fri, 19 Apr 2024 13:19:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	dri-devel@lists.freedesktop.org,
	Maxime Ripard <mripard@kernel.org>,
	Andy Yan <andy.yan@rock-chips.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] drm: vop2: Do not divide height twice for YUV
Date: Fri, 19 Apr 2024 13:18:56 +0200
Message-Id: <171352551020.2525344.5153295478231203220.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240414182706.655270-1-detlev.casanova@collabora.com>
References: <20240414182706.655270-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_041917_662804_D7B3C859 
X-CRM114-Status: UNSURE (   8.93  )
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

On Sun, 14 Apr 2024 14:27:06 -0400, Detlev Casanova wrote:
> For the cbcr format, gt2 and gt4 are computed again after src_h has been
> divided by vsub.
> 
> As src_h as already been divided by 2 before, introduce cbcr_src_h and
> cbcr_src_w to keep a copy of those values to be used for cbcr gt2 and
> gt4 computation.
> 
> [...]

Applied, thanks!

[1/1] drm: vop2: Do not divide height twice for YUV
      commit: e80c219f52861e756181d7f88b0d341116daac2b

But changed the subject to
    drm/rockchip: vop2: .....


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
