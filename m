Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16AABC10DCE
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Dec 2023 08:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xw0UCtUh1n4Sx53pPZxVQi6ZZLfgmWVAh3un1oB4HU=; b=o50rqrQYe83PT6
	cq8ROVBrn0Phtf+NAeRf5UTAMSHAMChTa/RWz3OOxahxODus1g3+iEnnaBh9SFnRteYrJObp6eqya
	3mEALR9sNjoRfHTOY8zXSgchzz5gOyOhG7XQ3yhn2Oi0qR4ye+bU4iMOS4U6DkOHA0uMG7nNMutyC
	kYG94CQd2wQUrGvubzIJVY1qkjETO/4AvarpUWa0bgWK5K+b5qsjtznwoUzTLHTpSL6uVMdL9Jmsc
	iyNKb1+Ec0UIapauQX0zTQPWeOBPoaUSyF9ns8MPxk2Csitsxdgfr0e+xstRLqYE61SiRvKEnZ5vI
	BDtvqNTusCslpS0WiP7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCEnl-0019Ii-0h;
	Sun, 10 Dec 2023 08:04:37 +0000
Received: from m12.mail.163.com ([220.181.12.214])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCEni-0019Fd-05;
	Sun, 10 Dec 2023 08:04:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=816/h
	LnXHXWvqXMqrHjO/pFmlsBHEYsO1Ax4Hbacj9E=; b=M9ecfcSDwnUcEANiSfMQO
	Um9yaB18vdX4ZfQU4F6GubFQK4Njvk5q5vrRkBKSv/S0CX2Ub/H8+Duc23/Q1GKw
	qmBY5CYCxxjH+CK3NvWB6iBouceet57Lgr7Q3n+Guq7y3HIEROigFYGsf3111sxL
	iSxSYutzAGx98iiGbVSEII=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g5-3 (Coremail) with SMTP id _____wC3Xw78cHVl++8DFQ--.61683S2;
	Sun, 10 Dec 2023 16:04:16 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 2/5] dt-bindings: arm: rockchip: Add Cool Pi 4B
Date: Sun, 10 Dec 2023 16:04:11 +0800
Message-Id: <20231210080411.1667229-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231210080313.1667013-1-andyshrk@163.com>
References: <20231210080313.1667013-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wC3Xw78cHVl++8DFQ--.61683S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7XF4xWFykur1UGw4fZF4xJFb_yoWfKwcEka
	4xZr1ruFWFvFyY9w4DAF48Gryjyw47KFnrA3WYqF1DA3yDt39xta93t34akFyxuF43urn3
	Crs5Jr9xWFsxKjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRAl19UUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEgFCXmVOA3eMwAAAsc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231210_000434_476935_1C06BE55 
X-CRM114-Status: UNSURE (   7.13  )
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
