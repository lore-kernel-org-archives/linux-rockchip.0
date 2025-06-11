Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 641D5C71135
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pL4sOGuMvFxCPUwZNifKF2TatYAChNzAmgyouVbjq1A=; b=TGe3AUTRU2+l/Q
	csQm17dhsCuHQHEo1BHBgNGxpR1BfCM3m/MkAiXfCI6GtlFiEzHEgp7EhLqB1EdK1ZK0cHO1yyFGS
	MR8eEzP0V3UWjHxdkxQzqqSIEHr43cbVUHrRed/UPoDUGmRC5gL+Bn85svVngvkSswV0pH1HFr4Bh
	7XNln6/YWM3ZXBmwtuUMF4WPW/a0CXvkVHfn7syqyGGcOenDPMj9BWaQ8eldu0YNN2OSMsoEvGyCY
	W5T19oCc+FGZCJGwrCTgwPSlG476E0vt7xTDjvYdV60CImCpuw9ypO+Oa+YRBW8PFFBxaljGXPchO
	A5T9miYLrlMyppNC+8jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPV2p-0000000Bgsr-0FzE;
	Wed, 11 Jun 2025 23:39:47 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9Y-0000000BVVw-1BeM
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:42:41 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-408d7e2ad03so219598b6e.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681759; x=1750286559; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6sYRnmDUxprHg+LgR2XosmphvKPLQ0+i+LbqXhoNfpA=;
        b=GdNcbbXlrHKX45a+LtNNjghXplfRme4buV/6pkQj/ZcltuJZrOiysNqgs1zzE8rb6z
         sRcEXWtQrzbRHyGKLX5FM8vY2caKiAJS5h2+vu5guNeZxB5eDdZbulEQKu/b/z9PGUAk
         yHOn0D6Mpb43LN50ZeF6wHWx521WETE5WwutzPYdNJc1PeDh6PEZfS/O1cgtBX7OVofa
         cz+uWTJGqjxIeSL1BiiNYWB+UflRJx91ImAfBgYXIGE8K0sbZzebhHLlCn3tcbgC3kFG
         eHK5c+mmNxCcrLQjGQGfqAjPQKws+//yqQ/f+fHhuekfk5fJZqDyJ1VoH2SWpyy5Yz6m
         pUYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681759; x=1750286559;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6sYRnmDUxprHg+LgR2XosmphvKPLQ0+i+LbqXhoNfpA=;
        b=MNsmNTOPXlKYF9ZP1IoFTP/UsDUuSLuURkptE1tnN/+ToXkkgLCrtF3WATHUY8BU8r
         qPcYq/iJepYLC8v/a5Hgw0pKFBnWjNiFWxoPGnbW90d9kDU63/Erlj9u7G3LnlnszPwe
         aLVE7dzYJJy8qXMppju3XUJFYIx5AP7/4NLxxuJOlMazYXj4J4UFodO2KMX5y23k/2BL
         h1d2xXi+JHamtsqVuNNFtosl8ANWRZlrsgwfwqJ3+y3swI3n0lBocVb1cYOeUGewtTF7
         rkXVfHodpgdJVeUMwGio/QeIfM7GUnjL3unkAlLMPKrdcBbYSiCm91mDPrh5ZHRGGJgt
         jSrg==
X-Forwarded-Encrypted: i=1; AJvYcCXZAHALqhmyRUS2rmaK8lsj/LesCH1B7nufhcKO+GPL7PKC4RHDSCoAuC6wR1HApenesQ0eIrwTdJVNgRtcQA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyMS1ebE0NsMxFzZ8+KElEoEu1lH9mcSXMR05rWK4R/hP1I2JMd
	vXRtsrBBSiqlPnPCOeR0hxvBCx/l6TGZiMpq2TmIQx9rJG6NICIVL00n+rQNJn5jThM=
X-Gm-Gg: ASbGncvi6iZyjPZts2/VA0BMYnNmPvcr7c0n0omiCBsUrnbz0RR9EdprAlwEb+JsR1n
	hrm6Qs/OL6DoPQFBWJ/hlF28Yb9llbRetEwj2bJcchPPSK/CoAOYoyGJzVwyxm5/0MGdjJBoEYo
	CxjJ9vvLiCZ98udG+v0uhpXVOZrgBQ5wVd5IxxjPf5LsqUzN/hyPGYtrvyFICJqi0zJ1Ez71N6B
	mB6vqo0+Ubq1rl8P4e116Z4trojeWmMIzIXq/g6FfJML0YvoXqgTQruysAOeZU/eo0SyloUyflu
	dX39/BFV9CvGuJ/5trGli0RCUGrnZE5Od95AmLt7nFFUEKQe/1ZY9Ya00qD4KdvgpCFLjCY3Uxv
	BIv0=
