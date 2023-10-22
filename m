Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49EE7CDB474
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Oct 2023 18:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iTmimQPRRXIHe+ZHLLTzCNXJ6yfLs49RT+eWj9oi4lk=; b=ArIjYOQtJ18ILD
	k8aKp7wJR9dlGNv9wjcEVOHsvVf0E3LHorNKaU4ajFOScuD/SpaDXOxyYszyv7nFH9F/s7x4oJlRG
	nLzmfgkZBvJyheaLThdrtFQCUvibnsc0GEtw/9DeF4V5MZhV+u0j2NW9NsCSR+NuJxbw8wQEyPBQe
	8p7UYEO+HzyNMPak/9ZK3fjJmxV9WNtbeWQvwSy1JOYO41y0VfX9UZJtWJid3rxLvXh0Xe6YIixp3
	1IadCIk9foUfK6HsemmZY0DoeUc17ioliBwpiyznek6gYgsUcaoLD+1R6kgAy/m9U3x5uWIM2WmUz
	pUvycUFjunc/oxxZjNWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qudYp-005pTM-2O;
	Sun, 22 Oct 2023 18:52:27 +0000
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qudYm-005pSp-2u;
	Sun, 22 Oct 2023 18:52:26 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39M5l3ks014815;
	Sun, 22 Oct 2023 18:52:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding;
 s=corp-2023-03-30; bh=Jzh9kcCOCuLXkmCPFQiRjaPF7/bwcwvIZks0MXPYD0Y=;
 b=hhoKf3J17yyUoSbXbL4gdVv1HhQxLckKZzgFFOY+Et2Ol4NQ1i0l583nUyRSmexkqenm
 ncjYemHLUP1vCLuWWt0s8Fb1EQ+f+/BUumMnZ5sdOwcu+YBuv0GsUC7bospsDi6bDWZg
 mLOYCF77MIRf9IXKFzUe1k59m/5j2HbwNZ9nbxlSA/KN/9kzUwICqJcnBnh1iZr0Sama
 +0Zvu7DbShS4uasBsaXSyrWEmQJzY9oMLqRuy92Wzv5cYqc9Uo1vVtpqAISPzp285WHs
 Zu/yDv1+6usRI64suAFVl8POFQp93pIZINOU/hcVfQhfTtdmPZbi0KrBIG4WdJpMVDuy Gw== 
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3tv76u1t0d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sun, 22 Oct 2023 18:52:15 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19) with ESMTP id 39MD2Mrr001659;
	Sun, 22 Oct 2023 18:52:14 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3tv539pv48-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sun, 22 Oct 2023 18:52:14 +0000
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 39MIqD72021252;
	Sun, 22 Oct 2023 18:52:13 GMT
Received: from localhost.localdomain (dhcp-10-175-52-84.vpn.oracle.com [10.175.52.84])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id 3tv539pv3f-1;
	Sun, 22 Oct 2023 18:52:12 +0000
From: Vegard Nossum <vegard.nossum@oracle.com>
To: Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vegard Nossum <vegard.nossum@oracle.com>,
        Johan Jonker <jbx6244@gmail.com>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH] dt-bindings: usb: rockchip,dwc3: fix reference to nonexistent file
Date: Sun, 22 Oct 2023 20:51:50 +0200
Message-Id: <20231022185150.919293-1-vegard.nossum@oracle.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-22_16,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxlogscore=999
 adultscore=0 bulkscore=0 suspectscore=0 mlxscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310220174
X-Proofpoint-GUID: m7DhFNR-LBY00qvShb2KrG1Pt5sZyFNZ
X-Proofpoint-ORIG-GUID: m7DhFNR-LBY00qvShb2KrG1Pt5sZyFNZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231022_115224_968573_9FE681CD 
X-CRM114-Status: GOOD (  15.74  )
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

This file was renamed but left a dangling reference. Fix it.

Fixes: 0f48b0ed356d ("dt-bindings: phy: rename phy-rockchip-inno-usb2.yaml")
Cc: Johan Jonker <jbx6244@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Vegard Nossum <vegard.nossum@oracle.com>
---
 Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
index 291844c8f3e1..c983dfe0f629 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
@@ -15,7 +15,7 @@ description:
   Phy documentation is provided in the following places.
 
   USB2.0 PHY
-  Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
+  Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
 
   Type-C PHY
   Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
