Return-Path: <SRS0=S+7F=IR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E82DC433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 05:16:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B528264E41
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 05:16:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B528264E41
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NK8117X2fqkpqz5k/oYh3/pjeC8YMVsOckape3l8aXc=; b=WDFT/8amyJgiu8w/18Dyij2FD8
	oln40eow1z6x9fXDAc1uZHKqciBnNtsdtSIKaIjmZAwDQvOwSQBOI0Ka+4EiU1R0FJnsmCJEnB1qT
	o4dpU0jxF7F3p9Mn4z+MONUp7YD9Z/7esrfp4YzlN1GeatzQaLhp1mSc6f/AKhtVBTElwrSuw4Id7
	LyuG1PZs9mJ547WdejJN5KbVNuz2293NKBFRlSfR6VCRyd6IC7sxzW8Ke3CQSIwT3WBiBu5mWEc5j
	K1G1crKU1sxrmacC2xMtMFXJzQ7PVT+WWWDv1aM/KD063gvGQU4Ygil5/MuvAG4+06WaNfqqlkZwZ
	HXqVPG0w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lN7VF-006YBQ-7C; Fri, 19 Mar 2021 05:16:53 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lN7Uy-006Y8P-RN; Fri, 19 Mar 2021 05:16:38 +0000
Received: by mail-io1-xd29.google.com with SMTP id e8so4821207iok.5;
 Thu, 18 Mar 2021 22:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=I3edckeWkehetFViH35S0XzqXThEXQbqg2BOwoSeuug=;
 b=NdTIoOuijUwsaYj4Dw09BSI28gcF1EL2e/Vpt7mPh9jNdxH7Q3xmCZIaiBUIHYbJHj
 bvItglCPOpacJTZuMqWdcSRQ4NUcH06UNLbT1SbZDLkmRu3o6ihzK5JqArIQ4iKLTp/m
 NJZ8b0zEDgGRlL4cozg+XR4Zxp5mWxt1PDC++9k2kPfHUufLPWNwzaXez/4ytPTM/utE
 /R3a7LHIlj8XIHhHbWMcQfxPzuta6knzzuZVKwH05JisO2DASMzs6S8ij9Wqqo9K530t
 UIs6QtB4tuV7W840GBnFz2mR1WehRk89BCwhfF7dAcmWFV7iqun+0HEhJfXq/FCnXN3M
 3oHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=I3edckeWkehetFViH35S0XzqXThEXQbqg2BOwoSeuug=;
 b=OwHSrFu7005T0dZ9ysal3BkNhR8zyapz8TXKVFlv+T/H8SX7t1IDnK8dqzqcgpRymD
 G0rZ87xtie4rmka60jyWGQKar0LE2qJtupFaWmoWx/7btr1M1I1ARtGDT5L5xof7FZ82
 RFE3f4RoSSqUNA4p8Pe9mkTP1eZF+DJ/xXeyN8b3D5XeSsI7gOXollX5hAPIrBPZC8YC
 OzMeQxAfK2dO9X0y3VbW7fVSQoifjrCJuS9m/pODHphBzdXL9OMzyRZyipYhuvL/rJO+
 WoP5BLh5VuMHikNnngebboHD5dLjPnXp0hHlRi8knnKiGePHam28wYOEaCkcIN/nEqfl
 WiJg==
X-Gm-Message-State: AOAM530gb4Ley7DXEDOniu8VEibyT3IRnW9lLnTsDbw+xKod1TZNq5os
 O1MVnbIuPksM/LFE3c98Qt8=
X-Google-Smtp-Source: ABdhPJy+q1ldqLqLY9PELr2pNvQ0eMU68AWpl4HHIRnWGcm+8b1ND5wFhjwL4j6fptQM86NuyOgveA==
X-Received: by 2002:a6b:630b:: with SMTP id p11mr1551516iog.140.1616130994089; 
 Thu, 18 Mar 2021 22:16:34 -0700 (PDT)
Received: from localhost.localdomain
 (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
 by smtp.googlemail.com with ESMTPSA id s16sm2013154ioe.44.2021.03.18.22.16.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 22:16:33 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Johan Jonker <jbx6244@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 David Bauer <mail@david-bauer.net>,
 Jensen Huang <jensenhuang@friendlyarm.com>,
 Marty Jones <mj8263788@gmail.com>, Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
Date: Fri, 19 Mar 2021 13:16:26 +0800
Message-Id: <20210319051627.814-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_051637_016538_84F94AE7 
X-CRM114-Status: GOOD (  10.51  )
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

Add devicetree binding documentation for the FriendlyARM NanoPi R4S.

Changes in v6:
- Fixed format of LED nodes

Changes in v5:
- Dropped the empty PCIe node
- Dropped useless `/delete-property/`
- Renamed LED nodes

Changes in v4:
- Correctly dropped `display-subsystem` node
- Dropped meaningless `pwm-fan` node
- Dropped wrong `sdmmc` node
- Disabled `i2c4` and `uart0` as they don't exist in the design
- Format fixes

Changes in v3:
- Dropped non-existent node `display_subsystem`

Changes in v2:
- Disable display for NanoPi R4S (reference commit: 74532de460ec)
- Light "sys" LED on NanoPi R4S (reference commit: 833821eeab91)

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c3036f95c7bc..4a6f772c1043 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -134,6 +134,7 @@ properties:
               - friendlyarm,nanopi-m4
               - friendlyarm,nanopi-m4b
               - friendlyarm,nanopi-neo4
+              - friendlyarm,nanopi-r4s
           - const: rockchip,rk3399
 
       - description: GeekBuying GeekBox
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
