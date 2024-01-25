Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7786C47258
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 20:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G89rw46Ul/ATLyL6v/Yt/SAOhmI0LME5t+ocexdbfWE=; b=qDNP8T/c3HepRQ
	zBkWFYAM0hUcv54fSsO0+4yZsoU5/hjjyY40HXzULISB9O+BM1rBf6mdpWbYawGoKfn+tI4eS3nqj
	HXJWmOZ3EpJEOr0YkCz39YtoHfLsS5HATBtp1Kx+k0bHFhH8MgYuPx5OzaYqqJ95jrg+QdryXhAAI
	3BOaQusuZH+p+EMms8udaOOA7n4dsi/i9qfRHuW9oWEsvh9JjLoylxWg1HvUDYkMj8q7W61Ql05T3
	wlHajLhz+XZz8O6hu/PHzMXEm6tW7fzdh+5qpgIq86QZfGjyFpl1hs0dYW/oec2/sVMrXZcH4gqoW
	W7PR+s0qJymI1J8LjrIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT6Ca-00000001l4f-06ib;
	Thu, 25 Jan 2024 20:19:56 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT6CW-00000001l2x-3qdC
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Jan 2024 20:19:54 +0000
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-3bd6581bca0so4437407b6e.0
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Jan 2024 12:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706213990; x=1706818790; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=56wPjQ9/BRbgVLBB4JRK41C6UocXPzyOlVCkMWFEC8A=;
        b=NhWYPuNhtZ40e1bplUfNIo8JZT+4N77ULb91oHkSUOoOam7UeaW9qKmJeG8Qaduwpy
         CZBr+FZJa5++doD0/zKBo9fhV51nyPZ9mwk2J8TVFAbC7C5bc+HAS6X9kjA1SkUmeW+t
         LbBwF8T1kp0YpnjfLHanTtiYDyeoq/q/fyT7M2vy9j+0B1EkiiZ8xtl4oFhjSZOGIUJj
         jC64Tc2zab8cmtiNSR+M/GTfKIVl3im8+3bXq0oJRZYIz1RyyyjJu4jBSB7npn6H1kM9
         J4HsazIlaxRMQlRb/j//rMZr7tLe5EXTf9A4Zu3d5GHoEZsIidTeuLNxjC2FbXM485VG
         SKJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706213990; x=1706818790;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=56wPjQ9/BRbgVLBB4JRK41C6UocXPzyOlVCkMWFEC8A=;
        b=RfLIo16LRDKcFet+ncPwOb3VokUzdqj1rja30P5uJMkO3AJMQRwM/XclW5dslEpx2m
         tePTsM2T6tFD156B4f+EnWgchsrtx8ERe7QDKt2IvditeOoebzXlq819V76axxOvMKTE
         faAAbxXJS34S5Ts5pERcFbX/XXIx8390agH06t29YMW+MDyc+nsnH+aBo1uIYs/+K7jA
         SbPgv3rsS5Wc+69Q+F8RVsFWuUEdjwd3W7DLJxVemlEC4mjO3rAM2AipjwwCCPnziSo9
         ESHP3FAEla8ZWR1UUt9+ObPe83JdTlLzmTVd32QfVgHT/+3kW/MtPiq9t5X7L0ygNfXk
         6pEg==
X-Gm-Message-State: AOJu0YyDSb/mli4Sm8qi5LnrwqxUf2kWEwxeS+Wvrhm52dH0kNIIUo9p
	jbAbfjBrYZ/yNxISJhC6r7Us3UgusQwMP8JQJH3le2kvuMLyFSbEG6ryiwTZ
X-Google-Smtp-Source: AGHT+IGoTao9dDVsscK7tafju+PZ1LILnhfFEKw3jBvFJvRj4DI881eP7BU3Rva6qXVnOGWoQRUbXw==
X-Received: by 2002:a05:6870:b6a3:b0:206:bc0d:9274 with SMTP id cy35-20020a056870b6a300b00206bc0d9274mr197127oab.91.1706213990426;
        Thu, 25 Jan 2024 12:19:50 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id gx11-20020a056870b90b00b00210cc6cc9eesm3610024oab.33.2024.01.25.12.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 12:19:50 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] arm64: dts: rockchip: Updates for Indiedroid Nova
Date: Thu, 25 Jan 2024 14:19:41 -0600
Message-Id: <20240125201943.90476-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_121952_997381_1E5F9358 
X-CRM114-Status: UNSURE (   7.76  )
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

Correct a problem with the GPIO names on the Indiedroid Nova, activate
the full size USB 3.0 ports.

Chris Morgan (2):
  arm64: dts: rockchip: Correct Indiedroid GPIO Names
  arm64: dts: rockchip: Add USB3.0 to Indiedroid Nova

 .../dts/rockchip/rk3588s-indiedroid-nova.dts   | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
