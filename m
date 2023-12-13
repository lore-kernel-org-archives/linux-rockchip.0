Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F8F0C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 14:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/jrH5NMS91YEeQMTclZ+WzfQw/sD6QlSzIS0EkR/WU=; b=n4iJZns6ircwIK
	b8GprRJlOxTM8F0OtYTR2ygwRDsYb3NCW+nNBWU7jQs+GnilZIounkCxyXK0LX9KMPk6rLqLBZyJ/
	SlhZzrN0AdmTqseLRykTNnp0HQiEPp5WjbhXVq9VkCNhuZlLbukDGuBleFGRkkXOWeILm9/KHbzaD
	PE0jjazRe5YREnVIpDNnu2r69uFeMNUzAWrPm1AU5/HMSlnQ4ljbompk0zQTfYTnMe0NJBjJwnjZB
	rG5IJPVWZZRMu2tiolGUoCoLKP9YQMnfe+gUoTAAgq0Je4ne/EH+clRloDmxzOFd3DUms89KmUMnY
	34tFWL7kYw6t5uH9Gthg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDQVf-00F5W3-0O;
	Wed, 13 Dec 2023 14:46:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDQVc-00F5VN-2k
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Dec 2023 14:46:50 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rDQVN-0000JI-AG; Wed, 13 Dec 2023 15:46:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	sebastian.reichel@collabora.com,
	krzysztof.kozlowski+dt@linaro.org,
	chris.obbard@collabora.com,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	kever.yang@rock-chips.com,
	linux-rockchip@lists.infradead.org,
	hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: (subset) [PATCH v5 00/16] Add VOP2 support on rk3588
Date: Wed, 13 Dec 2023 15:46:31 +0100
Message-Id: <170247871959.753029.11166929824242336708.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231211115547.1784587-1-andyshrk@163.com>
References: <20231211115547.1784587-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_064648_888618_9ECCC341 
X-CRM114-Status: GOOD (  10.94  )
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

[10/16] dt-bindings: display: vop2: Add rk3588 support
        commit: 4ccdc92c1fea732fac8f3438d6288719055fa141
[11/16] dt-bindings: rockchip,vop2: Add more endpoint definition
        commit: dc7226acacc6502291446f9e33cf96246ec49a30
[12/16] drm/rockchip: vop2: Add support for rk3588
        commit: 5a028e8f062fc862f051f8e62a0d5a1abac91955
[13/16] drm/rockchip: vop2: rename VOP_FEATURE_OUTPUT_10BIT to VOP2_VP_FEATURE_OUTPUT_10BIT
        commit: 9d7fe7704d534c2d043aff2987f10671a8b4373d
[16/16] MAINTAINERS: Add myself as a reviewer for rockchip drm
        commit: 6c3ab21f37a97a868193ccbeb8a492e51210ff31


I skipped the debugfs patch for now, as I need to look at that separately
and of course the dts patch as that needs to wait for iommu maintainers
to pick up the binding addition.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
