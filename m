Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5BAAC5B543
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Jun 2025 16:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P5ASdCG9Ok9RKjf+7ZKG4Ke0aSfkdJeq1UhJG7q177s=; b=SxlAxRwO7MUIAQ
	wPcf/UlE+e5g+zXiqR4ABmvxYdphcZiSax/N91QIkOAWlMYKYoWWcU3GydcT8tfZdZ6N6tk0ycB1v
	Osv7mIJQDB2RoViDcGbD3MPqnRdVfKTOKEI5uMzPbpkii1Mfdfb5wjag2eIi7PGbegh2HS+yPDf+T
	XzNP2Zlek+fGlwKA5NpohDzNLqZJ2BZacLVizHZaiCqq/hiQKBUTw8/ZDH+XllSfjginsWAdeiX9W
	uHmM7bH4zRl7KEEq+1lySBtJ/ufzQoWZCfX6iErMJj9mAKKDiUN3hk68jIqMxUtFO4+NV6zXVqC1d
	HHPg/z3VQE/vZc2JCSxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNw4R-00000001qgB-17ap;
	Sat, 07 Jun 2025 16:06:59 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNw06-00000001qAV-043x;
	Sat, 07 Jun 2025 16:02:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=eo
	Av3IDLdY0ltTR+dHrxsqkIT8E3OgEA8g+uP4y5wzc=; b=CPi7pqzNAmNJauEeUy
	aY0Z52nHnDiOSG8xQV6M0rJfqgiMSf2Aj988kc0YnUaiw5OuZSoscnPtFvDBMnyq
	meNIq3bEirDFo0MFdhcS9WMwyTbSmbI8ygwvsZco2sx2ThTwsV6Y2RC2yTjcsDH5
	mWdH3kkwjyquOcXRlHGkOrKBg=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g1-2 (Coremail) with SMTP id _____wBnk_V6YkRoJ9qHGg--.28203S2;
	Sun, 08 Jun 2025 00:02:03 +0800 (CST)
From: Hans Zhang <18255117159@163.com>
To: shawn.lin@rock-chips.com,
	lpieralisi@kernel.org,
	kw@linux.com,
	bhelgaas@google.com,
	heiko@sntech.de,
	mani@kernel.org
Cc: robh@kernel.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Hans Zhang <18255117159@163.com>
Subject: [PATCH v3 0/3] Fix interrupt log message
Date: Sun,  8 Jun 2025 00:01:58 +0800
Message-Id: <20250607160201.807043-1-18255117159@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: _____wBnk_V6YkRoJ9qHGg--.28203S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7tw43JFy8ZryDCw4kJFyrJFb_yoW8Xry7pF
	9xG3ZFyr4DJr4Sy3WvkwsYk3W5Xan8JFWUGr12qw1fX3WavF10gr9IqF1rWryYgayvq3Wa
	vrWjyw15Gw1qvaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0pEuc_hUUUUU=
X-Originating-IP: [124.79.114.92]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/1tbiOgtlo2hEXNqC1QAAsK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_090230_428862_1A448CCB 
X-CRM114-Status: UNSURE (   8.86  )
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

Dear Maintainers,

Detailed descriptions of interrupts can be seen from RK3399 TRM doc.
I found two errors and cleaned up the driver by the way.

This patch series improves the logging accuracy and code cleanliness of
the Rockchip PCIe host controller driver:

Log Message Clarifications

Patch 1 fixes a misleading debug message for the PCIE_CORE_INT_UCR
interrupt, replacing a duplicated "malformed TLP" message with "Unexpected
Completion" to reflect the actual error condition.

Patch 2 corrects the terminology for non-fatal errors, renaming "no fatal
error" to "non fatal error interrupt received" to align with PCIe interrupt
semantics.

Code Cleanup

Patch 3 removes redundant header includes (e.g., unused clock/reset
headers) to streamline the driver and reduce build dependencies.

These changes enhance debug log reliability, eliminate ambiguity for
developers.

---
Changes for v3:
- Add Reviewed-by: Manivannan Sadhasivam <mani@kernel.org> (Mani's new email address.)

Changes for v2:
- Drop patch [v1 3/4].
- The other patches have not been modified.
---

Hans Zhang (3):
  PCI: rockchip-host: Fix "Unexpected Completion" log message
  PCI: rockchip-host: Correct non-fatal error log message
  PCI: rockchip-host: Remove unused header includes

 drivers/pci/controller/pcie-rockchip-host.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)


base-commit: ec7714e4947909190ffb3041a03311a975350fe0

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
