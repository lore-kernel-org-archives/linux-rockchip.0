Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF837C3DA49
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jul 2024 11:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4NU+FCb/HXTlEuHna1OTh5OFrJKvFhEcjGT3TK4ErKA=; b=UCMExmMhj5vxR6
	ah1mYokkHIqBq4TqD+hN6QZ7vcRFXedtwIik6ck9hRnbLNV7/yUHa/G30Ynkn8XjTQzvjmPziYnoP
	RJvk4nDMXXIpyif565U3Bq/siRD3FPrYod6NOQQFgbVQbuzxUJwsGP3iVp8elzSjjzeX6RMPvuRfK
	lb6n2rTuhZ2FqFDH7H5C+uPknsuugQ5l+QYTDR1yYyTlolYGjhQdL0ZC4rW1uRP9LZLV6gwLI6Tpg
	6ltS2bEK0bnXL27HUCVx+1xU12+WxHiMdqyxiCXo9phTR4tArHlX+cgavjzyuKtRE9pumjTcXyuC3
	O6kvoGagKX9tf5cqyEkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSxQA-00000004KQD-3vzW;
	Sun, 14 Jul 2024 11:29:38 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSxPq-00000004KLa-1wz2;
	Sun, 14 Jul 2024 11:29:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=kG1SH
	qIBXuf73aIQbp7aBOFRVf/G0bJieYKHxl/hC4g=; b=G0QnU7uWbYikGJUTGbLXT
	Gn8DS15UDGnOR3mCRgENm/cju/huqcHdD0wPLIOIYgE3sr721apADiQqcj/hNosv
	YWHrc2GTvTBkfd/LnBAe1+sEYLRJnZnkYr6V+oJ7o7piLPttdeJpG8RedNj5qZuD
	9ula+L7ZMZd/SSmexyDZPo=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g3-0 (Coremail) with SMTP id _____wD3v711tpNm6c94CQ--.57334S2;
	Sun, 14 Jul 2024 19:28:57 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: dsimic@manjaro.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Cool Pi GenBook
Date: Sun, 14 Jul 2024 19:28:50 +0800
Message-Id: <20240714112851.1048184-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wD3v711tpNm6c94CQ--.57334S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7XF13urWDZryDGF4kGFWrGrg_yoWfGrcEka
	4xZrWkGF1rtF1Y93Wjyay8GFy5Aw42kFn7A3W5JF1DAwn8JwsxtFWkt34SkFyxuF17urn3
	uF1rJrWDuFnxGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRR4lytUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqRocXmVOBfRQJAAAsf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240714_042918_915348_8108FFCE 
X-CRM114-Status: UNSURE (   7.43  )
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

Add Cool Pi GenBook, a laptop powered by RK3588

Cool Pi GenBook works with a mother board connect
with CM5

Signed-off-by: Andy Yan <andyshrk@163.com>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..e4f2ae9ec457 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -96,6 +96,14 @@ properties:
           - const: coolpi,pi-cm5
           - const: rockchip,rk3588
 
+      - description: Cool Pi GenBook
+        items:
+          - enum:
+              - coolpi,genbook
+          - const: coolpi,pi-cm5
+          - const: rockchip,rk3588
+
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
