Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06F5FC10DCE
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Dec 2023 08:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNZoTu4ZuJLT9zcYO3KU1VB8M+wLhZj/seHeIQ9j/hw=; b=T8TmN//bPS+CMP
	BeXz3XTouTmg7KFdValxZNiKWszYdTz0Kq4OEKXngUCsvMzOCCYvTM+eZn6/58TrnmjfE/9xIXMTx
	kFEnTD3igr2dT9GeC2NfeLDa+LsTTpgHp0FLkWKzeRcmfPRo+9QJI8/SLz51PGwZbS1yPRQbVphJm
	lk6KHxo/C1JhOJn7WJMkhC/o5y7LV2wHbpPkvg9bY3FtBGF34PWWkq1RF48U5yTYnyQpYw9J2/FSp
	bodrcsVOgc7eOdiHN4WYiqjwgD4HNrIoysytABAlivOOaBpBNE1728xxF5/Oz9KyIgnyWnYULQm/O
	D0DQ1caP3FhisBnFD7bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCEpg-0019y1-1V;
	Sun, 10 Dec 2023 08:06:36 +0000
Received: from m12.mail.163.com ([220.181.12.214])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCEpc-0019x9-2H;
	Sun, 10 Dec 2023 08:06:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=hsURR
	Csi3ZJB+D8uP6Qosmz8YCyjjg+sAMkIV/4imaE=; b=M38EuGw/ZilvDg3b8ucPc
	oBztIJ1/G1TOHY3g5+CPUNy11yJOZDKjZGTTwXoK2RyQ+4JKvOrEjXvnTgpHPQ9l
	RyxwrIBWbgcSK7KweFqpr5rJg/8d6gIv3IbNf7HOJgwvFibhDnw1T5/78nTXMTQE
	Bu0Q3jVqujRizSDqWjp+Sg=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-2 (Coremail) with SMTP id _____wDn18ZycXVlDbACFQ--.57900S2;
	Sun, 10 Dec 2023 16:06:14 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 4/5] dt-bindings: arm: rockchip: Add Cool Pi CM5 EVB
Date: Sun, 10 Dec 2023 16:06:07 +0800
Message-Id: <20231210080607.1667517-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231210080313.1667013-1-andyshrk@163.com>
References: <20231210080313.1667013-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDn18ZycXVlDbACFQ--.57900S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZrykXF17KF48trWfWr1kAFb_yoWfWFgEka
	yxZwn5CF4FqF9093Wjva18GFy5Jw17KFn7C3W5tF1DA3s8tws3Kaykt34SkFyxuF17urn3
	CF4rWrWDuFsxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRAuc_UUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAFCXmVOA3fvqAABss
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231210_000633_124004_37CABD52 
X-CRM114-Status: UNSURE (   7.20  )
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

Add Cool Pi CM5 EVB, a board powered by RK3588

Signed-off-by: Andy Yan <andyshrk@163.com>

---

Changes in v2:
- change board compatible from "CoolPi CM5 EVB" to "coolpi,pi-cm5-evb"

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 11d03035f3db..4da83bbd642a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -95,6 +95,11 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Cool Pi Compute Module 5(CM5) EVB
+        items:
+          - const: coolpi,pi-cm5-evb
+          - const: rockchip,rk3588
+
       - description: Cool Pi 4 Model B
         items:
           - const: coolpi,pi-4b
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
