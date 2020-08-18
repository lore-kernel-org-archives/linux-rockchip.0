Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4695FC433E4
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 14:37:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 173D2207DA
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 14:37:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="SzdaybG0";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aNH7Rb4U"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 173D2207DA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mBEqhk9ul7LpC4GJGZkIM8YChLFWcUG2kJnfevmW9Co=; b=SzdaybG05A+S6OLHyr4a+HIADJ
	tkAhJtLlZ/nBFlx7gDGhd+tj1gEq4c5rM7OFuYsJZmOChJ8WsVqpFT3UwaworYe31Kov2QAG8JI5L
	Hgk1Zrtzk/lSAy+tz6pvS1OmripULs3shRNr2Kahwa7D9Xu2vVPcswpf6icVJ+wBCiJqtJWyJM/l/
	FVpKnM9tookSicnHdXN1WLNsbAqnqlAmOEAuEQB3fxLr4U+Aq0l9HsIx5pNsJYkdqcdrtrgdmfrSd
	c7R3OLQvpr+UnTzyitsIuLn64rPWow8AGEo77EGNTH5cSjICz4o+V0e7SV7rjvPB+HVyjyxaT9xAz
	tuEyGdlA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k82kA-0008P5-1V; Tue, 18 Aug 2020 14:37:42 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k82k6-0008NC-3h; Tue, 18 Aug 2020 14:37:38 +0000
Received: by mail-ej1-x643.google.com with SMTP id qc22so22369291ejb.4;
 Tue, 18 Aug 2020 07:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=2UQZEODYOVCRlh1QRejLi/WzuJNA7W+JKPrcqeoHOhY=;
 b=aNH7Rb4UjQ427P0G/2djpJOYW+4jNcYTY5ueMZJdI+aPHwfi9IVWQ5lmpfsxgPoOyD
 2TembDjnXLlrJ/a8M5UAgVp4WnapO1DdLv6Z9TXH+CUQY9aWYahxInWFDBtnf2ZckZuK
 AXKdp/x2y4mmrDILUtOyZd5aSuFkRAX+X5z2oiFaOrCkQ0ZugqWmLtDxySXxGmQA2Yvz
 tep14aDEZDuEhoOfzeyidXqBxarz8eiwUJhOMdkx0QuWKYJN61zxdkXc/CgACP5Oco+T
 xJgT5p2ERAXYe45DoMXsh1b+c31xNrWX9ZRHjX+1wIklQj71eMW19I/v0zCKuEdPPIax
 Q5Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2UQZEODYOVCRlh1QRejLi/WzuJNA7W+JKPrcqeoHOhY=;
 b=Dt4d9gXdYG2nzfVc/2J/pF4H7scvUk8pej+SvLdGK7Gtz7i6DXwMIO+AbaUhqEPVG7
 jsfvwq4x6/HC0uPV58ON93l15wnclhqYV0tAXxEkovCsPMDFyU+qOJBNf7c4+sTfbpnf
 66kkP9vo/ZeXTRnEnbebtwqY/wH/DcEqFjxWiqQH5AoY5FOTDRNOvW9C5h8Csd3407lx
 5GPRDEWpIg+rymXqMeEslrGUzAvMYUaLgUXbZ/rRKCSCY+T4s+PFbDNsZhn7MyxlSgN4
 90oCeqD1DuBv/3lauqbHfZo7++KEe53L8kTfeTutgK9Dka+pDx05N9L/1P0zo43r7aZd
 mlKA==
X-Gm-Message-State: AOAM531P/ZTYp+e8mrNWOY4zS/IuT3gWApY7g6fOjuhXTGDFOPYUsawg
 DFaL4InkMkpjFNeKZaF2sPc=
X-Google-Smtp-Source: ABdhPJzVRX6brDlwaMQejDzk4wxMr/TJ+2T1mXXnWNI34f1CAvmV4y0EPIUTLj8CH4kNb+vCaskauA==
X-Received: by 2002:a17:907:20e6:: with SMTP id
 rh6mr20096569ejb.301.1597761455170; 
 Tue, 18 Aug 2020 07:37:35 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id r25sm16222575edy.93.2020.08.18.07.37.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Aug 2020 07:37:34 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/2] ASoC: rockchip-spdif: add description for rk3308
Date: Tue, 18 Aug 2020 16:37:26 +0200
Message-Id: <20200818143727.5882-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_103738_160774_9009ACBD 
X-CRM114-Status: GOOD (  14.27  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 sugar.zhang@rock-chips.com, linux-rockchip@lists.infradead.org,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A test with the command below shows that the compatible string

"rockchip,rk3308-spdif", "rockchip,rk3328-spdif"

is already in use, but is not added to a document.
The current fallback string "rockchip,rk3328-spdif" points to a data
set enum RK_SPDIF_RK3366 in rockchip_spdif.c that is not used both
in the mainline as in the manufacturer kernel.
(Of the enum only RK_SPDIF_RK3288 is used.)
So if the properties don't change we might as well use the first SoC
in line as fallback string and add the description for rk3308 as:

"rockchip,rk3308-spdif", "rockchip,rk3066-spdif"

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sound/rockchip-spdif.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changed V2:
  rebase
---
 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
index 7bad6f16f..62a61b68d 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
@@ -27,6 +27,7 @@ properties:
           - enum:
               - rockchip,rk3188-spdif
               - rockchip,rk3288-spdif
+              - rockchip,rk3308-spdif
           - const: rockchip,rk3066-spdif
 
   reg:
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
