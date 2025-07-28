Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 749F4C83F26
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jul 2025 07:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rqKnuMXyGEd4HWMuYYbScw4EAiNziDjnHdMGbFV5v4I=; b=XW2su+nOirvJPe
	vGkMtNZLKUakyTXdFOhzmWpcdL11Yi+JVtnl0B26qNK0TQnLgyQHUtXdecq1qC8tRYcYpymoNmdXv
	9MObZMuXHtpNGhtVrbJiJ7ogHIrvmcCvak2aFcpIOSWJCNIH9WmyhwbOm9fvWEcOQ3YY+RpfNMMP4
	mtGwXIAH7RuldrEKtXyIQUIONqSAeYxws3YqgSYtvVKVSDQpjs3/GXpDP79ys80qEPP7Ibs1TMggE
	dbuUhR6OQ6sLrBSW+49sgw1yA4/wJulX+k4n2lON1LReCKRo8aO6cCF+rCHnZFgwnhPqFmn6Bo4Sz
	vivv01hIlPEIMTehs7fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugICO-0000000Dr7y-0LrT;
	Mon, 28 Jul 2025 07:23:04 +0000
Received: from mail-m2486.xmail.ntesmail.com ([45.195.24.86])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugHrH-0000000DodW-2ulJ;
	Mon, 28 Jul 2025 07:01:17 +0000
Received: from localhost.localdomain (unknown [119.122.213.139])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1d71feaf9;
	Mon, 28 Jul 2025 15:01:00 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: jonas@kwiboo.se
Cc: amadeus@jmu.edu.cn,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	ziyao@disroot.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Add SFC node for RK3528
Date: Mon, 28 Jul 2025 15:00:38 +0800
Message-Id: <20250728070038.174726-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250727144409.327740-2-jonas@kwiboo.se>
References: <20250727144409.327740-2-jonas@kwiboo.se>
MIME-Version: 1.0
X-HM-Tid: 0a984fd5af4203a2kunm29ba9c68148cdd
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaHx9CVh1DSUpOHkxCSkpNTlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSFVKSEJZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0tVSktLVU
	tZBg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250728_000115_941275_8DE3BD98 
X-CRM114-Status: UNSURE (   5.06  )
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

Hi,

> +		sfc: spi@ffc00000 {
> +			compatible = "rockchip,sfc";
> +			reg = <0x0 0xffc00000 0x0 0x4000>;
> +			interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
> +			clock-names = "clk_sfc", "hclk_sfc";

The clock* should be placed before interrupts.
BTW, doesn't the sfc node need to configure pinctrl?

Thanks,
Chukun

--
2.25.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
