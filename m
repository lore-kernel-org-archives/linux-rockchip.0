Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86AC1C4706C
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jan 2024 17:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=80UxNEdi/MzMiQfGYJlagvjiy8C+k65MNGoBarE8kW0=; b=4xASDsgrk+yqA2
	+bSuRYy5WSbQL2NNH+WvO8KGZf62WHOnc+Eqcg38OrDGvBTi2QiI0TL6laOCXxj63+PoylEreXkL1
	fR2hgKR5Hd4aOpJMzVzDARIrGba6RRdOqCyNLK+zqQCtuFhbzXYtCQvWAL4crfdeu/154yN5XMI7R
	eLL3sB76E82/NdVzW3puhtATq02fyEbthxzrKKAtzNH5l2m59+hoLojoOre1NOrifqGr/lryZFw7A
	D3iTUqKn4EoW9wtNctomtARhqSaoCc/Cihzu6xYpfRjDgnBBi9OfPHwR6oPN23T4y7GfPKsOVj7S6
	mTanA7PzkIfEameVyQvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOhob-005S7S-0c;
	Sat, 13 Jan 2024 17:29:01 +0000
Received: from pv50p00im-ztdg10021901.me.com ([17.58.6.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOhoX-005S6j-2e
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Jan 2024 17:28:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kyuhyuk.kr; s=sig1;
	t=1705166936; bh=Ncm/r4hpmcrpUhX1fSR5itLc4xrV7NoGJc5rt7JL7Tk=;
	h=From:To:Subject:Date:Message-Id:MIME-Version;
	b=AETQMjxvQQErbY/lyVVbUU9dD1xPLM3nvimfEzzmbmeH6FLrS1lOzpI6foZeUMm76
	 0zpgHM0NKLBKwi5k3kY790IdIBAne+Ot/mHhAHFOCTr5KkVqu+pdz1+muGiP9x3tLN
	 dnxwNFbF0halDD5Hkex4vr2AOvzA8O/k7J9m+AJZ7qS1TznxA6tBeV5tfBWbrQ2L2F
	 ucmMAgC7NQANWVL7ab3pDjCxjmGDyE3ZiFZhSyWAxojmZCf5+PEiOgHF02tOE90NJ0
	 8t8Gua0FNFhBgkiYchSpcjH4ZzxGOXuRpW2Vkfo1KNCN8+WhoNzOIZLy/Q9jnu4uFn
	 ecItlGyztNdPg==
Received: from KyuDevelop.. (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-ztdg10021901.me.com (Postfix) with ESMTPSA id C3CC9813EB;
	Sat, 13 Jan 2024 17:28:52 +0000 (UTC)
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
Subject: [PATCH v2] dt-bindings: rockchip: Add Hardkernel ODROID-M1S board
Date: Sun, 14 Jan 2024 02:21:03 +0900
Message-Id: <20240113172102.6890-1-lee@kyuhyuk.kr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: s5LNHj3FkFfaIArGgtvgU_W7ExD_8Rdg
X-Proofpoint-GUID: s5LNHj3FkFfaIArGgtvgU_W7ExD_8Rdg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-13_07,2024-01-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0
 mlxlogscore=735 mlxscore=0 adultscore=0 suspectscore=0 clxscore=1030
 bulkscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2401130147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_092857_883363_CF3D97F0 
X-CRM114-Status: UNSURE (   7.03  )
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
index 5cf5cbef2cf5..9a65f7269a27 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -566,6 +566,11 @@ properties:
           - const: rockchip,rk3568-odroid-m1
           - const: rockchip,rk3568
 
+      - description: Hardkernel Odroid M1S
+        items:
+          - const: hardkernel,rk3566-odroid-m1s
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
