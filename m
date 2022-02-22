Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9722C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Feb 2022 18:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YTwbeepENMGuWdZ7e6PrvejkR1X+1xvwo8BbOFZZN58=; b=sn+Buqvl94+YiM
	Pui5hc7QOHKogSFbiWiO7NgNM2r6e5La98rf3GWAazvwuGJfoV04NA2nJ+XLlFMIQzZMPbeiYqT0q
	Eb/3axmlW7y+6Z0zJIQlg9/PCCzV3NqBTrZ5JKJrGP/Ln41dwqBFWNqt476mNQxV/FiHCGVUkople
	NPA3n6WQItLFTdxAaYuh4msigXo01+6SBy6dBiSB6B9LD2Rbe2l2ndX7LabdMpGMxVV9JZzQE6dPO
	Ahgdr1q3KJoOG0X5fsvwSZpL2CuMUVs7vEDF5byBrscnbxiF76waZzC79FYYuur6srXiU+sBlQRML
	8haVrZul0n/EevM327aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMZVh-00B7WG-4S; Tue, 22 Feb 2022 18:03:37 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMZVe-00B7V7-F1; Tue, 22 Feb 2022 18:03:35 +0000
Received: by mail-wr1-x432.google.com with SMTP id u1so34930423wrg.11;
 Tue, 22 Feb 2022 10:03:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZA1AEF6WYe53I9xc29Ywox25Ld05hhSuOKpOWRLCD0Q=;
 b=ga5HhF1kzBzWTvKfcvvy2G6pPpg6ZSlIrxkAJbJ6v+ZHmwIpqeVSDShxafKYqADvsD
 yq8c5Vm8FrreBj0AuOhaGzsvaQHpvpXH09xRLPmTecId0D7mR5b0Q5QfjE6jrErigbjv
 VVVTT5kSvy5xYfdJGr4uWS6OtpC7cbb5DXOXTCjiDAybnm4+pJTkZvZjCrRdNONlHgEa
 P+AQ7H9H0+OXErltcVA5VO9AQiJ8YsKgPkoPLwkvqXwMdvToUIr1Idi1wzfR6Yrs5P2N
 VTp+munJbWJ8b9j+H0C8zrdeOKVysbJVHxCtezfJWdAa9UuZS36msAUUHMT1jz2ov/XA
 G2Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZA1AEF6WYe53I9xc29Ywox25Ld05hhSuOKpOWRLCD0Q=;
 b=G7p9CjTEL5VP9yaISlOKJEyxrn+zg55qV75M3yeJrO98USFVrIu1CYyVEXjVqWr9cW
 iDXXYarx+g0xdwPckLdt1I6lw2EOZoaNFn3KaEnnm0Cj31TeZRPNTQsemIVSD2ru6K11
 eGRu5eDliEs4jZOkJe65EaIUectO1y6NofkxZZC4u3oDianPtN7FRHG8YPYO25K5aLF4
 J/HUfqnpaHVQr8CqQVe4U8OgZOYN2AQ1dqSyt5wuRMCePrg2/cb/laORjOJhuuMP1ONM
 Dwg1ZoIRXSRS6M3V+vMVVm+ZJrz6yleCcz5zR8Nulwn1Ni2B0rCLh4pUh/v3qvnuy9PC
 k3AQ==
X-Gm-Message-State: AOAM531wiavm6kTK/hZi02FPjVXb5VTee2XxWKXYc3QUlFsB6akYtmPU
 MJRQiTcc409ielribMRzn80=
X-Google-Smtp-Source: ABdhPJzNFYx5oAjf3+Rk5ssr7+hioPDrHat9vTUipqzp/XT0YyvI9V4d7cbaImdepV5Gxc87H7QYTw==
X-Received: by 2002:adf:8122:0:b0:1e7:b111:3b92 with SMTP id
 31-20020adf8122000000b001e7b1113b92mr21076844wrm.695.1645553011872; 
 Tue, 22 Feb 2022 10:03:31 -0800 (PST)
Received: from kista.localdomain (cpe-86-58-32-107.static.triera.net.
 [86.58.32.107])
 by smtp.gmail.com with ESMTPSA id w8sm54251377wre.83.2022.02.22.10.03.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Feb 2022 10:03:31 -0800 (PST)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org, mripard@kernel.org,
 wens@csie.org, hverkuil-cisco@xs4all.nl, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [PATCH] media: hantro: sunxi: Fix VP9 steps
Date: Tue, 22 Feb 2022 19:03:28 +0100
Message-Id: <20220222180328.2097103-1-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_100334_531241_2A126950 
X-CRM114-Status: GOOD (  10.30  )
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

It turns out that postproc on Allwinner H6 needs width and height to be
multiple of 32.

Fixes: 86790a4fdf4b ("media: hantro: Add support for Allwinner H6")
Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/staging/media/hantro/sunxi_vpu_hw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/sunxi_vpu_hw.c b/drivers/staging/media/hantro/sunxi_vpu_hw.c
index 90633406c4eb..c0edd5856a0c 100644
--- a/drivers/staging/media/hantro/sunxi_vpu_hw.c
+++ b/drivers/staging/media/hantro/sunxi_vpu_hw.c
@@ -29,10 +29,10 @@ static const struct hantro_fmt sunxi_vpu_dec_fmts[] = {
 		.frmsize = {
 			.min_width = 48,
 			.max_width = 3840,
-			.step_width = MB_DIM,
+			.step_width = 32,
 			.min_height = 48,
 			.max_height = 2160,
-			.step_height = MB_DIM,
+			.step_height = 32,
 		},
 	},
 };
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
