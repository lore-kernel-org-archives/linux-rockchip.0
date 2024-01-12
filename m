Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9F6FC4706C
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jan 2024 13:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h+aitSmdEHsL9DbN5m4I7QBov/5dFzcqp46OZ5ZfwN4=; b=d6d9LH+8tMqpFb
	xg4CBT8zShNhi3VWVx1dBtuIivHdiRloqYFFRMRF6BY+50q0EeIHmrHecDlo/sgM2t8VsS50+Ulra
	fc//ufBuktbkn8cPQHu1iBOt2SgpNH5vHIOYcRU2CTgd5o0A5NEYQFybI5TYnPVNRZjpHuLE1mjy2
	QmPQM5RmhlPiQ9M/PT8TCzK81z/vLUaLJznxD1V+iy/fVZzqvFcJP0tpIEXN+aRFDTsY9KucIZmk1
	vp2YZ/BfUi9SIKjCwv3GA4dlJZFraIBNE1L4xQBcG07lQqvVjHR/vMSM2HC9vBiFllIEE1K1jBWaO
	EAWYyS/ZlIJ89sDbPxRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOHqS-002x4c-1q;
	Fri, 12 Jan 2024 13:45:12 +0000
Received: from pv50p00im-ztdg10021901.me.com ([17.58.6.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOHqQ-002x2o-09
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jan 2024 13:45:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kyuhyuk.kr; s=sig1;
	t=1705067103; bh=hV9qahS+iLpFfTt/jCTDYwSpdiQY5P5vsdWDuLj9MLQ=;
	h=From:To:Subject:Date:Message-Id:MIME-Version;
	b=JdOrSWU8LKMGis1slhHmacEUzW9c1V06PwvhcQku07Nhny6Ausiv6DwWiVAKDu45l
	 gsMLvXXNNzHxVB+Zf8LcDgFRHzz8eSpu/8VtXH1by7iLpM52vO3Yw5L0boRXzB1bnM
	 eWr4MGbksIEMtrxHVebkGmwLbqpVtm9mfRS80S3csTkFjFNdjJ8aodbXHmgrlGsgEM
	 5aL0Y0gxLAVsNOTQIidkZEP96l6aALBhv0TiesYB/wExMBVFRzECwQ+/mBEVdkCG8l
	 e6cqr8JFUaDr0er2JZLcBJgT8nE83uJNSMECrv5RAE6CFBNysa2WCCa+tZmXMBNR/e
	 TnuS6x0rPtlTg==
Received: from KyuDevelop.. (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-ztdg10021901.me.com (Postfix) with ESMTPSA id A568781300;
	Fri, 12 Jan 2024 13:44:59 +0000 (UTC)
From: KyuHyuk Lee <lee@kyuhyuk.kr>
To: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Tianling Shen <cnsztl@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	KyuHyuk Lee <lee@kyuhyuk.kr>
Subject: [PATCH 1/2] dt-bindings: rockchip: Add Hardkernel ODROID-M1S board
Date: Fri, 12 Jan 2024 22:42:30 +0900
Message-Id: <20240112134230.28055-1-lee@kyuhyuk.kr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-GUID: o5eyssMOQI5Rn3uKiJiv6EYvTWZZTMXt
X-Proofpoint-ORIG-GUID: o5eyssMOQI5Rn3uKiJiv6EYvTWZZTMXt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-12_06,2024-01-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 spamscore=0
 malwarescore=0 clxscore=1030 suspectscore=0 bulkscore=0 adultscore=0
 mlxlogscore=800 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2401120108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_054510_113603_773ED350 
X-CRM114-Status: UNSURE (   7.68  )
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

Add device tree binding for Hardkernel ODROID-M1S board based on
RK3566 SoC.

Signed-off-by: KyuHyuk Lee <lee@kyuhyuk.kr>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5cf5cbef2cf5..cc37d2118131 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -566,6 +566,11 @@ properties:
           - const: rockchip,rk3568-odroid-m1
           - const: rockchip,rk3568
 
+      - description: Hardkernel Odroid M1S
+        items:
+          - const: rockchip,rk3566-odroid-m1s
+          - const: rockchip,rk3566
+
       - description: Hugsun X99 TV Box
         items:
           - const: hugsun,x99
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
