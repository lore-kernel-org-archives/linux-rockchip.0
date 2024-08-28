Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C235BC5B54A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnbp965UOLyFeH8rCCChMqE9mB6/vxacT4yw4L0tEo0=; b=bVyjVeZvqySKZq
	P8Jy6Cy2xxTrPLe3T3kwhRAgZixEfPB4aIzIsHxmTRoS/zfY2DiZqdehXOrzWKeY092SAGYfxe3kc
	8paiJcShgaT/rypg9dJuqQ21d/klxEO0pyrZxiRwpLOYemD1D0tLUA+sb51xZJkSouN1oIkhciWZ3
	4GXS4dsguxjGHH6BpnY/mazZH0y+eKoh4ENyp2btUU/ClpCKmJYKpV/+JmFcWgA6aI8V0iip0j7G6
	TQZ2ifQFHWelVQBvcKc/yLOoCSpFLXQCjpN+YARUl+ot0RUXLVlH8QYt59h69Gr3/reak+vDkYgW6
	Iu3aiiL6FzIlQweHUz6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKpk-0000000G2JW-2Z1q;
	Wed, 28 Aug 2024 15:43:44 +0000
Received: from a7-39.smtp-out.eu-west-1.amazonses.com ([54.240.7.39])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKXZ-0000000FxPn-2hbZ;
	Wed, 28 Aug 2024 15:24:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1724858693;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding;
	bh=EpZHRzb5vxXqStDRMR2abxBBT9XwtEmAmcq/fLiwWyw=;
	b=RsD8UhDqdmkZlThC6YlIbq4HN/sxjXVKJhjXoQMj6O7irjHS2wbmbnNDCSxVC0mu
	2JtguforWkU/pLTNPq+mBMSYjfthOi65r95YdBFUozro/6bUnHuNAtzgjSo+3LFmIhp
	xHPrMfvHgGT8tqB3Mp5oBUS6KfKVm2T1zZyRVK6RmXngkohT5HDX6wg6C68nCCb5a7V
	taDx7C7f0nDQFmBEzQw0S/JYC7gK2fS6qb6kRH5Ig64ybYu0j+E4w3ZH8Q9FotWSDJ3
	75ESR76FCW8EdePUswS1ge551iwRUHT1/lm0aMCmxo6VMksAPt94762JbYxo/NsVYTM
	0r82BbWbJQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1724858693;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=EpZHRzb5vxXqStDRMR2abxBBT9XwtEmAmcq/fLiwWyw=;
	b=BEJhkJOVjwWoEiVM/fsR/p2Nk8VPtzWgltasKsa8+jk+SueLJua7aMinItvqTfir
	e/AA/bNImD4rm/THrRSzqgBZjC/q8uy+xpwTMXxjqJ3WM8kGD4Kgn0DGwJ8wV83v3Ss
	KeUEM+hrb+oBor5L1YpiEY0FQTVa/hIJXM+TJR0A=
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com, 
	Detlev Casanova <detlev.casanova@collabora.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/3] dt-bindings: mmc: Add support for rk3576 dw-mshc
Date: Wed, 28 Aug 2024 15:24:53 +0000
Message-ID: <010201919996f687-08c1988a-f588-46fa-ad82-023068c316ba-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240828152446.42896-1-detlev.casanova@collabora.com>
References: <20240828152446.42896-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.08.28-54.240.7.39
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_082457_852971_3BBC36EF 
X-CRM114-Status: UNSURE (   9.78  )
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

Add the compatible string for rockchip,rk3576-dw-mshc in its own new
block, for devices that have internal phase settings instead of external
clocks.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index 211cd0b0bc5f..06df1269f247 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -43,6 +43,8 @@ properties:
               - rockchip,rv1108-dw-mshc
               - rockchip,rv1126-dw-mshc
           - const: rockchip,rk3288-dw-mshc
+      # for Rockchip RK3576 with phase tuning inside the controller
+      - const: rockchip,rk3576-dw-mshc
 
   reg:
     maxItems: 1
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
