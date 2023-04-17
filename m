Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76FF3C77B70
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 09:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D2jJiTXzkwUbp4GWbdaDw5mpi0N7bXAyM4qggKqGrTE=; b=WoJdWlG0S9TELE
	QiQJkNF8gTl3IkXcmD82EfbQEulGBQGD1LRp+SXlrjGrmwetwTxSNlOUgHNgCb83e7SfQC29YvYBH
	9bbmMDbgC5tXmcphMyVr+/zT+2Pe/Nxy1zKv79Rrjq5rvePBdJqp32+ewjj2ihG1EFIlZaM/MWiSu
	OScQisXXHrPad98fd8d6SZyWMyA1f1kHjfxv2+furzPCI9BqL25QGFElVU1zMiWjaKYA/tsQTwzAQ
	87uxmQj4HVy8VKusnXV6W6GRFuukIpB5e1vUiWPvgrFX4PWcuCa0quQmokSr36fbRwxXykfVi703E
	TW65nPgnuXqp++D/n8tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poL8k-00FXEm-0C;
	Mon, 17 Apr 2023 09:27:14 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poL8b-00FX3q-05;
	Mon, 17 Apr 2023 09:27:06 +0000
Received: by mail-ej1-x634.google.com with SMTP id a5so5823450ejb.6;
        Mon, 17 Apr 2023 02:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681723624; x=1684315624;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n+j5o6fQJQAp9pw9pBLSNzanRfTudfjw+am50p7MN68=;
        b=A8x572u5E+uNqeMjdLTyUOpLHMn5BUr/ENipcSEmI93Ofwh9gCCbXoHv1BAWhUK4Fj
         Ay9mQaDk18LX7JPBlKEFMx+5tJipdDJ82ryrj0BycUdc8QW2aSAQZLRbb9sXCU6W2MFJ
         H7CbTwhlBniI7h1kEwjFlvyZR7aYLQReiEVk+w22YJvFP/z2OGELZuySeG6G9NC2ORv5
         ewBMVRuske96Pt2q3KewsOHxn8BCsJw4j0N+9ySrLNYkbK21WE7QjaUUvjB+FNIYVK56
         cAJzmwBuKuLs0fyZB/5l+6hMElblkxn5SSAqpNyhA4/TzzLA8h+K+Rtfxa9PIGIEimUI
         M6gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681723624; x=1684315624;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n+j5o6fQJQAp9pw9pBLSNzanRfTudfjw+am50p7MN68=;
        b=BVQIa4bs85QyMtwyhEOoQfrasAfMshtUPdye6WN1eObHEHLpklQfSjdDUONd3uLFod
         +0gqCzhox2kLfHaUiDNxgdQF8pzsfhxQyV5EMrrGCTIUESn1dnOElCHAxybLIP1qSrEo
         aWF5P9hIQeMb3lPwtWDWsB1YKkAwROKI3ZTb/DVyOW92Ao9tS27/tk2BXKMj49QH4a8/
         dbJxpkRhIUeNGo4sGNChw46quEhY1n+VAMakqg5QCAAKZNlU/K7hVZ9Kve5BXu348npt
         wbdNP2F1PDwMeb93cAyt/pR0rYZ9V9DQjlADaRZfvYs1C8X1jmkKQ0VwalIiCNjuENtG
         8Rag==
X-Gm-Message-State: AAQBX9cHfDC9YOSbzS31C8uY3Kqk956zQb1sID/ErtWRS8wOaW+JMzxf
	A34u4H8EpeUOXP7TvPW/m8A=
X-Google-Smtp-Source: AKy350bwKnIAuymj6R4Bop2jFbqIKWbdAh6gr9vRU/9fNPpwQjpcs5wiS63Mdr7mmSWWrO5MOpW/8Q==
X-Received: by 2002:a17:906:244d:b0:94e:626e:c108 with SMTP id a13-20020a170906244d00b0094e626ec108mr6990751ejb.50.1681723624285;
        Mon, 17 Apr 2023 02:27:04 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id p20-20020a170906615400b0094aa087578csm6398596ejl.171.2023.04.17.02.27.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 02:27:04 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	stable@vger.kernel.org,
	Damien Le Moal <dlemoal@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Caleb Connolly <kc@postmarketos.org>,
	Brian Norris <briannorris@chromium.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Corentin Labbe <clabbe@baylibre.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 03/11] PCI: rockchip: Assert PCI Configuration Enable bit after probe
Date: Mon, 17 Apr 2023 11:26:21 +0200
Message-Id: <20230417092631.347976-4-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
References: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_022705_098892_35747BDC 
X-CRM114-Status: GOOD (  11.70  )
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

Assert PCI Configuration Enable bit after probe. When this bit is left to
0 in the endpoint mode, the RK3399 PCIe endpoint core will generate
configuration request retry status (CRS) messages back to the root complex.
Assert this bit after probe to allow the RK3399 PCIe endpoint core to reply
to configuration requests from the root complex.
This is documented in section 17.5.8.1.2 of the RK3399 TRM.

Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
Cc: stable@vger.kernel.org
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Tested-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 9b835377bd9e..4c84e403e155 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -623,6 +623,8 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 
 	ep->irq_pci_addr = ROCKCHIP_PCIE_EP_DUMMY_IRQ_ADDR;
 
+	rockchip_pcie_write(rockchip, PCIE_CLIENT_CONF_ENABLE, PCIE_CLIENT_CONFIG);
+
 	return 0;
 err_epc_mem_exit:
 	pci_epc_mem_exit(epc);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
