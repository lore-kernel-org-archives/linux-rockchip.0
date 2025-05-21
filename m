Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC34FC54ED1
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 May 2025 13:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F2LAYl5LsfrtIgs8bLSnyQWxLYZ9JTh+ToEGZJ3j6xk=; b=ojP7mR0Rd6jSPd
	8mw2+YhalqDwW8oJfXiOcso45NPO9B3qdT2dcFZ06HyYGRMescR+O2kU2HlC7G5QKa4neTD7AFE/7
	T/OTCLPgboleKmUDf4edzcwY9Z7Ay/ck4RtkmP2cBI+YXWAypw7JMV47skF7ag+J6mPo2ZxfksMYt
	THfQK5hqpHfT4mCR3aKhaP70ca4OEFl2SM6QrH3Toakurk5xcj2bjPXnmeu5P0ra3+deK/mML6q0V
	ByQcLh1Dnmx4rLOuCx/qEW5mjWMV7HxWIPqhW/J8vHw2NbC2XASjMgvqbJz+wXZPS1CPmvift8EX7
	jMc/mRseZlKPTL/zdDig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjmz-0000000FzIT-1tnQ;
	Wed, 21 May 2025 13:47:21 +0000
Received: from smtpbgbr1.qq.com ([54.207.19.206])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjET-0000000FtMK-2smS
	for linux-rockchip@lists.infradead.org;
	Wed, 21 May 2025 13:11:44 +0000
X-QQ-mid: esmtpgz16t1747833073t96ab1b52
X-QQ-Originating-IP: eJZV5Pq/27UhC6wbS5MVd9IwULhg6bRfY+vB2uhghy0=
Received: from chainsx-ubuntu-server.lan ( [116.249.112.84])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 21 May 2025 21:11:10 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16382578765588849597
EX-QQ-RecipientCnt: 16
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH v4 0/3] Add support for Sakura Pi RK3308B
Date: Wed, 21 May 2025 21:11:05 +0800
Message-Id: <20250521131108.5710-1-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: NbLKFbIf58WKJLsowGlccw++xJ0jWmihH0hHJ2pWLJMAh4lyqgcKpCIW
	Ux8uRet127EE3Z3XWUQBJOAV+u/5KHv2b2nNalcLINhC6Py2+UPx+Rzv7Ay21A3/rnTFqro
	GFZo16UCrdfh2+/AZmuSNVVGFIMf0FXSqgIYHjN18agbgMQzLRtpb+nSBIHDby3TCgCcoox
	XuBIGyPu3zdUddY0sySb72ViiWIEgxdNygwRNbWv7NX1R89ps/0nkBlphiAQBpzp8xaXufJ
	auLlwuuVV4uGi6WJ4s42dKwZBrMXug7hmzkuGEqdAlusS3HgkrZlzHH75cOZbZFxIfkhJLW
	9EVjfrJRg/Ea8Lw/X4jOPTUpPx4yhZYwCrda6K9makaqxu9Vnani2Lk2uYBCpGI9Pd7nd5o
	YYLBs3w9BoRTc6JGutIVhBpB+rJBocngZ8NYmrtAe12xIc/0QqyRw3WGUkMcOYZzTF5yybM
	r15+kl1uYLoDsUXYVq7qvqGqguwmzLwi9sj6/ob39v5Cm9TaYzF8M591Jirw5GKwN6IiIYg
	6TU/08iZGpOoK41o2b5zWL07AR8fuGIT/OEQnuICBMdga1uQ4+bYjM0xUbEp1DLS0DICsZ0
	rukC1sKk38z+TpRHMSNZiLJUto9sRGaaJfFJHsX9x7Ib9zISMXQHONlR3elcs8AH49Gcsl5
	TCG4RlBsVwR6G3wckMH3+O1sY2uLs/y21lP7EaJeuXVM5Vc7+jnYLFuXUX5/YzxJllhzmLM
	k4tT43ynl+vrYOFM8KZRwGuNdj+icuuNfbmnu/qLDa44zT0oHS+cJPV8F0Vo/AAgGFYbcaZ
	AqTpjJb4c9pQZGiTVVWs7B+m/tei4rotQjhd2fIGH7D28p+FfzO/PCvBexOcE9vpWaIcsTi
	FDY1X61fuosJnw8OmrxARSjgL8TzDJdHFLUKkUBQY2F8tmRkdht3d0dyHnNSl9XUCqv0pnM
	rlrHfUO5K21C26WTzzKO3xPM0ZwCmyzx47evi6dAk4dvwbXf6S9AP+3QDzEL0GUoJK/ctyO
	2BCZ++ww==
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_061142_538508_5AF18C2F 
X-CRM114-Status: UNSURE (   8.90  )
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
Cc: andrew@lunn.ch, inindev@gmail.com, heiko@sntech.de, jonas@kwiboo.se, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org, i@chainsx.cn, sfr@canb.auug.org.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This series add support for Sakura Pi RK3308B.

Info of device can be found at:
https://docs.sakurapi.org/article/sakurapi-rk3308b/introduce

Changes in v4:
- Fix vendor prefixes error (Krzysztof Kozlowski v2)

Changes in v3:
- Remove empty i2c controller (Heiko Stuebner, v1)
- Remove unused spi nodes (Heiko Stuebner, v1)
- Sort nodes alphabetically (Heiko Stuebner, v1)
- Put status as last property (Heiko Stuebner, v1)

Changes in v2:
- Update the names of the regulators (Heiko Stuebner, v1)

Changes in v1:
- Add support for Sakura Pi RK3308B
- Patch 2: Acked-by: Conor Dooley <conor.dooley@microchip.com>

Hsun Lai (3):
  dt-bindings: vendor-prefixes: Add SakuraPi prefix
  dt-bindings: arm: rockchip: Add Sakura Pi RK3308B
  arm64: dts: rockchip: add DTs for Sakura Pi RK3308B

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3308-sakurapi-rk3308b.dts  | 274 ++++++++++++++++++
 4 files changed, 282 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
