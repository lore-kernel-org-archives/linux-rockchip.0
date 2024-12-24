Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 914DFE7718D
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 10:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UBTELiWHmgKsVfUCZ6s1tbxXAW5pZVU3NIni0dL9t0=; b=3Cu5khf40lqo0r
	ZUa+NDhIJaUHjSC92Ls1nYfjNqffF9LBsEDxPsqnPK8h2FbrDRgkWOE521v+RbMAgg+HpSyFShi1Y
	jmeRYu0/UsvXUYbsAZ1QSLGaZkIMzG7FCP6U4OYGGNa7jV7vMp6EqQRIj4HeQupBGpHd5DM3QtpJi
	ahc4I0FUePayNnZ4GqgkJBD4qcaj7pHD2O3Yp+dT/KUGDh+HWgJ96ZAWGC4a6IR0gX/PBcEZC9a1w
	Ecj7r2mAEgY188AhzIRthV/vUvr1USfBiR2VHMN/Y7GkqFWddSm9kBqzhxQMHl55RId+UwwAJrcRy
	HaoE0jiY/ErPJzU0ScRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1lv-0000000Bgva-0WvE;
	Tue, 24 Dec 2024 10:04:15 +0000
Received: from mail-m12748.qiye.163.com ([115.236.127.48])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1Xl-0000000Be21-0y6Y
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Dec 2024 09:49:38 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6aad4f15;
	Tue, 24 Dec 2024 17:49:33 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Jamie Iles <jamie@jamieiles.com>,
	Guenter Roeck <linux@roeck-us.net>,
	linux-watchdog@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v2 07/17] dt-bindings: watchdog: Add rk3562 compatible
Date: Tue, 24 Dec 2024 17:49:10 +0800
Message-Id: <20241224094920.3821861-8-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241224094920.3821861-1-kever.yang@rock-chips.com>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkNKHlZOSx1LHxpDQh4dSU1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE
	5VSktLVUpCS0tZBg++
X-HM-Tid: 0a93f8125ef503afkunm6aad4f15
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRQ6UQw4CDIXPko3PFELLBkM
	TTdPCRJVSlVKTEhOS0hITExOS01DVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFDTks3Bg++
DKIM-Signature: a=rsa-sha256;
	b=kIsQGord8lsAPJmwszbIVhJI3b+HHzCIMLWAf6rQyq5DWGDccoC0RNicvEadQy8GW9w+qIhrB3ksI/idOd777KwoiVRBxb2wN2N7piZj48fEqpN1fnjTsXApCGlkc4Qbvlb1DA5JH0xzzW2OkxQmaO4Y5PNvM2s9NsSBlKPAIAg=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=w65nHanWmBSK+gAUJK97FwbkvqytD7kBrCEuPTUVJpI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_014937_449571_CFA0E093 
X-CRM114-Status: UNSURE (   6.05  )
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

Add rockchip,rk3562-wdt for rk3562.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v2: None

 Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
index 1efefd741c06..ef088e0f6917 100644
--- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
@@ -28,6 +28,7 @@ properties:
               - rockchip,rk3328-wdt
               - rockchip,rk3368-wdt
               - rockchip,rk3399-wdt
+              - rockchip,rk3562-wdt
               - rockchip,rk3568-wdt
               - rockchip,rk3576-wdt
               - rockchip,rk3588-wdt
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
