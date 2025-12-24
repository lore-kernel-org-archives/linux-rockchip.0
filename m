Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 633B7E7544E
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 10:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8ty/kmmF4t5kZ9W34WfJfOLdhnbDSq5jXchg7H2CW0c=; b=2mDJLjDHXjWgYk
	poLOJdjgTwtV87287DA5K7sFryDkF177A0AGhcuNy6b0VNQFWWjyJuWaP3MRImYYicEAttuHmMym+
	xhRHmoj2f2c3ouKHV/NNA2R4os3hhm81qEWu5AYpO3r3WYw4HMw3R8Fz3P8712B63GzkhT7FAlp0Y
	EeJZWBTWl7+nT7S5oA9zdJyhdW959Puxm4I0PpNt/f/EZqbn/rVQoDi9FJcAnL8+y/iTJ1cg4Zs5g
	8iywqIGr3iJqboIfimaV9qlu53GfRVTGxePugbzrdskAzg+S/FYGrbqDWEZwH1ndvf2Y60MqWEbMs
	4GbEEn7dBiQ2SXwwwxGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYLpV-0000000GgOT-1za5;
	Wed, 24 Dec 2025 10:10:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYLpS-0000000GgNM-2WJA
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 10:10:51 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO6eg281245990
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 10:10:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=XZ3FDxXMHarmPLEBVnXVNx
	8cfejAj3WmwsVhyYVYA0k=; b=d22GcvMTuW6GfT9ArSoF4tG0CzRXGxnSx86DNH
	qpN/YlIXHkr/1u9GD+8EEDrYdjI0BT2nRMBzL+32iQLHqzhF/z53+H6dpzZOq4M2
	7DfNzczJx+fiDZqE1tlgAUb+JaB/te4jY8d69ZGNHyJhS720MxUokVukXm3kXs3t
	zRmZz7YlqEZUR7g2jDlR6LdKmMYL1yufwIKLGV41nXpTq3lrrdAm61XSqSpWJ9+h
	KD/oMvD8QN0L+48UzpgSSMtzXFzVOk4JP+CwR8Bo/CkP61UCAQn/lW+vXwFrm+4C
	NloC+hKk4EdfjT4CNISwCtzOs3Oio+PmyErRsgzxvr2eWM3Q==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7u9cu7et-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 10:10:49 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34c48a76e75so12751774a91.1
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 02:10:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766571048; x=1767175848; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XZ3FDxXMHarmPLEBVnXVNx8cfejAj3WmwsVhyYVYA0k=;
        b=feCzqIjbGZFLkROTrc5P0avBkX2TyC4oTtkZTjK9C0pnZ35ElQF89A5D6symmXs4pM
         P5ANkzvXC095KxYuLA5Wmfn+4b7DB0lhs1nqmTmdWHe0tdTSika2am9ZPTBS8sw2Q6mc
         h8IA3ULMJ2UJr/yDMyKVedmw5ur2cjjx4S22K435ovRAum5b6ftpIcTh2shc6Zh0m13B
         0E4uzeS4Il3vwC0xVMoRJNhTx+qbMZl0v1bXYexjktCF4CubJZaJnn5nSTMKMayPKZoS
         h2ZYbYOqCjlPQHyzwiKx5kCdKnr+db5TtQLM3/110EXlKRChZu3FkuZ0JczvfaT9Iu9E
         CG+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766571048; x=1767175848;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XZ3FDxXMHarmPLEBVnXVNx8cfejAj3WmwsVhyYVYA0k=;
        b=iWZ48ZUOa9oF0Lv9CI7pEpLl4jSzRjzQ0pvMCNAR/9J/t0+EuTF3jn+BHUE/tYgFTF
         J3nbE4I7wxA0+4PDkWUpifOqwtGThVNwnRNGdHo8D+2oboH5NxxGMlWSjnKxc8qv2rP/
         y0iXnhzSJTE3rv/JN7YcuOhLCx/HyH2RELQQGyto44sv/rl4E/yTaejwPm/UWSg6s0FD
         iSDtPFWVX472YApC0FjeMR1rUgon8nqPG8h/3e/ZtNU8IJP7xqp9I5wHpXqkWe7BIVz5
         X9WFGqGXjiPvgfkpL+IOzJbRtqxY7olAdJaCiCYZsu+H5K94IzpRb3nIeh5REob3jfcp
         C5Gg==
X-Forwarded-Encrypted: i=1; AJvYcCV15EOvX3vFoTUlQhsPu5vdPMWebbYoX9yPXGVKv4ZLdYQFNmk6M/p97Z36ynouh3CUPwLtp7ne5zdiHJVf0A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxsh9gEFSWnXkky1d6p2Nw3UPKckWjXIeDqM5ceMk6Hh/slWB5Z
	Uau8sTMfHNtUVcIz9DudPMeXLFGXUntRF2z82pY8FRL4suOIoyE4ddWADV/B0w8e659A02r3eC5
	8B1R3p5MgnTFRYhdf7oOL7HuRP9eqG+Kr6CvKLQ7DhC50+vSiMKWXFCFwzwc6TcdqFLv9Rn0KIK
	3SaQATCQ2rYg==
