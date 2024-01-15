Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEC8EC3DA79
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jan 2024 14:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Akz0Rv1C2KFOlqeRisbqarPRDyAk+zVDpr5gSo3b+uQ=; b=BKdVTgfzyj6sY4
	Ixq8FQmPwUDhfUCM2WrB3WEgZ9sH3t0BU1E7cd8PUehhoTX6r2aq30GhRx0gkbaWzFjf8kH1OWsl+
	+lxdG6+J4plCEVUcMRwaj7xnkSpnGEJFVdZzfnXWDyMcGHitf8V1A6DwaQ4EzDrCByPiMpLzjcbZb
	0wBEpfAmvPj4N0ZZCE828ScV9xSd1PV/up8Yg1OkKsPzuYb82UWmKusNvX0rCRJIOt9L4aT+FdTkt
	as8dQMlPHA2fftsbb3Nhf5o7gt/Fl6CJjFLNKdEdbR8xHVEFLJlMQRtxiNsXQn4i9odEDSAfPKHhT
	Ptxb3FUQwmEWIKTs3Bgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPOLp-009JPO-1W;
	Mon, 15 Jan 2024 14:54:09 +0000
Received: from pv50p00im-ztdg10021901.me.com ([17.58.6.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPOLn-009JMa-0F
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jan 2024 14:54:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kyuhyuk.kr; s=sig1;
	t=1705330433; bh=2+fJNK0tDVBz4TCLJ97mC6ABjRsY+gTG6ZoZy4vbqaw=;
	h=From:To:Subject:Date:Message-Id:MIME-Version;
	b=o0uB9/0fHpuxFGWEyCG906GLotIw53+8nd+k1lnBr8tFnBaPLjIB1W7kPQqA5TKY8
	 k8N2kqGiRAqQnzWw525lDfkeiDeeGTpP80NADBGV7c3+FCYbh7/+uOW9pZ5qO0yp6T
	 cBtDFXOmxK5aK+5CETeFGqVZ96htgaVU9OxyxRXNjxo0+5V8g9CgNi7DxJQ9e0kqGr
	 ZhFQLw00e2p3JOTrSIO2vuGvdi0Tj1H7ZMMGwKSv0KU2rKFcGPakQsUpplAPztWoAU
	 O3IIsDshanl8pHdQoDjALPtl+Wf6aSksesCzQECX5ybQHF3WeNgUPF1BMUmePZdgAG
	 6GZTEg77tIu0w==
Received: from KyuDevelop.. (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-ztdg10021901.me.com (Postfix) with ESMTPSA id 0E7428148E;
	Mon, 15 Jan 2024 14:53:47 +0000 (UTC)
From: KyuHyuk Lee <lee@kyuhyuk.kr>
To: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Ondrej Jirman <megi@xff.cz>,
	Andy Yan <andyshrk@163.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	KyuHyuk Lee <lee@kyuhyuk.kr>
Subject: [PATCH] dt-bindings: rockchip: Fix Hardkernel ODROID-M1 board bindings
Date: Mon, 15 Jan 2024 23:51:42 +0900
Message-Id: <20240115145142.6292-1-lee@kyuhyuk.kr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-GUID: niry3WWL1W0m_DapRYWwFycyjk25WHMD
X-Proofpoint-ORIG-GUID: niry3WWL1W0m_DapRYWwFycyjk25WHMD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-15_09,2024-01-15_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1030 mlxlogscore=690
 phishscore=0 malwarescore=0 adultscore=0 mlxscore=0 suspectscore=0
 spamscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2401150109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_065407_130939_4F5B6CE5 
X-CRM114-Status: UNSURE (   8.97  )
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

The vendor in ODROID-M1 is hardkernel, but it was incorrectly written
as rockchip. Fixed the vendor prefix correctly.

Signed-off-by: KyuHyuk Lee <lee@kyuhyuk.kr>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5cf5cbef2cf5..869abf6bcfe6 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -563,7 +563,7 @@ properties:
 
       - description: Hardkernel Odroid M1
         items:
-          - const: rockchip,rk3568-odroid-m1
+          - const: hardkernel,rk3568-odroid-m1
           - const: rockchip,rk3568
 
       - description: Hugsun X99 TV Box
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
