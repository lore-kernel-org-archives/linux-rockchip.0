Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F09BBC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 06:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zoJJ0GjBPiITIM1BKTJdf0RfmJ2cZel0X0h9kBtSn8=; b=fGKT4VSDPyviCv
	tt57SRkWdKWwamCjAhyPTgTk7PF4O+3bc/xMaXLShplTlTK1jbat83yaQDTq6QMPr2wxjdT941XZM
	upOmDqFFOPwZAPGoFr/6GgqYsMV1ghOy3zBswobrRELNyI/ju81VU7xY0pEO/xCPFyseqZlLAvuXw
	GXroRIxMTxMtA6z4mmJ6Uo/UElEcJLkMQDDzlRAiOZMUo58I0a7wxNyFlydcpA2I7+giwsl7qp8y+
	mdLyUfLrx9Uzq6lSCWd27XzOsKNFLkNTmCNf3Q1ashxx01ufA8kVbyaer11jNAFlvNWqrwNQymQt2
	Bynu1Tzmqz9vG+0SAsmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvWXA-00000002V7P-0xAb;
	Sat, 13 Apr 2024 06:06:40 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvWX6-00000002V5r-2Ajn;
	Sat, 13 Apr 2024 06:06:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 95430CE3C2D;
	Sat, 13 Apr 2024 06:06:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B58EC113CD;
	Sat, 13 Apr 2024 06:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712988392;
	bh=uRsytWM+Wij6OaLhlah01nbnk2oNUTDKgra0gaiRkC8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Y0FvY6jIDOoTtXdioDPivFQs7D004ThZPfcnd8DDcbiLb7mu0HzfZpdsXWdx6pets
	 A2oalL+1SRLIoW+SNGtKEtrkpiQnDV6s8aMn0fEnbNRVc+FRl6l6ElrRGHls6kkBhl
	 DhdWA0NsvrVUgw0Pi6p1vP1VFQbK80gIl/8nJiTj/Q/C9jWzmrcHScOCgvAzC3ca8c
	 7DbbrImRi3jqJxsK8TlN2QXDQke3Ya0Kkzgy5w+a5zFVhnfg9lMqyovyxH6GYKUQL2
	 pJzBnA07gPU1bTUjIEdUH5RcG7Ebt1nLs6qEkiWTsbNoY4/Xk2qupbOOxAp/9m75W1
	 YwwU7W9ADQF2Q==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Niklas Cassel <cassel@kernel.org>
Cc: devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Michal Tomek <mtdev79b@gmail.com>, Damien Le Moal <dlemoal@kernel.org>, 
 Jon Lin <jon.lin@rock-chips.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20240411130150.128107-1-cassel@kernel.org>
References: <20240411130150.128107-1-cassel@kernel.org>
Subject: Re: [PATCH 0/2] rockchip pcie3-phy separate refclk support
Message-Id: <171298838693.603171.15268474242938067689.b4-ty@kernel.org>
Date: Sat, 13 Apr 2024 11:36:26 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_230636_779439_C5E3CBB6 
X-CRM114-Status: UNSURE (   7.42  )
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


On Thu, 11 Apr 2024 15:01:46 +0200, Niklas Cassel wrote:
> This series is based on: linux-phy phy/fixes
> (Since there are other rockchip,pcie3-phy changes there that have not
> yet reached mainline and which would otherwise have caused conflicts.)
> 
> Hello all,
> 
> The rockchip,pcie3-phy PHY in rk3588 is by default configured to run in
> "common reference clock" mode. (Which is a sensible default, as the most
> commonly used clock configuration is "common reference clock".)
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: rockchip,pcie3-phy: add rockchip,rx-common-refclk-mode
      commit: 46492d10067660785a09db4ce9244545126a17b8
[2/2] phy: rockchip-snps-pcie3: add support for rockchip,rx-common-refclk-mode
      commit: a1fe1eca0d8be69ccc1f3d615e5a529df1c82e66

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
