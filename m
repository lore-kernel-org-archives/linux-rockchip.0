Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACEF16074B4D
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 22:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jSDgtxuV;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=XYeaF+lL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LV28Amoh2wytHOkiJviFuHRnT62NMY+yBGEP0+JSpQk=; b=jSDgtxuVUqUR6dfgnb8wFbOlpG
	3ykkCj8P+Sz+FzbyPjgLtSdIWkFC1CZUJhsdptenF5x6hYMKwXqR/VKIV9rwNx+E9io1G4UZOf5gH
	gKjlmdiP+b0dhJJcBuajtEl251vABugKzVf+fzg7CqMxIb+Ti+/xnhcocXl2MF4fywD2n2EjeFRUM
	5sJ0HNNVHM64DsYwWympXXcRtL4aM/rqnwTl+Mtl/scSFIphp0CTVuvaZtY/c0EpctRkhkEsu0LN5
	fESlU0Sc5MBF0vxi8FxjC/PVip49rhyJhWvZHYKidzgdVeHLqztL0QgryVrEM/0r7Jr+90SEoRR/k
	v9NE0rrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdrN-0000000F2B2-2Xr2;
	Sun, 01 Nov 2026 22:17:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdqw-0000000F0o6-37bD;
	Sun, 01 Nov 2026 22:16:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 667B544035;
	Sun,  1 Nov 2026 22:16:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 495611F00919;
	Sun,  1 Nov 2026 22:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793571398;
	bh=jgMNL39llvWo9fpC9p/QMlWjuszkHAxcrG1aLPRLi8g=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc;
	b=XYeaF+lLG+zcg+MoYoZlG0y/uk5q8MRTTDbq8BkdvkzUFl9Vun1ihD1SxAc2ECy16
	 z4DWocwx1WWi47Oj9QiNtJ6jmhL7zmf5bxeoWHoY4yzM2kZQfolcuIAWxK+jS7cm07
	 fmwAg/Ivw2hGS6A7TJkYkC3exTpBiM5aaokwLR9TjbsfP3pWR5EZZp804p7drBfMd8
	 frNkLhYzNMl5ef+Cj82eXGRsRKL/A4gC1aPR37M48qabULeNXZFgqSenEBQ9QKLwWw
	 Vzz4O5/hem3VSNyc/YuAn2p3V4AP0T1bhoNHZjIEalvXnARs3fwKPBkflkTi+V8isn
	 Z38bORaSKlOQw==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 4020238003B8;
	Sun,  1 Nov 2026 22:16:38 +0000 (UTC)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v9 0/3] PCI prerequisites for PHY consumer/provider split
From: patchwork-bot+linux-riscv@kernel.org
Message-Id: <179357139679.2624073.13873851750746305916.git-patchwork-notify@kernel.org>
Date: Sun, 01 Nov 2026 22:16:36 +0000
References: <20260810124315.433448-1-vladimir.oltean@nxp.com>
In-Reply-To: <20260810124315.433448-1-vladimir.oltean@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-riscv@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, spacemit@lists.linux.dev,
 linux-tegra@vger.kernel.org
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hello:

This series was applied to riscv/linux.git (fixes)
by Bjorn Helgaas <bhelgaas@google.com>:

On Mon, 10 Aug 2026 15:43:12 +0300 you wrote:
> "[PATCH v8 phy-next 00/31] Split Generic PHY consumer and provider API"
> https://lore.kernel.org/linux-phy/20260505100523.1922388-1-vladimir.oltean@nxp.com/
> became unmanageably large for a single patch series and needs to be
> split per subsystem.
> 
> Here are the patches pertaining to PCI extracted out of the larger
> series.
> 
> [...]

Here is the summary with links:
  - [v9,1/3] PCI: cadence: Preserve all error codes in cdns_plat_pcie_probe()
    https://git.kernel.org/riscv/c/fe108800a865
  - [v9,2/3] PCI: Add missing headers transitively included by <linux/phy/phy.h>
    https://git.kernel.org/riscv/c/a685daa02d97
  - [v9,3/3] PCI: Remove device links to PHY
    (no matching commit)

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
