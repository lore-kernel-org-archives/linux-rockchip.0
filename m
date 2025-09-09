Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1866CCA0FED
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 16:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ze6JfUCkYdpycxolsGSjqox1aA1yNMsyv6wG88uCErU=; b=ncIP2HGZx3wmJP
	IHtTvMbidYZUr4xxZOMh2RHTAaNb12DF/ep/DeHiBgI9UwWd0brTtH9ByZutXNpI8JRuBacVlaaua
	C0mmBRIk3hQ9UB3lcPFrFpIfeozYKLBlFnojnWrUXCvOhFRDg0rEVdEhFlXMV6qRY8J1GVCearpfn
	Gp/Y3y+RInkkHc7G0JrY7eyZ6JOjSyaz/gkWF2M3ps1Gk9IQ7wCUYYrzViSDdFmSIg1MfS0Yo+0ht
	RfNmUtGQtihcerweczUBd6K8R6kcpzl+DJofqFlxkg/kWqNtUtYVVwpcDzYIoOzfFp3+5rosccqMJ
	ToNdIT5a5k87FOskjgLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0nU-00000008NZ7-0LdG;
	Tue, 09 Sep 2025 16:02:20 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvxxJ-00000007ElL-1W6z;
	Tue, 09 Sep 2025 13:00:18 +0000
Received: from localhost.localdomain (unknown [119.122.213.41])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2236a7739;
	Tue, 9 Sep 2025 21:00:13 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: ziyao@disroot.org
Cc: amadeus@jmu.edu.cn,
	bhelgaas@google.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	kwilczynski@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	lpieralisi@kernel.org,
	mani@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Enable PCIe controller on Radxa E20C
Date: Tue,  9 Sep 2025 21:00:09 +0800
Message-Id: <20250909130009.2555706-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250906135246.19398-4-ziyao@disroot.org>
References: <20250906135246.19398-4-ziyao@disroot.org>
MIME-Version: 1.0
X-HM-Tid: 0a992e9000b703a2kunmf083b8f4a90bb
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTUxCVh1OT08YQk9JTh5MSlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSFVPSllXWRYaDxIVHRRZQVlPS0hVSktJT09PS1VKS0tVS1
	kG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_060017_566555_C7D40812 
X-CRM114-Status: UNSURE (   5.62  )
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

> +&pcie {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pciem1_pins>, <&pcie_reset_g>;

The pciem1_pins contains PCIE20_PERSTn_M1 (GPIO1_A2)
This will cause conflicts, "pinctrl-0 = <&pciem1_pins>" is enough.

[    0.115608] rockchip-pinctrl pinctrl: not freeing pin 34 (gpio1-2) as part of deactivating group pciem1-pins - it is already used for some other setting
[    0.191042] rockchip-pinctrl pinctrl: pin gpio1-2 already requeste by pll_gpll; cannot claim for 140000000.pcie
[    0.191949] rockchip-pinctrl pinctrl: error -EINVAL: pin-34 (140000000.pcie)
[    0.192570] rockchip-pinctrl pinctrl: error -EINVAL: could not request pin 34 (gpio1-2) from group pciem1-pins on device rockchip-pinctrl

> +	reset-gpios = <&gpio1 RK_PA2 GPIO_ACTIVE_HIGH>;

Missing supply: "vpcie3v3-supply = <&vcc_3v3>;"

> +	status = "okay";
> +};
> +

Thanks,
Chukun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
