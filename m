Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67353C83F1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jul 2025 09:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bf4hnMNQYXsac+hfRuyfsz2KcIGQo2KmnGMEgrCIUy0=; b=sQYHQYY0pIMfpM
	ms9UcBXaIqYvInFMBzvqIYAgFGycJcz1bsJI6GW19tjNbqvFlhX3TtUmEKaYaqAXtnp/h3Ynw65qg
	UyZ7P45ExYVA2KhYC82oHXXClUmUBIpNijVgiePMubFXU3OZz88MyfQyodlf3B5FrwrqRs7A1w92q
	4F3Hb0YPlb+JthdFsro5ofekYc16j3nZOeDbl9L6GC1fYGTNrH0NmA5DTHLvR4IgAGnpQWUxCmaxu
	qRXnTPwIg3RsYTiFzSwk1QiDvpj+5peM6bIVc28hc3cawdHIOhZ3ebUoBzCn9RdKtR5ETj3nK1PZ1
	WTay+8jZg/0HUh9pM9dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueVki-00000004VWb-2a8t;
	Wed, 23 Jul 2025 09:27:08 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueVHz-00000004QsY-0kQ1
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Jul 2025 08:57:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1753261046; bh=VYMDQe/mQ1kKIZU+OHkaA1YB3avFSOAww6d1p3lXtB4=;
 b=jMRiCdiCV2040MGnEoBMZ+2/8uUBggkdS0LgnbI1iErTS79v49qcaUMgl6yUkyztX3w3J6Nqs
 BnXBeE3oZi0QS1oZDmyNdB09wKOEyEsbm5/Nzjqty6sFgXGpdVYi22Vws3gIpVCDEGl0vcbQjzC
 6Obkihx7omZ5CK/1ARiDAHSASJ9WlrGiQ2TZ3mZ4kSvoyUGvJmsl3odtCV/Bl7tlnppYmCr9sPD
 7FC5noDB7sQ8e3bI9jXrMOBzz1lIef3lcjoL0bnGQQ0IJJv1Zq3TZ9jz0AyRlI0CNy5nxOs4F9m
 Cu2SxLrkXK+gE4xi86CoIKx2PHbWoEFm49avUI6SicWw==
X-Forward-Email-ID: 6880a3ed144dc4a5e5baee49
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
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
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-serial@vger.kernel.org
Subject: [PATCH v2 4/5] dt-bindings: serial: snps-dw-apb-uart: Allow use of a power-domain
Date: Wed, 23 Jul 2025 08:56:46 +0000
Message-ID: <20250723085654.2273324-5-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250723085654.2273324-1-jonas@kwiboo.se>
References: <20250723085654.2273324-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_015727_252441_727FED28 
X-CRM114-Status: UNSURE (   9.64  )
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

The UART controllers in most Rockchip SoCs are part of power domains
that are always powered on. These always powered on power domains have
typically not been described in the device tree.

Because these power domains have been left out of the device tree there
has not been any real need to properly describe the UART controllers
power domain of Rockchip SoCs.

On Rockchip RK3528 the UART controllers are spread out among the
described PD_RKVENC, PD_VO and PD_VPU power domains. However, one UART
controller belong to an undescribed always powered on power domain.

Add support to describe an optional power-domains for the UART
controllers.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: New patch
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 8f1b7f704c5b..cb9da6c97afc 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -108,6 +108,9 @@ properties:
       parameter. Define this if your UART does not implement the busy functionality.
     type: boolean
 
+  power-domains:
+    maxItems: 1
+
   resets:
     minItems: 1
     maxItems: 2
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
