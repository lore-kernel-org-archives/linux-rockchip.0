Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20580ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 23:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxdrICwIuP0QlPZ+TNIUbJvui5t67o664fQb0vumTww=; b=VhL276EZrbYDPR
	jMqH3YrZ73I4sl46bCbyGqrym3Vk21/8Mi8+Ku1i0FLwe6Ejlel8uLVrOQMcgFtFTUpkp/7Zbm89q
	z8ixEgWneCLCW9Ad6IvkkgcsWusfGKVnJ9EtsP+DknrUOIbdtaxTZIkOfAK75/zZgaqqvjDYoIy7O
	/SIj7acUlk0fobraKxaZULpWo/M761KrNhKw/zjX+EvkKTdXzPreIUKp9GmJLOQAMjYHMnMW4nrde
	ERnTqP0gI20H+XG3lspzbajgxcsQaJRWR2pViVDNB+ri2OtaR7Ov+WCxMj8G3/vY0b/EC4wS5uWR6
	1PfV5TdmPCA9YNbQVXbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWn9b-003iI4-5t; Fri, 09 Sep 2022 23:11:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWn9P-003i9I-A7; Fri, 09 Sep 2022 23:11:09 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWn9J-0000Qa-1A; Sat, 10 Sep 2022 01:11:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add PCIe 2 nodes to quartz64-b
Date: Sat, 10 Sep 2022 01:10:54 +0200
Message-Id: <166276502653.27767.1922290388399507834.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220718033145.792657-1-frattaroli.nicolas@gmail.com>
References: <20220718033145.792657-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_161107_473187_3B5BF199 
X-CRM114-Status: GOOD (  11.02  )
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

On Mon, 18 Jul 2022 05:31:45 +0200, Nicolas Frattaroli wrote:
> This adds the regulator node to the quartz64-b device tree,
> and enables the PCIe 2 controller and combphy for it.

Applied, thanks!

[1/1] arm64: dts: rockchip: Add PCIe 2 nodes to quartz64-b
      commit: cd4e5f30f51f1066170a7c5f267cba6f062213e7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
