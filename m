Return-Path: <SRS0=p67a=ND=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65780C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 20:42:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C023610A8
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 20:42:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2C023610A8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0WQIFFnwuX3Y47SZ/BD/b02nOd7HN9IlehT0xMuuEkE=; b=gKVaz/pfDU16uC
	ErOeC/9pj8OYKo39mwFALFq2GIchXABzu63XegHoVqBva426V/749WxxflnBnTkCMxgAlDUGznZ/6
	vCyXOMU0evBI95qpUrdZSvb4Bre16lLO36suADazvJ5iSV0bPDkDEPj28Y42P5YpWJ8gs29RnC/wx
	NBJIxNXAV8LO3kqDNfhwakpU4jQcvrDH9disursVWq1zMHD7IpRi475S7gIZF9V+LBC8VU6KZiVxb
	/OCCFevdHFtm4JQk71fGxwX9YG2XMDetf0EyfRB7c42HlKsa+FCamWq2slltqNrEn78LAkFcIKjsf
	8b5QAj6oXcixdvSb6qng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEHWn-00BBVE-OX; Thu, 12 Aug 2021 20:42:13 +0000
Received: from mail-qv1-xf2e.google.com ([2607:f8b0:4864:20::f2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEHWY-00BBOG-Sk; Thu, 12 Aug 2021 20:42:00 +0000
Received: by mail-qv1-xf2e.google.com with SMTP id dt3so2087796qvb.6;
 Thu, 12 Aug 2021 13:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hx5BuYzZPlLV9cghut3Gli/VGI9yvAZxeJLB5iai7aI=;
 b=Uo0SaS5+c2j3JVzxT/dk+lYUMvJcuYKusi9DYRPX72lmSMv5ww48jGaJBKViR4IXFq
 3SY2rQa+xWUpvn6pkxidJGv1rKSPIbooq+NkaSp2tQtOYNS9WeZ7XBtq+VJ3ytjAIsA+
 tQc3WGZHG7tAlt3fmXtlkdqgIks6tSwU/7V4IOcp2juhPsBXYO3X151vhLwOBPMqIaC/
 IhjCAm6ITN4avuSXbr2r3hbF5EmXkmYtFvQwVLIJ4CH1CvhZ0Bq1VMyUVOgOfqNFoDCq
 8HRM5TVIk4dlTfP6udGt0jHNCu3Qbt1zmjOIH5kVxWIcIXV+82NHcyUT82+Q3I2iESuc
 dg7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hx5BuYzZPlLV9cghut3Gli/VGI9yvAZxeJLB5iai7aI=;
 b=Q9BosO8iEMVWbUA5iYh4A50YYeyzzmlcU4CIPOe2mpu7ojsIgKALPRh0rvKjcQQ+R7
 AB6gDa6Rd58Mrn98FH506iQbe7EPJ6+auBEyAd6kpZ4yAUZ0bwokfqWTZT0ZJbMH4ILd
 3wpeJB7g+qOZDh7d0rr3F1/9I6Sa81qqOXqWjJnCt+ZVaE2nHnH2QtXDa48XC6NVmr5g
 pnf1R2rk6/ERlQ+4/PI6KhNGlz6G2Ts7sob8o7wJs3kOD1ht+VGK4UAIg0F29luKa+Oe
 iaEWUWlBcqTAupZERH1UiCqooCpCMzERe2DIep62PzzEYAvr7CIs7Q6H/7C0f11NwZ7F
 pEUQ==
X-Gm-Message-State: AOAM532CspiZC5Y8tG4HkXConFDtXqOPLD5u+X40rvoKHcUnJ7jqhl7D
 2eDT2UeHVdk6IgnDwmmdzfY=
X-Google-Smtp-Source: ABdhPJzjHPWchl6zyo/ohEEqq2f1YdiTc1K38TF7iQgvhO/0YWaAWT/TrAAEri29ZU6KZ0Hve9zsLg==
X-Received: by 2002:a0c:fdcc:: with SMTP id g12mr5953858qvs.54.1628800917825; 
 Thu, 12 Aug 2021 13:41:57 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:e89f:d077:9161:1bd7])
 by smtp.gmail.com with ESMTPSA id m16sm1940361qki.19.2021.08.12.13.41.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 13:41:57 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/8] dt-bindings: soc: rockchip: add rk3568-usb2phy-grf
Date: Thu, 12 Aug 2021 16:41:09 -0400
Message-Id: <20210812204116.2303617-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210812204116.2303617-1-pgwipeout@gmail.com>
References: <20210812204116.2303617-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_134158_973452_1312FE5C 
X-CRM114-Status: GOOD (  10.55  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Add the documentation for the rk3568-usb2phy-grf node, which is separate
from the usb2phy node on this chip.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index fa010df51a5c..78ff91db0f06 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -15,6 +15,7 @@ properties:
       - items:
           - enum:
               - rockchip,rk3288-sgrf
+              - rockchip,rk3568-usb2phy-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
