Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72F3FD374AF
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 15:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLbMC3BI9atw3UihKx/mrR2yihTRmyMmZeTipsl22P8=; b=leRtYW+R5NR/y7
	P6SEyAkeqXOC8gcdrEAGDohQeEV8RebgA5N9DIdnG5kyOZjdx94jXLiylgBk9lwq7zAynBtqXmVYK
	gftkLcSLelfqgKnyrd/WYZ2bIfGaXk78lXoDhqJTzIFfdTWfou6Icx2zVTseJWIMVFyrdxgsPwrqr
	VKk0d80cpJirR2qN83dAESDeQ659Iuc20KlOt9vV1Y0uYeXgPGWBC936Bom/drvcefxz9knyt7rDw
	ZS2Mj7O442k4TdqvYoRliQG4B3KP5xzMIkt4MrtRL8XC7z7xzCifzYngpL0zr/uG/1KRfMqcTqyqA
	dbOmvynV7uACyHj52OCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SZO-0000000FJT1-18m8;
	Thu, 17 Oct 2024 15:37:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SXE-0000000FIjU-48LB;
	Thu, 17 Oct 2024 15:35:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 02EB95C617B;
	Thu, 17 Oct 2024 15:35:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E9C3C4CEC3;
	Thu, 17 Oct 2024 15:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179332;
	bh=poBaeIXGhWrOXxHqNDXA9/SiaWES5p961HT2/STyJzQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=brNnxV2APJL6CDVOruAOYWetiD0wY1K6o7Im04dQsDiBlwDAzik83b0miXsZ1sYKY
	 tppdn3RcGe28cwVl4GbYpWHuFyqZ15U0wYLSCz/D3npInK4hsuuU+vNj/PlaZMYgeC
	 6relWYfvShMr/MdoOM+AvUNtzoXrE3IC3GrcYgVqISUMd7Au7PbbYdww+/Uig2K76S
	 xNPM99SjWsSlAs5Vsk8vKwL/wo3iBesF1KaAAGrVc1pjyz0fymaxnGw6Xd+8/FLT13
	 g0w0kcpL59Q9z1CA6jyIWKZ0o6xn83ZwcHyQzEfkfrFPfoyZuTRWmbgrnR58c2Wpi6
	 ZfwQoNJsfcr1g==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, heiko@sntech.de, Frank Wang <frawang.cn@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com, 
 tim.chen@rock-chips.com, yubing.zhang@rock-chips.com, 
 Frank Wang <frank.wang@rock-chips.com>
In-Reply-To: <20241017025230.28752-1-frawang.cn@gmail.com>
References: <20241017025230.28752-1-frawang.cn@gmail.com>
Subject: Re: (subset) [PATCH v2 1/3] dt-bindings: soc: rockchip: add rk3576
 vo1-grf syscon
Message-Id: <172917932783.288841.4239096557035814697.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:05:27 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083533_099611_D1073318 
X-CRM114-Status: UNSURE (   4.77  )
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


On Thu, 17 Oct 2024 10:52:28 +0800, Frank Wang wrote:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> Add rockchip,rk3576-vo1-grf syscon compatible, the vo1-grf is
> configured in usbdp phy driver.
> 
> 

Applied, thanks!

[2/3] dt-bindings: phy: rockchip-usbdp: add rk3576
      commit: b3e804ab9aad465ba7285aa5daf83656d5efc59f
[3/3] phy: rockchip: usbdp: add rk3576 device match data
      commit: a76de028c619dd18f89786805bcc7bb4d379ea9f

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
