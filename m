Return-Path: <SRS0=wP8P=PD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD800C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 15:02:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A38FF611C3
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 15:02:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A38FF611C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOVSrVTxCKJ0BxyP8yhWliZRhi95tWQKe515HcbGhmY=; b=jvSKpZ23dIL//V
	ZCUyLmS5l7qem3YZfMaGGfyUQ+zuyoUk0wpjiqSs+mssLFRBqOY//3iCoxMjsgAOMGuKI9Bu3QqhT
	fntpnryOsVZ09vMl9FqgujexuaNYGvAYEgdikv6DpHSXfGlDW9UFtZUHZ5wzIMRSf6bSGSSSHBH4+
	TVO/h8ay0mPW4isSU8qQfr6AOc1JK25un4tSR9Onl5K2dL+4V0FSUwU834JPSyovDKjdeHOWkksvr
	s7P7ACD8aRw7sBD93wVl9BLewWoZ4puGZnrplpbWkYZ4v8dcmtZS/DtCzZThTm/FJSC/na+HL1qjl
	CZvSwASH/k5M9Tjlh8VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbOiZ-007mro-2X; Fri, 15 Oct 2021 15:01:55 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbOSm-007h7p-TX; Fri, 15 Oct 2021 14:45:38 +0000
Received: by mail-pj1-x102c.google.com with SMTP id
 pi19-20020a17090b1e5300b0019fdd3557d3so7407452pjb.5; 
 Fri, 15 Oct 2021 07:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g4G4Yffk64HxtbjZzw9/E8PSnsLTvUujtQvSwE3J4gU=;
 b=flHW2Jb/AbysBVvJNNr6JwH4MLrEHqIfdfTJWIOUpBUFJwLO86Ww3lJYUN7rYZqGJh
 I/lLA1GbwqNXEqeL89Z3FnLGzNne+/JrIebWPKmh9G+HFumicXJhgPMP/FcWxH3Qo12+
 Q0ZxbrKvgId5wRbJMk7X2tyZjOWKJ1dQkwD56X7y0ajeoKXdAStXPcstCBSbsF4aWum2
 zF22ZFS6E/jaZgCPFP68wJmWfS9nwNR3Mf74lov/0SXtOEeA6Pe3kS0PlgMvknpXbjei
 UoH4eIy6X67PmTd7h87bfKgIgkE3H+Tq1rJ5p5b5NVrQLGDERDaJut6pmY8fSOHCLf0a
 bQWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g4G4Yffk64HxtbjZzw9/E8PSnsLTvUujtQvSwE3J4gU=;
 b=QerRLU5AT/eW9A5uCZSStBC5BxvMtqTY9POdCGUjkIk1eFIGpBrttLyTKBBSTMRYqN
 9VC7hq8/mqGAuppfvZm8hQfO88QA+SVLBdbEIsKvNpYaHZE6k2wS21TbJ5fPJpf7HX+F
 VRMbqLRAp0JfaGLuyFxkxkiMZ/XqgCi1YWIOggLa6J52U3D3ZBauwzW4nSfet6cxI3+N
 kuCFpHV3nsWITknVNryqkwjuqWQRonHRrnSbWaOZVZnCVjhWTftnu5mHt7jDwf5UhR9m
 wZYqHNTBHAg7Qdlun68Ny1oHKQYjR+Jp+fOauGAZjLckg+Ma8gUrdfQc30t6bN1tnibh
 FuNQ==
X-Gm-Message-State: AOAM530TkR0ccv1bfPTYNgXE11u7PqItFsTjPuz2HVdE9MnsFTw9k/+e
 1mIrmddoJiWbdbw4HcqQoRY=
X-Google-Smtp-Source: ABdhPJzyBRhAH58hfG57hRWt1brI24x/g9MveoCJoOB1DDAWMEjJsf6dfeFJ3flcCuWG22yuJmFJEg==
X-Received: by 2002:a17:90b:38c6:: with SMTP id
 nn6mr13976286pjb.206.1634309134963; 
 Fri, 15 Oct 2021 07:45:34 -0700 (PDT)
Received: from localhost.localdomain ([2406:7400:63:4806:9a51:7f4b:9b5c:337a])
 by smtp.gmail.com with ESMTPSA id
 f18sm5293491pfa.60.2021.10.15.07.45.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 07:45:34 -0700 (PDT)
From: Naveen Naidu <naveennaidu479@gmail.com>
To: bhelgaas@google.com
Cc: Naveen Naidu <naveennaidu479@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org (open list:PCIE DRIVER FOR ROCKCHIP),
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support)
Subject: [PATCH v2 15/24] PCI: rockchip: Remove redundant error fabrication
 when device read fails
Date: Fri, 15 Oct 2021 20:08:56 +0530
Message-Id: <4fe27c1af8b43e87c2eaf31fced8015b81478c8f.1634306198.git.naveennaidu479@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634306198.git.naveennaidu479@gmail.com>
References: <cover.1634306198.git.naveennaidu479@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_074536_989962_E12CCC44 
X-CRM114-Status: GOOD (  13.09  )
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
