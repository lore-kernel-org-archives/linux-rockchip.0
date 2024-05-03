Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1B58C25B5F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 11:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOQGdhOK7cNXWKirU+yMnxnn9rCaTHcnWscc4kE8Y7k=; b=gR/lYge3ldo8Uu
	zwVx1I+fsn++ohp4/TkRXpRleY0aBB8tDvMReGg7TCDW1JkrmQ3F00QV6oW/QKtBpDfzXKid9joUl
	FoPX3rQyle/3L4coJXy2bp1ZVBRLn3LJnFkFItgLdMoGhHbCwLuxelKFUh5xU0UDHGS832oxQk7ka
	LLrDUR8f4mvQyRtPQMm2rdL53h1sVgzllZbRlAsEM8kbQsk0xvTf0VO14BJ1rG0s8QyU+fuZm8m5/
	nZXh7l3a6hEQRLd5x+ZCo5U/mqmh+r5WkcgbxE4v91CsM8XVAswFC0vY/0HpTdFJzOm0heDI3BVTL
	27Jk4pr5ffhktjHODHdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2rFZ-0000000GHRQ-3EAN;
	Fri, 03 May 2024 11:38:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2rFU-0000000GHLg-3ApZ;
	Fri, 03 May 2024 11:38:46 +0000
Received: from [213.70.33.226] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s2rFP-0000Tc-U2; Fri, 03 May 2024 13:38:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Anand Moon <anand@edgeble.ai>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: Re: [PATCH v1 1/2] arm64: dts: rockchip: Support poweroff on Edgeble Neural Compute Module
Date: Fri,  3 May 2024 13:38:21 +0200
Message-Id: <171473602992.3469033.9822124851399795331.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240502094246.4695-1-anand@edgeble.ai>
References: <20240502094246.4695-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_043844_819383_FC4DB379 
X-CRM114-Status: UNSURE (   8.76  )
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

On Thu, 2 May 2024 09:42:37 +0000, Anand Moon wrote:
> On Edgeble Neural Compute Module add system-power-controller
> property to RK806 pmic so that these chips can power off the device.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: Support poweroff on Edgeble Neural Compute Module
      commit: 3cd1ed57ce70dd64bd1dfb69cbb3173bf4fe0582
[2/2] arm64: dts: rockchip: Add USB3 on Edgeble NCM6A-IO board
      commit: 7676e12650055f4eff5f2cccdf9903981619553e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
