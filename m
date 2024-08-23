Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01A50C5321E
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 15:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=db8aK5f6K7YITVzwrQJabxxv1nEboRmcApLNOFguemo=; b=oYhj1hrvRt/xDU
	RarzngqB0alBLkS9tD5kuRS12oKMcb/gM/CLnPx1M90GZou6nUJ2IDbfejczAnfoOS0b8gNiMJCgb
	ZEdqfYZeeG/l5SBv/hH1nJphYcCb1Okj0s/dQIBVMNvWRbP7Sl+jnULOcsjbo7CAHGwS8LKpA3NXj
	7mLMiX5mEm5XlYXVzLBc85nmExJj/EMjyRWS/6/7i7dbPuzfR6iBTQHWCl2gpnqz8zHybV8qmWlrY
	Hggc97qdDwrk5ZJWB1G4T9STFISjz9AFrMpAMCYYmJ0Qj1AmB+jy5yloYYM4M9z3/3JeKdYCw1lBf
	TPqu/r9v9CCL2eexhM0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWP6-0000000HLTJ-1EFY;
	Fri, 23 Aug 2024 15:40:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWMI-0000000HKkv-2Nzk
	for linux-rockchip@bombadil.infradead.org;
	Fri, 23 Aug 2024 15:37:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=nqWL8jBxFHYZamQffy5P+pzLgJszdIlE2k6Pctncqvk=; b=oSqzBE8mWyQvYajLtyFCtRNebh
	VkmqBvYX/QDy6YGOKdL0fAiCuJ62EAzex1R47/sjmtRGT4qY17jYtb5MdX0LH5I2W0F+tzJELzjL6
	nAI4WQbwhvKODfB0fjBH2PO1wScUqPqWZDpjDJlGpNZj2MoNr9VicFRJcFahMLmHtm4SysEQh7RI1
	ItRlckFD/CB6c4MdGiDXPBjEtvakk3qAuobtooZ4gC/fSNIkR2UHyvDTIAgFaQ2AFbS2FwWUF7AV1
	07jXEqHbsaheoAG0PqQnQseIIvn2rCnoRgzzZDr8wtZbl0gNRrEZug7f2ZXsLse/OFvnfq89iK6Yt
	HtKAi/ZA==;
Received: from omta36.uswest2.a.cloudfilter.net ([35.89.44.35])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWMD-0000000AAOa-36J2
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 15:37:49 +0000
Received: from eig-obgw-6003a.ext.cloudfilter.net ([10.0.30.151])
	by cmsmtp with ESMTPS
	id hQtmsFZzoqvuohWKUs6cO3; Fri, 23 Aug 2024 15:35:58 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id hWKRshYJoV2ivhWKTsmVrt; Fri, 23 Aug 2024 15:35:58 +0000
X-Authority-Analysis: v=2.4 cv=OLns3jaB c=1 sm=1 tr=0 ts=66c8ac5e
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=yoJbH4e0A30A:10 a=vU9dKmh3AAAA:8 a=Kb_rVgeVel1wak-Xqx8A:9
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=nqWL8jBxFHYZamQffy5P+pzLgJszdIlE2k6Pctncqvk=; b=gan9XfQ+FPKlJQViHy7oe/svde
	KEqV+axl3tQmJQmV3on823mfVI+jvZUTFaSufzEsojlZU9ENnKaDts5g8Ltz/qgvVrJFZnQfD7HjI
	9A3RyfFpbTC/fUkI1HL9myUcppKMFaG5XsDTZRywCCX3jnktHiLp/+OC5a1qLGWhwBOFuKfHAF4Dw
	GAlx3up7Yjd8UWBMr5QyWLjcx9BL6pXYK3pBIKS9lHNhnHKmis/NEYTGQ+5lcHP197WH1mi4bnZbB
	5wPyuA2D1eo6J0cB2IdNemP1oW6AT5rxum7lGN7XfDti5Za+AyRtLMrW9RxDW4Dm6qoSEQ7+jDPsC
	0sdVsaVA==;
Received: from [122.165.245.213] (port=53684 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1shWKQ-000GB4-0o;
	Fri, 23 Aug 2024 21:05:54 +0530
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
Subject: [PATCH 5/8] Documentation: bindings: rtc: add clock-cells property
Date: Fri, 23 Aug 2024 21:05:25 +0530
Message-Id: <20240823153528.3863993-6-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240823153528.3863993-1-karthikeyan@linumiz.com>
References: <20240823153528.3863993-1-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1shWKQ-000GB4-0o
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:53684
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 51
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfGTa+jaLp4HYHajVQ8XcTbmzb3bEm4hLkfzSNXw+E9bjRRdh9TiDdnudGH0WMMT8QEx3zg6xbkM5KUrPdtyw2wBXIVLA4vmqcEk4Pb8a5hdUZOQfBpu5
 mA/d4q980PsOCRQ6YgqKfStlmHo2FYcfTTL4FIyPgiBmg8a1VO66/ycAuZx50csreZwL3+7hNSNTI0CdPfVhW+sAYiWTPxTnvT2RrhZ350jQor8nHj3BDN56
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_163746_020456_FDB08D22 
X-CRM114-Status: UNSURE (   3.27  )
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

consume clkout from rv3028 rtc which is able to provide
different clock frequency upon configuration

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---
 Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml b/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml
index 5ade5dfad048..cda8ad7c1203 100644
--- a/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml
+++ b/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml
@@ -22,6 +22,9 @@ properties:
   interrupts:
     maxItems: 1
 
+  "#clock-cells":
+    const: 0
+
   trickle-resistor-ohms:
     enum:
       - 3000
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
