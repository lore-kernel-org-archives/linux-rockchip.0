Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ADF6C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 18:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJxKQ+CZkjiyTosV6YhacFGlOeEhrnXH7WEu62JXw3E=; b=Fl3EFEqq4RLBVS
	amIJ0XTpr9jSn5zkpNHDaPZ/7ZYf/zZx+/wxMakjM7BoH+ARrB9arbCu53BaX+ySy4TPfuapogegE
	qB80vBCuX0yVEj7jAXyCMKfB4kYmiOdKq53j/cPfoxOqVItBS5tXZH1AWy+rclLlOYxg1FAOjstZy
	SdFhkDiBGS8hMFGWr/LlxBdwjhwIPgMQ6X0XSPDQIMQFovP2fFagKsOoiTxWrtu6piYIXhplaOuaH
	1lW1aPZAPy0kyRmXyDaGHJhyNn6A0La07bMaHpq9AQUr4gSXqFQuIqou0R2nhkR5aVktNaqlt7n9Z
	4HQg9rXRlgCW1LeOAx7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8T-005NxT-2v;
	Mon, 04 Dec 2023 18:57:41 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8L-005NoZ-0f
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Dec 2023 18:57:35 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-6d81faeefc4so2682840a34.2
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Dec 2023 10:57:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701716251; x=1702321051; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jS34Td6ydiJu49ocw1zXulx/VuEOGYfI7vU1+EDroQA=;
        b=ffjwjYLByNf6Lhw3bIl86vHGpfuN/IeB/6AjAdnhCXlI0CshPrwKksxZXcKjGs5jat
         uZUp+DQU9Ca4fAOoAbZZh/5quWYOAvC3Pt+A01hsMLMlP9FhuwBzgOvGZEzieVnF7FqY
         DOOyt2BGkUFuqKESCyPmyPy3W73q1mJHfF/eUnqT7z8t51EAtkyalbzVGgRCex/SD0ku
         cu9JmKrKdcCHGC+38CWYIcxmBWG9cEHj0hHpvm+ebVTQiUWxtPLS0r28YWEH26+pG6Ap
         I0U31kBZfRhKeAMSi7K5lVpeaU7iWo5/jOEFKdyo6OyyyqogT9oHxV+NMaWMVzRPiilx
         quhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701716251; x=1702321051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jS34Td6ydiJu49ocw1zXulx/VuEOGYfI7vU1+EDroQA=;
        b=QqRzi+kY1QxaxmdIaQG1TV9YqLY/6ldRW6L5c4xugy2cmONpTdBcTnfxqDNPKT5cMA
         1CrphioIg6Y4mOLjn8+GULLRgepgkkIBrgrsCuFm5/v2iBM0yAhKRi3K+aJOJjvc8AuX
         UK0J9k1+YjGXM4UJwp/21bq2eiXrLjwuxvP8KYekZXamjMRAkgEkKUBosAiFdvhyku81
         +3iUgMiGLWjNWHT18u3W9zGoFj+AkTDmuWMJZlqP1vaL0tGwLBSi49Hqe4gtcp2Ak+R4
         AYth+1bzpQ++VH1/H708oUNHWc3OhcI4NluPuBqFONzke8xWV4i09XIQPo+aFuOXnq3X
         7UfA==
X-Gm-Message-State: AOJu0YyDw5XbFkfXKCNYZjSOzQrGtodHCy6H0j1WpoxNAgbOdp0bH/iQ
	4YhPli+EDNOUwkOeKpYZrOWWe8q9Hb0=
X-Google-Smtp-Source: AGHT+IEUm8NisHgqn3y2rfnvd8YPgGCJGZWYz3Vvoe+MmLVG/2AgljpOpgZvYnOCvaNysMml8E1gGQ==
X-Received: by 2002:a05:6830:d7:b0:6d8:74e2:5d22 with SMTP id x23-20020a05683000d700b006d874e25d22mr4372548oto.75.1701716251596;
        Mon, 04 Dec 2023 10:57:31 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y25-20020a4a2d19000000b00581fc1af0a7sm2073303ooy.28.2023.12.04.10.57.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 10:57:31 -0800 (PST)
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
Subject: [PATCH V2 07/10] clk: rockchip: Mark pclk_usb as critical on rk3568
Date: Mon,  4 Dec 2023 12:57:16 -0600
Message-Id: <20231204185719.569021-8-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231204185719.569021-1-macroalpha82@gmail.com>
References: <20231204185719.569021-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_105733_615500_3B2C9350 
X-CRM114-Status: GOOD (  10.65  )
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

In the reference manual under "2.8.6 NIU Clock gating reliance"
it is stated that pclk_usb_niu has a dependency on hclk_usb_niu.

While the manual does not state that this is a bi-directional
relationship it was noted that the sdmmc2 failed to operate for me in
mmc mode if the pclk_usb was not marked as critical. The parent clock
of the hclk_sdmmc2 is hclk_usb.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/clk/rockchip/clk-rk3568.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index bfbcbb744327..c4fa2375dbfb 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1595,6 +1595,7 @@ static const char *const rk3568_cru_critical_clocks[] __initconst = {
 	"pclk_php",
 	"hclk_usb",
 	"hclk_vo",
+	"pclk_usb",
 };
 
 static const char *const rk3568_pmucru_critical_clocks[] __initconst = {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
