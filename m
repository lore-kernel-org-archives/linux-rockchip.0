Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B791C10DC3
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 18:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1C9GHc63oj+EaOjTlCnDicjhF4Rvma4a8B+v1VrhPk=; b=P6hgVKEBuQaK4F
	j/qRQo/wQOqYiKLNs+ObY2zYcEgS6F4/htUpfdOOhr8pRb0UJbR98dtL5phVC2LUvEFlkEJtusGtY
	fnVd5nH6dUAeroo6mRSSYzzAwbZIWKCXN9SEedvk8lrTzzl+IHG/TFfgRc0qfhF2AuA0xKk3Q/sso
	+xNM9D+BheJdYNoVkgZO82Cxop8hK3bn+BQ4E/1cNsF8XgsVyMrnhpAimI9k8kKHFreUVeHVTRouA
	fHGxBDcRMPvjKF4NZYCyjDvC2Oony/Bw8ARY9BzRiWjfUrj4FG7zFv0B2VXSNqDqoXfEkUZlJXvbq
	xAdnFihzJIVmfSJCaiZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8U-005NyD-1i;
	Mon, 04 Dec 2023 18:57:42 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8L-005Np7-2r
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Dec 2023 18:57:35 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-58d06bfadf8so3517862eaf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Dec 2023 10:57:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701716252; x=1702321052; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eoHBy2Gq0IKDCcd2s7uyWkrAzEtkWU3lQMiTxxVB74E=;
        b=Ve6/Ug8d/A4M5d8hy/K7NpScVytX/QNKGCZgl+jZ0WJDsWQKojvbj4A/OU9eEGKDwu
         6X1KHXHMRDzbiGWP8av6mpIpCBVWkCaQgOxMhVyTlLwkXgZqbedyMlf9VkKmR8kBbUlQ
         AT6Qc76fDQwUD5JvjNLEa9R0PneCOcuJgYY3bsFsWkNbBkJrQEePFv3K7t0SY0oBzIb2
         l0l3ULEgd5/OISaCIsHkP0YrGALHzpxE9xjTwH55k0W6NUXZTDGTjSrEbiO68HVrp7a4
         Iij4U1fQgEthwAJ4kJ86G9MpRpCb7Sw18GwAx8/vTTg06FKeNON8bUe4GMdBmZ8BIRWJ
         kjiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701716252; x=1702321052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eoHBy2Gq0IKDCcd2s7uyWkrAzEtkWU3lQMiTxxVB74E=;
        b=JAMj9Ucs0psFB+CUSflN9vWs0sNcW4IDaDwpGPsx1ZT4jI4Ws5T0+isBUPn6mLpnNm
         NYlcqQUpCwn8UmZI2eWeE9+ue0Le+9iSe+f84Ln6RDYsnr0hyEjRShTcPlzKdOzV2bGe
         uMH89cjHqY/rpwOuJ4DB2NRW+tdA39cek+/ZkDZkAK3MwU4mNuuHS13Toew23a8iqrl/
         3Tgn3foViXN09Mj0vIMtDxxTp+mqbbDFRCRXB41qomWZAbczcTqTuASk9BfBdWXm8Ewx
         SCw35dcY3G97K4vJiOKrKpnm8Y3e7ANMYDLqdbv6vl/zcq6XZKLPqGuqi3++Ne9EQleN
         EtkQ==
X-Gm-Message-State: AOJu0YzRfkUvIuE8sX0kSUhdRuQgLcWYiCw/ZdyKzSVg5Gntke5Djs52
	rfbPA7aT4jAps0jf1xFBujys0k590H8=
X-Google-Smtp-Source: AGHT+IEEs2z0j7U8AWKdw7TYbGtvp3FdOu8z69zTjkf+zoQXSsSDKlIvpLJQGbT2pjBiBT+1eo+/Ng==
X-Received: by 2002:a05:6820:2291:b0:58e:2845:d43b with SMTP id ck17-20020a056820229100b0058e2845d43bmr4007944oob.4.1701716252459;
        Mon, 04 Dec 2023 10:57:32 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y25-20020a4a2d19000000b00581fc1af0a7sm2073303ooy.28.2023.12.04.10.57.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 10:57:32 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 08/10] clk: rockchip: rk3568: Add PLL rate for 126.4MHz
Date: Mon,  4 Dec 2023 12:57:17 -0600
Message-Id: <20231204185719.569021-9-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231204185719.569021-1-macroalpha82@gmail.com>
References: <20231204185719.569021-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_105734_143073_1C8D1727 
X-CRM114-Status: UNSURE (   9.17  )
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

Add support for a PLL rate of 126.4MHz so that the Powkiddy X55 panel
can run at a requested 60hz.

I have confirmed this rate fits with all the constraints
listed in the TRM for the VPLL (as an integer PLL) in Part 1 "Chapter
2 Clock & Reset Unit (CRU)."

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/clk/rockchip/clk-rk3568.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index c4fa2375dbfb..fa408fedf625 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -78,6 +78,7 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
 	RK3036_PLL_RATE(200000000, 1, 100, 3, 4, 1, 0),
 	RK3036_PLL_RATE(148500000, 1, 99, 4, 4, 1, 0),
 	RK3036_PLL_RATE(135000000, 2, 45, 4, 1, 1, 0),
+	RK3036_PLL_RATE(126400000, 1, 79, 5, 3, 1, 0),
 	RK3036_PLL_RATE(119000000, 3, 119, 4, 2, 1, 0),
 	RK3036_PLL_RATE(115200000, 1, 24, 5, 1, 1, 0),
 	RK3036_PLL_RATE(108000000, 2, 45, 5, 1, 1, 0),
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
