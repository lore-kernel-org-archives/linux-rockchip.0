Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 242EBC43458
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 22:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d74ihtD6QyP/e0x/tUW6eU5txtYfWdb9WCfEVPsrAG4=; b=MKN5QCDwS7CvLz
	vngtOhc53kVVtseHfl+TLxm1r9902o+2r/R40hS3pdzNOH6lnaRSeGumsozpDQ+L0OcXOv23/qOVg
	AXsIGO3fBwkOIzCkwHefHDQtLRI87MPYkvJot9xP5uc92SDvwtAGWE7KfYvHPFyv1i3zxPilGFTbs
	vLbTGQlgfSmi+aDbmw6qIEjBqrNNYGTkQL7Cq6YNufHKFQ8dX1q32sXNMO2NgSIxkV9O0dIzP+Uxv
	dJ4rYTBDVe8q5wh7plVx/QEhj5BMazMWnrXQK+7TO7GWFJt6fkZxZ3ELbDmCt/10vtStO/XNsNAwZ
	XHgdAljfxMIkJduwwZPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjOiD-0000000ATyy-2WWG;
	Mon, 13 Jul 2026 22:01:18 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjOi7-0000000ATvC-20Wr
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Jul 2026 22:01:13 +0000
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-7e9ef94c0e2so172075a34.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 15:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783980067; x=1784584867; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=U3MCSu0Vj44YX15WVLsrx07UD0x7rviAz6FLqVYGZxQ=;
        b=ceh0UwkyTUwvWEjl9mVpTesEQTW9Ja4xxa2IrIRgvGcBqvPmweAKrJLTl/wBrHfHLD
         9D4LvFcBafXcEnk0ZNyCcNFmlbIE+ASvfL/C1oRxkyA75/ZXJP5B/GxTicaNV/yfAf1u
         Kn+yF6k2GveyKq2nlW5SFV8tG4tiXM8Go1QCiQA74s8TJ05UGSfGwUeD1H8uSxVE7Kyi
         i14cQKsNu3s8PeibbQ02+wXS+DS0mIBpn8stPxWciyYzWVC2IiQjAWnW94KjPx1QPy7j
         QxlPkXOL1YeKNxVIWnNdNTHjk1SJQEThcBK/+PM9VAZzGHp8iYfaaTTZESR+BI0VwoRb
         RwmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783980067; x=1784584867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=U3MCSu0Vj44YX15WVLsrx07UD0x7rviAz6FLqVYGZxQ=;
        b=gT6syfIx9mqQEO7o6FLw5jtGD/gNnQK/P4TdiK7V0VsIoMbWJwmxVn5gjnTCsEkAHR
         +M57A1818b1xNlYWNDKqdGSk+ooO1pY3FKhYPXcHNtLxfGq3znu0gFuKxlTjG9FkEve2
         maKb6m989FTax3ukjCv8JF2yWXGUuirisMddCqs0lZYFuFkF6izlv6UE4WgBDUGa312b
         fzySYGIuBIfBASyONFikbpDNOLx9yb2502ZUrEV0wwNZcE/nT9bD2VVJzdVLY+kQGW+Y
         VgOtwQHAFruyKivZ67WvfeXLhyiajCDeYqHCnQ981BXGHkfXEHe3hBpGU09WJtfnR461
         1y/Q==
X-Forwarded-Encrypted: i=1; AFNElJ+76w2r/JUKBFHpBS2Zh0d7RowQ2nHRYk7LSeiteK9lR5t4VHl3a4Eo7MPGBZX2uDTX03g33aUvKEaSaG+fng==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5cOC4thj5NpoJvvxVYymqDOwDbrOFtNqdwXht7b92fjMye6kB
	6paYZohDnW2+UbyOFpvYFHKRylXjwZFTM67i0lJ+D14gDX7RjYiqmzfd
X-Gm-Gg: AfdE7clBisHgHS7s6ZBw6Woi/NC9UtEVtbHkryeJJqsbhupC4muAfOFDWrnavrMqvRC
	S/1vOCKflArvcKK3eL/wKLL0/8ylE0Znum3ctviP1MQ2y6ouuD6nlBY1NrGGUQf42twROHiD4s/
	wnomG/gy92VdLV23jugK7Am1nnOR1CFBtH9L3HWmca+kgXxlexSY8l+/jlXTDsU1+Objj4To7z9
	Jrslvp8ZSFvAOoRorA8ShC2ss5rupcwUlp1aP55y2CxsZiiLacRpSUVjXwhLC1hh9RA5mb5R47H
	hSPQadplroT5EPnaHmPcSGWQnkkxH+/qOIp47xaX9Xq6wGEOS9pkMmVq7hEtedsYHDRs6UYvtDJ
	t71/p+qSrvgH6DWACmzvNypFeZnUCwt4efRDkDGfbOQK5hIOu/9iBhRqzkWG3O9DpBWfq7x4gQj
	HrIYeei4458wi0kmc6HmVW+g==
X-Received: by 2002:a05:6808:2507:b0:496:dfe1:e8ce with SMTP id 5614622812f47-4a42af91aeemr7105476b6e.22.1783980066993;
        Mon, 13 Jul 2026 15:01:06 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4a1acc82f3csm12939785b6e.3.2026.07.13.15.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 15:01:06 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v16 02/10] dt-bindings: iio: imu: icm42600: Remove interrupts from required
Date: Mon, 13 Jul 2026 16:58:32 -0500
Message-ID: <20260713215842.69097-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260713215842.69097-1-macroalpha82@gmail.com>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_150111_579498_BE75FFFB 
X-CRM114-Status: UNSURE (   8.51  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Interrupts are almost never required for IIO devices per upstream
maintainers. Remove interrupt as a required parameter for the
devicetree binding.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml         | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 9b2af104f186..f6f97ea03038 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -67,7 +67,6 @@ properties:
 required:
   - compatible
   - reg
-  - interrupts
 
 allOf:
   - $ref: /schemas/spi/spi-peripheral-props.yaml#
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
