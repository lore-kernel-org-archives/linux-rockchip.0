Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8822C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 12:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CG12oRIJzC+EEkq+/yPgTn09Qd+/YJChLhUz4C4sqWg=; b=F8WgLPOWUZUKgu
	YnNGN1fVfgpEZiyeU3d3xvLhV/RQWHp9kT4TSCB8ZTnjrsEYAqDyhIrTTwxg56errLV3A5LhP1I0o
	FQadHQPAxWd7Pg3GCCgnGvujvh/F5n4vxPPQAy6T5pvXoHwUIDiP+06tC6yUp5GXFVjvmHY6z/zrf
	CkgAqkzYCog2+tgLzFAS340O3ivEzqfpe8U06aEbE9V+p5AGB4V9Y9bPE7ibfWObcitiMf85X0NiV
	qdNPeQWRu8uJp44zJ1yyuFme0PxBprnAd0guOdmcMTIkyWw/6IPITVx7cYc5tWpxnSdj+NCizjezh
	46xwAJjyfNntdQBgikOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mC5-00000006Gzx-2bzG;
	Tue, 30 Apr 2024 12:02:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mC1-00000006Gw6-0yDy
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Apr 2024 12:02:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C8019614FC;
	Tue, 30 Apr 2024 12:02:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAD3DC4AF18;
	Tue, 30 Apr 2024 12:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714478559;
	bh=58kdoqhkMWSvOTNRnkUL+Dx7X57eBg3JtCaWStyIDvY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=RPhfPTWzDlztDQhqRthOfAZP5enmulZUPfQ2XfzPMNkCldQmz7hZ244X+v5M1kanl
	 ioN+QUU1hSr2ap8Ij27km+2oQAbN34D1mnn4CoqqF7IlD9MeFdWe8VtTrQkxy6W8iL
	 e5eolMVPfHUxatLCwJ3gBO7/Veg58A2bV4XnQDmW7VU91fgETCv0O20wyZHaNaRJhB
	 0KBfj1x1Hz5vmAi5NUf9LkVyehZP3NScze1ZJQ4voXpFOlR68iDfbBN5sQEWJlyZIH
	 2uU+tUcL2CmnFwzdJFmXLqMZWFWNm75Z9OV6sBJiqUY4aQJul6dg7oDjGskmbnXq+x
	 K46+ywLPCskYA==
From: Niklas Cassel <cassel@kernel.org>
Date: Tue, 30 Apr 2024 14:01:07 +0200
Subject: [PATCH v2 10/14] PCI: dw-rockchip: Add explicit
 rockchip,rk3588-pcie compatible
MIME-Version: 1.0
Message-Id: <20240430-rockchip-pcie-ep-v1-v2-10-a0f5ee2a77b6@kernel.org>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Niklas Cassel <cassel@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Damien Le Moal <dlemoal@kernel.org>, Jon Lin <jon.lin@rock-chips.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=941; i=cassel@kernel.org;
 h=from:subject:message-id; bh=58kdoqhkMWSvOTNRnkUL+Dx7X57eBg3JtCaWStyIDvY=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNIM7m4wuHXfeubc5mtHJD8yafyV/aSwM7bsRsTCj4Lt/
 69NXm3ytaOUhUGMi0FWTJHF94fL/uJu9ynHFe/YwMxhZQIZwsDFKQATORjKyDCxXuNKxnc/63/N
 U5zCNzdlZUzSXxoYJncy9nNQ5IRz53sY/spGWOaEBnBw6qfvN14iuGhuo5nT3bLXavV7JF77nxM
 MZQQA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_050241_464780_14D2AC48 
X-CRM114-Status: GOOD (  10.10  )
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

The rockchip-dw-pcie.yaml device tree binding already defines
rockchip,rk3588-pcie as a supported compatible string.

Add an explicit rockchip,rk3588-pcie entry to make it easier to find the
driver that implements this compatible string.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index f985539fb00a..f38d267e4e64 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -400,6 +400,10 @@ static const struct of_device_id rockchip_pcie_of_match[] = {
 		.compatible = "rockchip,rk3568-pcie",
 		.data = &rockchip_pcie_rc_of_data,
 	},
+	{
+		.compatible = "rockchip,rk3588-pcie",
+		.data = &rockchip_pcie_rc_of_data,
+	},
 	{},
 };
 

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
