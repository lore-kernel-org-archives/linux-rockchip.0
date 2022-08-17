Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDC1DC25B08
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Aug 2022 20:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FS//jcmLlES6sXSpOQZWH6AdmG315bsg7uSkPtphu5g=; b=YN0aSNKfU96fBK
	NQfME0hbTVkDo1PK+NuwXhUFQHi2nmN8/DRVtHZP4fUiDm8rPZGxLc+5JVRlQSfDNGWL/BbdCXlI3
	/JisI6onkj/ZKUXg44Q9Srj4Lf8YD/4c8nXj1Z0UF32NqLPs+1ijjQbKI4h6avLZc1YB9h9sCTUoL
	OyWIQK7985JDVPv1/wrNchRx4Lq3RtmElk7NQplg2+8SGx7G/za8dIsJV/ITYrGEwE5I0Z5lxjCXn
	N/KVPrweY153FybkgY/HxH17VPbTIkMxSZNRIeXLPzDxsnxaHCL52oAUnRlCquwCvpfbrgSdnaSq3
	AJOrpNuvoaIQNw4D9U4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOPzQ-006aoZ-BB; Wed, 17 Aug 2022 20:50:12 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOPzK-006aiC-1u
	for linux-rockchip@lists.infradead.org; Wed, 17 Aug 2022 20:50:08 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-11ba6e79dd1so11368427fac.12
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Aug 2022 13:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=iJqtK0dGjPmCmRFeN2TGuzxFluIScmLOoRQgXdWOt2c=;
        b=Egngsze2GMo0rSH0/Rv0OSdLueu7URHPOa2Ey/RErbW9u6YFeUT4JuqUcJ2QSYEwzy
         afdptwR2nz47Kt5pYRnyTiY6yNqFDi+9PTjAt+Bc4epWnR+1Ag6NE3zZtURoehurKs1K
         NRs6L33zZKXIvvET7s48vSDpO5Zo0nP8J7wNGrdQqVoBnYUVIQNBR6yKMOpWVlpvKJD1
         SW4Eh6Un2zDoiVDXaPK6gtS8zRCuWlh+N1WfmcQN0h6sjvczMhVxH4hAFjW7rxVDsIKq
         cZ/Ei9r4tFskDr7Sp84IMC9PYKtpTxejK1aKRBhsKfca9FTdSWKVZHNAdskumUpXPOM2
         Ur5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=iJqtK0dGjPmCmRFeN2TGuzxFluIScmLOoRQgXdWOt2c=;
        b=fLMOJm6Fkfmx+ay9WxuzZedq1AWZ7dfApXMCbVrllW9y+EUKtw879a72b6ZXb+eqQX
         7jVzhG8b279EBkDEsUzdbCGBiR38tBOxUo6FTxDYophoxCd7hhHoVKRb2fV7U0Thsasy
         AGOGrpwPBW7OWpD6QNoG6dmvUc8q2H+MJzHiOnhRBZbQm4gT5pbcSkBDFcHN4vPlZ+DY
         DqRzpfgPiOu3OKxFq4vsOnqAm7BvnacyeEDcLk2UW14k0vctLzTYd7ztqAC4Gu9jzd83
         g8LtoLSBxJIXzS+2VC8X7gfiAXyfQrf4dbPpfOUG0U6o5jGZNj7JWGrFy5yaw7d6d+1i
         v0NQ==
X-Gm-Message-State: ACgBeo3JYk/lHI77waS3R2k8JuFs4a2PdQwQwsyYRSbMtuKvCUtZ/eRp
	w1TrivXKmccX/KLw67uBFX0=
X-Google-Smtp-Source: AA6agR53GiEyleqK2We6adGLOFF9HtbnhchllSe/5fFz4jqdpEEq7RyHsXZVweX5PadLb18qiAULMQ==
X-Received: by 2002:a05:6870:148b:b0:11c:7f09:b48e with SMTP id k11-20020a056870148b00b0011c7f09b48emr675517oab.139.1660769401614;
        Wed, 17 Aug 2022 13:50:01 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o66-20020acad745000000b00342d2d79a98sm3203321oig.42.2022.08.17.13.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 13:50:01 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	pgwipeout@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: add Anbernic
Date: Wed, 17 Aug 2022 15:49:52 -0500
Message-Id: <20220817204954.28135-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220817204954.28135-1-macroalpha82@gmail.com>
References: <20220817204954.28135-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_135006_116237_15DBF19B 
X-CRM114-Status: UNSURE (   7.47  )
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

Anbernic designs and manufactures portable gaming systems.
https://anbernic.com/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2f0151e9f6be..2a5a98d6fdda 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -105,6 +105,8 @@ patternProperties:
     description: AMS-Taos Inc.
   "^analogix,.*":
     description: Analogix Semiconductor, Inc.
+  "^anbernic,.*":
+    description: Anbernic
   "^andestech,.*":
     description: Andes Technology Corporation
   "^anvo,.*":
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
