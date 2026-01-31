Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77E57D7977D
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Jan 2026 15:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvUclBLsFnn5mcI6mMOxO0W/PVr6Nj4mzDDzfu/Px1Y=; b=NXthuxQogUcBt7
	9cXEaJkYuzDSUgvmmMFuXgbS+QfvF4Q5zkvTx58PYsbIh5MICIfb5CdMU/nS7NWWZy4UoV+jrAHqk
	Mhc4Fo4YftuU3PNpuOiVHhlTpZXf7k0hL7eX3HZDTeDBki9Bs9i4XbDaUDsE3SrpT+mZ1q5M999Yx
	EYcFr3JFJVEUqU+c6IBvc4XSdX8q/5D6MhKlRWL0iFBtigdONpGwvKwXtO+VATCD8pL3GlouMFpbd
	2YlA1c68q0zJmHOM64IcAUbRIq9PHu4oik/mPN+ykEsT9DsB8Nek/UCGDFx5/jHUGCXaioi6lafK2
	UUT4aWs9IATyt7GrbDBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmCwX-00000002kLU-40KW;
	Sat, 31 Jan 2026 15:31:26 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmCwU-00000002kJn-47LR
	for linux-rockchip@lists.infradead.org;
	Sat, 31 Jan 2026 15:31:24 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-c6788f3db37so400622a12.1
        for <linux-rockchip@lists.infradead.org>; Sat, 31 Jan 2026 07:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769873482; x=1770478282; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DAut55lNFkfH4Sk5JTUQKJAHX4+yf6NtX5ad7G5O33k=;
        b=IhnJHxVjljjCXfJgUByTQrc9PcUDJl1vTu2n0cCO3lqTpY7ifj3Cf1Jph0E8+eNd12
         Cn14iHa4oTFLLIzMB43sBpZWxt/vljxdIbrb64eoY+HUkTGhX/bgXvHtOGl2mUYxPuXr
         j8AR7gx5TFLPYLHCBFpG36orx/8O8X+L355mkAYIXr7Mx8fowWjqKd37LVRPa5XaD5Cz
         h0Rz1b3rAZaOU3n4XE1MXdkRxoncDlRnFW9r2/6r9sBdlSGwSAVr4yftpunNhX5sDurA
         M4WylRiREqN/IlahrDETGE7CL2JTmVNW6Qxs5/7oMAo4z2LIfV4veer+yMCRqnLsB91Z
         PkNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769873482; x=1770478282;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DAut55lNFkfH4Sk5JTUQKJAHX4+yf6NtX5ad7G5O33k=;
        b=Y4C+jGX8uIotvMATpL4GPc+vK+JonN2CVa9veFX5AcarHQPZ3tqCCA4n9Vudhrogpg
         zcuHJdfE+6v4r/3KaOGJGd12AodamQEeSZPBJ8UQtu4EdBUtpY+tJQikMfRRDMjSJ3RG
         /JSK9UykcNvb6+b9AmasUIvBmTACFEAVAeQl/n04g5zT1Tl0/94yT4wL3qdDmCnYSO1+
         ZEQu9br7hnUgR1RpICFYeumYRapx38YUWAx4f4sROgEf1+KFCsC964kmUftlpzva91is
         d5hhdlAslAfLT7TaJOVosK76i7jNxegIDeylAixsLpb9ya1xjXifmqPx9EmAMVJPdMoJ
         mMyA==
X-Forwarded-Encrypted: i=1; AJvYcCUZ3fWCKTdmU1xgpLspy5u/PPcHF834kJ3PmLtXN70IG6bYj4CCQkn+Zo6GHDZZE2VPDjZIOPICqDKT8guynw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyorp1J0KuQF3J2cs2Zu/ArgO3v94agJU8gUYkB+WWTZbwyg6M3
	zXKyjVh1d8nUEkODS8SMDxrpwUPZ42UGEli0gx7eb4ePPiW3YzPp8y85
X-Gm-Gg: AZuq6aIySTH083R+bmF9vuAf9CN9P1Ow4ebIPTHyGEQMZQQ6+ofjOAu2d+S4BXe3atw
	LArSdQ1LIJXMzIVd2mAHCGirX2aVAIqMWwbs474mOc0pekDc4p4bCu2DfW5vtg5eKQbFRs/tGMn
	mtMrS4vWeO6GN6o6uRgqIvGYAHrlQ79OzI5HKr0gFCFk6AV4xxhMv8sDMks37aA3furshQsmaWL
	nFxYaadEpAcGLuherrsmR9wQ8mT1YUCLiF02BSRTAv6JOmBb1lfamig2schMgo709deKZdaM5kR
	74jKudKS/xXPzTVnfn0I5JZ3p0KeOIp1do1XEH6aR7zUw3vv4xUdxW3LwJaTafcMvCmYnJmnVhB
	M6iAiNBc6ZHT+oAMk31P5vqImaAKp0XPxs5j95CkwUHs+YwqLZvCwWYiZjGiFBY1E69tyJViLT6
	PP+fx8FU3ga3qi3Eg7i+8B6r+jxDupbahvwyK3XSbqcEoYw0Wv
X-Received: by 2002:a05:6a20:9396:b0:38e:90d3:49c5 with SMTP id adf61e73a8af0-392e01438aamr6048600637.53.1769873481898;
        Sat, 31 Jan 2026 07:31:21 -0800 (PST)
Received: from arch.localdomain (awork135098.netvigator.com. [219.76.135.98])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c642487f1f5sm10701122a12.0.2026.01.31.07.31.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jan 2026 07:31:21 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co., Ltd.
Date: Sat, 31 Jan 2026 23:31:01 +0800
Message-ID: <20260131153106.31723-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260131153106.31723-1-jerrysteve1101@gmail.com>
References: <20260131153106.31723-1-jerrysteve1101@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260131_073123_018650_2EE8C900 
X-CRM114-Status: UNSURE (   7.87  )
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

OneThing is a company engaged in edge computing.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..49607cf2941e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1199,6 +1199,8 @@ patternProperties:
     description: One Laptop Per Child
   "^oneplus,.*":
     description: OnePlus Technology (Shenzhen) Co., Ltd.
+  "^onething,.*":
+    description: Shenzhen OneThing Technologies Co., Ltd.
   "^onie,.*":
     description: Open Network Install Environment group
   "^onion,.*":
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