X-Gm-Gg: AY/fxX5eb5Ko2nLYjja6f11uaGI1MgmxmwjflDbey+/AAvdDbstffAaTZvFaTFpXPB7
	5Imt3pMnFxl7iVHFMf1QSBqrE+KaK7U2oPlc2kotQ/C88aSgS+LGnRz61c+fSjuuevPy0MxS1aC
	gvimulufb8mqW00hYNYMTsn7h+3U5p2MCVKrrZ15KEJ3GUospklBSb9fc9gN1lXpdvSOr8l4qQ0
	+JH9ArD6u1BgeEJML6HjzfcdglX/zK3fIHmLK74xtrBOR+S/8gFHyFywzTxL8nWcw0ur7+zXL/I
	pq+HkWgRGW6sbeJE1Sk6sUxxFGHRnthcnctLn0EGfPkZ6XjEdU/J3d82PtkQJUtoUzvFxbhjLw5
	VQYGsSGINTNm4i2dI59vClr28hHJkyd0rDlLPwmPuW35aFKHpLz5Yr0Nh
X-Received: by 2002:a05:7022:f307:b0:11d:ef84:6cff with SMTP id a92af1059eb24-12172308947mr17530618c88.37.1766571048390;
        Wed, 24 Dec 2025 02:10:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHqAiL4jHSU7/9+MwgxQ3qP3nId9JEayrA1C8JJppmIis0sasuK6f1Hyw36MlCj9gYMjatsdA==
X-Received: by 2002:a05:7022:f307:b0:11d:ef84:6cff with SMTP id a92af1059eb24-12172308947mr17530605c88.37.1766571047809;
        Wed, 24 Dec 2025 02:10:47 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121724cfd95sm64523514c88.1.2025.12.24.02.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 02:10:47 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 02:10:46 -0800
Subject: [PATCH] PCI: dwc: Remove duplicate
 dw_pcie_ep_hide_ext_capability() function
MIME-Version: 1.0
Message-Id: <20251224-remove_dw_pcie_ep_hide_ext_capability-v1-1-4302c9cdc316@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIACW8S2kC/x2NwQqDMBAFf0X23IBJlEJ/pZRlTbb1QashEWsR/
 93Q0zCXmZ2KZmihW7NT1hUF81TFXhoKo0wvNYjVybWut851JutnXpXjl1OAsiYeESu3hYMkGfD
 G8jM+DmL79ireW6qtlPWJ7f+5P47jBBFpZ2p3AAAA
X-Change-ID: 20251224-remove_dw_pcie_ep_hide_ext_capability-3dba1507a331
To: Jingoo Han <jingoohan1@gmail.com>, Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Heiko Stuebner <heiko@sntech.de>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766571047; l=4607;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=Xnv/sBrBqHQV+BvV3+s0nYNYKZOsfD25aEwqAwM49rc=;
 b=buJx2QJGgffIcLDxa1NPfng5yROlUFJRA1KD//+D3k35OGdkRjY7fl+/aSQpupAMdmodeo8mk
 XUZ/mNu/OGhD5/2s4OrjIWfRFxaLN8TJIX8z3mhsq7r7326qt3Wd3GU
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: QDV6eOjtciOJQ_wTBwcRoio4ohjw0pbs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA4NyBTYWx0ZWRfXySdfeTu8FHuC
 WMxo4F1jwGelTn92YsfJqv8AwkdA61maM2LLxysKJEi6tS5eC9AsWEu1WTNhGWDsZ+a4j3a83d0
 qoUyke94a1PNk2wierbIR3VTMUBu0pelmQrEyMf/yce5wuRe/g1KHxunCsTM/CF5dc+j5Jwh0oT
 6iOxPOcGKQcVqAlXytEEocHDGQRbGRhcuOfqJ6dNwIzcR63eShUzUEEYI/K0pvRRBS7DCW2GSnG
 lyH1xInjZ97zqQpus65zqDOS4k+uokLP8tjNV+wBmOzF1F0nOMatY5CbA7xyKmg1xX3ciL92F96
 4wL/fqMkab21A46wi117Z84n8R3Xvoo3LhOAVIW0SpkwqCC/WF46DHNkmAkBTTZadJk5LDiff5v
 HrfOzvpIKDpFlr9IUc8NYLNQmStXLwbagxwsFvcMAJQRpFvdCOt96UpEQuO1tttdMQoV5xMXinQ
 tPZwoZS88G0z6fJc8Bw==
X-Authority-Analysis: v=2.4 cv=HsN72kTS c=1 sm=1 tr=0 ts=694bbc29 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Svf4W_lptdzYmPpfBLsA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: QDV6eOjtciOJQ_wTBwcRoio4ohjw0pbs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 clxscore=1011 adultscore=0 bulkscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_021050_754243_BA0E53E1 
X-CRM114-Status: GOOD (  14.06  )
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

Remove dw_pcie_ep_hide_ext_capability() and replace its usage with
dw_pcie_remove_ext_capability(). Both functions serve the same purpose
of hiding PCIe extended capabilities, but dw_pcie_remove_ext_capability()
provides a cleaner API that doesn't require the caller to specify the
previous capability ID.

