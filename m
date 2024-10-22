Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C770CDD0DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 19:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ECFpwZ+u3mQ1WPYhkfA1gnS0ORW1hfFghT5MdgH9qM=; b=oyJNbbmhe5FyTC
	Z/6M6YDdqXx8Y/hDVQ+3pVWDA+79Hfrbe6sALu/ani0qACA1DaSpnx9++/7VO0nqRzjKiuv0malnq
	X5fo7H6TOn5I1t7p8hZJgxiPOJxQ6Nz1eH+DNEKDWUcOr39JX83jEsRAyrGGFN2Iaf3XEApgc8LYX
	TTihyxEWWRAgJrCNd2xUce1lEB757E/AXr6zwmZC7czkH86P2mAgiAFyFKX8EnNA+doXYMWvO38Ni
	6RLgOjixbQ66HqF5nqdWzM8gwbifs80KwO53urURuHqV/Vb51JOndaKxS+2irinjUglFL6HijKp3w
	EWoW1es1yjjawadOh80A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Kp7-0000000Bzgt-08aw;
	Tue, 22 Oct 2024 19:45:45 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Kg9-0000000Bxi9-0ITw;
	Tue, 22 Oct 2024 19:36:30 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-20e6981ca77so44575055ad.2;
        Tue, 22 Oct 2024 12:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729625788; x=1730230588; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M8wiRg5W1PtOs1HUIUCqVFmtQqvRNw6+deonhikANW0=;
        b=al9P6UYyBq4wOgRY7kc2CjxYHBXTXKJf0jiGDITarFNTqxasX5V3x5sLEi1ph0HLIs
         y6zyXPWgyNmyB3+XQVWVqpFnM7hojUpiGY/kIzbHsVZ9Q0mTO+58aYT3t3WhUBhzSYwn
         Atv/1a5RdOmUP5cKTM/h4KKuO+ti8l3kBD46Qhhr+vowiquCjSB8wFcUIUz52VjoiSQg
         VI97qMEgztMEJlwxMoWiAAFR+GFMVSZHFOcUMaxrcmb9mkk37/VwhI7Ka6oTlVUOWv91
         6wTsYq8QZ9jj2Hha8X/bJFJOzWDUugGD8zeaR9npp1z/QW2OryHlcHQjSoo9yfmcWAUP
         qTkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729625788; x=1730230588;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M8wiRg5W1PtOs1HUIUCqVFmtQqvRNw6+deonhikANW0=;
        b=Rs60kyPR2eW4dApwe83powoWDJqwyWmi8Xlm97wgZ1hERFJQe43yPYcCxLP76AuVAm
         at7Vzhhh+Q0u0USTcIWVeFW9UGkZVZbdHiKYwdfNAdy9TKzyVSgh9tJdk7xz6Ddk4X1r
         SaKO0xfDBdE95W1W86s1ystTCJs57Gb82Ft285CuuS/jZ2RbEyDwAGlCIWUKjbtpLEvD
         Bhh63MWw8QYBRvkvsKi6CcZ2mQak5e0o3/ZDvromJnQnxjMbe6vf6ma9niWpgVI4Y5D/
         ps/zS5NEvxQfEyVFI2pDliOCAMwpqSg+FAQ//ic9Gij1PlFPTjKlDivwUq0TKUFIwK6w
         JoeA==
X-Forwarded-Encrypted: i=1; AJvYcCUgraMUy72V8ir5lx8ZoeLTVr8XuWV+ds7PIH77BKU8EcJ3gHk5MzwAuYyGuvPAK4e0yB9bHBYNmIDw6k1Yo4VV@lists.infradead.org, AJvYcCXnuDDfkU/Ap/jijl3MgRXw9qVa5wXn6Yd66rHhgSc7mSnhTX1fcOkG+RQLW/Keyi1WmkMgmFQ65rQfK22BXgM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzsRvnX+c4Ch4GamdbX5G531KsOSHnUVnlj8d3f/PPJjR8U0dCQ
	PgZRMkNRbm4sLQ8t4HH9uTkmIfz5EDPio0YSl954MtidJ+nG6uO/CyQ95B1Crik=
X-Google-Smtp-Source: AGHT+IHcM9OVE8m7QLGtMQFh/XvemYftK7Dm2+Nn3KopFxQ5Dvr2Qu3K/wfO5X/iP72Xd1Y56zAfYA==
X-Received: by 2002:a05:6a21:1798:b0:1d2:e888:3a8e with SMTP id adf61e73a8af0-1d978b1b03cmr128873637.18.1729625787998;
        Tue, 22 Oct 2024 12:36:27 -0700 (PDT)
Received: from CNSZTL-DEB.lan ([2408:8262:245d:4d65:bc4b:53ff:fead:2725])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7eaeaafb1e0sm5467316a12.3.2024.10.22.12.36.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 12:36:27 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] arm64: dts: rockchip: reorder mmc aliases for NanoPi R3S
Date: Wed, 23 Oct 2024 03:35:30 +0800
Message-ID: <20241022193537.1117919-6-cnsztl@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241022193537.1117919-1-cnsztl@gmail.com>
References: <20241022193537.1117919-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_123629_127862_B2B36870 
X-CRM114-Status: GOOD (  12.47  )
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

Typically any non-removable storage (emmc) is listed before removable
storage (sd-card) options. Also U-Boot will try to override and use
mmc0=sdhci and mmc1=sdmmc0 for all rk356x boards.

Fixes: 50decd493c83 ("arm64: dts: rockchip: Add FriendlyARM NanoPi R3S board")
Suggested-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts b/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
index 03a2f90f6217..fb1f65c86883 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts
@@ -22,8 +22,8 @@ / {
 
 	aliases {
 		ethernet0 = &gmac1;
-		mmc0 = &sdmmc0;
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc0;
 	};
 
 	chosen: chosen {
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
