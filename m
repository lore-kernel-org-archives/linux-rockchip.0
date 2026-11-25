Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2E5606A31E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 21:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=5FotFtuQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.a=rsa-sha256 header.s=fe-e1b5cab7be header.b=trKSeYAa;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=forwardemail.net header.i=@forwardemail.net header.a=rsa-sha256 header.s=default header.b=FBqsSAQ4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+H5qzyuV9qpCUX6rghZ6wygMrWlmwpmmkAVgL9Tv7k8=; b=5FotFtuQAMkkf+BZLjcdd2mwQ0
	I/YMSuuD/28WMIiWn+iVJ/c3DPxA733iZw+qgtrYYviYCx1blYUMesh0E7lp02A+9pSR04Ax6+Xkk
	p9Q4e0TrAHZ0QjS5Z3UryhORVhRgggUdLDnE7xhY8vJQoCU+PcUVFCF2gQWTEd0PfJUB1mp/w3qtd
	IOshrp3k4iaPPw59+DhTlFOep7xsa1GXMsjy+Dqq/L+a2u2Wy1TCFCPsdZDn8c7XuAY3pebfpoSZc
	mOfbV7aMkZ6fXr/95WgcXDZ3LhEiYixVZ2Np27aaabgZnk9ZNu2zgHURl/S4aFd50XAsLIr1Jwtcv
	lcUIKu0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWKng-0000000BOdr-1OlQ;
	Wed, 25 Nov 2026 21:45:12 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWKnY-0000000BOX4-2tTK
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 21:45:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From: CFBL-Address: CFBL-Feedback-ID;
 q=dns/txt; s=fe-e1b5cab7be; t=1795643102;
 bh=P3fIZN9wR3GP5H4ySKRBzErV81pAP8XccdYUMRKtqmU=;
 b=trKSeYAaLbFQV98hsNWMmLO5XZK6UO4Xby1XacKr61KqZZsWK7SDJKFTG46DmTzMAuZpImwlD
 enB4vxaO/DhCng/QZqApfJKe1jbJFuIyM9SodFZHflAwWAbNi+yyXhCtHcBRW0KK3iFinV0ZAY3
 iUalBnXf/0FG3jQaBen19tO+MhVyryOLG8lu8/sUiqyTaWmk43CLDH8+0QZn7HL4PoTpIfOZxJw
 NEeE/yL12XZCMn+5q5ymg2GXLakR0xHn97/CfNax+/vSGcvDKMystovLRFuSiGSehSC386iuNPe
 8tr/YIU35gQY09X7CMtriSZWh3aMG5JMJRcysmg2b/pw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forwardemail.net;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From: CFBL-Address: CFBL-Feedback-ID;
 q=dns/txt; s=default; t=1795643102;
 bh=P3fIZN9wR3GP5H4ySKRBzErV81pAP8XccdYUMRKtqmU=;
 b=FBqsSAQ4S31JpzfgzBFbZhrNsiHZB/U2LFNRDq25UKulaS17HNDk7qT67OKRUm4mlS8g5lh5k
 67lvJ0z06R2O5E3DS1cIu5iHuNLJ9RH3BuA/XCCpsDT+0ZHi4nBRqoCgS4vweDa4fYnAWZmvPVg
 4y4kd5I1/Zr8uZh+VgxwxZs=
CFBL-Feedback-ID: 6b0756c5f930f38bf754f99a:55ace0071697eb29754ce598a7fc0c7a
CFBL-Address: abuse@forwardemail.net; report=arf
X-Forward-Email-ID: 6b0756c5f930f38bf754f99a
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.19.39
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 3/6] dt-bindings: arm: rockchip: Add Luckfox Lyra boards
Date: Wed, 25 Nov 2026 21:44:15 +0000
Message-ID: <20261125214421.1580359-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.56.1
In-Reply-To: <20261125214421.1580359-1-jonas@kwiboo.se>
References: <20261125214421.1580359-1-jonas@kwiboo.se>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_134504_830250_D0CA6CC1 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add board compatibles for the Luckfox Lyra, Lyra Plus, Lyra Ultra and
Lyra Zero W boards.

The Lyra and Lyra Plus use the Rockchip RK3506G2 SoC variant with
128 MiB integrated DDR3 memory. The Lyra Ultra and Lyra Zero W use the
RK3506B SoC variant with 512 MiB external DDR3 memory.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes in v3:
- Update commit message
- Squash patches
- Collect a-b tag
Changes in v2:
- No change
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a5eec2ecf23c..49c61ee985e7 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -860,6 +860,15 @@ properties:
           - const: luckfox,core3576
           - const: rockchip,rk3576
 
+      - description: Luckfox Lyra boards
+        items:
+          - enum:
+              - luckfox,lyra
+              - luckfox,lyra-plus
+              - luckfox,lyra-ultra
+              - luckfox,lyra-zero-w
+          - const: rockchip,rk3506
+
       - description: Lunzn FastRhino R66S / R68S
         items:
           - enum:
-- 
2.56.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
