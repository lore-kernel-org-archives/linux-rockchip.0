Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42AC0C83F1D
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 08:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UmEvCJMTl9s+21wxi5d77j+jesT6NiDL6hQYNRn+xKM=; b=EB7UrN8B/qqMfe
	kSrbWnFAaLioBM6USNO9PeQpcxPzbr/sKAP9E/e075Ntm548s4Zeu8lANVmI+TMnUlpoKkVdaiAAu
	EKvW3YbKv8PwtXaYO4GVfnFwVD4kBHisAKi6gZ+TtPz3RNp8DjUPyqZ8IZMn6f20qrOgrDakoXiRr
	6NkgwuaKRIzUFLBGoAfJhW8/vgZKzWKawPdMSuMPVXogSPiPwNDMR7Cu72uQMHKSwWHnYH87CQ0mo
	wn3Fw1naubctXLF7Mum1/HrUSB7xbC5vsWGqEAs19pDCJja5SnzYUStbZlrf0avxQRZ0dXa913jhW
	AlQ+183iqzaRf5hiaMoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubamD-00000004TNG-18NK;
	Tue, 15 Jul 2025 08:12:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubaah-00000004QvT-1egS
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Jul 2025 08:00:45 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F5c0L8011542
	for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 08:00:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D6ysnD/5iAXxosW1Gzuf3XgySRMmYSlmh1bTJIzJ3VY=; b=ZwZHT4u4Y9D5vKoY
	qVBb75HCNE2p/VMEbTcy8CWR+Qed8ESs1vEtbJzoSN2bqMyVm411H2IdHwiWRd5/
	1Fju0hiy6yk4y6VZM7BY+3Dn/FuEc0ygnKuNEeKmpSC5YDD/RFr87RgIz3Ds9/y5
	ZqyCfHDZREWn41SVsymlzgHQipQVzU+B7bLLZb3eJOYLQ5U5zAVnGOX15fwPqbVG
	Rbwq0fjYzZSDlWfgCYiuc+oc1l7Ae7Q2iWbnEmnUn4NIUu9b2/BvLG2iFIvLKuy7
	gqBlyQMKvMNNlIsswvzE6rGfogP+I5LSU72Ywtm08+fWFpG1YmBtBS+BRl9oZR3m
	0KSlTQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dyj418-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 08:00:42 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ab7fb9c2d3so9504321cf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 01:00:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752566441; x=1753171241;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D6ysnD/5iAXxosW1Gzuf3XgySRMmYSlmh1bTJIzJ3VY=;
        b=n921w0v0S87bkwdFdmMRe7EMjxwd8DPuDnT1vmlW/VkXCclazWJ9GahnW1BqAH2xOw
         5UxdQs/fshLNn+NuL5ZzCnuYau/jBYxdhDQFXsoRgMUln+wPQ2TvUf3Wut7Av+1fW+eH
         KN7mFVEKWJOnRg5FjvjcSznTfdir78MvDBN2xljNkAPmoZ33p2NEb0py5FFG5FWDhmvU
         Lzki7ThctW1c9krCkn1eHJoWxOS6/L1/jYigGZMZASoU+pUiv22B6LRzMEVSZsSiazdd
         yf38MpTHg+8AfBnzvLTcErGYyBQYTq/GurQ5l2kDkLfNsUs3UGCn9v43HkwOO7ywDBxj
         njmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXa5jowBoM8cS/0eh/7fe6MZ3tp1YQLpDj2GL5M7L1IOw45L1GlGEZ87hmnn+T0mdilIn6I/yh12Hh3ol8bTg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxAXvOOsGshn6JqN8Q/BcWN9C0lHkxi5+OCxEL8594dBVJb0n7l
	4QJQAc6SOeuxjMx65SuKp5rEA9hQoIjJgLLQZWPFu4695ZMUO5hMEUCgrOT9ITaMSY+6xv+FTiL
	t3R844PpfiKpmVeEWNsE8BY9aHOqeAaLcScoIS/SFPNH8Y3QnAHdcSiGLLPSSSd/E3Jh2+GjHOG
	0=
