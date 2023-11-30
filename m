Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23091C10DC3
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 15:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sq69Nrw6eKKHq4/Wszp5FgkNn66nAkI29Altqk4dWzg=; b=Y3RjZCqZavNXSx
	ZclqKyROXlhEurhlrq1lNreXhxCCTX5eaGHuBFCKtPDhgseOB8mF4CV7IOn5Vlwmt2Y3joqdMlkUu
	v5eUdZWXDVesLZTdJKKSml78ym4s4cwVZ+gjemVhb/ZiiKpVENSmHNVIf5yr6q6n4KBfO+YGOre5t
	9zRUhb86sDDpXidYD6W2JDSXT2GvorpvQsTIvC3PbcCrr248YpUz1QQe3zWWfcoL7zTJsvsH4SYPs
	rssG4ZFbKiXMigeOSRigLuCkqyMOlt42GGXllkhJSV1MubWHa7rbclU07XCU1ZQIldmBwnGiWkpYJ
	5mWWVmJMWFz9woSAxyTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8jPF-00BGrU-1c;
	Thu, 30 Nov 2023 15:56:49 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8jPA-00BGlD-2x
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 15:56:46 +0000
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6d7f3a4bbc6so616177a34.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Nov 2023 07:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701359801; x=1701964601; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yvbtfdc0ukYgjaMnQaR3gnU2LYirrG4L32lYa3jmGOs=;
        b=D5ha55WSFM09S9jftE1bOiKTRMablVfSDGGYFw23JlHwHXoPIRHT8SmiOmDQktjgkF
         l0VxKptF7QW4hborzAc355M4Teh51c7HDYCah2HE2P/KusAza0hafeIcmKwgvGC79Q7F
         uv4r5vZlWAth5pjiSKGeLrDIg0sUqrN2HRsAOcTSYHIVPzvlhb/BkgZAam91QfeMD5Wg
         /OHFx1qJt105OqXV84fGPYe350cSLIK0eRVaLITb/fQl2VT8/40WgZzLpICCV7BpUz28
         LDKmNW4NTXc3Qbrow0nj+XjJ+xLuM+71C6EXRrufyK/+5bsD1jMBNLpf8AhH7Rf/ePPh
         E2WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701359801; x=1701964601;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yvbtfdc0ukYgjaMnQaR3gnU2LYirrG4L32lYa3jmGOs=;
        b=Q+lqxYJ20FHGHrI9HJUdWovzzlpL+egwauRkt7jxaNwmhw+lVp571ayedr7VAW7Qof
         rPXzkQj0ncidzoD5EeendDWymF8KVB96K/2Zv5DT/jOeoiP/JZ7BA0D2sJnhEc52xBMN
         y4EDXADe5zymUYQs2Ud/gJ25UIgvtxs3NRp9yc8bS+VQhZ1cbNNWeMnsSoWXw1C8oX7B
         8/GyqzM+stCiaVtxxe4eOEeBbsFqhnaYSI9f5sWuQ835AFQMOvKcP5zaU+En6QZYYgch
         9SUJHT3ykawX3X82sqLv/XWjPfVxxJ0YlgXZk0jz/6KgiVoxo/pZtS3QUOkemfOs7YuU
         AbSg==
X-Gm-Message-State: AOJu0Yya4GYElu4551MOQ3JtsLOCZkVsVP4tO/DfRCWw5H7krlWgpPm3
	kpV8W9vmgX3sYMIvEQc8cXv0Fvw1dKk=
X-Google-Smtp-Source: AGHT+IGsSEdgmXvkMLWehieUnhkz5DRkyYhpKW9XKjn9lAcA+W/k0ia8pgSLGSBCNZTbWh63UjUhNw==
X-Received: by 2002:a9d:66c6:0:b0:6d8:480f:7abf with SMTP id t6-20020a9d66c6000000b006d8480f7abfmr8615169otm.8.1701359800828;
        Thu, 30 Nov 2023 07:56:40 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id n25-20020a9d6f19000000b006d7ff27a47esm187852otq.77.2023.11.30.07.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:56:40 -0800 (PST)
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
Subject: [PATCH 7/9] clk: rockchip: Mark pclk_usb as critical on rk3568
Date: Thu, 30 Nov 2023 09:56:22 -0600
Message-Id: <20231130155624.405575-8-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130155624.405575-1-macroalpha82@gmail.com>
References: <20231130155624.405575-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_075644_964073_59A98558 
X-CRM114-Status: GOOD (  10.76  )
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
index a8457b17bc41..0e0b7b396682 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1596,6 +1596,7 @@ static const char *const rk3568_cru_critical_clocks[] __initconst = {
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
