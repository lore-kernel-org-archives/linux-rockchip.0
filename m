Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7712BE7718E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/C0LQpr05eAOdc385P+BrxduQCzeU+06koh1LjvgSuk=; b=2j3htHZ6f7UDuB
	NYqvLsMb+dLe1p6800FJ5q0bGta5dbIOIQJ2BuFLCQNqbJuEQJz/dk90unQ26nuvscblCdBGe8mln
	D9l7bfKqjFhrOPwEczBtgqS3vhAcjpdTTiiWxlHE6DdDuxHH/NUYlfMnd/SRwrOy656redyCMzcEr
	ZMbYx4CBjkT7ShJvWIclxX1ehVHW/eeMETsTFxz3cMyAXQvOWQNkEkhI2IW+W2+HAK9YuvluKL0Ie
	+LGtmNG8xXwvSzvjtUXelewDfOQhsddUiRUQ/25Qk8G9Yu2GjwQsFP2jF+NgaYpjVeywwwlqxipmA
	4kQeIa8pgTPJ0XmtcMGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1so-0000000BiGR-2A5X;
	Tue, 24 Dec 2024 10:11:22 +0000
Received: from mail-m49251.qiye.163.com ([45.254.49.251])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1Xw-0000000Be6M-1CQf
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Dec 2024 09:49:49 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6aad4f82;
	Tue, 24 Dec 2024 17:49:45 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: [PATCH v2 15/17] dt-bindings: mfd: syscon: Add rk3562 QoS register compatible
Date: Tue, 24 Dec 2024 17:49:18 +0800
Message-Id: <20241224094920.3821861-16-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241224094920.3821861-1-kever.yang@rock-chips.com>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0IaGFYYQ0JJQ0tOGExCTEpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEtNT0
	1VSktLVUpCWQY+
X-HM-Tid: 0a93f8128b8703afkunm6aad4f82
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MCI6Ghw5NjIUKkoBFlYsLCo3
	Ly0wFExVSlVKTEhOS0hITENNSUxOVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKS05INwY+
DKIM-Signature: a=rsa-sha256;
	b=glO0dxbIc5mAlSbO4TG6QTNTemfww1OyLNPrv8Ydpx1FdMDDasxs2HRJTuZqv32JwA4JgHhkAuCNoZMebwRGWJkIlue622UP7YYY1FR4khMwbiNVU1RG3GA2gPalU0HOZNjhYv/12fg7OgaCqgTqXEOV9Fy1te+W7dTM2EOqRZc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=PA0QQbiZYVOq710Nd9y5Bo6g0MIw2h3IL327OaalC58=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_014948_510074_0C4D78CC 
X-CRM114-Status: UNSURE (   5.72  )
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

Document rk3562 compatible for QoS registers.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v2: None

 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index b414de4fa779..03937a82db0f 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -103,6 +103,7 @@ select:
           - rockchip,rk3288-qos
           - rockchip,rk3368-qos
           - rockchip,rk3399-qos
+          - rockchip,rk3562-qos
           - rockchip,rk3568-qos
           - rockchip,rk3576-qos
           - rockchip,rk3588-qos
@@ -201,6 +202,7 @@ properties:
           - rockchip,rk3288-qos
           - rockchip,rk3368-qos
           - rockchip,rk3399-qos
+          - rockchip,rk3562-qos
           - rockchip,rk3568-qos
           - rockchip,rk3576-qos
           - rockchip,rk3588-qos
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