X-Gm-Gg: ASbGncvIeltT2jpXTn2RlpmlAvYvQo1EOAJFkcfsv+hkiq0EK/68rPRhxTbfKlqjnOl
	tujr+dtaCiHyCeWzBbMvAPmMv2gVtFbeKUgcieVNl/ISIbrmGVvqYgUH5wFK5UUTGK20XQQrKTH
	THLPOV6X7adZCiSocIrzwMsL23Sq1er5RI53xl+k13TmP/KwwpwoUGTAMAgLgyxTEUEKnW33sF6
	huT95YDnJRFXAI5KSii9/nzFPGqS0EZtzSonigQu8hMAPrp33zmhfxCbw3fY75u/9/R19Uv5aRt
	rX/Qx4D32Uv11S/9U6Jy2C0yN7nhpgNw8tM6PbVSsS37xA6JVdcLRRSNlmp+AIvPSu9sGw==
X-Received: by 2002:ac8:5993:0:b0:4ab:8692:40a2 with SMTP id d75a77b69052e-4ab86924470mr12172331cf.31.1752566440948;
        Tue, 15 Jul 2025 01:00:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkpGQtILhnEHERJ673OeN0FgBmv4MnAjC8XdRghEvGrglotm8k2pXupnP9yiLQxNXhGkIZjw==
X-Received: by 2002:ac8:5993:0:b0:4ab:8692:40a2 with SMTP id d75a77b69052e-4ab86924470mr12171501cf.31.1752566440143;
        Tue, 15 Jul 2025 01:00:40 -0700 (PDT)
Received: from [192.168.1.17] ([120.60.140.219])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ab3f1c9a2csm37792461cf.67.2025.07.15.01.00.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 01:00:39 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 13:29:21 +0530
Subject: [PATCH v5 4/4] PCI: dw-rockchip: Add support to reset Root Port
 upon link down event
MIME-Version: 1.0
Message-Id: <20250715-pci-port-reset-v5-4-26a5d278db40@oss.qualcomm.com>
References: <20250715-pci-port-reset-v5-0-26a5d278db40@oss.qualcomm.com>
In-Reply-To: <20250715-pci-port-reset-v5-0-26a5d278db40@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Mahesh J Salgaonkar <mahesh@linux.ibm.com>,
        Oliver O'Halloran <oohall@gmail.com>, Will Deacon <will@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Niklas Cassel <cassel@kernel.org>,
        Wilfred Mallawa <wilfred.mallawa@wdc.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        mani@kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6494;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=qm+3CMghWKFd+O3bZU1o020L8vQ/E6aH1MlFdMAO6mw=;
 b=kA0DAAoBVZ8R5v6RzvUByyZiAGh2CoGjTk+bNihPn5Ta/emfi4VuEHDCY9gUDJj0zK6HfintK
 YkBMwQAAQoAHRYhBGelQyqBSMvYpFgnl1WfEeb+kc71BQJodgqBAAoJEFWfEeb+kc71TAsH/067
 9cJ5IPFpzCBL732ut1hn/o6zTxDftn8tPHzgztjQdxXSL/O/w5NfTpJru1GYf1pYtBStG6Cs/9I
 z3nXGJa6TVESRE4U5Y8Pmijj1eat+KDW3uwmJYOtLMjaIZsze1kEd/hyXr+bv/i3aoCTErIV6+2
 D+aHYAyvi/TcCiwVWkYYShMq0LRVqA3oVmYg6Hato/apcL3mkGEFe1pPZufa4qQg5pSLK//xvjJ
 ZnqdxrYYwKSz3h+16BVyCJAakAW7RbQEeJy+wd/SknKSkWBujr8gGp+zYZTX3xXbuwXuRh+PwXt
 iUjSv4gTmOayuOnyW+CuWYHdCwWO74tmRxmO6xY=
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-Proofpoint-ORIG-GUID: BvcG-FWMyovPS5TkuoDiduE8nj7lBgNV
X-Authority-Analysis: v=2.4 cv=RtXFLDmK c=1 sm=1 tr=0 ts=68760aaa cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=HOswsyiB/7FCIMMjk980kA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=JF9118EUAAAA:8 a=EUspDBNiAAAA:8
 a=egBNXRPT3pT-oCRg218A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=xVlTc564ipvMDusKsbsT:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDA3MiBTYWx0ZWRfX0RLKh9nsNDCY
 IrZ02EZne2oSInIK2YqZuVm65B5rk0HzCawc3t+FdqE5Naw5f2Y6ot4W/r48lkEbjAoCEi+N5GU
 eYSc3fied2cRg0G3ViGw7ytkXDD6KW6ctNzMbDsgXh2fovLUc9Yipvq55gcESb0NTGQVMNBpm7z
 MPftgBfgaAcHVeIpQ6RE6qYbQPWcPAQ/681zqUUfegzfXk8OwpERv29OKzI3OL2CvbpwZ4fbqF6
 PWIn3PQiMwQdXNS+KJkhttwwN0tafx01k6eJO+wBlF+M+PPaMTw5U/6kqM8x377nUjf7dF02NPM
 FydsOFgzo2mhvZp8iAm1mZmfwUKwvSPukUoerte5Aq+iVGTRZa7V7PtJ6dpAheVCowRcYnkLALu
 T/Cg49zoneiCSjSzM9QHacKVkJkVss5BQMhbsWY0jXl4EChe5G/q7RtYfAh9TmI/8NroD4mO
