Return-Path: <SRS0=a4IV=OP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDD0DC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Sep 2021 09:04:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 50B87610EA
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Sep 2021 09:04:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 50B87610EA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N6Q5L6tZ5tZHG4y/i5eVkzgNriHLkiz1aQ4Z4Tco8us=; b=lo0xlITjFMUrDg
	S8GA97x6z2yhhEGydUF8Kp22SQy65scc/lpOYC06UKoA22RjEQlKvsz0t/hKZt1oCpphNqu1maqEv
	Qoirv6/I3QJENHOxMBj+wvqOUrgedMtVIB6N/bFfF5nuQ9B7RN2577gmXOuPVe/Y/ytSB+n6HbxUq
	3B22UB/mzsvMonIxKSDNYho3A//yAOKTAM3/JeSqzymfUjTKLQpIhL3JGEoN9xEQ2vSYIDMbDlJbB
	Fv73p9mMqKRGHB6ksfj+IrZHOX2GSDvJYddywqxxnKdM2d7mn9ROuh9mCaimC9D4AwyhtmmVxLbq8
	f6nVEdnslnNAPAcxUAQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mU3bt-00GL9S-7E; Sat, 25 Sep 2021 09:04:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mU3bU-00GL5Y-Ms; Sat, 25 Sep 2021 09:04:20 +0000
Received: from dynamic-109-81-211-127.ipv4.broadband.iol.cz ([109.81.211.127]
 helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mU3bP-0000YK-Iq; Sat, 25 Sep 2021 11:04:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh+dt@kernel.org,
	heiko@sntech.de,
	lee.jones@linaro.org
Cc: jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] dt-bindings: mfd: syscon: Add rk3368 QoS register
 compatible
Date: Sat, 25 Sep 2021 11:04:04 +0200
Message-Id: <20210925090405.2601792-2-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210925090405.2601792-1-heiko@sntech.de>
References: <20210925090405.2601792-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210925_020416_795678_58A02A51 
X-CRM114-Status: UNSURE (   9.34  )
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

Document rk3368 compatible for QoS registers.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
changes in v2:
- new patch

 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index abe3fd817e0b..72f7a0df5924 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -49,6 +49,7 @@ properties:
               - rockchip,rk3066-qos
               - rockchip,rk3228-qos
               - rockchip,rk3288-qos
+              - rockchip,rk3368-qos
               - rockchip,rk3399-qos
               - rockchip,rk3568-qos
               - samsung,exynos3-sysreg
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
