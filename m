Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 896AAC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 16:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3Dsu6mPYo9tjHaSHqVAD/M8a9mzA/gPuaNQWWDGRvo=; b=d/QCEcJjJNIHry
	KOwu3LwcdfU+9DQjb7aZd9a3Hn3C4bJZt/GXA+uShpaKRp/Rsb3gQnDIjJv2rm0/RgffVDGXMckiH
	UA8ZXz/Mwhml6YsQmDz/dhdAY2PZBhNNMgtsT1OY5pDgdiaytiwOaELY0PRvwImX1X5VJVRKm9sdm
	6MFgiUJddK0/273d722Ymy0YxaVIJ1fseIumNWuC9GBcsRc5ffKKcYI8/+I+8r5BGYwIMAzrYjbIm
	hSWqa0oFxjUR6ImlnKP06l7L4XfWNA0redgrN3Yotu1UDKgNkOhJxJ18w1KnMY4VyoMxCPJB5XoSM
	MzNYr2M/53Xvf6AJ5J1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2EGP-006S8K-Mw; Mon, 05 Dec 2022 16:24:17 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2EGE-006S5J-Nx; Mon, 05 Dec 2022 16:24:08 +0000
Received: from amadeus-VLT-WX0.lan (unknown [218.85.118.194])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 9A038800056;
	Tue,  6 Dec 2022 00:23:39 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: aholmes@omnom.net
Cc: devicetree@vger.kernel.org,
	ezequiel@vanguardiasur.com.ar,
	frank-w@public-files.de,
	frattaroli.nicolas@gmail.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	macromorgan@hotmail.com,
	mark.kettenis@xs4all.nl,
	megi@xff.cz,
	michael.riesch@wolfvision.net,
	pgwipeout@gmail.com,
	robh+dt@kernel.org,
	robin.murphy@arm.com,
	s.hauer@pengutronix.de,
	yifeng.zhao@rock-chips.com,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: rk356x: Fix PCIe register and range mappings
Date: Tue,  6 Dec 2022 00:23:22 +0800
Message-Id: <20221205162322.149967-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221112114125.1637543-2-aholmes@omnom.net>
References: <20221112114125.1637543-2-aholmes@omnom.net>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZHRkYVhhMSxhMHUlDGkpNTFUTARMWGhIXJBQOD1
	lXWRgSC1lBWUlKQ1VDTlVKSkNVSkJPWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MQw6KQw4Ez0fSw8*TA0VNSsP
	DUswCQJVSlVKTUxLSU5MT0lLT01JVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlK
	Q1VDTlVKSkNVSkJPWVdZCAFZQUlNTE43Bg++
X-HM-Tid: 0a84e319a72bb03akuuu9a038800056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_082406_956807_8AAE8ED0 
X-CRM114-Status: UNSURE (   5.05  )
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

> The register and range mappings for the PCIe controller in Rockchip's
> RK356x SoCs are incorrect. Replace them with corrected values from the
> vendor BSP sources, updated to match current DT schema.

Hi, Andrew

This patch broken pcie3x2 on my board.
And the wireless card on pcie2x1 is still not working.

[    0.405341] pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
[    0.670522] rockchip-dw-pcie 3c0800000.pcie: can't request region for resource [mem 0xf2000000-0xf2ffffff]
[    0.671527] rockchip-dw-pcie: probe of 3c0800000.pcie failed with error -16
[    7.354521] pci 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
[    7.355116] mt7921e 0000:01:00.0: enabling device (0000 -> 0002)
[    7.355812] mt7921e: probe of 0000:01:00.0 failed with error -28

--
Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