X-Proofpoint-GUID: BvcG-FWMyovPS5TkuoDiduE8nj7lBgNV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 mlxlogscore=999
 priorityscore=1501 phishscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_010043_450442_EA19DE95 
X-CRM114-Status: GOOD (  26.16  )
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

From: Wilfred Mallawa <wilfred.mallawa@wdc.com>

The PCIe link may go down in cases like firmware crashes or unstable
connections. When this occurs, the PCIe Root Port must be reset to restore
the functionality. However, the current driver lacks link down handling,
forcing users to reboot the system to recover.

This patch implements the `reset_root_port` callback for link down handling
for Rockchip DWC PCIe host controller. In which, the RC is reset,
reconfigured and link training initiated to recover from the link down
event.

This also by extension fixes issues with sysfs initiated bus resets. In
that, currently, when a sysfs initiated bus reset is issued, the endpoint
device is non-functional after (may link up with downgraded link status).
With the link down handling support, a sysfs initiated bus reset works as
intended. Testing conducted on a ROCK5B board with an M.2 NVMe drive.

Signed-off-by: Wilfred Mallawa <wilfred.mallawa@wdc.com>
[mani: rebased on top of the new version of reset_root_port series]
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/Kconfig            |  1 +
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 91 ++++++++++++++++++++++++++-
 2 files changed, 90 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
index ce04ee6fbd99cbcce5d2f3a75ebd72a17070b7b7..01e2650242ccc345bdd0568d08219527f00ed395 100644
--- a/drivers/pci/controller/dwc/Kconfig
+++ b/drivers/pci/controller/dwc/Kconfig
@@ -348,6 +348,7 @@ config PCIE_ROCKCHIP_DW_HOST
 	depends on OF
 	select PCIE_DW_HOST
 	select PCIE_ROCKCHIP_DW
+	select PCI_HOST_COMMON
 	help
 	  Enables support for the DesignWare PCIe controller in the
 	  Rockchip SoC (except RK3399) to work in host mode.
diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 93171a3928794915ad1e8c03c017ce0afc1f9169..8f1a34c5fbabaacbd9624048ca4c4f8dc29f2171 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -23,6 +23,7 @@
 #include <linux/reset.h>
 
 #include "../../pci.h"
