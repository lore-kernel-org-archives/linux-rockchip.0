Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05800C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 May 2025 22:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QA7byVcPBtpGyIdGiroOVIw3S0JIiYiE7dqUzjfVKQI=; b=aXLqDOUjZv4wMq
	fhg0tTGccDyAgAHpwaHY3Vzo8KU0zRryNcuHYEe3BNSOqobgU8jHdvfEpfq0QvUCz7/jlHZ5Qj8F/
	i7vh/EfaQeHETDmJBAL0cDTJIPm477sTs4mKna4JHczDcs7pMASehFBi9IvosUHuAWPFcK+4bMCEF
	ziXa2AItSiY3OwiBTPUifJ6DzKz996OJW4jb3z+jyzOx8PsWqquV4TICCJSaYy+1teqWZA/J2Shc4
	KjPfbSM0CGTm9kBa0XLZ6V915DkLf+B0Al4WX1nG2VcWYBeTrDPjD4pQNhZ2O1va0+AGQV0ddUQtt
	J1sYMv9SziwwY4LwYuDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmXm-00000007dBV-0tD6;
	Sun, 18 May 2025 22:31:42 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmAT-00000007ahw-1xbY
	for linux-rockchip@lists.infradead.org;
	Sun, 18 May 2025 22:07:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1747606056; bh=JuYEKWBVukLDcGbYOqkONpNdiBoEcCXdcXXV5j7NdiE=;
 b=Wj9L3gJU2suBnIWKne8KwOrilgZJCdWbmPw3l55/syqXJnRNzjJvaZPt0KL0bdXXmn1QQzSXG
 GGJkgOVHeHJ3B6hxAFhQwNe42/0PGN1d63EJaRozrqFH0Q6ZqVGdoPHo1F+CpDngrjqzNEKbvgg
 1q4PJ2n5oI6koPyVqe6b/bWP1NggDhOiaOU93uIaER3KOM5K3/avVSEag7gEvRDEeaLOyCVS987
 83XKI6Zin6RJHMVJVmCB6ZmBa3u8ID6ZVaqtIMoZk/TmnsGGviUKJXBw5xVokYeK7507iDxkUU6
 A1bQFPsLtlgQ+cYIPCS9PnTp3Mjgku9pCx5ITY39lOzQ==
X-Forward-Email-ID: 682a5a2678cae75fbd8d46da
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.0.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-mmc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/9] dt-bindings: mmc: sdhci-of-dwcmhsc: Allow use of a power-domain
Date: Sun, 18 May 2025 22:06:52 +0000
Message-ID: <20250518220707.669515-6-jonas@kwiboo.se>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250518220707.669515-1-jonas@kwiboo.se>
References: <20250518220707.669515-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_150737_598091_1BDB403A 
X-CRM114-Status: UNSURE (   8.28  )
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

The commit 7e856617a1f3 ("dt-bindings: mmc: Add support for rk3576
eMMC") limited use of power-domains to Rockchip RK3576.

Remove the power-domains: false to allow use of power-domains with more
controllers, e.g. with SDHCI on Rockchip RK3528.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
index 5fb347167004..f882219a0a26 100644
--- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
@@ -120,10 +120,6 @@ allOf:
       required:
         - power-domains
 
-    else:
-      properties:
-        power-domains: false
-
 unevaluatedProperties: false
 
 examples:
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
