Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C573AC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 12:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jx4tIuju/8Rju1UHua5+KcY3nRRFFVMrSP7GzsA5Auk=; b=ucQwZY3r0VKtqd
	KhKUVPPOW1XDXtBY7hbPNzArAPkWgx4U2sgQcjqipjvsF8emPMOCOc+vEzSZmv7B3KY7VPb/uAtQn
	m9RNW6eBDvZNcVompzfNvc37W9Y1+A1HDmPExTbSBuM7wXM/d4Y9jUcifimu7j083MRWHowuPbZs6
	ouT+pNQqApgowlNIxV4M+hmyPXx7T9M6OXRI1elqKIOqyuYg4WjWjL+HVfMTFQBiv+s2a7ORaOCSD
	fETT28TRZqpASwxo48V+ksizszv8Dadi7wj+BG1HHoQAgYyxqAw4m5bCCtEUIeQ9h2Mv4yZ96xsl3
	sJr76R6/fJUXySvCTrrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nixtv-009VBK-Kc; Mon, 25 Apr 2022 12:33:11 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nixtO-009Uyd-3C; Mon, 25 Apr 2022 12:32:39 +0000
Received: from obbardc-laptop.home (unknown
 [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: obbardc)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 19F0C1F43534;
 Mon, 25 Apr 2022 13:32:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650889952;
 bh=6dPC6V3Efid0jyddZB9luhvds1hVGmHlsOLFj8lBtIY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Hq9Ww1b9ymuOpIy6SMSdokQoqUUWPdVbTgXkuvcx+OjHvQUp3xWiI04H1bFlselRV
 zXLbCxo9S4vpiqN7dqxbrMDaBLC7Cyw3m0VV48e1NkyVG75LchfGRp9Hp0TzcOILlh
 STH5I9CWMCNFo0Xr5LFxqS6ztZx9L5R8QrYzGCIW6Nbj0lQa+aQ6FJPEzqainNm2O+
 MVXCb7A4KFceoBG/aVh9S0S1t7XxqKN5kYdSWXpcfuD+7tIahf5tCH4DWDldnLJJVv
 nMqLobUK1G7ZpAhQ0y0PRxtKlUAsGGBzAmQwp+NKl07CZhLmvKfcUhb7ROcaOv3lIW
 nR1hLOK6pUKAg==
From: Christopher Obbard <chris.obbard@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v2 1/3] media: dt-bindings: media: rockchip-vdec: Add RK3328
 compatible
Date: Mon, 25 Apr 2022 13:32:13 +0100
Message-Id: <20220425123215.1055251-2-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220425123215.1055251-1-chris.obbard@collabora.com>
References: <20220425123215.1055251-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_053238_302535_A108252D 
X-CRM114-Status: GOOD (  10.54  )
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

Document the RK3328 compatible for rockchip-vdec.

Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---
 Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 089f11d21b25..ce06835e8d61 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -20,6 +20,9 @@ properties:
       - items:
           - const: rockchip,rk3228-vdec
           - const: rockchip,rk3399-vdec
+      - items:
+          - const: rockchip,rk3328-vdec
+          - const: rockchip,rk3399-vdec
 
   reg:
     maxItems: 1
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
