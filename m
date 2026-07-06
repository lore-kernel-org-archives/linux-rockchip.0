Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA88FC44501
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 19:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4atJpiFVlVUFjPso7r4JhQWHxQWqHDj9u7Qa1+dGUI=; b=tRZVZLfKj29bEC
	UT74TaT6A446KDxUnc3Daz+QUKuxg+t2ZSzofxFkoChTBubgI2ydIgGJQT/hCTbbcp2JEdu5SokPb
	gXTiA4nFnbQdxq6zyY2Udo+BcEbFo1rkzvdnNQcLiRHJWWosqrUUlxkZK5a8RwJRUg8FvyNArUPhS
	mCFK0nz3scC4TD69+cSFrbUo8htT4pW8zIWF3ol2hbmYZaPxvlOqaIezQq0g7IxMMYqtLsOdprqG1
	NvA9nHZCJWisEBcnpqwM4214HWneU5htCZLAZ3oMfeGMNgDqIU67zrzMx1l/OZHTvNfv+kX2L1ZFA
	nCULGXQdIq52rPtPlGGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgpTd-0000000DVYq-3ZIS;
	Mon, 06 Jul 2026 19:59:37 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgpTX-0000000DVOU-0PRm
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 19:59:33 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-7eb5a9f02e8so1582198a34.0
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 12:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783367970; x=1783972770; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8G6pGuOuOyYcWebHVgbsnO4yO7+jMa9pCvWAaZf6rmM=;
        b=lq/UAcTyzNC6JJaiAI+bl8qA8zZBMZ1MKJkpzY/TEN05v6fpnTx6W6BWBDnGGLtNpT
         bBW0x2zUl4p1wLb+Gh12jyTqZ86mtFA/Rk0+ZYP94IAR5TiA2qSoi8D/LDc29BxngoBa
         XN57t1lSW3cv1UfQSx0amqnhcez5sx9kiQwJI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783367970; x=1783972770;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8G6pGuOuOyYcWebHVgbsnO4yO7+jMa9pCvWAaZf6rmM=;
        b=mgp8TrBfBtUOYOwkZv3ApgAZkS//j3AsPmWJ7YHAvNngC4As5XIRgkSSXZiH+OsCRz
         dnLHk9VIcJAbzCkoKKqKzi1uGQTmKq/jFFTncXmPKHZmQQh5nhW/LzSW4UOaN5GuMhxC
         o7a6uuxlJAfARdvPyIVZTN/IYSE7awSYLb/M2wGORn0urnTgxh/T94GAsvavyHchSBVb
         7oOTYYmqLunj/4mBxdleMPsPYNZHIsAPSAFu7/BOxh5ulp0xkS72BnKGjb9eyjE134yK
         nD+m14Sua8NM2DEFzgrMfi4BmGJHT1lmnJ6dxhENbr7G91MaUDbeZLHpP2tzdNHDIOrE
         CdCQ==
X-Gm-Message-State: AOJu0Yyg4SM5wo6N87L+dB7D5y9u2DMj1YxhQ35QpUT6qV55tgY5XD6F
	0eoRoEAE7uFanBLnwUmP+VdQt0B/Zp4kEg646lM6B24o5aBbyMd8vX1bENYyqHFt2Q==
X-Gm-Gg: AfdE7cl48xa3sf7L2ajFhHuYBVRgcWNbIaCwo7wFQiWCH9taPIB87svVh0YwEqc5pvS
	806bavln+NHrrebkmSceEwZGfhipMr9Phr9M3oiw7dp8+xU5jg8sWcAP5vyjkBPl+ObrCtrci6H
	WaM8dEhCMRxfwxPi1mxPfuTSKxH2e5KPuCyWiRMHRZw03TPqgCpFTL6aqd01ShTu6v1Mpt5Wx28
	mSptUt4eKIDUh6K4O2t6/OwVK5hKTmfEnC7m5fzvUmhjUTPJTUxWaUkpoxoF4NRmUeIx1iebkD/
	/5jUDUE9ooFo8XIeFv7qDDVxC2G5T+wmWRHnrMRhKobendV5wGvK/ISQ8+4+BJKK1M4ChqAkCu0
	0koGs6c9f/sLnLQZ80nuDKtFTVjst62gMxmAENWFlVNfEzSjbr6aiHciniRGgXS4NS1oVFtyHyc
	zkxuFYAQw=
X-Received: by 2002:a05:6830:82fc:b0:7e9:dbbe:5af4 with SMTP id 46e09a7af769-7ebb23b0a45mr1303771a34.32.1783367970287;
        Mon, 06 Jul 2026 12:59:30 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7eb542d017csm12161834a34.8.2026.07.06.12.59.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 12:59:29 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Jamie Iles <jamie@jamieiles.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	linux-kernel@vger.kernel.org,
	linux-watchdog@vger.kernel.org
Subject: [PATCH 08/12] dt-bindings: watchdog: snps,dw-wdt: Add RV1106 compatible
Date: Mon,  6 Jul 2026 13:58:04 -0600
Message-ID: <20260706195818.3906949-9-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260706195818.3906949-1-sjg@chromium.org>
References: <20260706195818.3906949-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_125932_549354_4880A02F 
X-CRM114-Status: UNSURE (   9.46  )
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

Add the compatible for the watchdog of the Rockchip RV1106, which is
compatible with the Synopsys DesignWare watchdog.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
index 9d25f5e497e2..2b16b7c2787b 100644
--- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
@@ -35,6 +35,7 @@ properties:
               - rockchip,rk3576-wdt
               - rockchip,rk3588-wdt
               - rockchip,rv1103b-wdt
+              - rockchip,rv1106-wdt
               - rockchip,rv1108-wdt
               - rockchip,rv1126-wdt
           - const: snps,dw-wdt
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
