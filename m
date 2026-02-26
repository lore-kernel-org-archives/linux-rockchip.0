Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FA38FD8FC2
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Feb 2026 14:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=toV8/AN+PZWcymHoARRYD++NO9s2cM28Z7/cR1bbFCk=; b=2/4v8ra0FJ1rC7
	ztVymwlJcwqy8yuQ/mEeEdiL6ZBdEMv0Y4sugXQduyeVFOj2t04xeRa/kKeygbB42bJFVY8G77F+/
	Je9xp9cqpd9seNzLGA4JUNjg4tkkhW1xNdvWZy4gWE8SRjzJd/0L2BNXzfvy4v3lKcPXDjcgJE+vf
	xXlOmeD9Esm/yGWxSjHV1/+NodZZSz8VbSxuc+HZw0h6zAfYHbbk7dzMvGKKY3zwQFY8dBpeOgJK9
	Ecgq7wX8cIRbxyouricSpOYdKRPM16/HE/f/RI0XZ/Xdsq7zWVOPx7nzvP3tV3RHeavn20TyP41VU
	ZF8uVh5MaipRQdHhVckw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvcq3-00000006ORJ-0q05;
	Thu, 26 Feb 2026 14:59:39 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvcq0-00000006OQZ-1Fi2
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Feb 2026 14:59:37 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-48372efa020so8255995e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Feb 2026 06:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772117974; x=1772722774; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Tnnm+dYZ95GHWrygSFjI8gwx36ZKSldeg1Xff84VKQE=;
        b=A/q2lchzmDrt2G+gXkSL4sdcd1ggGQgtKktwrFpfep9ixHTLgdi8OM+gGK0B+B0TML
         sh8tOMCyTphK0jpjJlYB7vCT8BID9w0mvQ2eaDCBTtnd3al5vUUF5uRWgL0C5z0VHuky
         cfIB2wCs3xIyO5ls0dlpTUVths+FYle1t/TloNmiYbtRyCnQmBajVFeG4NZRTvIdxX+y
         csGfR7DqQXxn6zyAym13V22du1iDrpkeQdpbcCUpzgJKxrSdCIBi4g97F88CyOIROgLr
         lu4/cbguzp9Ol4nNcWiNbFbBOhHdzsZ7mQcCNcJYHMH9BYERsnIeviNwxkuA+bqWl83t
         LDMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772117974; x=1772722774;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tnnm+dYZ95GHWrygSFjI8gwx36ZKSldeg1Xff84VKQE=;
        b=NQJwxrsYVTrwKYctuKYxl7qE0Rbtp4RaQ8XnZlSIRbKN2Fldk9XZQQ6WC1wSxj4s1l
         ishwqDf9fdID0Ww1kQbWWBl9TTctucLD5vDiNYpWxWC08aJnfOewkwasxN5GP+xcGKB4
         ovjEk1v0/O4OqImeIdPi5y4/kSIjp+f8NS/vAaJdvToK0TiLD/GIqqL2s+S2+tlba7FL
         86tb5yhBoZHgJoAzq1FnzYGrhmd0KDiBtdDHKFgagcI5CFJg3qeOLk+TMbtr7iIUyNaN
         FKH6WbVHXwQ3vPg4TxxLrtXJ1BPwYngnSySsPfNHJqI+AmrKFIrLskavJgwcHCwxz5H0
         wKFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqVpH+Nk5PtD2Woiw4bAjEzlcuZLUkdFWEQRKfTYeWajawT8V/VJk/veHQvUk7XcBKL2fFlFGrSj3jgttgiw==@lists.infradead.org
X-Gm-Message-State: AOJu0YykbTELN1f2z68BYutmzjYuNndNGzoXN7Vu26cWbQc/Ls3WZTzs
	1ua6SChPM0RBTBGQ6vvHYyvYQFd/VzISejqPD0KI26bTMfHZtGKTatmg
X-Gm-Gg: ATEYQzxGOSFmOy616Kcssgk/wSWoRzmea9NsAZu2NP33W3bY1SKl2QnloWBpUwIuC67
	QIe4lJhJAI+J4GoRHxZRT6Ar4cBE8qHJGTZ+klrzdgECAEsBu6zl2Ny3vTYW/hsbm2yaYRudIQs
	Fb3WrqoOpvno5TWdMAMfbwqN1IJmN7njPb77B6TNPdZN4bYnh2VtYTSC1gVtxSfbb0GJvsDzYQg
	PYqsTE89X/ta6AHM8j1ga1OvRUBNO5KCHWxd9wLy5uMB3cdu5ZGfVvlDNnBkQL4ewZnhlXsRr3K
	6omRpX+6w4GWYssQ+WHa0MMcPFsMBsw9c4mVX5BIVUsSjZ+MPAtic1S+IeRCvucx3Vs4DtQKawJ
	hdVlAyvRDrjrB2YWV7chYPB2pOfFPMno3W5qb8BZZI1WCwp7GleX8J6ny1R7ZXNkkij/msAUYtR
	PHk+xF+aBd326fEOeT2mUTAiFh9ep6Q8WxxGJzPG6IzzhMC8nhRqLpCBLcyMuA8m/1n9pA
X-Received: by 2002:a05:600c:a44:b0:47d:586e:2fea with SMTP id 5b1f17b1804b1-483c217e8a9mr93249395e9.15.1772117974116;
        Thu, 26 Feb 2026 06:59:34 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4766:6506:d16b:e2d5:7fdc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfbb465bsm92018865e9.3.2026.02.26.06.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:59:33 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] ARM: dts: rockchip: rk3188-bqedison2qc: Use mount-matrix
Date: Thu, 26 Feb 2026 11:59:16 -0300
Message-Id: <20260226145916.2729492-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_065936_332471_D09DFF56 
X-CRM114-Status: GOOD (  10.82  )
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

'rotation-matrix' is not a valid property.

Use the documented 'mount-matrix' property instead.

This fixes the following dt-schema warning:

accelerometer@29 (st,lis3de): 'rotation-matrix' does not match any of the
regexes: '^pinctrl-[0-9]+$'

accelerometer@29 (st,lis3de): rotation-matrix:
b'1\x000\x000\x000\x00-1\x000\x000\x000\x001\x00' is not of type 'object',
'integer', 'array', 'boolean', 'null'

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3188-bqedison2qc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3188-bqedison2qc.dts b/arch/arm/boot/dts/rockchip/rk3188-bqedison2qc.dts
index edc2b7f9112d..b56095fc2441 100644
--- a/arch/arm/boot/dts/rockchip/rk3188-bqedison2qc.dts
+++ b/arch/arm/boot/dts/rockchip/rk3188-bqedison2qc.dts
@@ -262,7 +262,7 @@ lis3de: accelerometer@29 {
 		interrupts = <RK_PB7 IRQ_TYPE_EDGE_RISING>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&gsensor_int>;
-		rotation-matrix = "1", "0", "0",
+		mount-matrix = "1", "0", "0",
 				  "0", "-1", "0",
 				  "0", "0", "1";
 		vdd-supply = <&vcc_io>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
