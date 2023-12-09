Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 874CFC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Dec 2023 10:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3v08JxG5FqCTfK9S/OtoHnvE1DFtI6P7hdKc7x4U7j4=; b=ArIEejoTfTyOhy
	Y+uLnfH2nZjGOZgdBXqeOoXnY2MrGRa7D9dUxXfPdoVhWs8fxNcyDuA+PHVsDz5nFzoghylI4cm/j
	d9YX3T4xYj8Cz+x5o9cjYZU1WBxd6FZGZPakb4B2LItjsceEnIWq90L68owQzOiGK8rKnLpwrpxJ+
	wkfLDd6szdaiTMsauWh/AC9iZ1rEZbMl2vdSnuDdslY32irZxEJ36pTnKxJjWxXTAEiDleTpIc0Hx
	+bQG4bESe+5Gvs+P9AtnJK8OE8TKNwOOqt9TUsjpLMODmXgDJVRZof0Ci5dkKJoB8eUP4kmcqvZqK
	b4xpg9yRGaywznI/vT6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBujB-00HRYW-0N;
	Sat, 09 Dec 2023 10:38:33 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBuj7-00HRXw-2z;
	Sat, 09 Dec 2023 10:38:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=UJTxz
	ULlo1PSHuzPI7aSyCkSWzQgmoVbwP2iESWvZng=; b=WxH7/13UvQqwMZMkOoIuC
	Vt5+8nXtO1B587jQnF7qZg5LUR+RZa+j5BsE0Wd8PnIdi5NgiVsvwE/l3Rv4y+or
	eg2gUx0iBxtq306VHbJAqokoLgq6UO2rnFsXV5rs61UbKfSvcL6HbHeNDr/GDnIT
	3u4ColCi981iV0gGPqWgv8=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g0-2 (Coremail) with SMTP id _____wB3n+J9Q3Rlp3CvDQ--.60130S2;
	Sat, 09 Dec 2023 18:37:52 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 2/5] dt-bindings: arm: rockchip: Add Cool Pi 4B
Date: Sat,  9 Dec 2023 18:37:48 +0800
Message-Id: <20231209103748.1568462-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231209103622.1568289-1-andyshrk@163.com>
References: <20231209103622.1568289-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wB3n+J9Q3Rlp3CvDQ--.60130S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7GrWkAF4UArWDGF4rAryUtrb_yoWfWrcEka
	4xZF15WFWFvFyY9w4qkF4kGryjkw47KF9ru3Z8AF1kA3yDt393tFWkt34akFy7ur43urn3
	CF1rtr9xuFnxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRAl19UUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEgVBXmVOA2tDlgAAse
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231209_023830_363325_CD9D4E1E 
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

Add Cool Pi 4B, a SBC powered by RK3588S

Signed-off-by: Andy Yan <andyshrk@163.com>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5deb66a5c7d9..5de9f3090be1 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -95,6 +95,11 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Cool Pi 4 Model B
+        items:
+          - const: CoolPi 4 Model B
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
