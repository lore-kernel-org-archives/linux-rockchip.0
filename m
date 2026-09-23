Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBA85C982FA
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 02:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aiCOa+5sYq31eE0xc4MXSexHmszw2N9kZsMrCbWABHs=; b=2YupEMgw0f4bvZ
	KjJ0kPeb6YKx+CpGuq/LZ+Xtks6izYNFYsKHm61BArzbxdtKYK+mpRq4jj3JFnR1A3FdnbEppWx5d
	q28FMW1iAiAZmC6sUJXvvevwYwCQj6yBcDB4zLkM2123IiTRVLYvnVK/jysUdaerEEmSV8fbz01Xq
	xzrqhd416e24SPSlqMz918LTpaYnQ4DrMC3KdaQLKDkvUQK4yNs6qMsclJI35y7bmf6OB/13mbzfJ
	lb4iw00tpQUdaRUPHg1udnWrSLaA2APJaR8S3gSh15KtGkbZ6ZVbd68HhZ6eonCFynpCpg5tIVKP+
	XC3u1HR/NIcpJrWdOh+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9D3k-00000006zK6-0hyf;
	Wed, 23 Sep 2026 02:50:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9D3h-00000006zII-2MRn;
	Wed, 23 Sep 2026 02:50:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AA3E3601F0;
	Wed, 23 Sep 2026 02:50:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98D221F000FF;
	Wed, 23 Sep 2026 02:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790131808;
	bh=Eo5PNvzKKc4BFL3+MuJflE+BxX4YdcxoeglU+t5KwrY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=JZQ5CORtA6ZeETmwbFwtxoC2CfxFDPqnS+RC7NQO9H6gNAWIrOqRx/Ufk0nd7fXBP
	 iDsMlkWUtzAnjAvlhBCUMNzhaXQ/vkFLbfx2lrBgDBLqshGRoPTToU+UzQECX2lS7O
	 3hOj1XpvCcXAc0DcB6YInNKaNEJ5699vb/l07V4BKzELxkLf2ZDEb+lTAyv47yBAPk
	 ZhJnVtJSnQx768X8qVjVvdmubkx3JubAP3KHc5ZiF9vbvUNSKMN0r/kGszo4Y/4OhV
	 aWR4snVHpOGntttMBDW8Y0zH6Od2jXwwQs9+77WD1uLLF6eFaDTxtom3jZjBRSsu18
	 oaCSP+Zmih2Ow==
Date: Tue, 22 Sep 2026 19:50:06 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Coia Prant <coiaprant@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, Maxime Chevallier
 <maxime.chevallier@bootlin.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Lad Prabhakar
 <prabhakar.mahadev-lad.rj@bp.renesas.com>, Romain Gantois
 <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, Neil
 Armstrong <neil.armstrong@linaro.org>, Russell King
 <linux@armlinux.org.uk>, Shawn Lin <shawn.lin@rock-chips.com>, David
 Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH net-next v10 00/11] net: pcs: add basic support for
 RK3568 XPCS
Message-ID: <20260922195006.79890f24@kernel.org>
In-Reply-To: <20260922200336.2201212-1-coiaprant@gmail.com>
References: <20260922200336.2201212-1-coiaprant@gmail.com>
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

On Wed, 23 Sep 2026 04:03:24 +0800 Coia Prant wrote:
> This series adds proper SGMII support for the Rockchip RK3568 SoC
> using the integrated Synopsys DesignWare XPCS, along with necessary
> fixes and refactoring in the stmmac core and XPCS driver.

Please slow down with the reposts.
Not more than 2 a week, and please wait for the AI review to finish
and be published before you repost.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
