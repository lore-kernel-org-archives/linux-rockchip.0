Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5889AEED60A
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 14:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YUsZuasEc2Nxk2RGT4veLN5xr0wIUDIw9QilDOOpmyg=; b=2AbwyufRMhvi2e
	KdBajcRNFeJWBDtFLyzRJqIZtOcn/OuZc5btLKE/26ei1HPCViY98AF1SgnlELvZIPz34jAfsqCDe
	q9eSSM8GUZ1ZNrGJ8gqgmoJqSLvIPim7P5GPm/Ac+c4PwL1DHejGSMXd9eN6C++/8o3lSpFX3ngBF
	hvlNHXYOxODcpFvqPKY9PrLaFHEYFSf6v25GSkvs5QHeus9HDuv8u8uag1098EGMKxPZKLhHIgCNO
	M2Z9IpVgcQlk4bQ7ueqiqB/LhTK/eajJgFys/rjBljUJQe+ALPevTomD8ppQWpJHWiFSQfmfuoAn0
	BTfarnBXYqRZCK/9JkSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sokrx-0000000DMVM-401l;
	Thu, 12 Sep 2024 14:32:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soknv-0000000DLec-3NH1
	for linux-rockchip@bombadil.infradead.org;
	Thu, 12 Sep 2024 14:28:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=m9JhFxEGybsTyKIPNyycazgqxL6/YVIhfiGyOVKOb+4=; b=EqsIge1qdiPaXhTsKdzwUrCP59
	crSC5nJpVal4VpH95myRp4NiVuGi9D/WpW3+n3yJ+eqNqaO51SjkhhCzIcQD/80fUhbOw8O6DmOcL
	JfWC+TDmkUL+MKstOmaa+n2NU4EMw6a4QVN24F4Gi7/XoajFryO6dTBXJtbX/kvG2K2yjb5wYH/qU
	LiyKySdn9QEjkBbMDC44vn/fa3f/bcK0ndRadZOtz9s9uwoTPdV1JjCMolgLoD7Xazk0fGqIn+hL0
	ZdL/Jqj/g5f4ntkMRSD5dBm5TNLo2TMxMRSyndUOpaKE4p0iQ9kl7linyvGuk4JQqpOsAPY/LDC8Z
	Br7akDdA==;
Received: from omta034.useast.a.cloudfilter.net ([44.202.169.33])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sokns-00000000UkF-2e7v
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Sep 2024 14:28:14 +0000
Received: from eig-obgw-5002a.ext.cloudfilter.net ([10.0.29.215])
	by cmsmtp with ESMTPS
	id ogjgs4ouS1zuHokm6spDnp; Thu, 12 Sep 2024 14:26:22 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id okm3sJhEBeieBokm5s8cw9; Thu, 12 Sep 2024 14:26:21 +0000
X-Authority-Analysis: v=2.4 cv=BoBWwpX5 c=1 sm=1 tr=0 ts=66e2fa0e
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=ARcrkP6DAAAA:8 a=XYAwZIGsAAAA:8
 a=vU9dKmh3AAAA:8 a=L4MHaItcyTsGJ2lxC4sA:9 a=HWcd8CIpyGgXnveeQW_Z:22
 a=E8ToXWR_bxluHZ7gmE-Z:22 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=m9JhFxEGybsTyKIPNyycazgqxL6/YVIhfiGyOVKOb+4=; b=maNASzBIfdxdX2EKB1ta9ZLmri
	5zSPT/B9C+QgusyYzKnDVSgMsF2aON3RoTG8x+Zfdfjm5Z0w7R+XL0Nki6zUfodW45NTACXUvNFHo
	+7swklYVFPezs7YIoPYQRvESyZwbXUMlBwJUFWZ0zeMRNYYF7jsVRnKfSVLQPTM6GIki2KyBPtjZX
	mT0aGzKLI86wnciZhzghrRymI30KLY9h32ThldOrZnVJSHCgjN0fY3/jhz6Crn1dM9HGCqSwNrjtc
	eRvIIYujfsNDvsD+yNVBjOvKrNaDba25AzP3wAMJXobDNaD4hKFaxEaykKFFyyVGXQh/hdd6cDypy
	yQkGp7fQ==;
Received: from [122.165.245.213] (port=41006 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1sokm1-003n4z-35;
	Thu, 12 Sep 2024 19:56:18 +0530
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
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 4/6] dt-bindings: vendor-prefixes: Add Relfor labs
Date: Thu, 12 Sep 2024 19:54:49 +0530
Message-Id: <20240912142451.2952633-5-karthikeyan@linumiz.com>
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
X-Exim-ID: 1sokm1-003n4z-35
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41006
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 48
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfJl4f6K10DMm3LnAVKjErm0lFtq7DlH2S5qL/yTav8K2jVdF5gI13MkSiDPiblLi4AiKiP1TrM14S9o2RQvrkKsRrs4SBj3DcEDKbbF66lqdrykVH7xR
 kInkx54r9alln3Xs7jB/+S/Kdo2Mfe9SpUowSw+boiByBylXwEDkP13agZZh10oELTkNVTDxIQE9l2JFuOSl2mFJryiUr7xqvgulBjPwo93xemG5p9DoXcwy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_152812_864965_1CA6CE91 
X-CRM114-Status: UNSURE (   4.10  )
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

Add Relfor Labs Pvt. Ltd. vendor prefixes
https://www.relfor.com/

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---

Notes:
    v3:
    - no change
    
    v2:
    - no change

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index a70ce43b3dc0..7d10ac7d6800 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1220,6 +1220,8 @@ patternProperties:
     description: Unisoc Communications, Inc.
   "^realtek,.*":
     description: Realtek Semiconductor Corp.
+  "^relfor,.*":
+    description: Relfor Labs Pvt. Ltd.
   "^remarkable,.*":
     description: reMarkable AS
   "^renesas,.*":
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
