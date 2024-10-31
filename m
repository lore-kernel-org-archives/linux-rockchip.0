Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEF55D767E2
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Oct 2024 15:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKnZui+VJKnvYQ8wK1Mm+SCokrbZynC5jRASPR/jyOE=; b=DjZYjBq/NTEJGy
	4W/c6WTaU0idJylJ4IMf5hZ8mIzp48lWswg2ZxsdRh7kw/EnCNYpUGrfXWvtSMhxJwV0bReLi7de3
	/FMeCEKTycQ3NB90XwTf/bkvjCXsSSG1weGDalhkST4zEcpC1Od5Q+PgyA0bEVuMqeG+rjh2NvAjr
	bI+eF66kA6kopwIe6v0m+BocNXb2vg5kL/Sj5YDHAdXYs7yGjNE2m93Utdqjng6EktYbOrbXxrqKs
	OilW1tAWvDou1mUD0Sw8tQLMpceNqGASylyuruiJpRum0iGpkfzjx3PIr/iuHWwvHWucdYY+psUrF
	nT24Hc5s8kkW6yR5lnnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6XAo-000000040e9-2IX3;
	Thu, 31 Oct 2024 15:33:22 +0000
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Wlm-00000003vMZ-2bFg
	for linux-rockchip@lists.infradead.org;
	Thu, 31 Oct 2024 15:07:33 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id 006d021491bc7-5eb70a779baso520318eaf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 31 Oct 2024 08:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730387249; x=1730992049; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N0jI7anFu6tACdmq1ktw+g6zdLi6HmxfPbYpW9ePEvg=;
        b=m35BaVVu3E503yyLx+8yrtfoVd52ulj0QF/efvgxbKGCeJ8cyCslyyfoxWgncie10Y
         Nbh9MjV1BN1iI1W2E2En7NMMdgToqNCzVflzvfjSK7t38kkrMs+Gd1tKjS5lx5TbS0fW
         UziHCYPb2x2APX7Y/dMV0yNZJDCkE5ZpqOWGW5xgEJ7ywWrtLGxLmd8fylNYj0z7qaZm
         hNEg1Q0A++0e63VfYnPUA76f7o7ZIyg/cnNpHVSYpBxOCsqxwFidnNk7Lv6oOgsR6YPh
         IAbVkpZuMVrlqz3FduF0DQY5jLurvtNGUtomQk30HogziStSFZoFTU3/scKiKgxofmP9
         aAOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730387249; x=1730992049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N0jI7anFu6tACdmq1ktw+g6zdLi6HmxfPbYpW9ePEvg=;
        b=xH7dxM0Hy64FpXrKEmfgTx4J2jpF86xcf340V09m702lP/867E5Pz0nlHT05GmDHex
         qck6Qfi+HnMEoW3jy6+5AJgLvc879zRqyjiCuhjaJtpgkJEjMoZbPJIGLlHvgF/mbsMC
         gVA4IQA6rU0zXHZG0x1BQpMg736giJqE9OBHHS79PC0LzH5dHlJy1qfKYKXjJi4SOn8Q
         0c896iQ51tKiLywsIgLzaAza1t0zkCBQzJ8UZlqvpnSrqfg1O521o5AfGbcrnzftE7ll
         LJiCFMyoRbpDiThmAP1hDdRGgnZ23MFM3QEejppxDfeauxW2nQkrHIkHUo/ZyWiV2fV/
         NQaA==
X-Gm-Message-State: AOJu0YztjQf6F9U8ayv/0IbjToRM5Qm/I4MVPe8IDGizOWluiZ2Yo/wI
	6y3r9hQmmBBXyn8F+rQYOdnXoVk2x7GDTVSxpMkzjjrFXk+wxO/xxwCdtQ==
X-Google-Smtp-Source: AGHT+IFX3djConHV1fWujtlyPnSX6SgZYoPDbERhHP5c5c58A3OwGbIdpSZZbBKvIOgtNlJ3ps9Usg==
X-Received: by 2002:a05:6820:541:b0:5e1:cd24:c19c with SMTP id 006d021491bc7-5ec5e9adae1mr5637800eaf.0.1730387248844;
        Thu, 31 Oct 2024 08:07:28 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec704bfefdsm317330eaf.4.2024.10.31.08.07.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 08:07:28 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 1/3] arm64: dts: rockchip: correct analog audio name on Indiedroid Nova
Date: Thu, 31 Oct 2024 10:05:03 -0500
Message-ID: <20241031150505.967909-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241031150505.967909-1-macroalpha82@gmail.com>
References: <20241031150505.967909-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_080730_667403_52D06985 
X-CRM114-Status: GOOD (  11.68  )
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

Correct the audio name for the Indiedroid Nova from
rockchip,es8388-codec to rockchip,es8388. This name change corrects a
kernel log error of "ASoC: driver name too long 'rockchip,es8388-codec'
-> 'rockchip_es8388'".

Fixes: 3900160e164b ("arm64: dts: rockchip: Add Indiedroid Nova board")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index d8c50fdcca3b..a4b930f6987f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -62,7 +62,7 @@ sdio_pwrseq: sdio-pwrseq {
 
 	sound {
 		compatible = "audio-graph-card";
-		label = "rockchip,es8388-codec";
+		label = "rockchip,es8388";
 		widgets = "Microphone", "Mic Jack",
 			  "Headphone", "Headphones";
 		routing = "LINPUT2", "Mic Jack",
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
