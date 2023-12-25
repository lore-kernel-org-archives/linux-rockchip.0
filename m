Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E88A6C46CD3
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 00:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aA1168YDhOwVW2fw9oHL+TI2+uQ8UTUSrBhnDhCyzaA=; b=xyTasHj9++47Ew
	ME3oHOYpT8fqJtq4PU+RFDSEuzb9kxxpPtzapgKhtBBQpXS6DN6Jjk/NiP/Qd5mQE780iEbY6+XZS
	mlcHBfePTxsJPNEmjWSOqIDA2EcWGm81A2DhMo2XOIQ4t8eJ2a9OpfStrcJdzMJjBeupsPtDEURlB
	sIKfrWnnk5ChmJpxmZOnjI3aKL/0VAyKUTLT6sn2ud7cU5h3iAu9clN7oJnZYXafx0W+sFh96Pb77
	j1XOSdvlhf+eajwpHhpW/IK0y4wrWzr12ctXvI8775Zt/iF7QwgZD+tGsLyIBRhk+B4U5jMbYVghi
	gfcsJZ4i7C0Wc9FfvX9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHYj8-00A1qO-1p;
	Mon, 25 Dec 2023 00:21:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHYij-00A1jS-31;
	Mon, 25 Dec 2023 00:21:27 +0000
Received: from i5e86193c.versanet.de ([94.134.25.60] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rHYiR-0007kx-Rn; Mon, 25 Dec 2023 01:21:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Abaci Robot <abaci@linux.alibaba.com>,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	linux-arm-kernel@lists.infradead.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	andy.yan@rock-chips.com,
	mripard@kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: vop2: clean up some inconsistent indenting
Date: Mon, 25 Dec 2023 01:21:05 +0100
Message-Id: <170346364425.2455794.13619549678241145924.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231219062635.100718-1-jiapeng.chong@linux.alibaba.com>
References: <20231219062635.100718-1-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_162125_968371_103E5533 
X-CRM114-Status: UNSURE (   6.59  )
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

On Tue, 19 Dec 2023 14:26:35 +0800, Jiapeng Chong wrote:
> No functional modification involved.
> 
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:1708 rk3588_calc_cru_cfg() warn: inconsistent indenting.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: vop2: clean up some inconsistent indenting
      commit: f40e61eb538d35661d6dda1de92867954d776c4a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
