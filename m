Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A73ACE63F21
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Feb 2026 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rz9L07c2HtxbyU7VjNExMfD7AlFgRAbFENs2Em5mRmg=; b=nBqU92syGGhb6R
	OiCiGNez6wwLYSscgLcVlMlORsrgD5NWxynV5/BSj7IKs7vn+fINC5ExzAa89pcdkVhqu64nBA5zD
	iHWavxX3HrjzVdmlQ4KdXTqxER7vUGVVX90a2LhkzCJXPh2lpIuE7d2USB/D7EAND8GhNNxH6ZoDW
	Pbci5hTa2h9SPa+QYvbTNoMm2e/ywMAuPwAYhRAZjHPwWAP//y4BccRovCCRcCPUMrv/+uhTlKp5R
	MqAucQ35tFDZhekmuEvy3enb7bcZ/tknP7U+uP1WY8vni9SIoNC1AH7fVIXJFoDQrCeLXf0kaExOk
	rx7xp3qnpM0y9wiZ1vjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrn0c-00000005pYW-15Ef;
	Mon, 16 Feb 2026 01:02:42 +0000
Received: from mail-dl1-x122d.google.com ([2607:f8b0:4864:20::122d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrn0Y-00000005pVp-2vsI
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Feb 2026 01:02:40 +0000
Received: by mail-dl1-x122d.google.com with SMTP id a92af1059eb24-1273349c56bso3316384c88.0
        for <linux-rockchip@lists.infradead.org>; Sun, 15 Feb 2026 17:02:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771203758; x=1771808558; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gcvwyl4RzaeXLrbPRMjONGomj+VO9fOavqp+iR5Rn04=;
        b=G3YAyOHWYnhHbWnaiqATAqyAUFIM+iYnpIV0OEvZZs8BYE2QstuAglLP5Qa4+i8RIu
         BBb/szRZrOQVXZf/AShv+BpOsKw6eGBc2mVIS2TEZXL+tfXdqCfbcEWh5JKuRo9EEQRK
         WBg1MNPa5mboWedQm57KF09XvSK8vLMVpZJFBS+j096quC0qsofAXViVBaKjF+atdabK
         18deBESQ0s+WD85HDba1O3Vjb7kGcHD2QcwbXY8Kc4tv3ddtzIz4/1BxAUWocNeKSVql
         ODNZHFrWtDo1afop8fS2+aetlS1sFbWEiEC3+L4AipfQzGzSGapooR0qtggQONx+5L+A
         KFuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771203758; x=1771808558;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Gcvwyl4RzaeXLrbPRMjONGomj+VO9fOavqp+iR5Rn04=;
        b=vr49ETv3Fl3KaRSlnA4wWHbulNMuaWoFArT2nh3biLXytTMpPxo1Gt0zt40zeIh87k
         Ry3YXsXURH7tFdyd5Kcoaz3ouhvLm7+l6NK1k6XqnUS0mnybQGZ2ny/rKbHHoZmsrrKF
         sZoRh6Ao6OI065ZW1FijajgBK0ngOHbbgMhY921P5U3VF7Xt4NZeIMvbYSXqF6arWSNY
         sRMZZVN9vI836/pu79JjoZ2bRF7/PwW14L/OsXmNy6yVkdXGaWYsYnfJrhH8U7YAy41W
         +YhYCh1WrKyJU0jn7RexVXsEGyNSiQW17Eodt6tod6hWPcTWXI15ymja1ad5/z1jUtTb
         R7Kg==
X-Forwarded-Encrypted: i=1; AJvYcCWH5ohLbIxHzYHJY7ZpWQgFkclkZOMyawG88dwIue6x44sDLFzAttvJq8SiUCqEV7uT1o+WjM5uGmuabHXRwQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwiUeYNW1KaUx1nhO73uWHe9G9sZMAPWpeWFV5V1OiAiB7sCZkj
	nitRqfoPuuMYcVwqkJthqPcWA1jtaIjoQu+NzRSDphtLtGU+Ks9OYMyJ
X-Gm-Gg: AZuq6aLoOBkSkTxRuYNVswgYfAELNel6eUwpElSCBBbrc4wPhMa8k2Bpu3gf/hokr1F
	8fdOkzCCRhKOiQbx+Ij/BsSsEl0UrwTJqIMHpZ2K6gHuJQxRrFemSOsdii+JLXmdVJVu3FAZLi3
	1lryZGRduJBMJphduPh7Nz7nwOv77bo4lUPFVkLRxJwCVW+yk3NTZ5o6zjfWVVG9HhNMdC8b1l3
	/LuLDa4Cb3wmlYWPKWQTQ/GP16MpPa9OVQeyWIPcivcHnISHPePDWKvWFuwOD3GDcEmAiZFn4f8
	24l5Kk0c4OxSzB3Ks1v+mIlMDOzx3MkfW+1bB4qj+wvjaQfp9GOtU3nERjjfIjrrNUY34xRlVF9
	elCn0kml/kVVRwvD6xcI2rw1VPr+wvtXNhlfEaMiif9Nf7k1jIg9wRFSCdH3poRgWO4TuVIpHQ1
	nMANysmJV8aD3bmpCW5NlgCJErMH1Vo6+Glr1Z4gC9XpgTFbtlq7bTle6UnlWU9E/5hB+oolH+g
	ZvC
X-Received: by 2002:a05:7022:4a1:b0:11a:44d1:533a with SMTP id a92af1059eb24-12741b7095dmr2491280c88.12.1771203757592;
        Sun, 15 Feb 2026 17:02:37 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4ffb:cd7:e7e8:c526:2074])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12742cadb25sm9158160c88.10.2026.02.15.17.02.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 17:02:37 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v5 3/4] dt-bindings: arm: rockchip: Add Omega4 Evaluation board
Date: Sun, 15 Feb 2026 22:02:18 -0300
Message-Id: <20260216010219.2131484-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260216010219.2131484-1-festevam@gmail.com>
References: <20260216010219.2131484-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260215_170238_754125_963BB9CC 
X-CRM114-Status: UNSURE (   8.36  )
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

From: Fabio Estevam <festevam@nabladev.com>

Onion Omega4 board is a board based on the RV1103B SoC.

Document its compatible.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v4:
- Use compatible = "onion,omega4-evb", "onion,omega4", "rockchip,rv1103b";

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d496421dbd87..1187d4743370 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -802,6 +802,12 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: Onion Omega4 Evaluation board
+        items:
+          - const: onion,omega4-evb
+          - const: onion,omega4
+          - const: rockchip,rv1103b
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
