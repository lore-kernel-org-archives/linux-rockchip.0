Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CD4BFF8862
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 12:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xoFciGiPLW4dboe1tGWiyiObrIpC6GQvsRPK2vtwvfM=; b=M3h+whO4Y7cexW
	2Nnx64s4FniTFasttroSzeibYysvk+x0tD5XxIhlrfy2D3cciHp35whEr6pX/jSrmPyAAWYQoS7Kf
	I01KDgBJWlMJUKrhOYC3hmn55/Pc8Hn/DPZF1dJCp05zv9/QuOPTLy87X6dnEIOpF7RW0x0+EVnhC
	jBYuok8yMumJTprjiNCAPp3uSTjojbQs9VbI4C8yY0o8F5r3DE9hymyaldTiicO7m/VCii9oHESAV
	chV6Vl7AkPOLiXeRClZfw+ADd1vSHBXOAIPST5LQXCl3vBY1UIILN/HlFBvbcfrFNdLDcosbY1rwS
	9rx87Th+6ky5mISiqwUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL0T-0000000GtSn-2ke5;
	Mon, 27 Apr 2026 12:24:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL02-0000000GtAK-0Lxx;
	Mon, 27 Apr 2026 12:23:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=sHPMBhXxp+6B9raEClgP4b7fTnQR4Zw3lXf5NCEnyIo=; b=wgaVrAQrH8VPCzvKDJo4DzshHu
	qkAyTfXB/yMJi9kt3mYX0z2VjWxxlYCtTJxj0McUmAqDVzlhXu7Qp6GN8v/In3DF2sR9A9WgKxwlA
	pqaG3A1qpg256pAuEoQXXxqAVZo7CttBb0OnM5R4uLcG8hqGt5lEi/+yN/3v2V3tDETvf5TNHgogx
	GndMKNt5qL+DtkBxNkvNvUc8OMghQDAvW+28PljPoJacwsXpk4xablegJ5nPQUT+gqZiisz0h0jcf
	Xoum0h8DF7yDgqV3pMOL+DKBEheWsi+2zy+p0zVdoRIJZIwdo9viA4zwA2dU14+gdSC3SiN7kQqkP
	C2VIyYBw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <diederik@cknow-tech.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Arnd Bergmann <arnd@arndb.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 0/2] Improve gmac0 DT config for NanoPi R5S
Date: Mon, 27 Apr 2026 14:23:17 +0200
Message-ID: <177729258226.1866089.4215675452095780346.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260401131551.734456-1-diederik@cknow-tech.com>
References: <20260401131551.734456-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_052342_454699_A71000FB 
X-CRM114-Status: UNSURE (   8.77  )
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


On Wed, 01 Apr 2026 15:11:37 +0200, Diederik de Haas wrote:
> These 2 patches contain a fix for an incorrect pinctlr definition and
> replaces several deprecated snps,reset* properties with their
> non-deprecated replacements.
> 
> Diederik de Haas (2):
>   arm64: dts: rockchip: Fix gmac0 reset pin for NanoPi R5S
>   arm64: dts: rockchip: Replace deprecated snps,* props for NanoPi R5S
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Fix gmac0 reset pin for NanoPi R5S
      commit: c83c4a09d4c01c91d6c52d6d4d77a06892a3e83b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
