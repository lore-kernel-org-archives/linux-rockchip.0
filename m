Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 270FCC02194
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Feb 2025 11:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2O7J41Pk4P9rPQEDGHLcQjHLJ+pgU93wN/CrDOU6mFI=; b=lXxmuHguujCeMx
	4EKXRtVVEP79nOs9FVCpC5YQTNkqEs0pmQlPIC8qfw+Kgu1EEbXPgceNmYnpXqKYM3bUefnnHmRPh
	UhiqzwMeqBo6HY5qzMmTF0JpXOQdDdeQDfR9PjeBzH1Ad9KLJr5AXgT0l8OFGZvtuPb34jYSmG+tr
	RNcXZmboK8/6kZme9k3eBYA0f98T80Ps51RKtqM23wDQVIxPZ4rZYDHmk1lxCEtyM08oyeCvMZZ6T
	EsPe+lXhHbVRigqVzHDqw/PFOPaCOHik/LsGP1u+qhvaAxeaBF1KXUEcrwI4PwejLG/0NqnbN1RoE
	xLL+exqRbrnMVfKMKkWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tg0FY-00000006AUW-16Xs;
	Thu, 06 Feb 2025 11:40:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfziN-0000000645w-2SVZ;
	Thu, 06 Feb 2025 11:06:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=BWU+tBeptG5VXeLCoxZwXjDE7C354LH6yguqmZtkpdM=; b=rSB9tvARdrfa7BAdYcz4C7dS4j
	CI8hb2yV7C71BHBTL2D11wLUFi6Ijl70RQbIK4qqNJ1htZlpLHIZ2ZFHYcV6e0ZisApVIQuoMj5Od
	VErVjBcFatKQeyu4ln/5BXkqq+QOSib3kqGgzfihVXfzA9WUH3y8Qg2KVX04tA2S+M1nU/mE7CTYa
	USfWbNVK6e8VpBGXvg2hb/agC4cS66fXxkPtp7s42G4KoM5akCnnCcQWF2wk9IcmkYLvXzAKzpnfu
	aH+XMYRuXL/UpCzqipVbSIpD7lrj69MJ3jJB7u3b9b5j+tUUD7LS19znpksN2pJy/9OVA+IYh7GqT
	uHfUxHgA==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tfziG-0008NO-VZ; Thu, 06 Feb 2025 12:06:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: (subset) [PATCH v7 0/2] Fix label name of hdptxphy for RK3588
Date: Thu,  6 Feb 2025 12:06:18 +0100
Message-ID: <173883997040.679546.15610550275588618608.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250206030330.680424-1-damon.ding@rock-chips.com>
References: <20250206030330.680424-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_030635_620431_D5BD95C0 
X-CRM114-Status: GOOD (  10.72  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Thu, 06 Feb 2025 11:03:28 +0800, Damon Ding wrote:
> Picked from:
> https://patchwork.kernel.org/project/linux-rockchip/list/?series=927102
> 
> The hdptxphy is a combo transmit-PHY for HDMI2.1 TMDS Link, FRL Link, DP
> and eDP Link. Therefore, it is better to name it hdptxphy0 other than
> hdptxphy_hdmi0, which will be referenced by both hdmi0 and edp0 nodes.
> 
> [...]

Applied, thanks!

[2/2] arm64: dts: rockchip: Fix label name of hdptxphy for RK3588
      commit: 2efdb041019fd6c58abefba3eb6fdc4d659e576c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
