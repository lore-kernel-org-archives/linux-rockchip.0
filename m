Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACB3BC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 12:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AD8y9hxb9AYrVYcXcFjFgVjjw5xRJ9++SyDtY7PGZVw=; b=W429UW178hTvwV
	btHx1z4LwKhDsvCLO5Zb5PBmUbOHNID4tHb9sqrBt0D4FqBCJjQ4hwHFBQl11jX0CBUmqfZfFuv+u
	1nJy45sgp2Trseu9DXDTMeGw8yf9i+emTHG6eZGbejo3BJBJq4xN6Cv3bod14mkpmbM8WpiC33wSn
	Ggk4Bk9eQzkamXVdM2MXiAVUxUkCyWi5GWyhyancytlpVeVEh+UW85UT1Fd7h1o4u1cls4XKJfscC
	QRfF/AeuRL6ayYpCnpvhbDnqqNk8tn8HL4eywpt+ylC8Sj4TXeuSc3z7wQ8kMpVCOdT+HopiXOmQO
	a+sBnuxWiAhtCD0qHFPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD26I-00BiDe-12;
	Tue, 12 Dec 2023 12:43:02 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD26F-00BiBr-08;
	Tue, 12 Dec 2023 12:43:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=e9peD
	WR7QL1+BRJUfU0fLvjbdKGtIhqo6TIPfMq2gjE=; b=TfVn22Q4sVE0cZZYRY/qH
	Tkgqk2IVgovP0QJjfUhGhmPLJ53v+B2ZuZuCpPYYgoQjr5iigIU1i7pdZuOThK+/
	kKOqw4MJF2qzjVkUKkolNwhfSZHsHDVw2pkW8I560rLT6dMr1gZ+nZ0CbRTsw9r4
	dOANIWl3gDF/fHRXt+ebwg=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-3 (Coremail) with SMTP id _____wD3v70+VXhloaTiFQ--.18769S2;
	Tue, 12 Dec 2023 20:42:41 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	sre@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 2/5] dt-bindings: arm: rockchip: Add Cool Pi 4B
Date: Tue, 12 Dec 2023 20:42:37 +0800
Message-Id: <20231212124237.1897378-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231212124202.1897238-1-andyshrk@163.com>
References: <20231212124202.1897238-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3v70+VXhloaTiFQ--.18769S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrtw4xJw18urWUJr1DJr4xWFg_yoWDuFgEka
	4xZ3WruFyFvF909w4DAF48GryYkw47KF9rAF1rtF1DC3yDt39xta95t34SkFyxuF43urn3
	Crs5JryDGFnxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRAdb8UUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAFEXmVOA6bjOAAAsm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_044259_459429_51C4D5B8 
X-CRM114-Status: UNSURE (   8.01  )
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

Add Cool Pi 4B, a SBC powered by RK3588S

Signed-off-by: Andy Yan <andyshrk@163.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v2)

Changes in v2:
- change board compatible from "CoolPi 4 Model B" to "coolpi,pi-4b"

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5deb66a5c7d9..11d03035f3db 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -95,6 +95,11 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Cool Pi 4 Model B
+        items:
+          - const: coolpi,pi-4b
+          - const: rockchip,rk3588s
+
       - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
         items:
           - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
