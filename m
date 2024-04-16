Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15CABC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 03:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dc6hByEfrGO6q4wwqSZAN9BHMj15R4UsdL890Ft3Kv4=; b=SGUgWdjodrSRR0
	/cIxF6yp+3r0Snl6WtPlOEOYu5TNtfVuozhJDxvVcbEB9lMhx09JW9/k3DmnbX1PDru8/dJVnDw10
	43o5RaHUYvWFFIzUzC38QLSKd7gjYriPlf8tmn0FaWiRBeUme9u2fQPKOqBSHHkzab8xo97cS5S1u
	J+U6UDOGHE3PqTu8jQNJGk4Vv0yo2KBG9qOKSkHYad2+RTPyKC6OEVQYHTOzs6R+YOqHG5mBUtI6R
	5WPKXl7v+OZC7TOnL2pyIgvX0L/CZCFBMnMCuhIR8SyFuNMLiAoazLzRmSbj9ovg8KP03LzRUglYO
	YiG5l/D1ooNc1Hem7kNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwZnS-0000000AhWo-2a5B;
	Tue, 16 Apr 2024 03:47:50 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwZnK-0000000AhT1-2TZJ;
	Tue, 16 Apr 2024 03:47:44 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-2aa67da7a1dso701507a91.3;
        Mon, 15 Apr 2024 20:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713239261; x=1713844061; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JxqWvddsK3MTcsP5PP2zajM9rLezNvqOsmF2usnJs6U=;
        b=JP/Qt58tB7vLsu4298SABsPc1fTxizLipNIahO1YNHftsZ3dEMAeQAB1V/CL7T89x2
         MPWe91JqGoZr/XS+97zSopDIRjESPdqQ3njs218XeYi9V7NPgujFtoH6PeWNDac4FMu/
         0CCilu0Hz7JUOMYLVjuF8nhCGoLt94DU1/wQPmoxDgc56Wd5pbetsYDTpAdhsXYZvat1
         bNiVRTlm8Zl8z+UclY3nDtVcf1bwpN9TYXV9O8Zxg7Z8SskJ+ObOQ/woPTTVlhLqw6z+
         vnmEAFCLsPA7bMKV3hHbuxu2wErOgr6vVp3gZj0IDKk2GsKNRzfBHsS7kQVOz/Uf9oHN
         Lz1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713239261; x=1713844061;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JxqWvddsK3MTcsP5PP2zajM9rLezNvqOsmF2usnJs6U=;
        b=boyg13bojEi9ExBzTC21kQsx2e7ixK5FaYRbx/Q2UdzxliZ0ycwmyS4sYPqEBNz3UF
         Q3ggCDghy3LGs3ykSaGHQ2ZpzWPrS8VM9yc5iG7/zw8t6N9iSVsYk27so5B5y8UKkcEs
         DcupiiNhWpG6bSfzruYg89+XXHRVBMHs8tj89kgvZJcn/ZUQz8yXjBBBFudJoVzFjeMN
         kizrJyHc2Vt7+2bO2YaxqOERdtO8KMPF/v1+x6WJ5inbS601Gpwv28TliJxSdJ6egcKs
         tv/1zHs+X/Tt7OM869aNnTQlGQ3EwwW03TfsP7ltREEkLt5Ud3tSex92eqvEY242ucqx
         bVDw==
X-Forwarded-Encrypted: i=1; AJvYcCVQmxgCPQY5rBk0dJWF41Ed5hh4byX/Zm44DRnH8zSnA2t1GO0pJADijnhV8f7Qm9V0bhA9Cd95N/c61k+m6RL/vwVp7IMhlmFogPy1Wm3iKR8/d8ci5mRVtF3t0WzTj4HE5hrq4f/hmISyXp9aP4KBM3H91a6eTbU=
X-Gm-Message-State: AOJu0Yz+DiGaTkGQCzYfuklbK4CHCvhPftE83Z0cKOM0itbZsyD0cVIw
	pDySzKPkECGSajKqAE1IJx0kshdkGf8y+thfaBr87Nq6g568tn9L
X-Google-Smtp-Source: AGHT+IFSAyh/H7N2ICssOfQ2GAq52mPe+DM5mYfpzUlOiwseqH3p2hzoggxEx5ubCtHWFUkP0rvWIg==
X-Received: by 2002:a17:90a:de92:b0:2a5:52c3:4ca9 with SMTP id n18-20020a17090ade9200b002a552c34ca9mr11313420pjv.29.1713239261470;
        Mon, 15 Apr 2024 20:47:41 -0700 (PDT)
Received: from localhost.localdomain ([221.220.135.251])
        by smtp.gmail.com with ESMTPSA id u6-20020a17090adb4600b002a51dcecc49sm7748815pjx.38.2024.04.15.20.47.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 20:47:41 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	weizhao.ouyang@arm.com
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: add ArmSoM
Date: Tue, 16 Apr 2024 11:46:24 +0800
Message-Id: <20240416034626.317823-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240416034626.317823-1-liujianfeng1994@gmail.com>
References: <20240416034626.317823-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_204742_641766_0BADF101 
X-CRM114-Status: UNSURE (   8.43  )
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

Add vendor prefix for ArmSoM (https://www.armsom.org)

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index e4aeeb5fe..e47405535 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -151,6 +151,8 @@ patternProperties:
     description: ARM Ltd.
   "^armadeus,.*":
     description: ARMadeus Systems SARL
+  "^armsom,.*":
+    description: ArmSoM Technology Co., Ltd.
   "^arrow,.*":
     description: Arrow Electronics
   "^artesyn,.*":
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
