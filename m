Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F943C48260
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 21:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7lZxW7c3YOECWl4nnzGhEZTsMq9wDsBH69atHO3c28=; b=iMp2WnzrhT6HCb
	quogxjB8HV6oau8VWEvLfe0mpm8vzkWYzzq3eV4ATRQA0ibS5EkwqQLdg5bXkiSSFVMrHf1G0eqCU
	uu2YHBdhsgtcvReBK+MZsCYjvyU913TOqL//KmbJoQWc1uD8Fsx4kPc3RnD1H1DgRaY/aUp6cRJm7
	fRMDfDPx0da+gT/DIBnD40cQlUQrwGmgBwjkkIas4o5WhHYU34N2t71yHYv8TxeDUmxyS1jG4XdF6
	Zjg4GjXQqysOHhg+xovFD88Fkshd0RUyU+OF82aM/debC7qz0AKsLo8/xo5olOF7JxqTYUcHGL46k
	oXTzthcEjAhLRHLteIPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT71x-00000001vZH-3y9J;
	Thu, 25 Jan 2024 21:13:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT71Q-00000001vEU-07Ut;
	Thu, 25 Jan 2024 21:12:29 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT71I-0002EX-R1; Thu, 25 Jan 2024 22:12:20 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: John Clark <inindev@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Thomas McKahan <tmckahan@singleboardsolutions.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add sdmmc card detect to the nanopc-t6
Date: Thu, 25 Jan 2024 22:12:08 +0100
Message-Id: <170621707730.1872080.3618881192574509697.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231230165053.3781-1-inindev@gmail.com>
References: <20231230165053.3781-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_131228_118942_4A2E8AAD 
X-CRM114-Status: GOOD (  10.59  )
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

On Sat, 30 Dec 2023 11:50:53 -0500, John Clark wrote:
> The nanopc-t6 has an sdmmc card detect connected to gpio0_a4 which is
> active low.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: add sdmmc card detect to the nanopc-t6
      commit: d8bb6c2311b6b2aad11b937f96db1d6c3393246a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
