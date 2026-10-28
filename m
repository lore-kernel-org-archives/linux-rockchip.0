Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6107060731C6
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 03:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KCSM17i2;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=163.com header.i=@163.com header.a=rsa-sha256 header.s=s110527 header.b=ntWlrT6R
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Gkmvy+195Lf3rvqitA8kmLWRP4KBAp85sR4W9FOfSlQ=; b=KCSM17i2KZgUEc2ZSmWbKMwnLq
	94095OuPxSU6wZNPixo44vKATSwAb9DSjnN0Z8GrwNI5hHcKABmQ3+a2HDtRA6KmZOQPbFDAAGfSw
	2+mMEdXkxmpEiRi+JJwzbx8sAbePJjtfcGhIYyCuxvT0iK3nnvF/ve2s0TPEcKhU0KAr1ligtwUji
	yPb4RL6emDdba/u1ouELVrbb9zcNbyxcDsiMClubP2fT0mmkcWXXRuUdnG371mULSAUndqUiNpD85
	W9BdeuKmIdISP+a5uKctBnkCjCz8YcCGzrlyzg/+7SytKYS7Uu9fDD8ldoue8BBmv5CdDoPjKUwFg
	3sQ2vXCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLu0y-000000069bu-3uQS;
	Wed, 28 Oct 2026 03:07:48 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLu0d-000000068m2-3LHa;
	Wed, 28 Oct 2026 03:07:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=tI
	bcK9QjGE9c4lpPc7mfj5ekNF6tijyVodhkpLjG8sQ=; b=ntWlrT6RoX39yXz/iz
	soOJfC3ZjqPIOY9BC7rCiihN+Sx0E8bdQeKbCipvfVhYucPlj5BKbE8uRXngQdxH
	VrPPc4aAqWYvJBuslL+Q9zmHFU1XaHFhpMbSljPOwF8e5hWPyNLK3RWGkwU0XW/k
	de8OUC/uSB085wBRFkveHKwKM=
Received: from Precision-7960.. (unknown [])
	by gzga-smtp-mtada-g1-3 (Coremail) with SMTP id _____wDnVwncZuFqLzE4DA--.33198S5;
	Wed, 28 Oct 2026 11:07:12 +0800 (CST)
From: Hans Zhang <18255117159@163.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	jingoohan1@gmail.com
Cc: imx@lists.linux.dev,
	linuxppc-dev@lists.ozlabs.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-tegra@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hans Zhang <18255117159@163.com>
Subject: [PATCH v5 11/16] PCI: dwc: qcom: Use cached PCIe capability offset
Date: Wed, 28 Oct 2026 11:06:47 +0800
Message-ID: <20261028030652.2917756-12-18255117159@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261028030652.2917756-1-18255117159@163.com>
References: <20261028030652.2917756-1-18255117159@163.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CM-TRANSID: _____wDnVwncZuFqLzE4DA--.33198S5
X-Coremail-Antispam: 1Uf129KBjvJXoWxZry3GrWfWr18CFW3ZFyxZrb_yoW5KFy5p3
	yYvrn0kF4UJrZ7WFn2yFZ3Xr1avrn8ArW7CayxK34aqFy3tryUGa1jyrySyFn3CFZ2kFy7
	Gr1Utr17Wan5Zr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0ziDPEhUUUUU=
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbC6wDkiGrhZuDG+wAA33
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_200728_396486_853F7B44 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -1.8 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	FROM_LOCAL_DIGITS,FROM_LOCAL_HEX,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,UNPARSEABLE_RELAY,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Convert the dw_pcie_find_capability(pci, PCI_CAP_ID_EXP) users in the
Qualcomm host driver to dw_pcie_get_pcie_cap():

  qcom_pcie_clear_aspm_l0s()
  qcom_pcie_set_slot_cap()
  qcom_pcie_post_init_2_3_3()
  qcom_pcie_post_init_2_9_0()
  qcom_pcie_link_up()
  qcom_pcie_icc_opp_update()

Note that the .post_init callbacks of struct qcom_pcie_ops run from
qcom_pcie_host_init() before qcom_pcie_clear_aspm_l0s(), so relying on
that function to populate the cache would have left the offset
uninitialized for them. Doing the lazy lookup inside each function
makes the ordering irrelevant: the capability is searched exactly where
the register is accessed, i.e. where the open coded
dw_pcie_find_capability() call used to be, and every one of these paths
runs after qcom_pcie_init_*() has enabled clocks, resets and power.

Signed-off-by: Hans Zhang <18255117159@163.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index d903f10211c23..dfd2d10414ec9 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -379,13 +379,13 @@ static int qcom_pcie_start_link(struct dw_pcie *pci)
 static void qcom_pcie_clear_aspm_l0s(struct dw_pcie *pci)
 {
 	struct qcom_pcie *pcie = to_qcom_pcie(pci);
-	u16 offset;
+	u8 offset;
 	u32 val;
 
 	if (!pcie->cfg->no_l0s)
 		return;
 
-	offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
+	offset = dw_pcie_get_pcie_cap(pci);
 
 	dw_pcie_dbi_ro_wr_en(pci);
 
@@ -398,7 +398,7 @@ static void qcom_pcie_clear_aspm_l0s(struct dw_pcie *pci)
 
 static void qcom_pcie_set_slot_cap(struct dw_pcie *pci)
 {
-	u16 offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
+	u8 offset = dw_pcie_get_pcie_cap(pci);
 	u32 val;
 
 	dw_pcie_dbi_ro_wr_en(pci);
@@ -998,7 +998,7 @@ static int qcom_pcie_init_2_3_3(struct qcom_pcie *pcie)
 static int qcom_pcie_post_init_2_3_3(struct qcom_pcie *pcie)
 {
 	struct dw_pcie *pci = pcie->pci;
-	u16 offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
+	u8 offset = dw_pcie_get_pcie_cap(pci);
 	u32 val;
 
 	/* Force PHY out of lowest power state */
@@ -1362,7 +1362,7 @@ static int qcom_pcie_init_2_9_0(struct qcom_pcie *pcie)
 static int qcom_pcie_post_init_2_9_0(struct qcom_pcie *pcie)
 {
 	struct dw_pcie *pci = pcie->pci;
-	u16 offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
+	u8 offset = dw_pcie_get_pcie_cap(pci);
 	u32 val;
 	int i;
 
@@ -1410,7 +1410,7 @@ static int qcom_pcie_post_init_2_9_0(struct qcom_pcie *pcie)
 
 static bool qcom_pcie_link_up(struct dw_pcie *pci)
 {
-	u16 offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
+	u8 offset = dw_pcie_get_pcie_cap(pci);
 	u16 val = readw(pci->dbi_base + offset + PCI_EXP_LNKSTA);
 
 	return val & PCI_EXP_LNKSTA_DLLLA;
@@ -1785,14 +1785,15 @@ static int qcom_pcie_icc_init(struct qcom_pcie *pcie)
 
 static void qcom_pcie_icc_opp_update(struct qcom_pcie *pcie)
 {
-	u32 offset, status, width, speed;
+	u8 offset;
+	u32 status, width, speed;
 	struct dw_pcie *pci = pcie->pci;
 	struct dev_pm_opp_key key = {};
 	unsigned long freq_kbps;
 	struct dev_pm_opp *opp;
 	int ret, freq_mbps;
 
-	offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
+	offset = dw_pcie_get_pcie_cap(pci);
 	status = readw(pci->dbi_base + offset + PCI_EXP_LNKSTA);
 
 	/* Only update constraints if link is up. */
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