X-Google-Smtp-Source: AGHT+IErlYL4bsSFy9ngVg9McugAmwec16wRc+73AVkKa1/aJVelh+e5fLLya/tzgRaNA/PwviOmtQ==
X-Received: by 2002:a05:6808:2213:b0:406:6dd2:5eb9 with SMTP id 5614622812f47-40a6609c56cmr824967b6e.26.1749681759456;
        Wed, 11 Jun 2025 15:42:39 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:42:38 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:39:03 -0500
Subject: [PATCH 11/28] iio: adc: ti-tsc2046: use = { } instead of memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-11-ebb2d0a24302@baylibre.com>
References: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-0-ebb2d0a24302@baylibre.com>
In-Reply-To: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-0-ebb2d0a24302@baylibre.com>
To: Michael Hennerich <michael.hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Francesco Dolcini <francesco@dolcini.it>, 
 =?utf-8?q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <jpaulo.silvagoncalves@gmail.com>, 
 =?utf-8?q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>, 
 kernel@pengutronix.de, Oleksij Rempel <o.rempel@pengutronix.de>, 
 Roan van Dijk <roan@protonic.nl>, 
 Tomasz Duszynski <tomasz.duszynski@octakon.com>, 
 Jacopo Mondi <jacopo@jmondi.org>, 
 Jean-Baptiste Maneyrol <jean-baptiste.maneyrol@tdk.com>, 
 Mudit Sharma <muditsharma.info@gmail.com>, 
 Javier Carrasco <javier.carrasco.cruz@gmail.com>, 
 =?utf-8?q?Ond=C5=99ej_Jirman?= <megi@xff.cz>, 
 Andreas Klinger <ak@it-klinger.de>, 
 Petre Rodan <petre.rodan@subdimension.ro>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1172; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=yBs3XS+1GgmnqB6Z/LBOG9076RbaTKgSQXFeV9Rx9Tg=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgXMR0GMvFJcokv5VGg+Ekcm/aUw3x65eQXt5
 Qau3vKbyEKJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoFzAAKCRDCzCAB/wGP
 wEqYB/0aWaPu55zIJCA1+8Yh+2nKwvk/9shr5lt8X2HMjBVuKIJBARV1Ihwlk9gBU3FIMvsGMgJ
 W4gNnxW2ahFYBRU9X6NIB7qIDdnlu9FLgIBs+7HvG5ZrFCdOT1vleHncGAZvz81Lg/RtNlspo6w
 s1e4DQd9TKIrPHH4VDXiTl3tRfJ9p25SdmwrE3UDuHM6w2LPmkgKoeJBV8Q9r3QX0867CsQZJaL
 9H8G6DUTaF7neBW/gG1OOaACNgb6ckSo1vV7pvEjTzFp78nLZuf8MaSYHl/PCQHCKhEakB8WqjH
 9f3O2YBAUgw4FjBIASvaE7wTglESbk23by+IQjvgTwOJGF9M
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154240_333035_D915DFD7 
X-CRM114-Status: GOOD (  12.16  )
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

Use { } instead of memset() to zero-initialize stack memory to simplify
the code.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/iio/adc/ti-tsc2046.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/iio/adc/ti-tsc2046.c b/drivers/iio/adc/ti-tsc2046.c
index c2d2aada6772aae6fc8d01c3878d6e869d413bc7..74471f08662e0291b097fcb277b8ad9cb6df200c 100644
--- a/drivers/iio/adc/ti-tsc2046.c
+++ b/drivers/iio/adc/ti-tsc2046.c
@@ -276,7 +276,7 @@ static int tsc2046_adc_read_one(struct tsc2046_adc_priv *priv, int ch_idx,
 	struct tsc2046_adc_ch_cfg *ch = &priv->ch_cfg[ch_idx];
 	unsigned int val, val_normalized = 0;
 	int ret, i, count_skip = 0, max_count;
-	struct spi_transfer xfer;
+	struct spi_transfer xfer = { };
 	struct spi_message msg;
 	u8 cmd;
 
@@ -314,7 +314,6 @@ static int tsc2046_adc_read_one(struct tsc2046_adc_priv *priv, int ch_idx,
 	/* automatically power down on last sample */
 	tx_buf[i].cmd = tsc2046_adc_get_cmd(priv, ch_idx, false);
 
-	memset(&xfer, 0, sizeof(xfer));
 	xfer.tx_buf = tx_buf;
 	xfer.rx_buf = rx_buf;
 	xfer.len = sizeof(*tx_buf) * max_count;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
