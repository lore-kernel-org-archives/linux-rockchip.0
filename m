Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 510CDC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 10:27:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1399A61396
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 10:27:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1399A61396
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7PsRfazMOA9q5cyZvNZoRVkGg+L3Ww5XcaZT5Y586fw=; b=VMFLP+DaEsF+tHoEpzXAZXzQb
	/BPnXXWHkFA9etIh/eeTyao2RC3bhQy0EbsblDJJQ3sEHi02dqdGuJDRsyge7t2DxONU8VEUR1Zk8
	ueuTEPDe93sKPz2wl4vZLqY+ZNJPvQqB+9XUZHd9T1gVNE5qbWrtlvmldRZuW3F1VITD+pNzTsy5a
	G86Ude+AdQEGoQ3FbSGM8m+is6F5s8mbkvDDMGjCUyVcDRiMHaJEdKNrdX1cVaqXi9e0fkzUiRHNG
	BHOH6otOpQ3T+I3jKE3mP+8sO3iTwVhbhy3JTKlvxz5lKfSMGtwtjzh8Wdy5P5fEJ9zwmizys2gNw
	P8kM156lw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhV2g-007lPx-Sf; Fri, 14 May 2021 10:27:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhV1q-007lBI-Sm; Fri, 14 May 2021 10:26:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Cs41mioYQ+sZovsJ0UMQOqMg8rdBg3GqSgyqpD4kATE=; b=IU9QKThmEhC4GQ/9Thdv/FPd+4
 94NIczp/jQxWJJpV02GGTP75N5W3ClEq85jqVey5kjJFPlKUcaFCTtyEyAme4Oxd3mhi3p6J3BQz2
 X6MVqm4bqg6dcURl9wasLB6zWofj4vcjRIHpPG9IMbLZmgBMRCn/58mMMh8X6jJmD3d6GexdWhZfy
 s9fv3rYqzHxZcud9LWxm4EGF9ILTJsHAFvfmoMY4Gvl5cwhd1w8o7Kl9sOQudJNzwyck+rl0kzJao
 sVEH7QUHrTLoYyqFeUHUMCVjpGvW9trN1JQt4bmKTnWstdvzrR0rHVl8C8jA0/heFPUUgd7g24/2w
 vezd6RLg==;
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhV1o-00Btfd-Dj; Fri, 14 May 2021 10:26:45 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id E18A1222588;
 Fri, 14 May 2021 12:26:42 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qsi7fE3KL_nW; Fri, 14 May 2021 12:26:39 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH 3/4] dt-bindings: usb: dwc2: add compatible for RK3308 USB
 controller
Date: Fri, 14 May 2021 12:27:33 +0200
Message-Id: <20210514102734.2091238-4-t.schramm@manjaro.org>
In-Reply-To: <20210514102734.2091238-1-t.schramm@manjaro.org>
References: <20210514102734.2091238-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_032644_629840_881615C9 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The USB controller in the RK3308 is compatible with the RK3066 USB
controller.
This patch adds a compatible string for it.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index e5ee51b7b470..10c7d9b6cc53 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -24,6 +24,7 @@ properties:
               - rockchip,rk3188-usb
               - rockchip,rk3228-usb
               - rockchip,rk3288-usb
+              - rockchip,rk3308-usb
               - rockchip,rk3328-usb
               - rockchip,rk3368-usb
               - rockchip,rv1108-usb
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
