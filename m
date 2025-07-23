Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23049C83F17
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jul 2025 09:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7AwHIJX/zWccNZKxyUWOGOhyyqq4FJA0BXduPMBM2SU=; b=C3L2rfypyKe20P
	mMwybDKTcPKHw8t8UziLD8MPY3xmUWZcgF65dZwwWGStKDNery6fvPK/3Mvws0yq+jANYZNKNzsnM
	uXjZErXrjPUO62Ehc7aqoO3uSy0WwY5KndGvZFfrhfcWkJPTOuhHG+1LYZ8YW/aQzBaRhw8tK5mB8
	3J32LyxQ+MXtXhgkpW5LsaYAjgS+z9IOZbRDinzmOSTUryUiQTmtjnhJKb5tLRehnh7KCoUl10FBE
	FFDhw24aojLN2wJQMpy0fnk96xU2daHsWzwZbd4Q752m+Zscd0oBSf7D44Ie7VKO6viNLuDWqN9qI
	jfPMWux02OTMHFP4IgsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueVax-00000004TqS-3Vzh;
	Wed, 23 Jul 2025 09:17:03 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueVHj-00000004Qlg-3rJe
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Jul 2025 08:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1753261031; bh=ojRNLV8OGHzHzDmR9JJH6f4y0n4OGFprTOnH0ezBpQs=;
 b=sZOxCwyZiPgBYbdaRSQLz1kLBGsE5TFQxGCt2ilp3mNUmIwYGzcOIGG/BBXFTW7BdEHXKf2cJ
 KdxmHjjRVQn6lPqDS8K6ihxr4biKcmg01oH4YcLqhLhxOh0xePu2gsE8HUbbYt8uSY+DrUwQDYa
 LQQBF7UDxPGZBpOYgXhrjMtaPWyXD65AZma/O9rJcobjWbeAo91ypebw+lNR2d8XV8lRbg/KHDs
 uRWRWUeaSazCsEvA0gzxZ74P9cjjWT0qVVYpWtYVj0a25tc9YE2gNO0ffSbouQUGmrmefgP0DuR
 9yUmUg8J1/LZ8uUJwi3oC5TRVOjyFhYUp8Zs9HPHWkew==
X-Forward-Email-ID: 6880a3e4144dc4a5e5baee1b
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-i2c@vger.kernel.org
Subject: [PATCH v2 2/5] dt-bindings: i2c: i2c-rk3x: Allow use of a power-domain
Date: Wed, 23 Jul 2025 08:56:44 +0000
Message-ID: <20250723085654.2273324-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250723085654.2273324-1-jonas@kwiboo.se>
References: <20250723085654.2273324-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_015712_285366_055789CC 
X-CRM114-Status: UNSURE (   9.69  )
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

The I2C controllers in most Rockchip SoCs are part of power domains that
are always powered on, i.e. PD_BUS or PD_PMU. These always powered
on power domains have typically not been described in the device tree.

Because these power domains have been left out of the device tree there
has not been any real need to properly describe the I2C controllers
power domain.

On RK3528 the I2C controllers are spread out among the described
PD_RKVENC, PD_VO and PD_VPU power domains. However, one I2C controller
belong to an undescribed always powered on power domain.

Add support to describe an optional power-domains for the I2C
controllers in Rockchip SoCs.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: Update commit message
---
 Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
index 2f1e97969c3f..4ac5a40a3886 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
@@ -105,6 +105,9 @@ properties:
       (t(f) in the I2C specification). If not specified we will use the SCL
       value since they are the same in nearly all cases.
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
