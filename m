Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7158A606A31E
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 19:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=POAHIW32;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.a=rsa-sha256 header.s=fe-e1b5cab7be header.b=Wb1HYUzc;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=forwardemail.net header.i=@forwardemail.net header.a=rsa-sha256 header.s=default header.b=ic4TK9zW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=iQiltbsA+dbWdBO+DyVKartLmo7zDDOmppNdHItUq78=; b=POAHIW32MOTco4k105ozjJDMBs
	5WzhnmuANCqpJxIa9XfkfLaiYdl9gjlu8Qn7+a1xG55V+sAINRpN+gXPdFFRWUiTI+8R/F/JEMUZ9
	ruRfQCY3eWQWzOkhyKG0SA76u9pLXMj59RXtRYtzHjyqMosArRkXgdPOOhQ/K34X45svDRV8qBCdL
	5J9+FqRKi+guEHkS3BISEl4dmQAul2gXUhYRpIv6Sie4hOcdOAcAQFQwEnf5dxSe1ILQYqUO2hJeQ
	IAMwt3pcWP3Ggd24H7TRGjwdGGq+O24kx/NicjepTMKS6lktJTgvdtiFBstjXtBUguMm4hgbiXHwB
	RLHl+a1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWf8V-0000000EIcJ-1L7L;
	Thu, 26 Nov 2026 19:28:03 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWf8S-0000000EIau-3HxS
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Nov 2026 19:28:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From: CFBL-Address: CFBL-Feedback-ID;
 q=dns/txt; s=fe-e1b5cab7be; t=1795721280;
 bh=z4mLuE1MnI8cLrSDXrkTRUCT/LoUIRcdV4rRUnKpvlA=;
 b=Wb1HYUzcUdKqwnUfM8vLpKhj6O3Fz9HjCEGlf4N0JOMqHx2cuDBC0BQVH9O0aMwQyzVd7Zfbx
 QsO4QM1Qx1vJLFfFbbXtyRoyw6O1fozYG57LFsyIMFaH3HyoKLfzPGbhrFN+krQYBhABoVIVO1f
 5bFLQQU5pzhqmfyxSAWzAU3GHvJzGBiG//q2Z3h/nHpEiliu3OG7UH7P1La8Dk93A3MZuqgMqid
 zAAdEt07naxUJetAmDtFyPUjtCT2BobWikVOUV7sw4ar9cwkwOKD230i6XrFWkApO01HC9zXOb2
 AoiRX2mHE0KYZws6cUH8gFC7rTsa+Bt/SJgl9+3j/V7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forwardemail.net;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From: CFBL-Address: CFBL-Feedback-ID;
 q=dns/txt; s=default; t=1795721280;
 bh=z4mLuE1MnI8cLrSDXrkTRUCT/LoUIRcdV4rRUnKpvlA=;
 b=ic4TK9zWGauLnUhNwLnq6rzq0LclRPh8tmFsSzn3CeUW4WBcNhaILmuqB+JpEb4U5PTDOKZ/I
 7bYBHdnpeCjlQwKim9/WN/RCKx6HpoAaDAp4FUH03c9ZUYiPWByCKEuCU5jrfvYc+SwSlbbnu0Y
 0AdqB3beF/N8CM/OIpr85uQ=
CFBL-Feedback-ID: 6b088838b69a54ed847adb45:bbeec19570182d8701aa3de9ee115af1
CFBL-Address: abuse@forwardemail.net; report=arf
X-Forward-Email-ID: 6b088838b69a54ed847adb45
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
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add ArmSoM Forge1
Date: Thu, 26 Nov 2026 19:27:44 +0000
Message-ID: <20261126192746.1595707-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.56.1
In-Reply-To: <20261126192746.1595707-1-jonas@kwiboo.se>
References: <20261126192746.1595707-1-jonas@kwiboo.se>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_112800_836396_BF19F959 
X-CRM114-Status: UNSURE (   7.88  )
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

ArmSoM Forge1 is an industrial-grade product powered by the RK3506J
triple-core Cortex-A7 application processor. It is specifically designed
for industrial gateways, HMIs, PLCs, handheld POS devices, and home
appliance display/control applications.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Changes in v2:
- Remove unintended use of zero-width space in commit message
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 49c61ee985e7..38ae73e8a34c 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -84,6 +84,11 @@ properties:
           - const: armsom,cm5
           - const: rockchip,rk3576
 
+      - description: ArmSoM Forge1 board
+        items:
+          - const: armsom,forge1
+          - const: rockchip,rk3506
+
       - description: ArmSoM Sige1 board
         items:
           - const: armsom,sige1
-- 
2.56.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
