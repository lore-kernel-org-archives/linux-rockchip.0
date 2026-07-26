Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1FB2C531C9
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Jul 2026 15:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nciEnPvGdsZewCjLGMsOf9Zi6XcucGLkvrz1whKA4s=; b=py5MxQf/FWvvDe
	wI830UR+nkAYF+kwRXGQvIhZ1CPw4TNfUOjSWIHICDfAfohw76b6s0XCcBdBTj8p1g8kj7RIvAOST
	EnLjrtXpwViuWYv0c/8m3n2NXzpuvOV2q/tZMYWhK3iWuGWlu3Z8PB0OPRf8l6pv2FmZXdW0MfUWR
	xID2mWcXHGfqkGOXU2ka6pGLbu4m1/PCKfmgjor2/V2noB71Wf7pbhJYviAQp+AboKYLiSYYWHpB8
	57645L2axvzCWJYVu67CJK6L87dtnjABd3ll7PM639xC383iRs+Emx5IY3PNuE69LID4hc0X0RiHz
	c5tJ8Fa8WOhaqT+2a3xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo0MB-00000001Gu9-046k;
	Sun, 26 Jul 2026 15:01:35 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo0Lx-00000001Gpf-1K0V;
	Sun, 26 Jul 2026 15:01:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BE5826001D;
	Sun, 26 Jul 2026 15:01:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52BF11F000E9;
	Sun, 26 Jul 2026 15:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785078080;
	bh=DPkoltX9TEEEGuCWddp6fep3WTxy0zq+YUKjB2+nxBU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=SKN/3NraiKo1BeqbR80B42/Kfu8bBunap31U7N8WIucCKiFzNUxJl29OVZKEqrstI
	 UftN8JQ6Ouf6F3Tgy8hZMju87HClqaEnH1dZLUTXgindLnC4iuvXdOy+O95JV1MBn3
	 2EVKfvA/5T+0UpxUx/b9L/Aw5x+88hRWD5fWfQisxacw2EZGkDBHgIFDIO+qyC1xNl
	 u4U/k7k8kRnyo0Z0UOLx50rB9LVyRZOcxbiSs83iHyLwNJA6KsjJ9lkBjbjJ9z+GF4
	 KK/Bj+5CgYAuh9sPufNeou4BsJibUcUj4B8D8JupbQ9tVwhZlXIq6Q/aFXNpeplu5y
	 sWBHVLMIbhVSg==
From: Will Deacon <will@kernel.org>
To: Joerg Roedel <joro@8bytes.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Simon Xue <xxm@rock-chips.com>
Cc: catalin.marinas@arm.com,
	kernel-team@android.com,
	Will Deacon <will@kernel.org>,
	iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] iommu/rockchip: Drop global rk_ops in favor of per-device ops
Date: Sun, 26 Jul 2026 16:00:55 +0100
Message-ID: <178506896133.2040068.17210762744367310935.b4-ty@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260722073511.403252-1-xxm@rock-chips.com>
References: <20260722073511.403252-1-xxm@rock-chips.com>
MIME-Version: 1.0
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

On Wed, 22 Jul 2026 15:35:10 +0800, Simon Xue wrote:
> The driver currently uses a global rk_ops pointer, forcing all IOMMU
> instances to share the same operations. This restricts the driver from
> supporting SoCs that might integrate different versions of IOMMU hardware.
> 
> Since the IOMMU framework passes the master device information to
> iommu_paging_domain_alloc(), the global variable is no longer needed.
> 
> [...]

Applied to iommu (rockchip), thanks!

[1/1] iommu/rockchip: Drop global rk_ops in favor of per-device ops
      https://git.kernel.org/iommu/c/414cb6f3ac62

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
