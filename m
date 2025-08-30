Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B252BCA0FFE
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 13:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XO4B4YHO2LZLUnanpO1QxgyoECRYa5N7f8Be6ZnOsws=; b=HYiOLc1XMAx1dj
	NXt84HZ6NgQBIJoTJ/wB1BMZrAAYHIz0c1RvjI/utBcAKOtgpQQnf+ZHSLpKQH/XpdAPkreCOa9uh
	r/Eb06NIv5JGutB0Eval/mohaOchGVdq4Q8Zo/6oke98SZJnZ42Lsv4lpAcB46JvKYSb6St9+Pz41
	gyfWJD4HYU6zOncBAMvQdrCU7Z+ilNA7yOYSUVjxQFgff79/sZAJbFYIfPPQQRSGwLiaUAn9c3ML2
	ePetZE0+KI5cvUZLXnCXBKDe/J8iP5RPlnYm+ERTdlURema6gC03y67OCwpBh7ktvnkKBXXDyhYB/
	oxvtIv6VMDy+ivEqsZ8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usLLH-00000007ubF-10UV;
	Sat, 30 Aug 2025 13:10:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usL9h-00000007t2F-3dm3;
	Sat, 30 Aug 2025 12:58:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=X14SQTki9ZasmMlzi9oTZ8zLId5Sezu3LhgorHtMYcA=; b=0kuy4wFjJVcSrD9YmLdqAo06S0
	tdmp1+CAZpCCB50kKh9frPAwxf33cMyBxEIOAnbwbqeOFut3Dx/nQDhr+3LJt1q22qaq/6TrJeohK
	xIJjy67urdGDEdT6T/jXWx7juTEvARx/BN3AYYB3Z7KWTtVt7RbCklvq7dmIGi0Vyw7yMituLbQXr
	D2wD3RwSP4iLF6p/KzzwS4lX8MMajahDVuTR8Qh+X9kGHROXPTy0pQON2EaWVgNMGaYymKvQPjV5Z
	oS2nEU/J/rLGfyAldwYyV5L2oJHuZRXCfWWz4virMTWaPus7W6R/IJTEmtehC1OAlczJXNvYWUBiA
	rAL9ZIGg==;
Received: from [77.241.232.9] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1usL9e-0007bC-RV; Sat, 30 Aug 2025 14:58:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Christian Hewitt <christianshewitt@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add IR receiver to rk3328-roc
Date: Sat, 30 Aug 2025 14:57:51 +0200
Message-ID: <175655867259.3578496.13748694495805410001.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250829054547.4053558-1-christianshewitt@gmail.com>
References: <20250829054547.4053558-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_055805_925841_C95F8A4A 
X-CRM114-Status: UNSURE (   9.66  )
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


On Fri, 29 Aug 2025 05:45:47 +0000, Christian Hewitt wrote:
> Add the ir-receiver and ir pinctrl nodes to enable the IR receiver
> on the ROC-RK3328-CC board.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: add IR receiver to rk3328-roc
      commit: 7c50e0cea2549a8d673bad62abf9be82b71e5477

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
