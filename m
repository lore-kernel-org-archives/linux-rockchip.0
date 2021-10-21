Return-Path: <SRS0=g3xy=PJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73DC0C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Oct 2021 15:17:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43EA861052
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Oct 2021 15:17:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 43EA861052
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOVSrVTxCKJ0BxyP8yhWliZRhi95tWQKe515HcbGhmY=; b=Tdvz0XIB3CWrwa
	RtlGy1n634MRXZkQYWUxpjxnmeSG6vegerfdwQ6WtyMybvtzlLhjsOtLXkstA/RTGfigwbhR11a2S
	KStRlQTxnz6vfbvrGE4Sx78K+z4cJKxuN2ILJUfGBdZzGfp7qNVRBeg3GHv5yVEuCJF5Xo0QdBJXY
	CQluCQ4tPuX8Gjyhz7jp7wqdzDm1t97i6yVH5VFXaKudkNn8zgS03XSKxyiz/Ua9acjLlw7IgMuG5
	OWWP/xVVYkCWxHUX9R8omclgh9RdHTv3HEPaxGIgMZSbJKuSapqUe323KK6wiLcFP9/u7DiSHHAxM
	t8qNVSOHP8B6WAuzf+Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdZp7-0083FF-HG; Thu, 21 Oct 2021 15:17:41 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdZko-0080yH-8E; Thu, 21 Oct 2021 15:13:15 +0000
Received: by mail-pl1-x635.google.com with SMTP id t21so632313plr.6;
 Thu, 21 Oct 2021 08:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g4G4Yffk64HxtbjZzw9/E8PSnsLTvUujtQvSwE3J4gU=;
 b=cI4maM6sHC3cIMldIjQc1WksuleNIofwFqWYF4hgi1mSUPjEGy/WmXoWahcRKKe5+w
 j+zLwnck9MFzmr8MftgklxRZ5wNxIbu4G2AheKg9ZMv2lHgNNhGgL2J7UsV3l6gjZExb
 H4tZgM8wyBorCpeRi921+Tm3u0WVTydBr3Tj3cAhZ9aNPzvoqZ4hpLqS+KH5vxfSS8kl
 RuDF/0hlWT9G4JzVK0afVRra+EpY2rFrGAa9crTmNU2ssX8sWEbik9C86qDFbaKzhp+l
 Qiuu1E0eKf6ZEerz3y53kIBw8RH87UqQ0r1zBn0XyLQryf6q11P3qfumh997IU+rjQxH
 8n1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g4G4Yffk64HxtbjZzw9/E8PSnsLTvUujtQvSwE3J4gU=;
 b=TbvFPqtk/F4o6VMvJ52QYOZShut5M8dXVHZSZi/ihDnOdQdcGJGJB/jeLS8wD8NXyo
 NiCCMMn7U+UHeJ9Ukk76z2Y0G/U9uxxFOMYLPmcRcj2VAh1n7PGS4FbdyJ1P1x0D+4dB
 oZ5Ch3RxHeIBoB0zB7SF3o0g4RUoQ1n866GkYPHhQ4n1HNPSkFVOUgNWGoklFcjTxqsZ
 kZB2H1EQ84wR05SCL671jqfKdm86Z8TsyPlOxd9vrZbilbNfTntImB26P7/5nvEwXCmv
 iAx3uZkd2DqJ5FFOLKHaA6QgzHNvxMUpAzebj/dGfWk8WgjS98vyfN5RIGWTZcR7Z9Sx
 dlPg==
X-Gm-Message-State: AOAM530I3P6TRh/CDt9hN5X28BLbUL9rNO9yt4+u0m+bqattZRRO4s97
 db5AA3oEiioqvXVPS/2nOwr3zqz3RmBY7+N0
X-Google-Smtp-Source: ABdhPJwuN72upSJVb5RV31HWJ0Rk/DS/k3MWELCcfxWrH5dP6+GQCb3WOGhj7YB/ramfc8/eTUFdtQ==
X-Received: by 2002:a17:90b:1a87:: with SMTP id
 ng7mr7478114pjb.69.1634829192977; 
 Thu, 21 Oct 2021 08:13:12 -0700 (PDT)
Received: from localhost.localdomain ([2406:7400:63:29a4:d874:a949:6890:f95f])
 by smtp.gmail.com with ESMTPSA id
 c9sm5508027pgq.58.2021.10.21.08.13.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 08:13:12 -0700 (PDT)
From: Naveen Naidu <naveennaidu479@gmail.com>
To: bhelgaas@google.com
Cc: Naveen Naidu <naveennaidu479@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org (open list:PCIE DRIVER FOR ROCKCHIP),
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support)
Subject: [PATCH v3 15/25] PCI: rockchip: Remove redundant error fabrication
 when device read fails
Date: Thu, 21 Oct 2021 20:37:40 +0530
Message-Id: <59113f443210c0c4d9d7696b22274c21ec2b7276.1634825082.git.naveennaidu479@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634825082.git.naveennaidu479@gmail.com>
References: <cover.1634825082.git.naveennaidu479@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_081314_351926_DA4AA763 
X-CRM114-Status: GOOD (  13.44  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

An MMIO read from a PCI device that doesn't exist or doesn't respond
causes a PCI error. There's no real data to return to satisfy the
CPU read, so most hardware fabricates ~0 data.

The host controller drivers sets the error response values (~0) and
returns an error when faulty hardware read occurs. But the error
response value (~0) is already being set in PCI_OP_READ and
PCI_USER_READ_CONFIG whenever a read by host controller driver fails.

Thus, it's no longer necessary for the host controller drivers to
fabricate any error response.

This helps unify PCI error response checking and make error check
consistent and easier to find.

Signed-off-by: Naveen Naidu <naveennaidu479@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index c52316d0bfd2..45a28880f322 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -221,10 +221,8 @@ static int rockchip_pcie_rd_conf(struct pci_bus *bus, u32 devfn, int where,
 {
 	struct rockchip_pcie *rockchip = bus->sysdata;
 
-	if (!rockchip_pcie_valid_device(rockchip, bus, PCI_SLOT(devfn))) {
-		*val = 0xffffffff;
+	if (!rockchip_pcie_valid_device(rockchip, bus, PCI_SLOT(devfn)))
 		return PCIBIOS_DEVICE_NOT_FOUND;
-	}
 
 	if (pci_is_root_bus(bus))
 		return rockchip_pcie_rd_own_conf(rockchip, where, size, val);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
