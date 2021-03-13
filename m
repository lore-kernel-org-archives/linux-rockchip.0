Return-Path: <SRS0=2xxz=IL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0D4C433E0
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Mar 2021 03:26:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2D59D64F52
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Mar 2021 03:26:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2D59D64F52
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iFRiFBFfNPZLxVQwjQn6U3TsDhfnQpCxTguhsrgHFXs=; b=DNzwisU+kGw5mGXFx1+facZhWy
	RXACJkI7XlPnQpLTviG5F/Uqu8Me10afClteBbtowVJ2eOe8SX8WkTsPhrf68nqIrEGcj3IuNue3i
	tcWHeD7OQTONrjTNq9LhGA/TZUDaet1SlGjpoR8bkwATVi2s87CDDXTpDacdx+YrBtu/tf6aGHPsG
	4y2Sx+J40v2B+iX8NBK3LuVUIFuccPngmroDVRt+GqGQgkfTnZNqm3CQ0p0QXXYru2O8t2uB0hp/z
	F6Wxs2BKwmY6NfAgw4B3svihnQtqE2FVt1G4oSiV9O/H5xwX37gocuL2V0fWxH82XQaR+6vf36Xg4
	SFoogLtw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKuuc-00ClmP-Dm; Sat, 13 Mar 2021 03:25:58 +0000
Received: from mail-il1-x131.google.com ([2607:f8b0:4864:20::131])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKuuE-00ClkZ-Qs; Sat, 13 Mar 2021 03:25:36 +0000
Received: by mail-il1-x131.google.com with SMTP id s1so4403829ilh.12;
 Fri, 12 Mar 2021 19:25:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EkbWvvawOZqv47KK5IQlHKelnnTkdOV4/2jDdv1VKWs=;
 b=oChx00d/dOfZCF5MvE/GxN+89t/pUJ93l0w03dUe/bwP0ZTdzwHrihLPyACvgzziN+
 kf4Mjz1hOceAhMpKoA8lAqW2DecYDIhFjbQqbCZZa+Xpfo2aPi+X9RNFclMtMIzHjJcn
 jzP1jCEbYL+ymBVuz8vjdKxRg310xaiRK7X+IlEWHhTYcuIo8LLIQYKYP6g7Ix9Dx7pW
 5Z3pIEJhjJlTZIfNovlYfKViGxxh3pCJczU8RDa1z0BcMjA5UU4XNM3Wt3ySMAoVK4Ps
 Okv0rMjCVIZkdFC7ewkludCVVYUz7JLE3lckxfRm+UN4cWBRI71JR6asJnpTVtcNaN1m
 Aqpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EkbWvvawOZqv47KK5IQlHKelnnTkdOV4/2jDdv1VKWs=;
 b=q+fOomfhARBayTUpCC1wkzK+ZSr1FxBAEIuZ5f8cyGgkMsdT4JBXIqU0e06glBtzPf
 x0R9NOHU8BgMpq9gC4UhzHZhK+aY3nEkJNJjLN2X4UIsz6S/MWnYb2W0knctg50s1tnq
 eP60N11CzaIj1P4QEIXr6fLe1sJVJ63yljNQUflXAdN42kct2w6idUS0Db+2QVlWDWbo
 alcFpyMc1MGYMUKdaOzO+v+JXB/V9zo95D/qGcFuwpecrsY1kAH3cnUWsR0b7hiWQCbD
 KjDRjnIeDzpLLCkEKWQWamQZJy8vwJTGgV32h+9oa5GIXt4j2aKiabjw5GzUJB/2r/Sr
 Z/bg==
X-Gm-Message-State: AOAM532C23dB9MTb0RUl3JoV4XbaqMD3ZC7F2jC1GLN9ki3Xn92ZnkbY
 l+BLb2xuaT7HGt0YlmxiFns=
X-Google-Smtp-Source: ABdhPJyO3owciWGFItb+L6559F1y22YE84vWPYb/MCixtNov78PCLOv/0p7+zLN1cRAT+8RXNQVZoA==
X-Received: by 2002:a92:c5cf:: with SMTP id s15mr5103376ilt.149.1615605931735; 
 Fri, 12 Mar 2021 19:25:31 -0800 (PST)
Received: from localhost.localdomain
 (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
 by smtp.googlemail.com with ESMTPSA id a5sm3959013ilk.14.2021.03.12.19.25.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 19:25:31 -0800 (PST)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 David Bauer <mail@david-bauer.net>, Tianling Shen <cnsztl@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Johan Jonker <jbx6244@gmail.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Marty Jones <mj8263788@gmail.com>,
 Jensen Huang <jensenhuang@friendlyarm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
Date: Sat, 13 Mar 2021 11:25:14 +0800
Message-Id: <20210313032515.12590-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210313_032535_035417_90544E01 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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

Changes in v2:
- Disable display for NanoPi R4S (reference commit: 74532de460ec)
- Light "sys" LED on NanoPi R4S (reference commit: 833821eeab91)

Changes in v3:
- Dropped non-existent node `display_subsystem`

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
