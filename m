Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05E01CDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Oct 2023 22:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHny0dJQlDTdu0dNY6+Cq/Ya0ByoF1AWC1Y80voMkFQ=; b=TzVi3XT9sVuWXP
	+mxD4KNI3V1Ls0TKakORy2Gm0pSU0RobLZMpTWIAWx5qlpijgnYa5wOjO4uF+f/W6LTwNfu0WwxsE
	thfUcoQn3N4rES/UO3lU/gpTRUZAVmBgEZFQ01y9qXROguPO6nDNesmeck0INubD3QcQDJHjmUF/h
	iZXCxZZTBsPEcrdEnsJgnDaSYn6MATY3uOXbqSiFW9OWTEc6q/WL4KGRdcyj3BdzQfamTmK5eKSak
	KaxrFI3lpJc2fCfrxdpZ9r98Z2tdJcqEnIEqYbO5R+l84ePqWD1wcCP2tlcU47xfSKoM+17kT8C/G
	3kzG3uX6cBNLzqlKMtUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqi9w-00GsdA-0s;
	Wed, 11 Oct 2023 22:58:32 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqi9s-00GsbE-1g;
	Wed, 11 Oct 2023 22:58:30 +0000
Received: by mail-io1-xd2a.google.com with SMTP id ca18e2360f4ac-79faba5fe12so15159439f.3;
        Wed, 11 Oct 2023 15:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697065106; x=1697669906; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wLch9HsfoI9cTA2tQiy71eRcGUZJUOwHvkzXf3I64H4=;
        b=m1WLpBjXg25GLGa2lHhOqn9AOnM6UmsEQatG6LqPkuftaU1R6a9hJ+mdsZZ7QQW5dw
         U1z77xSAtNjcZ2ZihhRIcSsgkuu7cZEtPbyUo2QZXaCl2ItUiMjQZ09sHXMPCV3qqxGn
         aawRKB1l0vvHeSRCKDrbl04mjLXgiUfm8AclJJCDRbZaktHLUTEn9L/UuhdcZO05i/9t
         SeyrklC1Fswnoff6XC6Bmg2fZrEI0j/yTBsV/Knz7k2jS3gVKtsB4tGKGuADekNkSFOM
         hiq7fUS/++O0eVnh2kfhiw61DkyUHu9LLJwffmpgDliWl2NBwQS13a6ltXKXOcHp9QWb
         vE4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697065106; x=1697669906;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wLch9HsfoI9cTA2tQiy71eRcGUZJUOwHvkzXf3I64H4=;
        b=KfimDEdE3+DP+KaAb9mrRgtOZ3hcuwXsxBk15dfbQCIs75dsBmD5MCrI3SiAlKAEzV
         HI2oFO7KWdTHLa07aT7X96ZYruWqYdTgxCSaiPkGtREobaupntUYCDG10Xfrxfi04SV9
         IESjcjeOZpHPt0FeUjRPV+t9lNOJelpR5gn0RMJ6/kOm5psUSxbpWLfww+8Ai9KFdvNI
         NXRQ04yvFOGwLPStb9n26lo3cxdTuPuXjJvFg28WqfIvo4sH2WRiv43eRf1X95+WUcwl
         Y7gFskzzO1Z2nOopqDkAEbyZbXxl/KbDWFVW/6g04cEbilOn/MJyAiJGlCvUMLd5nyy+
         dW0g==
X-Gm-Message-State: AOJu0Yxy5Ih2Q82S0p1SaG8CTBlN3LWqrox4b/O7+TKKHiGSZSQuv48h
	GWb3nFev4ApgTkd5uNbejjA=
X-Google-Smtp-Source: AGHT+IHnvROW82y1Tnccr6trK2U7/loU8oQJJ9IHEHJ2pzI6iAuI2skprA9wZANbac6bLcZIhGT2Mg==
X-Received: by 2002:a5d:9c1a:0:b0:7a1:a22:e664 with SMTP id 26-20020a5d9c1a000000b007a10a22e664mr25863002ioe.17.1697065106696;
        Wed, 11 Oct 2023 15:58:26 -0700 (PDT)
Received: from celestia.nettie.lan ([2001:470:42c4:101:fcdc:5119:7b2f:72b3])
        by smtp.gmail.com with ESMTPSA id dq15-20020a0566384d0f00b0043a1f6dc8d4sm3632691jab.4.2023.10.11.15.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 15:58:26 -0700 (PDT)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>,
	Lokesh Poovaragan <loki@gimmeapis.com>,
	Sam Edwards <CFSworks@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: add turing
Date: Wed, 11 Oct 2023 16:58:21 -0600
Message-ID: <20231011225823.2542262-2-CFSworks@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231011225823.2542262-1-CFSworks@gmail.com>
References: <20231011225823.2542262-1-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_155828_561099_2848417E 
X-CRM114-Status: UNSURE (   8.50  )
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

Add vendor prefix for Turing Machines, Inc.
(https://turingpi.com)

Signed-off-by: Sam Edwards <CFSworks@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..07f164e1ca2e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1420,6 +1420,8 @@ patternProperties:
     description: Truly Semiconductors Limited
   "^tsd,.*":
     description: Theobroma Systems Design und Consulting GmbH
+  "^turing,.*":
+    description: Turing Machines, Inc.
   "^tyan,.*":
     description: Tyan Computer Corporation
   "^u-blox,.*":
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
