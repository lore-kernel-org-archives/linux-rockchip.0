Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DFFAC3ABB6
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 09:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScwFrVVEmcKGh2YPPjTRFSY/5/BZAfiNKInto1dJFKY=; b=2xZGVJ7CL7d1cS
	b6V+UMQGdTl4jNmIE703+DTS2AJwzLk59I7a62AKxGRZXz5uetW/vwS6wU7JDMU4WlP09a9M2tnIs
	wth/9W6me/tnVhLqGb6Lq9jmCygXWktXmi30aOcZeEnMaSQNIkm7uAuAxKW6r6j6RpdDIeSjbNnb6
	AdGoyCf9R/RlG2NVaglhihAfW6npR2f+dgeH42t+Ws6BbGbT4RccKcE3S1QOwm0vK1/hFupP/g3a/
	EuP37xWYJAtLt8VnkmuBs/qxnQX7uvZxgCG7J8UUmzorU/Jz31CK4KHnupjyVDorQGRQ3bmZYyAGX
	IOyxWSxR3ZUoR6/ZzViA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBsBa-00000006vw9-3r3d;
	Mon, 05 May 2025 09:32:30 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBs5o-00000006uop-0pQM;
	Mon, 05 May 2025 09:26:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id BADDDA4C762;
	Mon,  5 May 2025 09:21:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47554C4CEE4;
	Mon,  5 May 2025 09:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746437191;
	bh=/qLNq6Ah1zBhiF3Gu9j00ITANtVDvo/o2g4ubZb++T8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Oed7o53SNZOICzTHjIxx3lU/LvGYFJSyr3zk4Mm0uKsC58q/g6J4bYRrpUyCFOGky
	 u+Dsk4KFA95NJqhONAYYx9429ML72bWY3XEw0QbltdI4UVM4Yegq+o2wA8YydeLgmT
	 PN4UWCSHMFxhwBSKTva1sLQzRtARDcLKvqZz+Yj0b+D1ogZ68AJ9/NiOQj8BmKjZoG
	 1TfcqheXj8x3V/AM4O1BiBNsYtjfrdq/iwuUyfNmSe8KMjjdC7G5QVlfEbJGjgHxHa
	 qy257ZXQIk4i5u+Xb510UleDEuDktjrAbEovYSroIMFgdh70crsPfzauh+a0K9Qkwt
	 VF+ukSPwCUQcg==
From: Niklas Cassel <cassel@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Hans Zhang <18255117159@163.com>,
	Laszlo Fiat <laszlo.fiat@proton.me>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 3/4] PCI: dw-rockchip: Replace PERST sleep time with proper macro
Date: Mon,  5 May 2025 11:26:07 +0200
Message-ID: <20250505092603.286623-9-cassel@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250505092603.286623-6-cassel@kernel.org>
References: <20250505092603.286623-6-cassel@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=860; i=cassel@kernel.org; h=from:subject; bh=/qLNq6Ah1zBhiF3Gu9j00ITANtVDvo/o2g4ubZb++T8=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGDIkWnQcZa+xFjLu/Kpp9+rqJZkKjlOlyz3VuRq1jlY19 h2Nl7LqKGVhEONikBVTZPH94bK/uNt9ynHFOzYwc1iZQIYwcHEKwERq3Rj+WexRMlpU2ms6NWvn g09v5B4Ush9vir5ntYlLfFmOSOTT84wMT3+UBOZ533AROnHJTZ6L9/hCqffSYVGBzk9cbi04fPM GLwA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_022632_296295_7567B68F 
X-CRM114-Status: GOOD (  11.22  )
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

Replace the PERST sleep time with the proper macro (PCIE_T_PVPERL_MS).
No functional change.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index ed8e3dfe80e0..eb2931b39f7a 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -231,7 +231,7 @@ static int rockchip_pcie_start_link(struct dw_pcie *pci)
 	 * We need more extra time as before, rather than setting just
 	 * 100us as we don't know how long should the device need to reset.
 	 */
-	msleep(100);
+	msleep(PCIE_T_PVPERL_MS);
 	gpiod_set_value_cansleep(rockchip->rst_gpio, 1);
 
 	return 0;
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
