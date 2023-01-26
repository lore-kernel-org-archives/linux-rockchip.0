Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 705CCC54E94
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 13:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Twse/3F2XhE3XqGKvpckAEVvlCdQ3qzxLZs+PDluLa4=; b=Tm0ABml8P5pZA9
	tECjrrAhlNm9O75auWHron6rvb/y73ssvlRGm9aQPLgVich5T/Vl3Ndxi0Vdd8cdevDLxQN7Cx/c9
	D2+1MSq+i7D0c8/Nzk5TNXYJpJ+xJerr6pl6tErWC7YF7FpBu7FPlQXdEhOuMoiVR5yhCSfGhWxlz
	0C46EG9OQiSM7VFqteQsSYiJRVEGpyxN8fK7HQfJB5WxXKeueh5fPv/71klbKmYnU/lXHeDZ3B2MA
	QynBQ2GFuAufsOrmUdPV5VCmJHEY76H+6wjnWeZHJOi5RoVSWlgV5+3InGGHRAPuhCkUfBRvu14x+
	R/GTnRTlNp9/yhQO20JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2hd-00B2yR-HF; Thu, 26 Jan 2023 13:54:09 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2g9-00B2Ft-52; Thu, 26 Jan 2023 13:52:38 +0000
Received: by mail-ed1-x52c.google.com with SMTP id y19so1925572edc.2;
        Thu, 26 Jan 2023 05:52:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wE/gMDijDW0z+zONtHRFIciOBfI81+SEAmw/rLX0XT4=;
        b=Ei+bJmKoSFHKEbtMrrEjKYOvPcjlMvW21xOQgvOGWST6I00v82nJyz1r2os2zJIiJG
         /ZkSarHLuN8n8OSSw6tdKIqKctFZpMaZSXKlCAnmeMAEM+5lhHI1i6PH0K9YpPqrCi4G
         Jjku0k66ap2HhAwS2kAmG5e6LG4nyFmexKzmzF82+6tMgZrrwqPCjj/suObAelV3Tz74
         WJsKY+TVR92DLJuetvK+ckB9bXjzlItj6OH2QigAxcO06zqnMz7cvOOp8cUtTIinn+bZ
         4Yg/xoJeYBVDQ4mUbyaO0wqtZ3/n/XrUpP1GvsrCIlkELw39zq+QJN3Q0p1Lqdtr+Ops
         yABw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wE/gMDijDW0z+zONtHRFIciOBfI81+SEAmw/rLX0XT4=;
        b=PkG6EZRUq4ZyWvMmm+gNKJ5QxXN1kiEKBZFnQrFN8Oc2G97HF7sx85bfgzLwvC3d+/
         HWBuDI1JClz4Pm6WMWuE2LzdqEqgvinlEbPrVLx1c9Oifllc6QitPbGOgzvZ/R5trsxu
         Tp3oUkndSl/aqm5h9tyhcIHlp3DjoPtU0CGACQoXkEf6WSR7DGc4V/CwALbGm5G1ggeI
         bCtgWLvqwxaHsbQmKTMzH3z6V7kb1qmlXDQ2at3KVXnXftlrhi9JKRBpOaRZE3FJINXV
         ckNo0M+mpznGMLxdSwORA1+Ul2vTBPFms1YtZOpMn9fdhiKl8v3C/AOwCzYnYNPDex/X
         DsRg==
X-Gm-Message-State: AFqh2kqaH4aJ8aRQR7AVYg6EB32g5x+7RXIFnKOCHPjjM1yUJXWte0ym
	eN4Woyzwl1hAk6fLV4h8Dlo=
X-Google-Smtp-Source: AMrXdXs33PzmPBoFqWPLd4uj8sVAAycwH3KoReHsSnb0Nw5EI1IOW6rQmTBWUcYsRyKTRddeTN9XKw==
X-Received: by 2002:a05:6402:25cb:b0:49e:6bf1:5399 with SMTP id x11-20020a05640225cb00b0049e6bf15399mr31854592edb.8.1674741153155;
        Thu, 26 Jan 2023 05:52:33 -0800 (PST)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id t15-20020a508d4f000000b004a0e2fe619esm591611edt.39.2023.01.26.05.52.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:52:32 -0800 (PST)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	wenrui.li@rock-chips.com,
	rick.wertenbroek@heig-vd.ch,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jani Nikula <jani.nikula@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mikko Kovanen <mikko.kovanen@aavamobile.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: [PATCH 3/8] PCI: rockchip: Fixed endpoint controller Configuration Request Retry Status
Date: Thu, 26 Jan 2023 14:50:43 +0100
Message-Id: <20230126135049.708524-4-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_055237_232953_5CCFA789 
X-CRM114-Status: GOOD (  12.80  )
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

The endpoint was left in the config mode after probe, this would mean the
core would send configuration requestion retry status (CRS) messages back
to the root complex. The conf_en bit should be asserted after probe. This
is documented in section 17.5.8.1.2 of the RK3399 TRM.

Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 9b835377b..4c84e403e 100644
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
