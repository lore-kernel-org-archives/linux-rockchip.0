Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C789EC47073
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jan 2024 10:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QHhhfGTMozt2DnABO6xfcw/kM7SqfAYGJzgwHuQBY/M=; b=qSTsVE1coxqE1R
	gwxN2cRk88Cx1JDKLi3J9PlOUmuyjA4mpTvB4yk1EGHu+V5SCz8egt9o4g5Ln4Y4aVLgSgoUqJ8/j
	3UKB4yQMP6IRWCfX/0YxXRtNnvpUf2TQHA4iA8tVCvo4CxDnmHEYyhyFjq5FunK3cArOYjaME5SPN
	SZ0VvTsvdMhCoStdgXYmy5PUd2k2iLsh1kzro9sBC6Jh/nYwv3QHvyccPw0RCztzKwdPb9D7YqQlV
	aDtPwumLOYLbwvE6MTUZVvSGZ0/oti8t81XJ9CX9OXFXRARiOIjPzg9Y2mitkuTDQBnt44UVAb/aY
	cml61JgACSw/M2uQMbRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLLPh-00DbmT-38;
	Thu, 04 Jan 2024 10:57:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLLPe-00DblL-0H;
	Thu, 04 Jan 2024 10:57:24 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rLLPQ-0003Kg-Tf; Thu, 04 Jan 2024 11:57:09 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
	Mark Yao <markyao0591@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Quentin Schulz <foss+kernel@0leil.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 0/2] drm/rockchip: lvds: improve erroring out when drm_of_find_panel_or_bridge fails
Date: Thu,  4 Jan 2024 11:57:07 +0100
Message-Id: <170436581964.3241728.17762561185162139964.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120-rk-lvds-defer-msg-v2-0-9c59a5779cf9@theobroma-systems.com>
References: <20231120-rk-lvds-defer-msg-v2-0-9c59a5779cf9@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_025722_123086_B7443D68 
X-CRM114-Status: GOOD (  11.17  )
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

On Mon, 20 Nov 2023 13:29:47 +0100, Quentin Schulz wrote:
> drm_of_find_panel_or_bridge may return a different error code than
> EPROBE_DEFER so let's not overwrite it.
> 
> At the same time, let's demote the DRM_DEV_ERROR message to
> dev_err_probe so that the scary message isn't shown (by default)
> whenever EPROBE_DEFER is returned to not mislead users.
> 
> [...]

Applied, thanks!

[1/2] drm/rockchip: lvds: do not overwrite error code
      commit: 79b09453c4e369ca81cfb670d0136d089e3b92f0
[2/2] drm/rockchip: lvds: do not print scary message when probing defer
      commit: 52d11c863ac92e36a0365249f7f6d27ac48c78bc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
