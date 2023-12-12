Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53DC9C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 12:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5+9biPeorlqsTYFWDDCu5I+4fWsO64a5VkY0PDyhu0=; b=Ns2TgRBX5ams08
	CdWn7FqMtBSQnI/2EUNyKHtaXo9DEqKqJ/lhLQ40NP1mX9RYfGSQvC8ELeAmfXy8hSx425FwvYmU8
	ourJqMhOzM/CuN8vnqOH1+5FtFhdc7nYGIxXzDZ7sFQxFq1Z3Sd+j8M9nyqPsRhtSPgYPFxkg2/3s
	5S1i53tMIoQBlTAQK2pmITK4Z7Ndc1XQ+ZGEmu9/Xzi0UdEDWETsiWpLLqR8UuOofSFea+RUEvQQ1
	CM9UIGyDYU9p6ZBVNm/dWOTXIs4DFSlcaDnNZhbWRKkmJZ0aY09jPwscMApgGWtwqUL6PisvvuFTS
	OSDYagTaObHypq1fERWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD264-00Bi99-3C;
	Tue, 12 Dec 2023 12:42:49 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD260-00Bi6r-21;
	Tue, 12 Dec 2023 12:42:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=nNmAy
	t5R/FqSzYRKUKMJgqk+9Njbt4i+66funeH8Iu4=; b=GalmYYAIamECCi0CEbJUG
	e/S4lOTB5L07QAHGXfCtkgPhWb0Pmg8sKIW7ntL8FBuvr9yGZG5hkDGM9bX/Irom
	BAX1Al7JhiPj8pcvjjJyxpTv9ufBMxgtREP/HSpOHoDPL/kexqlW1T14hNBILZIn
	B6l09uSXpZfEC1Vd1Ms1f4=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g0-4 (Coremail) with SMTP id _____wD3H6gwVXhloBDrBA--.14812S2;
	Tue, 12 Dec 2023 20:42:27 +0800 (CST)
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
Subject: [PATCH v4 1/5] dt-bindings: vendor-prefixes: Add Cool Pi
Date: Tue, 12 Dec 2023 20:42:23 +0800
Message-Id: <20231212124223.1897314-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231212124202.1897238-1-andyshrk@163.com>
References: <20231212124202.1897238-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3H6gwVXhloBDrBA--.14812S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7JF13Jr1Uuw4UWr1rWF15Jwb_yoWfArb_Xa
	1xAw1DZF43JF4Fgw4vyF4xG345Aw12kr9ru3WrtayDCF12yrZrGa97t345Zw1xCF43uas8
	Crs3GrWDGrnrGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRAcTQUUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnAFEXlghl9curgAAs+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_044245_061579_839CF865 
X-CRM114-Status: UNSURE (   7.77  )
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v1)

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
