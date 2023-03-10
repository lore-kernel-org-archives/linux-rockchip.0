Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0A49C6FA99
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 08:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OfqxSyhBJhHAHpWrKkbBJYsPg9qcA+CHJvPQDFLHk1E=; b=uFXKgnppXgvNhC
	9gX2G4tVamoq8AHhL9XDNn4xYUoM1VO/kqO5iJa/cgYlYVVf3AwSWjpJNAFKZwFDCxmc9o/ydT9ks
	cqpJTSMtT2De1kADtDhTvd2LezyLibvbD1H7rO2r1yN4MMEG3t6UqWr3ppCtsy/5L6W9Z1PA7fdpn
	yFZZblnffsVaANCGc0UwGhJDDo5955aFqZ8QnjQyWWQ0Lky3C9AATZcUp1JHHM5BUGvRskpl8ZOcQ
	3Bno0QNnI4ekTJBwITYBfTQeHNPH3yIq96TIHgjCEMIugsEfyGgpbvycPFlkoUVvjesJOB8UcA/xl
	bacu7VTMs88+fSe/vHhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paXlc-00DWJM-Mf; Fri, 10 Mar 2023 08:06:20 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paXl2-00DW2L-T1; Fri, 10 Mar 2023 08:05:47 +0000
Received: from cryzen.lan (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: tanureal)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E55AB6603064;
	Fri, 10 Mar 2023 08:05:42 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678435543;
	bh=aXDW9FM3v6N1gp/G6svdu0Iv9rfB/0Z8Inu2S3xCf4E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Fh+3hbrZX63tbEgCu8QMhiNdvHIvJ5tdpSdE3dTMSQQ1IHv3G/OkOYp587KeXjw0H
	 Wte5VVGJez2NsEGK//ZaFmtSdyvqpRqlNGd7BxI2OxdywTkzTBcj2qWXu9Zc8hBS1t
	 FyczdNcZcgqYA4btHApUzWydm858U28q8YtAtjFDOVpP+MyWBBJRQ2i0NqHit/qcBX
	 VSzsvPi0sDRbrE9J3wtfLgV23V7UUqmjgl/pv5JkKll+vXESPsWGCTLuVCjr9ieAfb
	 VC2gm6t8YHh6OfxNeo0Ldu2Q55JyQ43MM23j7Cjmc0ZF8JdZLn183AXvtbY8sI+t2/
	 /QBgzL9dAMtFg==
From: Lucas Tanure <lucas.tanure@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: Qu Wenruo <wqu@suse.com>,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Lucas Tanure <lucas.tanure@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 2/7] PCI: rockchip-dwc: Add rk3588 compatible line
Date: Fri, 10 Mar 2023 08:05:13 +0000
Message-Id: <20230310080518.78054-3-lucas.tanure@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230310080518.78054-1-lucas.tanure@collabora.com>
References: <20230310080518.78054-1-lucas.tanure@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_000545_081747_EB521601 
X-CRM114-Status: UNSURE (   9.89  )
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

RK3588 can use the same PCIe driver as rk3568

Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index c1e7653e508e..435b717e5bc6 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -354,6 +354,7 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 
 static const struct of_device_id rockchip_pcie_of_match[] = {
 	{ .compatible = "rockchip,rk3568-pcie", },
+	{ .compatible = "rockchip,rk3588-pcie", },
 	{},
 };
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
