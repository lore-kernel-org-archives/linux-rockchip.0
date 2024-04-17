Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03335C4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Apr 2024 21:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CL1NYt33zLzQBeYhd+TaSA0L/A0Th7JqUXsTgU+nyE=; b=EuUjc21LuZLVPj
	xipgudWFtObm3FFRWNi0CDxNrwvJ8/9I4OU3Y1N6FNX3H9+NqoVtrphUAKIz0jTzxMiCRsNSoxWvo
	rJUeC/kfNCvS5i7oY/lA9l8+zn0KTYKplgDc8tShTjrhPB1XmJTcFbt026drITKbgvOmSj8eL+cGL
	HsVefAHViSgu2BODeYEjjiUMEZgkHvr6kSlmpsT4Ah/rhlcmbYnwaiaU5Xg3rHivsaiUFZcESMuoF
	hb2v5icA551ApLrWJzwrs/2Y1nXH/FJBxeMZDR9hGRuBgAFTDdKwQNkHYvqZEp03LttxUjYjRRS0P
	tP+V5fZc2LPPK1J2PsFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxClu-000000004UO-3oh3;
	Wed, 17 Apr 2024 21:24:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxClp-000000004QT-2sFS;
	Wed, 17 Apr 2024 21:24:47 +0000
Received: from i5e861917.versanet.de ([94.134.25.23] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rxClk-0007Yy-Mb; Wed, 17 Apr 2024 23:24:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Riesch <michael.riesch@wolfvision.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add wolfvision pf5 visualizer display
Date: Wed, 17 Apr 2024 23:24:34 +0200
Message-Id: <171338906385.2268267.11350398666302673626.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240412-feature-wolfvision-pf5-display-v1-1-f032f32dba1a@wolfvision.net>
References: <20240412-feature-wolfvision-pf5-display-v1-1-f032f32dba1a@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_142445_748806_19F99AA9 
X-CRM114-Status: UNSURE (   9.58  )
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

On Fri, 12 Apr 2024 14:54:09 +0200, Michael Riesch wrote:
> Add device tree overlay for the WolfVision PF5 Visualizer display.
> Since there shall be additional variants of the WolfVision PF5 display in
> future, move common definitions to a device tree include file.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: add wolfvision pf5 visualizer display
      commit: ecca3b96aa849bf7a6e704567c5f71bff912cec0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
