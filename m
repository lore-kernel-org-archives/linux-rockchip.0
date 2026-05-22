Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD5C0CD5BB6
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 10:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSA3BgcL/ZUqTZL2BwJUeV24M0MhBXKy6Mq7SdDa08Q=; b=Vkw6YWiEMNCeU0
	bL8uSS4LjLpgt5ZeyyUoi/oyPMO9d/GWEdPkJL8Z4XJfq2tPhd/VxOoI/kSib3ES2h/KFISVJaYLN
	38zCSbodkg6QfmdzLmFE3n9yHh621DKNbTR5FzwkViV7rbBuHBmQ2p+uw0LHqaNwyj7kc7fgqkUVj
	7JMeH+XcHFLC1jLIfY1pIqhDTv0OP54Is8BEwcdBDe4ZWOvCbRFX9Zb6974dMG7gDp3Aw+w33mXb0
	g0cyGzF5/9TbUJrZdkVlJpW7OjiAHosbjRdQYePhfesrzZK3l0hMWx6rk0UyfRDGoAzsY8kyBBUHu
	dfJWZ50TXo0/HieAO5bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQMjI-0000000AQVj-2uO7;
	Fri, 22 May 2026 10:03:44 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQMjG-0000000AQSq-0EsX
	for linux-rockchip@lists.infradead.org;
	Fri, 22 May 2026 10:03:43 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-366330b6751so5569447a91.1
        for <linux-rockchip@lists.infradead.org>; Fri, 22 May 2026 03:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779444221; x=1780049021; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n4PQwaR5Pu3llNRhqAB+zh6CPiNVALJe9/CtlXd6Tm0=;
        b=MxrBLuQRaMVqe6pOtQ5qxCRUr+30lwcUG8SACq7n/RP4Lhot2NpHrNtCb9dzkAnUMl
         ZTB0M65/P/9NMBh8QkGrWb2rI25dcecBnEdN5Lyvw8gD1RGIygYUwSzZHhb6AuCO0iB2
         Sc84PxnXY1sR7y+exFgciVdOLGNExthjD5nu2aZ0GfBmZ3NZapTUs/6pqh96r8YHg/vj
         HahkxPoD4841RpC+c165OUgiF+p6ihgBCnEJ3caI843d5TY9p1Jq6qUN0QYjVpmNx+20
         +i9al9I+8KRC86SvjwgXwmqOQ1/dMRADNZjZPLpG81zwxlDlXUFOTtA/yT9cbAKej57o
         vrpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779444221; x=1780049021;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n4PQwaR5Pu3llNRhqAB+zh6CPiNVALJe9/CtlXd6Tm0=;
        b=f1KhCqJJge5DqG0CYJfD2M/Dh/WJiz5QuAnffpRSu0g7zNdrUbamx1uUWikP3Ujemv
         3a7aZyVb0ns2qaBTPxFQi1uTFL4bVirzQ5d4kiA3tFSfcfT6n0XTuGYj0Lex5VV2uaxY
         4iG/XiAYH58wiGre3OiTboTp+dlMVQdsNkLpRpuPwMTRvI6p1xZNEwqucbWLyLgfrG5V
         bCh0r9nvyUKiOC+62hiiplYVnmjMq9acBseUrdc8/c9MvTNvABkIcFReNMrF0GnQwMs6
         Yg7jY02h8p7bXeTVWAqRPDavJo3ex6x+FIR0rU3RDQtLMNEVwXvKe52eQWmdgdFCU+gm
         +6tA==
X-Forwarded-Encrypted: i=1; AFNElJ8BZd0W3VcGUgFG5ADo9vKaWkSSvEMueUsy/o2N6O4tgl1y2l1qStUvTCR4R1S9wwXJ2ITNcFBAGdswjVCZnA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzXC8J0VSqOgJn5vzKx8wED5V/gRTI7M6Lf5U4X2vuqc/+u+duf
	K0/zVhtN+PDYxytFADpMxtSRY8dMa5KZ0XtYNU9r1zxfhATw2b4hk0X+
X-Gm-Gg: Acq92OEGF/9H4psBcLdO12RqmuYf9eudoi+hD1y7v9hqXop7J0IclSyrHlaBYieS5F5
	3wFZl6po5a4XCUqYsuudUBSBWCOp5CvqQ+1DlNjTSiI1RtCb6tKs4GFIzUBRC+sFWyj+8+zGCU9
	Oz1N3p8zQ9marbJOjOFDQxaIbXPzavL0WZr8nwNzbuV9arE5MGtTm0At09aRWvf19ztwSA9PeAL
	U5ySm0wP8+xlcUtzwmWLdU5lblsjx8/PvFMOCmnLTOL9PVH4GIp7bIvFj6ZzFiVuL8hixMGCfPx
	5BQEHgSSoTgnFo0zKlh4STK2jnx3GVRZLGY6mkBrrKC32WHew+OXCyYUrJos7fFhY3o+YXrWMI9
	LKOSJdK+ZFhWHVVmZjbxWt1Iu+ASGGKTFuqKApFQFJJQdsdYMeu6jePcYhLOYaEjMxXLmQ32WxT
	1SGrrNeXbnxP3CXNMrWgvY8XM12+R6Bb2MmHei3kF3Un2yW9L3RHNL1YKeZg==
X-Received: by 2002:a17:902:ce92:b0:2b9:7ad1:bf2b with SMTP id d9443c01a7336-2beb06924e5mr33628175ad.29.1779444221237;
        Fri, 22 May 2026 03:03:41 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb56f4343sm18683455ad.36.2026.05.22.03.03.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 03:03:40 -0700 (PDT)
From: phucduc.bui@gmail.com
To: broonie@kernel.org
Cc: lgirdwood@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 1/3] ASoC: dt-bindings: rockchip-spdif: Correct SPDIF clock descriptions
Date: Fri, 22 May 2026 17:03:16 +0700
Message-ID: <20260522100318.73474-2-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260522100318.73474-1-phucduc.bui@gmail.com>
References: <20260522100318.73474-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_030342_096495_4DF7AEB9 
X-CRM114-Status: GOOD (  10.13  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

The clock descriptions are currently swapped relative to the
clock names used by the driver.

Update the binding descriptions to match the actual clock
usage, where 'mclk' is the controller clock and 'hclk' is
the bus clock.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
index 502907dd28b3..b174d7498029 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
@@ -45,8 +45,8 @@ properties:
 
   clocks:
     items:
-      - description: clock for SPDIF bus
       - description: clock for SPDIF controller
+      - description: clock for SPDIF bus
 
   clock-names:
     items:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
