Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75BF8C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Dec 2023 10:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOmIDwypC6vcVnaxQL6OAAqToOoxAxDfooR5IZqgsys=; b=3NpOitWVCsidE0
	Sqf2HWUVyndcq+VUcJrQ7FlB+qbX+iSne2KYiRPfnISCnkWQgHn1UU2SZVZv5No3O9iPBVGLamU+M
	Ui3p4csYv7ufJjhUlvm1iTY6tZhvgNyBOzjcPelQYC1shgG4/LWsUEQtbQVQ5pRhXv3NHXXLMkPcL
	N06JjwtbOfhLe94wiWAqrmPmd1M5Jxj4W6DRne6Ga89ItO2o7DMSaok60/TgfqEMmT0cCaQvLalY1
	DT0Q+fYu2VHd7sFvymq8ramHvNCqB1iGJKfxQEtRCDlLzwB3ezs0LUUH5lqJHCugk1HFnrixnEyji
	JMBXMPtN2p3dosLeZ6/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBuiY-00HRSA-0e;
	Sat, 09 Dec 2023 10:37:54 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBuiU-00HRRe-2Q;
	Sat, 09 Dec 2023 10:37:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=Rf3vs
	65ynLSbUzan0E9POY8SvySKXEyiB71xbKcoac0=; b=OTBghk1+BZU148oqFaH8/
	n7y+fBN891ivnhM5lFK3p1gB+OgmaBWrc0Shz7sxY18PjbvjXr5hwEd8zuKyV9IZ
	5tHdoeZRJ65PlYRSIZwu5vgrNaTWg9/bNyh4941Ln//lC1rkD8ywFo0qK79osR2G
	+e4q3Gj8meR/Pho6uxnwX4=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g1-2 (Coremail) with SMTP id _____wD3_0BUQ3RlqKYTAw--.5835S2;
	Sat, 09 Dec 2023 18:37:11 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 1/5] dt-bindings: vendor-prefixes: Add Cool Pi
Date: Sat,  9 Dec 2023 18:37:07 +0800
Message-Id: <20231209103707.1568381-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231209103622.1568289-1-andyshrk@163.com>
References: <20231209103622.1568289-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3_0BUQ3RlqKYTAw--.5835S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7JF13Jr15JFWUAryxtw48tFb_yoW3ZrXEva
	1xAw1DuFW5tF4Fgw4vyF4xG345A3WxCr97u3W5tayDCF17ArZxGa97t345Cw1xuF47uasx
	Crs3WrWDJrnrGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRA4SrUUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEhpBXmVOA2tCFwAAsB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231209_023751_132175_AEE06789 
X-CRM114-Status: UNSURE (   7.36  )
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

Add vendor prefix for Cool Pi(https://cool-pi.com/)

Signed-off-by: Andy Yan <andyshrk@163.com>

---

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 309b94c328c8..ddbba46fcbad 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -294,6 +294,8 @@ patternProperties:
     description: CompuLab Ltd.
   "^congatec,.*":
     description: congatec GmbH
+  "^coolpi,.*":
+    description: cool-pi.com
   "^coreriver,.*":
     description: CORERIVER Semiconductor Co.,Ltd.
   "^corpro,.*":
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
