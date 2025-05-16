Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80BBAC2D0CD
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 May 2025 01:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQSaCddinYp6+nvfThO1/d/6pVn2RzJTAG8b21R4hyQ=; b=cIlAkhK+HcjfiH
	Y/ifljVt0e8+x3XnL25OAK7JiIHqhVBpteuplvJqrZuhaYbWh+vBdz7qsjJ38P/VkHu2QH+mBJcvu
	QS/Tuufk4rwKXeGT4nUg26vWR+ImcgXxKaE7J0oewNjXF1x1vp7koYWWKJ+D7Ml8zoEWrsApg8oH+
	aShmdDKoyukEYlmd7usiJbTmfpRHgjnZ6HkQwd8wPny/UYczLK0/AQ0cjTjveLmOS7ByS90N+SCmr
	Uvp9LHt+72KjyUeDbTdJd4CFI6ckHSVhVRr0j0yHLr4Nrsbgtdmsjz9Z/dwCrV2j+D6b35vB1TypP
	Ww1UP8T0klrI6Vkbe8hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFjtI-00000002CqX-2nDn;
	Fri, 16 May 2025 01:29:36 +0000
Received: from smtpbgeu2.qq.com ([18.194.254.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFjp1-00000002CQt-3Rwf;
	Fri, 16 May 2025 01:25:16 +0000
X-QQ-mid: zesmtpgz7t1747358649t95b58a98
X-QQ-Originating-IP: 4D8IhlwuFVyJP6Ex4YEy1ES5/F5F7Qaqv9OJJU9+t60=
Received: from chainsx-ubuntu-server.lan ( [182.245.65.180])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 16 May 2025 09:24:08 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2142816274649629087
EX-QQ-RecipientCnt: 10
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org
Cc: i@chainsx.cn,
	conor+dt@kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	sfr@canb.auug.org.au,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Firefly ROC-RK3588S-PC
Date: Fri, 16 May 2025 09:24:01 +0800
Message-Id: <20250516012402.580468-2-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250516012402.580468-1-i@chainsx.cn>
References: <20250516012402.580468-1-i@chainsx.cn>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: MjqaYNLY8QZGRcV5QIH9KpfgqihH+GF1wHOKv4rGvgdLaDTLlEg3C77j
	d3uibKDe+t25Xzb4KQF4h8plU7XHEYUtapjLco/CMJwi59GeQLUHcViVetvs6xsMSujP3Re
	8Sc+GRefNqPieG6Tzw+wI1nce7/kbYQBHe+FjnE9aOlPIb5kz6T8CJ4sLS1L/l6uRmWsKcX
	xMKjGqJaqa3J/KEZ0lh4c2hwXCrKdMbhbXCuNi0ZHIR27tSWu+ZMN0kiMs8zhvWtpDt6+yN
	fpMHUoGslYZ1hE/HZIz349HTZw6IuEY2vQOuBhfAUNXGqFEN0FT/ntnkYb262DXmML3vAgx
	6UMRmgSpELMKqkM1rAvNKchRx/BtmKdmuDIOS/Qwsu3oDPeo6lixIsYshxPEBtKvKNMh7xh
	lzb5fpwn5cIPTb5RDVMePJRBE6LqdWyTfHhIvX02V/EmpXBFrPCSDmrCoHRpKKDLiIxyJ0j
	mmkb85Y3SH6SZ4z/6AHbs9rT5zdqA8ey6NyEKiQWpWuwwPixVREJlUbcUTHYoFtmA6aiiDi
	ygAkcotb3fEZRtTs/AG3VbfweqPuTC4az2G3V/3GnegdF/3Y7O7lWNeeZ18VRXyRcQ5ymEz
	czCFs1Bi83fRBvZDMYOKRDo2ccTWHFOwwYKDavwXrDeTJZXnuB5grtveyNGJ0bUjTRWm23F
	MtCg9JZdoJsg1Exk4ySfpIsNT10Fs9zstXN9meHB3kZKqC9L+EHwiAHNZCIinWssM+WdrdE
	2987VDUwh1mgljfcpCkaoKu1LHJI/BVaBcDsz8hVDWq36ZQmBe9cJF+QCqvsuoICDRyIqJc
	TkZxijoDjuVhmRnYIrPOBANWBW1saXgBVF87Y1frh1Mijau6ZVuANBtVaVJjkzTnVpnsc8J
	Z4F/zSWtLX5hN2Gk3AHSwQTJEnoKLTHbMjp1xdiyndzAHT39ZsT97J3DggR14vzSoax1ZiK
	dvV/I54eXP94IvhpSXESDPAk4Nyk9McA2CiaBsvxA5gZXu6gi6xVK94Tg
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_182512_318167_60D68D14 
X-CRM114-Status: UNSURE (   7.62  )
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

This documents Firefly ROC-RK3588S-PC which is a SBC based on RK3588S SoC.

Link: https://wiki.t-firefly.com/en/Station-M3/index.html

Signed-off-by: Hsun Lai <i@chainsx.cn>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 115c3ca43..701d68aca 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -258,6 +258,11 @@ properties:
           - const: firefly,rk3566-roc-pc
           - const: rockchip,rk3566
 
+      - description: Firefly Station M3
+        items:
+          - const: firefly,rk3588s-roc-pc
+          - const: rockchip,rk3588s
+
       - description: Firefly Station P2
         items:
           - const: firefly,rk3568-roc-pc
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
