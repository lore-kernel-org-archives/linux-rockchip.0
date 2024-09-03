Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A24BCD3429
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 10:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ruzXEBk/IyE/QtfHMRq7x+ClBTpGd2GnZxhPUOyxKf8=; b=KwVHosEb9eCZw0
	rkXljUcM+auchSVWv97g37OhQ5hEG0ycP/jcuvsht2OFMkKUwPXKO+QHTh+KlW+bHcw5bZwP3IRI9
	fNJYj6E2mh6KSq9Fl2RE31WFnq0kdRJyuWYv/gwH5vYGxMrVv15p6RN1ruOel39iJn/2pp12W0CTQ
	jzdREFsrnVhSZeOIBD3ymj+/9R1wjkaFXUsuTvcb+O7zGW1ou08ao5zK9NdFaOEy5bYQULebPaDxl
	v9l3N6eJotvboklYKwqg8jGbSMECHvCFD5iGhmPinklsCX701oq+yxm1Vz3FCI+F6HdoptBEUAuqb
	SH0v7QnJhxyTNCH6CAHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slREE-0000000HRWR-3Vlz;
	Tue, 03 Sep 2024 10:57:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRBc-0000000HQgy-0gAx
	for linux-rockchip@bombadil.infradead.org;
	Tue, 03 Sep 2024 10:55:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=FbIDmWyU4STgLTHI4VqNt8b7SMBSfP3dJQ9o9Le9Jaw=; b=VTCup4wGy9uMEhmavx/9Y95RBF
	+ev8LtYm6dmIqTnohKh1zTZTy83RuyRYe2pu42gW3JpF7yHRol5jLQ9YLiWGB62tib5gOgspb3i7J
	O7H6PrpyrJfd0jQ3OeZ4Zg7zdXleN+IGeX9Pw8HdCHoPYdQO1eyDw9a9sRCWaCfVxMlBAVo/j3dtH
	/aJpkaVA0Ff0qoJ1PL81Q7S+vzWhwA5teYWEhPxhE/abSMrEISfkCXurNHVkIl1GMjhFCZ/hGQnYw
	7DXIb7Ub3u39YMiW3ZKh5jIKavvJfk24wPnfSaYKyX+SIpujJjJ5m4Z7WH589QI+q6mNq+rTmG6L/
	wgZTuE+Q==;
Received: from omta38.uswest2.a.cloudfilter.net ([35.89.44.37])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRBY-0000000CJla-2NoF
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 10:54:58 +0000
Received: from eig-obgw-6010a.ext.cloudfilter.net ([10.0.30.248])
	by cmsmtp with ESMTPS
	id lN8DsYW2uumtXlR9psHU1Z; Tue, 03 Sep 2024 10:53:09 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lR9msJ7H62GFYlR9nsRlyQ; Tue, 03 Sep 2024 10:53:08 +0000
X-Authority-Analysis: v=2.4 cv=GKAOEPNK c=1 sm=1 tr=0 ts=66d6ea94
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8 a=Kb_rVgeVel1wak-Xqx8A:9
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=FbIDmWyU4STgLTHI4VqNt8b7SMBSfP3dJQ9o9Le9Jaw=; b=mK5jSS8Q8/Iu7NGFXTNQlKgRID
	YC+shzubhO6R0M1heUNWgZW1GE5H9ycqewmgYnBX26PT/Jm4Wj1EVnlRp1R6VNdGLHEiUeRw58r3s
	T+20ayMdsRRLOcH1LLrgHjioyv8m8HcMJbPnE6oJReBABS/dVKAgNs8BvTXVoZ3KNUFWrbci2Mv1X
	5oPfy9nsv4c8xlEMdEXtlPa8JEBBY98Sy0v9OAg4WIs/0EaP/bIpUjQr/0bWabTzQbm+uFAWpFz0o
	0FESaRvbSgB8ZFT+S+khN4MS4+cTTBsuPMt0rzuenM483jqcKYxcYEsgKH9mgTHKDUJiYrg4U+Trc
	H/RCGwhg==;
Received: from [122.165.245.213] (port=41440 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slR9k-000Elu-2p;
	Tue, 03 Sep 2024 16:23:04 +0530
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
Subject: [PATCH v2 5/8] dt-bindings: rtc: microcrystal,rv3028: add clock-cells property
Date: Tue,  3 Sep 2024 16:22:42 +0530
Message-Id: <20240903105245.715899-6-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240903105245.715899-1-karthikeyan@linumiz.com>
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1slR9k-000Elu-2p
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41440
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 54
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfBOOsa1jPGvKuhTkGj+vCxitjyJR/ntp8gNEQ+uleN1/5z0rQEnrcm0te2tDN+iRGkkDnIaF8pCziFFE3MSwTKx64FssKgtiBoBXEAPqEOU7Djd7Uooe
 oQuGX0IQe6s8RxWo9gZ+yDk7GJTSqh8XF463qgJmpDZDe4nPeHJS3MMA6iY3sW0MbeZjxBlJtmpDEReM7R4PrDVJJvEwNuobJQYNAiaZs5ANxYEpQp7m0Q+I
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_115456_935687_0D4A9198 
X-CRM114-Status: UNSURE (   4.33  )
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

Notes:
    v2:
    - fix commit message subject

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
