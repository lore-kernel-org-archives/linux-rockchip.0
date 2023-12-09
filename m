Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60BDAC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Dec 2023 10:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pafB68g4EA9tCCdT/4JcxJTE18suM6aS0ZtVSB7e2K8=; b=LScNb7mrmVTnsJ
	FiibpFtXT3Igb44LNxxJGm6LpJIicushBth4h6ej1LkKni1IUjmIyUBV9QqqUZEkjuCDTnQdCby77
	0FKqXvcW3C748/Sr1bQ1cJ1ceHPHftLriCTu6q6vbSoA1vtWpdAZYhGj7UHXQjz9gXNWwVAGGhLpL
	z4bFhTd5uqrAT0kRbdLZTszNcuk64wK1xcbVZs3gyG2jYhIWFJI24uTRktr+JkunpIl3HNAFA3l1m
	3m2hQpZ9MxVuDoStbrrgGDMpqfPLjfhECrlYKAx4OCmrJUX6INYSYnQb3KbSRRfA8ugP9kipC5+Is
	wsqdxFe98vHnfznQR3GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBujU-00HRdk-28;
	Sat, 09 Dec 2023 10:38:52 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBujS-00HRcK-0n;
	Sat, 09 Dec 2023 10:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=HGd4c
	FTAiQEuNSI2aid0XiqDdvTFEBHEKRBU7n7UoEQ=; b=im0hwOoE1HK1LcfxceqcW
	/l2CnEbQE6K1P6UIG1BrGMzTLSTJHrYjG5gMHCeml+xrYtV/F0NRdn0D6KbAIcOS
	NI2DiJHO/6Ahz2lRSJmblgGYOwikteJOKvrSc2FDBg1NfH+YfjL8vtUp4e+AN+Cd
	3qLl8cY5XtlgoRFnVal1P4=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g1-2 (Coremail) with SMTP id _____wD3X0WYQ3RljL4TAw--.5892S2;
	Sat, 09 Dec 2023 18:38:19 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 4/5] dt-bindings: arm: rockchip: Add Cool Pi CM5 EVB
Date: Sat,  9 Dec 2023 18:38:15 +0800
Message-Id: <20231209103815.1568614-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231209103622.1568289-1-andyshrk@163.com>
References: <20231209103622.1568289-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3X0WYQ3RljL4TAw--.5892S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZrykXF1rGw1rJrWrtFyDtrb_yoW3CwcEka
	yxZrn5CF4rtFyY9w4j9a1xGFy5Jw47KF9ru3WUtF1DA34Dt393taykt34SkFyxur47urn3
	CF4fXryDuFnxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRAuc_UUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnABBXlghl5vSzwAAsr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231209_023850_716197_6CDF3F61 
X-CRM114-Status: UNSURE (   7.17  )
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

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5de9f3090be1..24dc6dfb8285 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -95,6 +95,11 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Cool Pi Compute Module 5(CM5) EVB
+        items:
+          - const: CoolPi CM5 EVB
+          - const: rockchip,rk3588
+
       - description: Cool Pi 4 Model B
         items:
           - const: CoolPi 4 Model B
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
