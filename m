Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49B0FCDB483
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 16:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KCz4ssT8Y+BRpW87rZfWrNVtz+JmkwPGZSUQaH4qyY=; b=y14zb/yilcJW0+
	oKqLZG3gR9bWRsr2Iqex/YETK4kAXerlQmsUrdOQlFUeE+j7oaZV3yE1itHksmBFC6l7XWgyp88ST
	iGHDgDWlqBNo0fQroW1l0jtppPhepidq44rtKfnqdyuem7tL2GuYZ8wfS23h3V9GV4bh2DCIoqX6U
	GZbkFn1mix17LPQo1Pp8jPreGE8kGRNjZQtFiDPzv68s3NvRlvuBi8T/QFg8M3nqAAtzRYhdybQLC
	v8NgEoVrqUoernbx0s1Q3XVW3oP3dDViUF1IA4GDkZLro3SNI3N//r3qZTOGy5tC8xX1Ykh0nDHzJ
	EbLqXjP0Zmqvou3yA9uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt9GE-00FAFC-1a;
	Wed, 18 Oct 2023 16:19:06 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt9G8-00FA9h-30
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 16:19:03 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3b2d9ac9926so1127553b6e.2
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Oct 2023 09:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697645937; x=1698250737; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VJC+C4OtuULaekIgETfG9hZQeFdTuWayXpQ5YRaiN4w=;
        b=Jb+qze3LZgqOU2+9Sa9u0/15vHDTH5H9avD5GGnTT8Ukm/w+5BSLK02+L6NyX1nyJZ
         b8Yr4aAViDe+a9fQVIMIW6dioJI1R8Dce+6tJbadKAaZ9vyUPh6rc2TTiN38s9tFezKk
         vJNh0orOkfe8OR8gmN/6oT74slArChLZRr2lVlRD8Rq+sbATx8lDwJk0jY7DbDPtWVRk
         UuJTmh3fRxUGSCGzXK64aB7Hjih4pdzh7HY0MXkz72SNEmFHC2pXiyPm2dSXUIPZLc+d
         F+S/DjDmGxnB7y6XZFlWXp86JkdOYf1cKqANi2SwhXeGqpMeiD64Z9xrsA9mnWzjc0Bo
         kF8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697645937; x=1698250737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VJC+C4OtuULaekIgETfG9hZQeFdTuWayXpQ5YRaiN4w=;
        b=uShypniA/4hZyyoh2rAidO02rLV46HR/5SQKFJNU4adGcgbqKsbh1frTHULHdinSzu
         KnFqrXj1kwMsdHSJt3tpaTQ3XnJ42kKLn/2pgknuCgNOGD6OH1aszHXt0U8FMulz6k1G
         fDOPyNdLC9BqClVkFvG6e/9DCcAsq50tsch2oINbMhVqjFNE5iAHR06KHsmgF0JVco9R
         cpzrLF0rLfVp7C3rwxroQ44ZEwmO2URjWP2mtzp6IS5G0f4OhsQeNQm9KBfcBvr8ONdt
         l32EN45Hd8pS/flz38BVE1kepJQc87GsRrpYcOM+82PClcac/Z2JlOwikU2DBZ3mdyGl
         df5Q==
X-Gm-Message-State: AOJu0Yxk2ja8tIV3Bf/9TbU48zYJ0hBTwIyM5Ss7l9gU3Ho+16MCYUHp
	kjFQa3HRSWJm5a42LTiZS9kJzo8+6ZA=
X-Google-Smtp-Source: AGHT+IEyC/5eqkKVkMLwJ6n6DXED2z+hXcF3NA1uSNWAQv0tYW9JWBm7ZuVXNvSMVxSCboUAsi626g==
X-Received: by 2002:a05:6808:211e:b0:3ae:1298:257a with SMTP id r30-20020a056808211e00b003ae1298257amr7454580oiw.1.1697645936910;
        Wed, 18 Oct 2023 09:18:56 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id db14-20020a056808408e00b003afe584ed4fsm697390oib.42.2023.10.18.09.18.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 09:18:56 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-clk@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/5] clk: rockchip: rk3568: Add PLL rate for 115.2MHz
Date: Wed, 18 Oct 2023 11:18:46 -0500
Message-Id: <20231018161848.346947-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018161848.346947-1-macroalpha82@gmail.com>
References: <20231018161848.346947-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_091900_965932_B2C3ACE3 
X-CRM114-Status: UNSURE (   9.26  )
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

Add support for a PLL rate of 115.2MHz so that the Powkiddy RK2023 panel
can run at a requested 60hz (59.99, close enough).

I have confirmed this rate fits with all the constraints
listed in the TRM for the VPLL (as an integer PLL) in Part 1 "Chapter
2 Clock & Reset Unit (CRU)."

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/clk/rockchip/clk-rk3568.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index db713e1526cd..bfbcbb744327 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -79,6 +79,7 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
 	RK3036_PLL_RATE(148500000, 1, 99, 4, 4, 1, 0),
 	RK3036_PLL_RATE(135000000, 2, 45, 4, 1, 1, 0),
 	RK3036_PLL_RATE(119000000, 3, 119, 4, 2, 1, 0),
+	RK3036_PLL_RATE(115200000, 1, 24, 5, 1, 1, 0),
 	RK3036_PLL_RATE(108000000, 2, 45, 5, 1, 1, 0),
 	RK3036_PLL_RATE(101000000, 1, 101, 6, 4, 1, 0),
 	RK3036_PLL_RATE(100000000, 1, 150, 6, 6, 1, 0),
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
