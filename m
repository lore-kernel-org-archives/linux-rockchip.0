Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42F1DD6B6D0
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Oct 2024 19:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKnZui+VJKnvYQ8wK1Mm+SCokrbZynC5jRASPR/jyOE=; b=14mdsa8yBW9Jqh
	VuxIdzkAHzYIwftxIPUHC4Yv4etWHD9Leu7QYfjjjmKTdANEu2UZYeuNtGRue+py9VuNDI9Njsc7L
	HZ7AQb237HyIdtkGN4Fb6GQTBQ9Q0Up04EHf8IgqcbnyM4jCtHgdF2eeo/2Q0MWHDNtsqDWBGJhXb
	tlcQ5J/C01zyu4eMUioeNTK/z7TC1Uc7XdqJYp4BUejnt364gACIlYE96xnOb+eZvzCWNVpVYn0YT
	yI3MYXtNHZMLPh0jfnCluD8fWYR1dFUb9K3u6CpqXuEDR5owkuPnVNvIahCRo2kRiTSXyH1zBWKha
	K5135v+qVAM+vGiuxacg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6EJW-00000001XWQ-1Bya;
	Wed, 30 Oct 2024 19:25:06 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6EJQ-00000001XUA-2WKM
	for linux-rockchip@lists.infradead.org;
	Wed, 30 Oct 2024 19:25:02 +0000
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-3e5fef69f2eso161011b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 30 Oct 2024 12:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730316299; x=1730921099; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N0jI7anFu6tACdmq1ktw+g6zdLi6HmxfPbYpW9ePEvg=;
        b=Q+cTi4891ct07U40QGtuHAspOB3hGi4pbBPF/PO/HC3QNExApK0wkeMkcPglK95GeJ
         ERU8U1uI65YIAobl1n2W60Wx6+a2yj3QyzNnmzRwjF8RkP5eyuquIZEge7yZdcbhXJ+c
         0r3obwddqb1BvS0t4Z4blPPWPaBFu1auglWIhnkvqcAcvzw3JEmD0OYG+la2LEY2HZ2p
         wUPaaCVxBMQOmawxf9ODjJcCrbI8bPTtIs2rh9cv978KMoKpGPLlf36iM2DjT81Weo74
         Ex+uUS2yzJt82eCWNXXqPR9DW6g4FIsbH1VACyz2YI4Peh3azMLuAjTI6WZ9aUuNorjn
         gHEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730316299; x=1730921099;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N0jI7anFu6tACdmq1ktw+g6zdLi6HmxfPbYpW9ePEvg=;
        b=rDk2P4r+Ol/c/aVPjMEoRJCrQDsJQPQs2l2SJ9UPM7zpMdnb3svxHT6V9P/qzMcn18
         vST/CySvhCCUn5DDjfbjvVPTqsHu2EJttEQHwQcqzJvYGuW8w9NRgJu4Ox69K8gnv+7W
         SAtLoXI1dF7Ikrh2CykwOy7CquavAnJICVsRAZ8ZKs/HROS0lQ1iuEd7wGjFfZY14hL/
         FNefCUFz9PEUx1OFWo8huW9UdFxxl0pBv3LfkQg6d2By+ylLjkRQkbR3S4okzvPVwXLx
         7Q7u/h+Bl92tmliJHY0p10i5CaUNevQ9adWdx6OgGs7HnSO13eHuylA/yLw528+fFcJj
         zj5w==
X-Gm-Message-State: AOJu0Yw/8UxwBQs5yWYEq/h5u5jviEyIVXgOLUTMXG4DwqjGRDn/7ea0
	aIzvgj6tF6FeHM1hSLKtb8Qy4K/LjNXGGeIV68QsWIFmEo7cCsXGF5VEyA==
X-Google-Smtp-Source: AGHT+IFrqkfM7z4LQrqXwq/YG6kPA6xu7Hgh5LsO3qpoCQRLhGx71THyPMYVSfC+R7c2gCQDbzcfyg==
X-Received: by 2002:a05:6808:f01:b0:3e5:f172:3a3 with SMTP id 5614622812f47-3e6608e06dbmr524825b6e.19.1730316299245;
        Wed, 30 Oct 2024 12:24:59 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e63248d3e0sm2689204b6e.24.2024.10.30.12.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 12:24:58 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/3] arm64: dts: rockchip: correct analog audio name on Indiedroid Nova
Date: Wed, 30 Oct 2024 14:22:34 -0500
Message-ID: <20241030192236.839105-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241030192236.839105-1-macroalpha82@gmail.com>
References: <20241030192236.839105-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_122500_662884_663A9A37 
X-CRM114-Status: GOOD (  11.91  )
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
