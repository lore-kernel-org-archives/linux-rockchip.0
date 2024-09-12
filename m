Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53296EED60D
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 14:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82H4ltRAR6vV1S1NL1B3gQDPs48pS9xPLQw2BOXazS0=; b=AvGzqBeaVsiEM9
	Nx2zhR2/nUTEfHZuzEYzOHOIDwlbIGjDfuTjV5yNRY3I5o6EccruESmhX7g6buQfpvVBHIK8kGcZ8
	6tHq92LlFDAD6W8nTrxeuuwVwVsMNPgxfgVRSz82Toc/PQcD72c7YMCjZrt4Qx3UgT1qXAaaQeUhG
	EVkWJ2G7Ms7rKRC6eAuAdXHUogUr1poo5E5hl5UlrUo9EfIXHB0mkP3mvhuW7wSjsocZ6aw+y4N/w
	XsRFR2wAw2wjQiRBtAiDYG8nblITJrNfeBuKEaARe9xmDRKITVv3eV9HMMGCW4xKKm+G+dG46zSng
	fv2j2Qy9UwZY6FfFoyeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soks9-0000000DMZe-47d4;
	Thu, 12 Sep 2024 14:32:38 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sokqE-0000000DM8m-3lYk
	for linux-rockchip@bombadil.infradead.org;
	Thu, 12 Sep 2024 14:30:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=q3nSf+jGddQX3+uTVKIG1Xgr4itWK8uPrGRSisvTDwU=; b=Q9laMKj6Qm/67YPALrnY8y8p3s
	CVgYP5qoD8PCx/4D8CMOcQBxJqA1c9i79MMLMTAzJ8eESk1YHIBiYs3SNtXEy19kt8pnzmNbQQotf
	8GHDwV0IL3RRgEACl84bxy5KiLDN3glVHV/qwJT8/TafqKE3+32gAUUmHuT9KNTFGpysXt+IdZZ6n
	kSAhUSVKHRY/E7p4ON/yaOnkfFeAbiVto/IFeRildIx6WrWpErYDHZ5VtBMeMAxv+hZxog2MHW9vq
	9hGw2uQExllqx8V3qvUfTpfqksCCUJqYjTEWFR7vJ5yHPq6NK6nnU7OhcOkKXmGFCAltUb74wVFYS
	/fMHOEgg==;
Received: from omta36.uswest2.a.cloudfilter.net ([35.89.44.35])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sokqA-00000008iAH-3h3c
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Sep 2024 14:30:37 +0000
Received: from eig-obgw-6006a.ext.cloudfilter.net ([10.0.30.182])
	by cmsmtp with ESMTPS
	id ok7RsYN9kqvuookm8sRbhD; Thu, 12 Sep 2024 14:26:24 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id okm5swSaii3Rgokm7s6zoD; Thu, 12 Sep 2024 14:26:23 +0000
X-Authority-Analysis: v=2.4 cv=WootM8fv c=1 sm=1 tr=0 ts=66e2fa0f
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=VwQbUJbxAAAA:8 a=vU9dKmh3AAAA:8
 a=7OYjvGxe6aps89qF7tkA:9 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=q3nSf+jGddQX3+uTVKIG1Xgr4itWK8uPrGRSisvTDwU=; b=iNrPafFIoD65zmFiipdpwCkAx0
	lirSOPNcyCcAP8W4t4IrFzwFTCLI+mzx0Dq+4zJ9kFNBzAJ4/VycyKvazzEuPqEo1pRjtNHrbKp0o
	RWbp3UwvVzszBP09uB+8YaALFDPb82dYXCJTIaTBAB9BytRAgaNx9YdWjQVrH8/M7LOotkJgNu86D
	jr2r4zmBBcoz0xqCwHUzfUg8hzV6fh5RTxIfXrKAB+uCqYb3WvwnFm5ZoW7L4tqZ/eq5N1xiAbWyv
	A8MMAW512hBYd3KPDOOMDwgU0nQL9aemdTXkxpc1oiURd/rGTSVZt2r1w9SMQIEFvBZLEOn5tCzg2
	VgaTjbjQ==;
Received: from [122.165.245.213] (port=41006 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1sokm3-003n4z-1r;
	Thu, 12 Sep 2024 19:56:19 +0530
From: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Subject: [PATCH v3 5/6] dt-bindings: arm: rockchip: Add Relfor Saib
Date: Thu, 12 Sep 2024 19:54:50 +0530
Message-Id: <20240912142451.2952633-6-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240912142451.2952633-1-karthikeyan@linumiz.com>
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1sokm3-003n4z-1r
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41006
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 58
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfOA2ao/QLJgSYUuG2k6ZXS1SfUqbOEeMmIW3kX9BpruP272Q9quhD8qDocz/Xw2tA7Nou+ZvPoWBHZALi6jh6vQCHn0qlPMpKjmMIt2zs6XEP2UoTjKc
 1JaCsNp5SyI3O+EalS+YiI8IjfhpdtvV3YlgAciOBRBHiG4KHk3BgMjudjkImWg5mep0KEX7HQprmT65cNKZIAVeW9L9KWKjc1kzGSpvDuS8xUZHvnNlz/qi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_153035_113710_3E3FF8BD 
X-CRM114-Status: UNSURE (   5.44  )
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

Add devicetree binding for the Relfor saib board which
is based on Rockchip RV1109

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---

Notes:
    v3:
    - no change
    
    v2:
    - fix wrong usage of SoC enum

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..ae5e0104612e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -848,6 +848,11 @@ properties:
               - radxa,zero-3w
           - const: rockchip,rk3566
 
+      - description: Relfor SAIB board
+        items:
+          - const: relfor,saib
+          - const: rockchip,rv1109
+
       - description: Rikomagic MK808 v1
         items:
           - const: rikomagic,mk808
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
