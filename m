Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A846C27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 13:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WhS1wTqTvN+R2g88Xuq9/xBPofsm3R+S0FkKlvhWpbg=; b=CVZmC5G+nRYpu9
	R89RQDRLqvjFlxQ7Vseh/Dmm7X92oWfUOv0QhgoNYMUMzesFPxuEur+wGxwGHuD8tfKrq+xhkNwtW
	ME/4ysDgnXcutP+hD7eKDXJurEp6HDlxZqLJzNcijccHNtSZtPcT+iaxCIhpeXfW7C8xJ6ZBi20lK
	mRjI8+nTJyTWLgMmWabLBV2pDTNAHPbZZGIkOeQ3q8ZtgVqI1KgbS6050U/DWhcE/hbeehNfiwqfL
	SWlTi/aD1qqOPl0yU8RPA8YdYQLxxHb1pJgQ3CP3RuBW3Rzc3UsOqRfiGPPxaV4NxWuQHI2tDK9yK
	W1x7ZfYYC4GE2ukXaYjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKeVl-00000009Mqm-1Tkl;
	Fri, 21 Jun 2024 13:41:05 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKeVI-00000009MZd-15tW;
	Fri, 21 Jun 2024 13:40:40 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-57d106e69a2so243278a12.0;
        Fri, 21 Jun 2024 06:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718977234; x=1719582034; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FqehWUTmu3KjLNagitC6UR6pJsfsCjXz84AP8y4+Sso=;
        b=NdmssAXBJmnE8MY88fLrwQjlrblqZ3Ah8dnQsIS9B3YPZuw7tecgIn9XdQ7ksVxej8
         aVdKy6SznxbfTUqx6x9lR+Whlb9qDXRxgoerDbPZs/8v7r07hyC51NZZQ6/AXs+gmrtL
         cmRtPLgkJCyM5GgX1eb2BIRbwWfNwYBmefkk26O9JS9zYjnlvVe4j713q/EWY3zzp9ZQ
         BYr1ll2nx2UIEqFm32mDCv2Jq2JFNQYjZvakIQ3XTguTdbNlAiNlyjRkUkP9ZMtlSI9y
         XQkCcjZ+dTKbCMA7HNdLEzPzEph+DoiaPF6MabHGlXLNdGGrd/GuRFuGGoaZAfUDa6M/
         84Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718977234; x=1719582034;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FqehWUTmu3KjLNagitC6UR6pJsfsCjXz84AP8y4+Sso=;
        b=JcWkhYrfU3lDbB1cUlSYdnhojpkMkyvUbf6hON+9TXYbODLVS0j6YuzKHHXcuQ3mXc
         0uYGMvEIxtUAfV05++K/jAmPPC468bj02g5Feh9XKuNQ5XRkhxeCfrqGzUBl3ufdHGzo
         t033FbIi7ZE4kmBW1MTonQjEfwv1Ngz4JbLIKENEYczv6lpCmSr4e0Z3eaZc0pnGJHuC
         ZbRZjEElqegxK1xrMQh5tQW0fEMHQEo/BnmXsJzaBRGRIjAGru9td9DtK7JYPqfENTjs
         2N26Cx9HD7CsscgFaMrgSMaqLMulp27q/blJaCcCcWyyTe5s1R52EpFw5vHG1tL6uw7h
         VZsA==
X-Forwarded-Encrypted: i=1; AJvYcCXcdyJIAkNOEyPJKC4eGPe0GqmyK7Ya96coJHK7H72IM3dUUYIkrKlh0owsFfnw4n4g7EncMutEB+qOfAocymYapxBwW2IFVovkmDfAYLeaPDqxYFs9xmn4ZNvQc80PP0wGgkbsBFQRSQKz+Gk5LiYBZr53beZDP2E=
X-Gm-Message-State: AOJu0YznjAKEZsYnkzR1t/O3bArNohSsujqcllha+6sUnVdTIQI1kuek
	AgnI2ig3X1crFQpFNBuZzWX3CF7dGTXx0ZoLuKMxjjOxGl6opYM=
X-Google-Smtp-Source: AGHT+IFg7b3CmvswvXCyJGll1GEkVNz807LHUdzUIlvKzLOCJJL2/LsIJvxs0/pWzX7L/J8BkMbZpQ==
X-Received: by 2002:a05:6402:1a45:b0:57c:ff0d:b781 with SMTP id 4fb4d7f45d1cf-57cff0db78dmr6851849a12.16.1718977233583;
        Fri, 21 Jun 2024 06:40:33 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:1b6a:5399:9a4f:7217])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d30562cb6sm962059a12.83.2024.06.21.06.40.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 06:40:33 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 1/4] dt-bindings: vendor-prefixes: Add Neardi Technology
Date: Fri, 21 Jun 2024 15:40:27 +0200
Message-ID: <20240621134030.243646-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240621134030.243646-1-knaerzche@gmail.com>
References: <20240621134030.243646-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_064036_338040_F5D2A2C0 
X-CRM114-Status: UNSURE (   9.13  )
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

Add vendor prefix for Shanghai Neardi Technology Co., Ltd.
(http://neardi.com/)

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index fbf47f0bacf1..6e879abec71d 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -995,6 +995,8 @@ patternProperties:
     description: MYIR Tech Limited
   "^national,.*":
     description: National Semiconductor
+  "^neardi,.*":
+    description: Shanghai Neardi Technology Co., Ltd.
   "^nec,.*":
     description: NEC LCD Technologies, Ltd.
   "^neonode,.*":
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