Compile-tested only. Runtime testing on RK3588 hardware would be
appreciated.

Suggested-by: Niklas Cassel <cassel@kernel.org>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware-ep.c | 39 -------------------------
 drivers/pci/controller/dwc/pcie-designware.h    |  7 -----
 drivers/pci/controller/dwc/pcie-dw-rockchip.c   |  4 +--
 3 files changed, 1 insertion(+), 49 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
index 1195d401df19eafbab2fb267f5cda3c24ecdfbd1..cfd59899c7b85fd0dddc9c6ce6b9c9fed84ad7a3 100644
--- a/drivers/pci/controller/dwc/pcie-designware-ep.c
+++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
@@ -75,45 +75,6 @@ static u8 dw_pcie_ep_find_capability(struct dw_pcie_ep *ep, u8 func_no, u8 cap)
 				 cap, NULL, ep, func_no);
 }
 
-/**
- * dw_pcie_ep_hide_ext_capability - Hide a capability from the linked list
- * @pci: DWC PCI device
- * @prev_cap: Capability preceding the capability that should be hidden
- * @cap: Capability that should be hidden
- *
- * Return: 0 if success, errno otherwise.
- */
-int dw_pcie_ep_hide_ext_capability(struct dw_pcie *pci, u8 prev_cap, u8 cap)
-{
-	u16 prev_cap_offset, cap_offset;
-	u32 prev_cap_header, cap_header;
-
-	prev_cap_offset = dw_pcie_find_ext_capability(pci, prev_cap);
-	if (!prev_cap_offset)
-		return -EINVAL;
-
-	prev_cap_header = dw_pcie_readl_dbi(pci, prev_cap_offset);
-	cap_offset = PCI_EXT_CAP_NEXT(prev_cap_header);
-	cap_header = dw_pcie_readl_dbi(pci, cap_offset);
-
-	/* cap must immediately follow prev_cap. */
-	if (PCI_EXT_CAP_ID(cap_header) != cap)
-		return -EINVAL;
-
-	/* Clear next ptr. */
-	prev_cap_header &= ~GENMASK(31, 20);
-
-	/* Set next ptr to next ptr of cap. */
-	prev_cap_header |= cap_header & GENMASK(31, 20);
-
-	dw_pcie_dbi_ro_wr_en(pci);
-	dw_pcie_writel_dbi(pci, prev_cap_offset, prev_cap_header);
-	dw_pcie_dbi_ro_wr_dis(pci);
-
-	return 0;
-}
-EXPORT_SYMBOL_GPL(dw_pcie_ep_hide_ext_capability);
-
 static int dw_pcie_ep_write_header(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 				   struct pci_epf_header *hdr)
 {
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 3a81d46e60b00f7cb92d9634eba6708244bce976..c5fff03073ea3945a5c38b1626838c6a67d21c57 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -909,7 +909,6 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
 int dw_pcie_ep_raise_msix_irq_doorbell(struct dw_pcie_ep *ep, u8 func_no,
 				       u16 interrupt_num);
 void dw_pcie_ep_reset_bar(struct dw_pcie *pci, enum pci_barno bar);
-int dw_pcie_ep_hide_ext_capability(struct dw_pcie *pci, u8 prev_cap, u8 cap);
 struct dw_pcie_ep_func *
 dw_pcie_ep_get_func_from_ep(struct dw_pcie_ep *ep, u8 func_no);
 #else
@@ -967,12 +966,6 @@ static inline void dw_pcie_ep_reset_bar(struct dw_pcie *pci, enum pci_barno bar)
 {
 }
 
-static inline int dw_pcie_ep_hide_ext_capability(struct dw_pcie *pci,
-						 u8 prev_cap, u8 cap)
-{
-	return 0;
-}
-
 static inline struct dw_pcie_ep_func *
 dw_pcie_ep_get_func_from_ep(struct dw_pcie_ep *ep, u8 func_no)
 {
diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 352f513ebf0363ff0ec79fdd8d8b245eeb28474c..77c4e6a4ddead91fe12eb6c727e77350207ef5fa 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -347,9 +347,7 @@ static void rockchip_pcie_ep_hide_broken_ats_cap_rk3588(struct dw_pcie_ep *ep)
 	if (!of_device_is_compatible(dev->of_node, "rockchip,rk3588-pcie-ep"))
 		return;
 
-	if (dw_pcie_ep_hide_ext_capability(pci, PCI_EXT_CAP_ID_SECPCI,
-					   PCI_EXT_CAP_ID_ATS))
-		dev_err(dev, "failed to hide ATS capability\n");
+	dw_pcie_remove_ext_capability(pci, PCI_EXT_CAP_ID_ATS);
 }
 
 static void rockchip_pcie_ep_init(struct dw_pcie_ep *ep)

---
base-commit: 37781eb814e16c75abb78dec2f9412d2e4d88298
change-id: 20251224-remove_dw_pcie_ep_hide_ext_capability-3dba1507a331

Best regards,
-- 
Qiang Yu <qiang.yu@oss.qualcomm.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
