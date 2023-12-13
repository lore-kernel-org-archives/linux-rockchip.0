Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60B8CC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 14:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCyn7BEg1Ti9mQjmcKkcGqY//8l4leidiGSjwfmTTS0=; b=CNrA3QXPqz8/DN
	MfawKRd6ayTsZICL7uRUmrsGgO10CmI962wn2wmIklNteUtwezcE6nT+QJsp8idMHPs/crFYnk/oH
	S/LUSfg2M4BgBMx+yokDxheFso0f18GnQWxNIRTWmxuxXxMm8cGlzwlJ52oGCSTBJMTv0DILHItGD
	U42PdFcRztgu0oOtmIZjDaMCsUe7Kj7wuGYvQBBqGwmYbU34xOl+UB4XZjj4qBq2Pjjzbmml7I3Cq
	s8+H1IPEC8mHHCM6hda2gMXCYxAc57T1a/UXZ4+R0jihVmwTU62/3WQasHqmDRneztZ1ZnnBGcaMl
	NHw+FNLv6e1BHEUWmTUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDQFu-00F2yb-2p;
	Wed, 13 Dec 2023 14:30:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDQFs-00F2xd-1t
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Dec 2023 14:30:33 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rDQFd-00008V-35; Wed, 13 Dec 2023 15:30:17 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	chris.obbard@collabora.com,
	devicetree@vger.kernel.org,
	Andy Yan <andy.yan@rock-chips.com>,
	dri-devel@lists.freedesktop.org,
	hjc@rock-chips.com,
	kever.yang@rock-chips.com,
	sebastian.reichel@collabora.com,
	linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v5 00/16] Add VOP2 support on rk3588
Date: Wed, 13 Dec 2023 15:30:15 +0100
Message-Id: <170247779733.724099.13674557093099995192.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231211115547.1784587-1-andyshrk@163.com>
References: <20231211115547.1784587-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_063032_618618_AF863C9A 
X-CRM114-Status: UNSURE (   9.49  )
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

On Mon, 11 Dec 2023 19:55:47 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> This patch sets aims at enable the VOP2 support on rk3588.
> 
> Main feature of VOP2 on rk3588:
> Four video ports:
> VP0 Max 4096x2160
> VP1 Max 4096x2160
> VP2 Max 4096x2160
> VP3 Max 2048x1080
> 
> [...]

Applied, thanks!

[01/16] drm/rockchip: move output interface related definition to rockchip_drm_drv.h
        commit: 8c8546546f256f834e9c7cab48e5946df340d1a8
[02/16] Revert "drm/rockchip: vop2: Use regcache_sync() to fix suspend/resume"
        commit: 81a06f1d02e588cfa14c5e5953d9dc50b1d404be
[03/16] drm/rockchip: vop2: set half_block_en bit in all mode
        commit: bebad6bd4fbdc448ad3b337ad281b813e68f6f53
[04/16] drm/rockchip: vop2: clear afbc en and transform bit for cluster window at linear mode
        commit: 20529a68307feed00dd3d431d3fff0572616b0f2
[05/16] drm/rockchip: vop2: Add write mask for VP config done
        commit: d1f8face0fc1298c88ef4a0479c3027b46ca2c77
[06/16] drm/rockchip: vop2: Set YUV/RGB overlay mode
        commit: dd49ee4614cfb0b1f627c4353b60cecfe998a374
[07/16] drm/rockchip: vop2: set bg dly and prescan dly at vop2_post_config
        commit: 075a5b3969becb1ebc2f1d4fa1a1fe9163679273
[08/16] drm/rockchip: vop2: rename grf to sys_grf
        commit: c408af1afc4b74ea6df69e0313be97f1f83e981a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
