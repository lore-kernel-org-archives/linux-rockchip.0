Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31E2EC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Oct 2022 15:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8APYWqT7paBnbMoj9Ra+0Q/sNxtnmywbn1CT/UW77X8=; b=W2WuAhvE4Gr4oL
	XFZOOh8jUO3qY5qwvn+OA8R6iF/mrDc5YxPsQtrJk8ahp2kB3y7UxudHy1Nxuz/QNa3uuIrb3QxDQ
	LTkkULR7r72fsyMCXBQq0IDQaTD40+wjVBz+RFrWCtGrrO/7EM+XTB8lTmSDFIeigY9Sle3sNlwLC
	KY1Ema+FVEKPzb+niFu7X6QK4P25BSnsotKHGAWXJQjhOdVmJ/4x8/NMYKa7DMSJ9o+LoaQplt6HS
	ye2axf4Zqd1RMSCh8jKPwPUrQmqGkHsHJ891OkITj3Lx0yo3uRhm1w9WP84dwu3QBLNeRQVd6Em26
	NqNdYfylz+WvMyyRQ33A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogSmU-003NYR-G8; Thu, 06 Oct 2022 15:27:26 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogSl1-003Mnc-Uc; Thu, 06 Oct 2022 15:25:58 +0000
Received: from amadeus-VLT-WX0.lan (unknown [120.37.187.24])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 32D748000BE;
	Thu,  6 Oct 2022 23:25:45 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 0/2] arm64: dts: rockchip: enable pcie3 support for rock-3a
Date: Thu,  6 Oct 2022 23:25:22 +0800
Message-Id: <20221006152524.502445-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDGB0dVklMSRgeH04YTUpMGFUTARMWGhIXJBQOD1
	lXWRgSC1lBWUpJS1VITFVKQ0xVSU9ZV1kWGg8SFR0UWUFZT0tIVUpKS0hKQ1VKS0tVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PRQ6Tjo6NT0hKk8fSAIZViww
	LRMKCjBVSlVKTU1OS01CQk9OTExPVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpJ
	S1VITFVKQ0xVSU9ZV1kIAVlBSk5NTzcG
X-HM-Tid: 0a83ade71241b03akuuu32d748000be
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_082556_166256_D41F0CCB 
X-CRM114-Status: UNSURE (   5.25  )
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

Changes from v2:
* Removed changes to pcie2x1 node.
* Collected acked-by and tested-by.

Chukun Pan (2):
  arm64: dts: rockchip: Add regulator suffix to rock-3a
  arm64: dts: rockchip: Add PCIe v3 nodes to rock-3a

 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 58 ++++++++++++++++---
 1 file changed, 51 insertions(+), 7 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
