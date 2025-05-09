Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52FACC3ABBC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 18:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YP/Nt8ey9lG+5Ef987GShSuvVvAGEkIb1PWymCh3IqI=; b=fpJ9gAy1uo48SI
	MUpBggJKoQ6z7L4VuFPId5ff3GqFcU7Fro2Xa5SFXt9C9o1Lfc/Iicrc64btLyl7VPJLGVJ2M8wuX
	gSktnn41BXJ6AnSdbDUD5Ez2sZHcWbu4URFMVX8TlC2Q8X6MALjDtTY9/08DKbQ3BdH7d3hwGAYQm
	5oqJ2gewrJaFSyfMPs6fSXrlUkQ9Aw6dy+5Y8LbVI+o51GxxTeWiVTGeT/T5UO/3ph/d9dEH3cP6U
	rBKiKD1Bc+jGCqaZR+ANI0QdjQI5rXzR1YzLH3KKQM2/th4+TG30H5f366Pi66BM5nxdaFtNHPdzB
	vRnKw9iVKBcnrJoMP4Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDS2v-00000004Vvg-0syZ;
	Fri, 09 May 2025 18:02:05 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDQ4E-00000004B6v-1Gll;
	Fri, 09 May 2025 15:55:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=NV
	bpERAjIqWtGSniTRHflTs2M1hcr5AP4OxgREVbezc=; b=gOwPULunz7dFgKVusc
	NTBToAeQjm2TLdz9xQkUfL3q+1wORCm5YCQB96DO9lK5Vnuhu0W11zkBj4zI27rG
	rYUVn9IvTqYAJGs6ycZ/3Bl/bQFSmb+kdG1o2lGr/9HI3iadmKCpFoi55ooko9uc
	Mp83/02z03D202AEfAXhH9vLU=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g0-4 (Coremail) with SMTP id _____wCH+a9CJR5oqYT+AA--.23731S2;
	Fri, 09 May 2025 23:54:43 +0800 (CST)
From: Hans Zhang <18255117159@163.com>
To: shawn.lin@rock-chips.com,
	lpieralisi@kernel.org,
	kw@linux.com,
	bhelgaas@google.com,
	heiko@sntech.de,
	manivannan.sadhasivam@linaro.org
Cc: robh@kernel.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Hans Zhang <18255117159@163.com>
Subject: [PATCH 0/4] Fix interrupt log message
Date: Fri,  9 May 2025 23:53:58 +0800
Message-Id: <20250509155402.377923-1-18255117159@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: _____wCH+a9CJR5oqYT+AA--.23731S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZFW3Kw48KF1DGw1fAFW3Awb_yoWfXFX_Xa
	4fX3W7Gw48CasIy3y5X39rKr9xCwnFkr1UAFs0yF1DtFnrZrs5X3s5Z3y8uFyvqws0yF9a
	grnFqry0grn8GjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRZiSl7UUUUU==
X-Originating-IP: [124.79.128.52]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbBDx5Io2geIgCRigAAs1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_085518_673483_44D8146B 
X-CRM114-Status: UNSURE (   5.37  )
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

1. PCI: rockchip-host: Fix "Unexpected Completion" log message
2. PCI: rockchip-host: Correct non-fatal error log message
3. PCI: rockchip-host: Refactor IRQ handling with info arrays
4. PCI: rockchip-host: Remove unused header includes

---
Dear Maintainers,

Detailed descriptions of interrupts can be seen from RK3399 TRM doc.
I found two errors, optimized the code and cleaned up the driver by the way.
---

Hans Zhang (4):
  PCI: rockchip-host: Fix "Unexpected Completion" log message
  PCI: rockchip-host: Correct non-fatal error log message
  PCI: rockchip-host: Refactor IRQ handling with info arrays
  PCI: rockchip-host: Remove unused header includes

 drivers/pci/controller/pcie-rockchip-host.c | 119 ++++++++------------
 1 file changed, 48 insertions(+), 71 deletions(-)


base-commit: 01f95500a162fca88cefab9ed64ceded5afabc12
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
