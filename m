Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AFECC678D4
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 10:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84X95t61+zeXQhTAO5f6ToTHJxduquGAdw9E7yWXI3Q=; b=V10K5b8vEKVLVx
	ZnCJIFnU1wrCDPTVxDOMML+B1BGC9xI4KNjOavYh5QXGb7CWFdIC/jVAS88x6cQ6mlnmJqMZ5MtQk
	Iz11+zw/wnsxeku85m2PeNkIPn6vL9E+U5S5do8Ri3PzDUnHDY824Z27bytyiSJFVfkca9Kgqlm+H
	bJpi4c3VkOo8a2NGnFgMKXL/FNHPwEtS8mSvXINPnCeoxTMHwbOc3STy80aw2Oscw7+C5s1+kvPUA
	Lb5/d4TreVMObT7+TnKSf0P9PjEeA3BuZWXArRgDFqF3M3KTm4RlUVvHEPVdCSDL7B51YBFDNC0ml
	wP5YLMXM/Lqc6wdplwQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZUNR-00HCV9-Fd; Tue, 07 Mar 2023 10:17:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZUNP-00HCUa-A6; Tue, 07 Mar 2023 10:17:00 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pZUNL-0004AV-Ns; Tue, 07 Mar 2023 11:16:55 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	airlied@gmail.com,
	daniel@ffwll.ch,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: Re: [PATCH] drm/rockchip: dsi: Remove the unused function dsi_read()
Date: Tue,  7 Mar 2023 11:16:39 +0100
Message-Id: <167818417706.10390.2172000059064022458.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230208023429.73696-1-jiapeng.chong@linux.alibaba.com>
References: <20230208023429.73696-1-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_021659_364925_F923172F 
X-CRM114-Status: UNSURE (   9.18  )
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

On Wed, 8 Feb 2023 10:34:29 +0800, Jiapeng Chong wrote:
> The function dsi_read is defined in the dw-mipi-dsi-rockchip.c file, but
> not called elsewhere, so remove this unused function.
> 
> drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c:362:19: warning: unused function 'dsi_read'.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: dsi: Remove the unused function dsi_read()
      commit: 59585c79f87794c92f040c264b274e86d8522e22

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