+#include "../pci-host-common.h"
 #include "pcie-designware.h"
 
 /*
@@ -84,6 +85,9 @@ struct rockchip_pcie_of_data {
 	const struct pci_epc_features *epc_features;
 };
 
+static int rockchip_pcie_rc_reset_root_port(struct pci_host_bridge *bridge,
+				       struct pci_dev *pdev);
+
 static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip, u32 reg)
 {
 	return readl_relaxed(rockchip->apb_base + reg);
@@ -257,6 +261,7 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 					 rockchip);
 
 	rockchip_pcie_enable_l0s(pci);
+	pp->bridge->reset_root_port = rockchip_pcie_rc_reset_root_port;
 
 	return 0;
 }
@@ -448,6 +453,7 @@ static irqreturn_t rockchip_pcie_rc_sys_irq_thread(int irq, void *arg)
 	struct dw_pcie *pci = &rockchip->pci;
 	struct dw_pcie_rp *pp = &pci->pp;
 	struct device *dev = pci->dev;
+	struct pci_dev *port;
 	u32 reg;
 
 	reg = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_STATUS_MISC);
@@ -456,6 +462,14 @@ static irqreturn_t rockchip_pcie_rc_sys_irq_thread(int irq, void *arg)
 	dev_dbg(dev, "PCIE_CLIENT_INTR_STATUS_MISC: %#x\n", reg);
 	dev_dbg(dev, "LTSSM_STATUS: %#x\n", rockchip_pcie_get_ltssm(rockchip));
 
+	if (reg & PCIE_LINK_REQ_RST_NOT_INT) {
+		dev_dbg(dev, "hot reset or link-down reset\n");
+		for_each_pci_bridge(port, pp->bridge->bus) {
+			if (pci_pcie_type(port) == PCI_EXP_TYPE_ROOT_PORT)
+				pci_host_handle_link_down(port);
+		}
+	}
+
 	if (reg & PCIE_RDLH_LINK_UP_CHGED) {
 		if (rockchip_pcie_link_up(pci)) {
 			dev_dbg(dev, "Received Link up event. Starting enumeration!\n");
@@ -537,8 +551,8 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
 		return ret;
 	}
 
-	/* unmask DLL up/down indicator */
-	val = HIWORD_UPDATE(PCIE_RDLH_LINK_UP_CHGED, 0);
+	/* unmask DLL up/down indicator and hot reset/link-down reset irq */
+	val = HIWORD_UPDATE(PCIE_RDLH_LINK_UP_CHGED | PCIE_LINK_REQ_RST_NOT_INT, 0);
 	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_INTR_MASK_MISC);
 
 	return ret;
@@ -689,6 +703,79 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	return ret;
 }
 
+static int rockchip_pcie_rc_reset_root_port(struct pci_host_bridge *bridge,
+					    struct pci_dev *pdev)
+{
+	struct pci_bus *bus = bridge->bus;
+	struct dw_pcie_rp *pp = bus->sysdata;
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+	struct device *dev = rockchip->pci.dev;
+	u32 val;
+	int ret;
+
+	dw_pcie_stop_link(pci);
+	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
+	rockchip_pcie_phy_deinit(rockchip);
+
+	ret = reset_control_assert(rockchip->rst);
+	if (ret)
+		return ret;
+
+	ret = rockchip_pcie_phy_init(rockchip);
+	if (ret)
+		goto disable_regulator;
+
+	ret = reset_control_deassert(rockchip->rst);
+	if (ret)
+		goto deinit_phy;
+
+	ret = rockchip_pcie_clk_init(rockchip);
+	if (ret)
+		goto deinit_phy;
+
+	ret = pp->ops->init(pp);
+	if (ret) {
+		dev_err(dev, "Host init failed: %d\n", ret);
+		goto deinit_clk;
+	}
+
+	/* LTSSM enable control mode */
+	val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
+
+	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_RC_MODE, PCIE_CLIENT_GENERAL_CON);
+
+	ret = dw_pcie_setup_rc(pp);
+	if (ret) {
+		dev_err(dev, "Failed to setup RC: %d\n", ret);
+		goto deinit_clk;
+	}
+
+	/* unmask DLL up/down indicator and hot reset/link-down reset irq */
+	val = HIWORD_UPDATE(PCIE_RDLH_LINK_UP_CHGED | PCIE_LINK_REQ_RST_NOT_INT, 0);
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_INTR_MASK_MISC);
+
+	ret = dw_pcie_start_link(pci);
+	if (ret)
+		goto deinit_clk;
+
+	/* Ignore errors, the link may come up later */
+	dw_pcie_wait_for_link(pci);
+	dev_dbg(dev, "Root Port reset completed\n");
+	return ret;
+
+deinit_clk:
+	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
+deinit_phy:
+	rockchip_pcie_phy_deinit(rockchip);
+disable_regulator:
+	if (rockchip->vpcie3v3)
+		regulator_disable(rockchip->vpcie3v3);
+
+	return ret;
+}
+
 static const struct rockchip_pcie_of_data rockchip_pcie_rc_of_data_rk3568 = {
 	.mode = DW_PCIE_RC_TYPE,
 };

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
