Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468B360A2600
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 06:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iofCdu5p;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.a=rsa-sha256 header.s=fe-e1b5cab7be header.b=jpEtY1j9;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=forwardemail.net header.i=@forwardemail.net header.a=rsa-sha256 header.s=default header.b=FJ8I14c9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JkcmxVbwDznublUFzqneEON1PAcDu6IZgG9ix6eSke0=; b=iofCdu5pySdjUP4iElwDZX1Ojr
	+KfufkJ8r0BROsXZ1hZlwAaNTST231aR21Kdxub55yIyQwe+TepOTdO9MD5e9bBBGPxtJDpWTkeMd
	9xjeZxaixsh8eZbWg92DuLkPAQgYqso/rZKgzF0RgN+EwEhOK4lFg+zpGbnsyr6qSTCSVFrO5e3ei
	j0ALKP/qtgvtCXcyfjbKVcv5EUzgMy+vk4hhempDxJskQzg7JlxyLOSgxLBE+tp9aSiw0TBs/ZJX0
	EVOPLwzZcCuzCyw5XPQ/1vmY6vD7bD80nEEgXVJX7/kFByhZAxnMFQhkGZdfNYljm1brPJPv3/Bqo
	CgwvYSaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV0dq-00000000lJt-3lp4;
	Sun, 22 Nov 2026 06:01:34 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV0dn-00000000lFf-2Snk
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Nov 2026 06:01:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From: CFBL-Address: CFBL-Feedback-ID;
 q=dns/txt; s=fe-e1b5cab7be; t=1795327290;
 bh=eN0oCpWpCumvmeNPzEEeEhK6pL9hBNoQmVPaU07OxmQ=;
 b=jpEtY1j9GQCYhTQLXkw3hqTRm3xwi9I8O2uiH1yst2FimjASV1bb0tKi0zMZgLIrnnFwW2byc
 1gzc/sSqo7Z+xqtmDtalIP9nTSF0pL35pQGqealmTzqkT8z5tiJUjnOV2mDi7CuYiEu51SRT/KD
 seqFqDssxUUPaJBMLzFxM4VZ6pSuecyhQWSOEzELkKaBVwJ3MfBPIaFztz9ApoVJFpmzSaXMfEe
 aoRkh5huGyfOme16EFeoEkpDCEgc4dIsbqddngSAe05DHUGIDwihaxBpYWCbbDJyRkkgtJ9VbYN
 +SCey9p8ujGpsB1AvUIOCSkkKsjcOnfBeuS29reywC7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forwardemail.net;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From: CFBL-Address: CFBL-Feedback-ID;
 q=dns/txt; s=default; t=1795327290;
 bh=eN0oCpWpCumvmeNPzEEeEhK6pL9hBNoQmVPaU07OxmQ=;
 b=FJ8I14c9dtmmuH+T/fA7VSDScevL+z0T5hP23P0oA4+B27fZrQAXJUiOlhwrxvNupN0oTRKHp
 Pzs9waZchSNTdimNV+0j0oRthwoc4Ot95wK3lEhCLOt9vFKDIFVA4bENCjkzksJmCdrI0mYOb9x
 jRYtxpMdugVi7kFHKbGzc3k=
CFBL-Feedback-ID: 6b02853acff95ecda8c093a6:5a2a3aaf4a95b445a62476d8f16bba92
CFBL-Address: abuse@forwardemail.net; report=arf
X-Forward-Email-ID: 6b02853acff95ecda8c093a6
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.19.37
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
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 5/8] dt-bindings: arm: rockchip: Add Luckfox Lyra Ultra
Date: Sun, 22 Nov 2026 06:01:08 +0000
Message-ID: <20261122060114.773624-6-jonas@kwiboo.se>
X-Mailer: git-send-email 2.56.1
In-Reply-To: <20261122060114.773624-1-jonas@kwiboo.se>
References: <20261122060114.773624-1-jonas@kwiboo.se>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_220131_693195_DBE62343 
X-CRM114-Status: UNSURE (   8.08  )
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

Luckfox Lyra Ultra is powered by the Rockchip RK3506B SoC, which
integrates three Cortex-A7 cores and one Cortex-M0 core. It includes
512 MB of DDR3 memory, 8 GB of eMMC storage, MIPI DSI, Ethernet, and
IO expansion interfaces.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Changes in v2:
- No change

As mentioned in cover letter, unclear if this should use
rockchip,rk3506b instead of rockchip,rk3506.
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 37321e23b087..651da02cfa51 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -865,6 +865,7 @@ properties:
           - enum:
               - luckfox,lyra
               - luckfox,lyra-plus
+              - luckfox,lyra-ultra
           - const: rockchip,rk3506
 
       - description: Lunzn FastRhino R66S / R68S
-- 
2.56.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
