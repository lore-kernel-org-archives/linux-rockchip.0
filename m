Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 761BAC07E9D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 18:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8iipLERbJFQINbiwABLx2xWYL/yW+0v8ANGlFbUdlek=; b=KZxhiCnw3eCPZz
	vDrm2Zy7+1AJbU+7ekpptcFAl5IhVmOjkgaTVG0t45Nzp2mpSlu87Nco2g+8kfgcKReqGtHKLS8KC
	l6VGqEVHj2tdDhEOp2yyrO5P7eVJTYGHvb8kklOKdyOQ3KNrrZEZRMzqroIcjDzMHhvNZXjIe84FR
	qsXakHRaS04uhc/zWcH3Mo6pJ4qmQIJnTpdGPhAW7kqIYE6eJIXP6UDwa5WQlK52CigpWbcHv8ePY
	qh2kZzmUngwvXwItNW7hjLK6PHPpn3XXjDiPLW+Wg50z4yQkIM4XuBAt173AnBKXQsptq1BqjmFDu
	KATUDnkzUvi+91Xyix1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsQk-006CVT-He; Mon, 26 Sep 2022 18:02:10 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsQ9-006CGc-Go; Mon, 26 Sep 2022 18:01:36 +0000
Received: from amadeus-VLT-WX0.lan (unknown [218.85.118.195])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 411F88000DC;
	Tue, 27 Sep 2022 02:01:24 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: linux.amoon@gmail.com
Cc: heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	michael.riesch@wolfvision.net,
	robh+dt@kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH-next v1] arm64: dts: rockchip: Enable NVM Express PCIe controller on rock3a
Date: Tue, 27 Sep 2022 02:00:59 +0800
Message-Id: <20220926180102.37614-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220926061420.1248-1-linux.amoon@gmail.com>
References: <20220926061420.1248-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSEgaVk1PHU8dTk0ZGh5JSlUTARMWGhIXJBQOD1
	lXWRgSC1lBWUlKQ1VDTlVKSkNVSkJOWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6P006Qww*LD0YFAgsKilMSSIq
	Qy9PCS1VSlVKTU1PSUpOSUNPQ0xIVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlK
	Q1VDTlVKSkNVSkJOWVdZCAFZQUlOTEw3Bg++
X-HM-Tid: 0a837af5fb0fb03akuuu411f88000dc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_110133_781572_15560D57 
X-CRM114-Status: UNSURE (   8.10  )
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

On 26-09-22, 06:14, Anand Moon wrote:

> +	pcie30_3v3: gpio-regulator {
> +		compatible = "regulator-gpio";
> +		regulator-name = "pcie30_3v3";
> +		regulator-min-microvolt = <100000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
> +		gpios-states = <0x1>;
> +		states = <100000 0x0>, <3300000 0x1>;
> +	};

This is actually no different from vcc3v3-pcie regulator?

> +&pcie30phy {
> +	data-lanes = <0 1 2 3>;
> +	phy-supply = <&vcc3v3_pi6c_03>;
> +	status = "okay";
> +};

It seems that there is no need to define additional data-lanes when
the pcie3x1 node is not enabled, and phy-supply seems unnecessary on
this board.

Excuse me, can you try the patches I posted? Lspci can recognize
pcie3x2 normally, but I don't have a spare nvme hard drive right
now to test if it works.

Thanks, Chukun

---
Chukun Pan (3):
  arm64: dts: rockchip: Add regulator suffix to ROCK3 Model A
  arm64: dts: rockchip: Rename pinctrl label of pcie2x1 on rock-3a
  arm64: dts: rockchip: Add PCIe v3 nodes to rock-3a

 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 36 ++++++++++++++-----
 1 file changed, 27 insertions(+), 9 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
