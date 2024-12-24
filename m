Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B272CE77188
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 09:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S7JaqCNWxoWCbgs1dGl/gcq+35dkd+ZfEdhoGsASG+0=; b=Br9iz5ZtrkXiev
	SA7xetAlEjcwnX0HwTsLR/ZmnOFc3Wz8eqR9MLw5FV4G1fZed9SyRfeBIwqWmHp/JZxM64+RJx4UI
	p0EBlRDcE5bl+zYcYxdBtl6Uj95sVKGNtl+JhHcU974Rf0ZBoyHp9owYaae0b0TJJF6RroVNmgYsa
	+OLfEYDY4HTzHoDQkKd3Q0LpMiH9yUSCNG1Ld3DlIfTF5t5DVaLl+ZJFxONZTAUA67dWjbfPdyLFC
	cY03wshPYan8mKtbeZh3WZrf7dJF24leIQtUb+To2Sbk7k/ISgOZpYENvJjTFPVtJapSZQM1rUj6N
	0U0Z+06PKn7zyL6T6bUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1SG-0000000Bd54-0p8S;
	Tue, 24 Dec 2024 09:43:56 +0000
Received: from mail-m127165.xmail.ntesmail.com ([115.236.127.165])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1PD-0000000BcTZ-3PXt;
	Tue, 24 Dec 2024 09:40:49 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6aa905c1;
	Tue, 24 Dec 2024 17:40:44 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-iio@vger.kernel.org,
	Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Jonathan Cameron <jic23@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: iio: adc: Add rockchip,rk3562-saradc string
Date: Tue, 24 Dec 2024 17:40:41 +0800
Message-Id: <20241224094042.3816483-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUhLHlZISB9MSB5NGRkYTxlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f80a49e903afkunm6aa905c1
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6M0k6GAw6CDIXNko*FjgKMUws
	FwwwCzpVSlVKTEhOS0hISU9OT0pCVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKS01INwY+
DKIM-Signature: a=rsa-sha256;
	b=ObqbusBWSfS4UPK+E8i5hBIhgv393B0V4z8GuB/oANfdyfZpUr0wjivlwSlGVSz9Fr9BPYJMygj/1/ylUgQ9wSrXnggATA/qpkkM7ky4XX44QBoZIzs4bvo6dHDySfDz5iJ2TAmKkqu/h80NoY1ZPhTHkfC8kcqFm7XzSxM9rqQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=YQ0B+UF6z6qRHlvIZAjak6rQj1AlbRw5Fkx/l4QLEYs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_014048_030167_5CC62803 
X-CRM114-Status: UNSURE (   5.66  )
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

Add rockchip,rk3562-saradc compatible string.
The saradc on rk3562 is v2 controller, with 10bit width which is different
with rk3588.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index fd93ed3991e0..da8bc6f50a32 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -16,9 +16,11 @@ properties:
       - const: rockchip,rk3066-tsadc
       - const: rockchip,rk3399-saradc
       - const: rockchip,rk3588-saradc
+      - const: rockchip,rk3562-saradc
       - items:
           - const: rockchip,rk3576-saradc
           - const: rockchip,rk3588-saradc
+          - const: rockchip,rk3562-saradc
       - items:
           - enum:
               - rockchip,px30-saradc
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
