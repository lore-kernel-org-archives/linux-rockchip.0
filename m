Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03788CD13CF
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 11:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZelsBfJSK//rWwhgJSIrInsplfqoBuCXyl3x9TfY0mw=; b=iK3PeVBBoY3ZsZ
	UfeP2Z3k397/CDyot1BAA2n6nNDkUuetDL9UEi5ETBf65P/7kJmBc+IIxNc4SVhfytDlV4ptFwbXv
	cyjua2ec3YCWoUKLuEKYBEhOEcqLUgSVp2aq6FFyP2xbipUcm2SfY9swgO7xgzWYyBmGnNWS9Otkh
	eDVHIbOCj2YdGxG71LTVCiA0Qj0X+MGjADBdWBZac14DF6uOSciq8KK8iW79B3IJTxMv2RIYy5dr9
	gspL/PXwtsj4507zK2tHxKSC66RSuDBsHiCSB9X5WyKiiYDqON3bYmVsxGhUR+8uOrJNyWVOt+dmH
	6zBXIichPT4+sW1aEQCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRIi-0000000HSVf-0x5f;
	Tue, 03 Sep 2024 11:02:20 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRDs-0000000HRQV-4BkJ
	for linux-rockchip@bombadil.infradead.org;
	Tue, 03 Sep 2024 10:57:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=PAMyEJR5pOPxI5Asmm0hE30XD1Dj2/A0rZvF2cKurUY=; b=D4s3lE3Ncygx3euukxuyo/gps/
	3ptg3YqSEQVFY/r9bkjnCudDQ2Qi9+037G7fyQZlkbn7CiY2yGS86Dq5KdQf+yyu1fI6bO0PtHNh0
	dkyOKBVAtolCRy6U5w94TXnvVwM6W5zL9CwpBT8lVKfBjsfEVlXCQOWzBdlOSkXGU21t0r6BF1l8l
	LeuERr08kAI2lmSk84W4tKghbGbpMTCHuMdXnTcaFD2pUXDJ5VHUHTtOkFZKSqcYa7Ynl+iJznCWc
	zVXekAYvKunm+x0EYw85iQfgDbCg8W30ioMlCQmtFdF5LZ2AYViLlXzqpVkVqXH8MUh+Ixgc5yjNe
	+ie0bP0w==;
Received: from omta40.uswest2.a.cloudfilter.net ([35.89.44.39])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1slRDp-000000086tr-1nmE
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 10:57:19 +0000
Received: from eig-obgw-6003a.ext.cloudfilter.net ([10.0.30.151])
	by cmsmtp with ESMTPS
	id lPbtsZzR4vH7llR9rsb6cO; Tue, 03 Sep 2024 10:53:11 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lR9pstGe0V2ivlR9qsUyXS; Tue, 03 Sep 2024 10:53:11 +0000
X-Authority-Analysis: v=2.4 cv=OLns3jaB c=1 sm=1 tr=0 ts=66d6ea97
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8 a=7OYjvGxe6aps89qF7tkA:9
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=PAMyEJR5pOPxI5Asmm0hE30XD1Dj2/A0rZvF2cKurUY=; b=F0GckXGjjqs2/oWFghEYepfzkb
	G9xaeaUxss6pXFoWtHEgBX31j/rE+RhsfgxlSP8a6SXmzfom2WHkKuTGP9BAXoxKxDzc50Ffb/rI2
	mpCe72cXud+OFetv2eWMSHgw7ghNTkRtTg5Myyo4sj/TU7vgYmFdwfIUbgKG0sUkf4Mpzx0l2sM4X
	oCUt8fLEldkTHCfe8C+8CxFVcRq5VV9/baq6q9fh581D5nMkdL13Jz85QFImIJQ+PQrknEDWYNgPK
	pJ1eOWzfZNVObUMWtTK8GW9NSR5QHdlOAJv2PkzoFAODYzgg6iQdx7qi/NVY2DG81ggQiYPuT4YiD
	73XwK52w==;
Received: from [122.165.245.213] (port=41440 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slR9n-000Elu-2Z;
	Tue, 03 Sep 2024 16:23:07 +0530
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
Subject: [PATCH v2 7/8] dt-bindings: arm: rockchip: Add Relfor Saib
Date: Tue,  3 Sep 2024 16:22:44 +0530
Message-Id: <20240903105245.715899-8-karthikeyan@linumiz.com>
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
X-Exim-ID: 1slR9n-000Elu-2Z
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41440
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 74
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfKCX8zSGVQkfaa4GFi9PXq9t7xWzrN7z53vmBzKTng1F8fxtlfyVUdeG0jplMBrXofRu+bqSyu5RkC0wOPjY7TmD1JHVVCPvLS1Ekp8MGuy1ftcO73AO
 soY9DOes3h5Wjw/p/4j1tMZYsls9vds/3mYQrO1k3ZBgHHjNDKiPtM5BPfSL7H20yYHEpNlNR0BJGvrVQOzmh3PMlKzFcmAQ7f7jqROWyVuCQw3GY+Uca4H8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_115717_625631_161DA36D 
X-CRM114-Status: UNSURE (   4.92  )
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

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---

Notes:
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
