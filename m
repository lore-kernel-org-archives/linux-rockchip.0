Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48CF5C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 14:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpYnmevz2aVzFJqCs2Bn56nZyKYGL1+YoVG9g6MhtCI=; b=HwwHHYYC2o5e70
	aJaSVGsSSiHYntYOhxVo2sM0IgPJh8onRiLPtI6Zycx+3qAWIL8mKzYgZEgNO2pPCm7tnep1M0P1i
	sWsdse8EJIp2jZJ1TUQ0BJUMfl9rCB4FzXt77C84nKpfrtKIqvcjGpq0DT9V7OFDw9Cv+UdvRDmLX
	dcfFKiQqSnN4t85IH2YYij+MmJ/9dN5AcVQqxkXs8K5yG5TxeN8cLR3hFo62h9xZ0HE2IVK4fRngt
	w+CAlGSysh6vaSYgZVFp4gLxmXk0vC4iICxo5hz6lemAlub/y+Bl9d2ArUeVVeXQe9rdcVHlarfdH
	a33qIBllf83faYpTENMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nknkK-00ER2T-5B; Sat, 30 Apr 2022 14:06:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nknjX-00EQY7-Qc; Sat, 30 Apr 2022 14:06:08 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nknjT-0001Wl-JD; Sat, 30 Apr 2022 16:05:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Samuel Holland <samuel@sholland.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: pinenote: Enable more hardware
Date: Sat, 30 Apr 2022 16:05:55 +0200
Message-Id: <165132754299.647302.3726155341085702212.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413035614.31045-1-samuel@sholland.org>
References: <20220413035614.31045-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_070603_970767_EB31FCCC 
X-CRM114-Status: GOOD (  10.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, 12 Apr 2022 22:56:12 -0500, Samuel Holland wrote:
> This series adds support for some features in the PineNote that had
> devicetree bindings or SoC support merged since the board was added.
> 
> 
> Samuel Holland (2):
>   arm64: dts: rockchip: pinenote: Add accelerometer
>   arm64: dts: rockchip: pinenote: Add USB and TCPC
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: pinenote: Add accelerometer
      commit: 8d411bebd4538a9750db175c030d6083d5210d7c
[2/2] arm64: dts: rockchip: pinenote: Add USB and TCPC
      commit: 87a267b4af09477721e9d2bad63555f0dc49d08a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
