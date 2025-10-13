Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D20ACCA476
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 13:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXmt0j28V5V7tcSm22++FLIWevXlA/FkCUPpRE+p5c8=; b=IlP1+RZxH7bRDz
	kCqERd8vH5+3f5acRBrLbkEsaB1JOY/B8sTikIlIXGw9lf5sx7g7fqciH9WOEccoQ8XcEKyeBjIuZ
	TiF0wuKNRSt7RJfa5U64zwD7ERbZpishOE0RVmTAeZm27kYqIJB3hFg0pQYo+XoVl3hfZQ1awPER5
	18YFy7nppFSaTYph85kM70jboxzREJ7vbnOfndsCihsZ8rfl33lXhx8nqvmzHUKpcK2HHmS5EAQG5
	HgTQwXB7Y6miRybwY3wqoKvC/xjg5j0yi85ey1HcHeg/IuAzSQE3DQg4LIVfe39o8SEGQPLEI1tm8
	s9tKiMsPpk5+0Zi0erqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8IA5-0000000DBSQ-27A0;
	Mon, 13 Oct 2025 13:00:25 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8IA2-0000000DBRx-0OK7;
	Mon, 13 Oct 2025 13:00:24 +0000
Received: from localhost.localdomain (unknown [116.25.94.88])
	by smtp.qiye.163.com (Hmail) with ESMTP id 25bc09e05;
	Mon, 13 Oct 2025 21:00:17 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: jjm2473@gmail.com
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
Date: Mon, 13 Oct 2025 21:00:10 +0800
Message-Id: <20251013130010.143271-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CAP_9mL5=GmtJF3nSbfX6gRzPc=fAMrTOfMuOLyWFwq5D4OYUFw@mail.gmail.com>
References: <CAP_9mL5=GmtJF3nSbfX6gRzPc=fAMrTOfMuOLyWFwq5D4OYUFw@mail.gmail.com>
MIME-Version: 1.0
X-HM-Tid: 0a99dda846df03a2kunmd8d8089cbf42
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDQhhCVklJSxoYTU5DQ0tMTVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk9VQ0NZV1kWGg8SFR0UWUFZT0tIVUpLSUJNS0pVSktLVUtZBg
	++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_060022_295592_CF5C4205 
X-CRM114-Status: UNSURE (   5.89  )
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

> +&pinctrl {
> +	gmac0 {
> +		eth_phy0_reset_pin: eth-phy0-reset-pin {
> +			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};

Leave a blank line.

> +	gmac1 {
> +		eth_phy1_reset_pin: eth-phy1-reset-pin {
> +			rockchip,pins = <2 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};

> +	gpio-leds {
> +		status_led_pin: status-led-pin {
> +			rockchip,pins =

No line break required here.

> +				<2 RK_PD7 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};

> VBUS on usb2phy0_otg is floating, this USB port only works on
> device (peripheral) mode.
> phy-supply is optional, so this should be fine, right?

Yes, if there is no log like this:
supply phy not found, using dummy regulator

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
