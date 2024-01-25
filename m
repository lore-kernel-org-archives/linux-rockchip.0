Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C669FC47258
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 21:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWYUsEuYdRywX2PWEJFGlJPUfztMHCf4TISDxN1SEJA=; b=aUoCf4bh4kxrDQ
	m0z2ibfOzRZyYpwKYE+zf+F9UPuBNiALGlQ2Wk/W+H5JBnNu0uA9kCughW9dq1xu/Vkd5M9K+rW+E
	1fBTF4Zheb74F6eLEpuGCepmWvfM6/C2ijsoFzlWgiCdo2C/4iJthitwUD7a3KyIWUJ7fQUr0Ho3f
	8HI+kgoCCs0KIowop2F9IHUL1b5DSmYkAH6ZAsQKJLVHL9ZHdn17we3bXSwgEc+TSMbZUYRvv0XE/
	1ThlYGx2RuG6QUz+MT9VcQiyK9fmJmzUa4DqWbBeq7nDs3N9vZ9N5M1t4YowW9wtLa0tIc/feFcV9
	ek+1Ig4EKr+JFa80WI6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT78h-00000001wxC-2MBG;
	Thu, 25 Jan 2024 21:19:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT78e-00000001wwc-0SdZ;
	Thu, 25 Jan 2024 21:19:57 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT71M-0002EX-6i; Thu, 25 Jan 2024 22:12:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Hugh Cole-Baker <sigmaris@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Thomas McKahan <tmckahan@singleboardsolutions.com>,
	John Clark <inindev@gmail.com>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable NanoPC-T6 MiniPCIe power
Date: Thu, 25 Jan 2024 22:12:15 +0100
Message-Id: <170621707724.1872080.11814565221156143986.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109202729.54292-1-sigmaris@gmail.com>
References: <20240109202729.54292-1-sigmaris@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_131956_169792_7AEB762A 
X-CRM114-Status: GOOD (  12.10  )
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

On Tue, 9 Jan 2024 20:27:28 +0000, Hugh Cole-Baker wrote:
> The NanoPC-T6 has a Mini PCIe slot intended to be used for a 4G or LTE
> modem. This slot has no PCIe functionality, only USB 2.0 pins are wired
> to the SoC, and USIM pins are wired to a SIM card slot on the board.
> Define the 3.3v supply for the slot so it can be used.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: enable NanoPC-T6 MiniPCIe power
      commit: d235e65adf00f6db09331874c5a987b7fe18023b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
