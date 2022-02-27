Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEA7EC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 14:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vntNHKKlOtMnLgEBJGlK1BZ8K96jwTqlD4GZR0yOxBE=; b=ENjMJeZXgn4Uyf
	NuC0zFKAiI4d0dmOuDTVJjAHi4JGDSJOiHtaadBOwu3x2K2yrfs1ar+/ukORRzQADC+A+2I5JQQbt
	075cwCLx5i5V7S1I/BJ0FCFy2iXskMpfwftsDHW17rfyuGDERonf0gS9MMDm5RqJ/QDJdxfe/6CcQ
	Q/PnbAY+ZheSN5BooutmlKpZwoTiWnOsZtuWttmJw0dXcwmIDyKeATHOCzxZffkV5UZZuhqu/bXbt
	ya/qLFHVKq5cAo4IdmNh8RSLinuGHO0FPpAtq6QbRM0EQXG8eBv36I5c87X93dh5VIE73fq+2kdsa
	d3mrXB+dVuzqbRweFcMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOKuT-009VI1-MN; Sun, 27 Feb 2022 14:52:29 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOKsi-009ULf-BS; Sun, 27 Feb 2022 14:50:44 +0000
Received: by mail-ej1-x629.google.com with SMTP id r13so20066248ejd.5;
 Sun, 27 Feb 2022 06:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JnzEjils2SDzogeoSREvhcmiHUjDXu33htT9pPxePe4=;
 b=m6Y1LV2epMZzSJyQq0X3DAGh8KCjFJY62r3nYRRB9Zo0o51gjA0BGoSRQGYpvdc07p
 dVQ8R8CJsDb7DddzgpOBYB3fkV1Bh50ROZNJZFfWPTsYsLOICFsID4sXsrkmSSNpP6gb
 dfMV98gTBsKuucYg8YqWiCrxU3qwLd/NziUpBqFPNGH02N82YZ9RqRWTlMwcw2xjcHzg
 KJ4FBy9RCw9WDFGgRdljcjr4tkLhlReb5DtyOEcqfMKubi5aELqKNsDLtwBR7CK+ymKv
 birbV5SOVJUOl3VDquTajA6oUGZbrELv2cOQ+jqaBU/RWOZLuiWFO4CKAUxcoR88j+Kv
 iXjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JnzEjils2SDzogeoSREvhcmiHUjDXu33htT9pPxePe4=;
 b=0TDRVX9WIFsIRS6AyP6c3e4zsLK14JvSwOaBBP0cN87hDd2lLOzViPTRv9KWedrILX
 GQFYNYYXo7qfKGf4/dNJWi+UmPTNAGHWTTwYM1Eiv46lwwCRMHOMeQXV5D8xiG9M+XmM
 E/f0LPqitidd2eG7HoWa8Wz0pPnCCiqN+rqGnL74SW6RkZFWC8v64l4gcZ+kL59gt0Os
 eFv3Y6KWk24QCeiA9JM1+CS88pnRQ7VA/6AhtR0xCM0fAPgt9bPtnBoaVVw0Vpsph1Ed
 eUu9V7w25lJYuTgpITSv1KqXvxeDPyahC//TSp3/aha7LYAWqt3b/Y4BGH1ImTJCUb/A
 ExIA==
X-Gm-Message-State: AOAM532OD3jsx1hk/TaCFtdE+nPUI/xN+puKDn7ew6sJThA2FOAuujcw
 wyGI652uY4SQSaxYjFwM7nk=
X-Google-Smtp-Source: ABdhPJwgCbRgGf3irdtMpQv3bFTprq05+49kal0GzQYFZiM7sAzIqFstRyzM4xfgu4hDpCCw86KV6A==
X-Received: by 2002:a17:907:2087:b0:6cf:e170:171 with SMTP id
 pv7-20020a170907208700b006cfe1700171mr12676273ejb.163.1645973438900; 
 Sun, 27 Feb 2022 06:50:38 -0800 (PST)
Received: from kista.localdomain (cpe-86-58-32-107.static.triera.net.
 [86.58.32.107]) by smtp.gmail.com with ESMTPSA id
 a1-20020a1709063e8100b006ce06ed8aa7sm3501887ejj.142.2022.02.27.06.50.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 06:50:38 -0800 (PST)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org, nicolas@ndufresne.ca, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org, wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [RFC PATCH 8/8] media: hantro: sunxi: Increase frequency
Date: Sun, 27 Feb 2022 15:49:26 +0100
Message-Id: <20220227144926.3006585-9-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_065040_425654_DB1AA936 
X-CRM114-Status: GOOD (  11.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

It turns Android boxes use G2 core on much higher frequency. Let's match
that here too.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/staging/media/hantro/sunxi_vpu_hw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/sunxi_vpu_hw.c b/drivers/staging/media/hantro/sunxi_vpu_hw.c
index 8d8a8937d6aa..c86749c406fc 100644
--- a/drivers/staging/media/hantro/sunxi_vpu_hw.c
+++ b/drivers/staging/media/hantro/sunxi_vpu_hw.c
@@ -50,7 +50,7 @@ static const struct hantro_fmt sunxi_vpu_dec_fmts[] = {
 
 static int sunxi_vpu_hw_init(struct hantro_dev *vpu)
 {
-	clk_set_rate(vpu->clocks[0].clk, 300000000);
+	clk_set_rate(vpu->clocks[0].clk, 576000000);
 
 	return 0;
 }
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
