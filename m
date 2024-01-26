Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 705C3C48285
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 00:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VC6J9Tx6BRUMu5SSAeHkxsVd2IBcLsFgVeiBLsAdjBA=; b=v2LcsFcofxLv/s
	OTEELP0d7IF6o17KOPYiY+/wWt+HA17Ab5vHdtNlnH4H0VN0YJp/3N6ZEhK9JveOtZe0jXkEheV1u
	EnlenPLCQHhsm08sdxUbSMcaTG/xEcxD2rDJfA73IeyniGDFxCQSxKLKolmnxN7Mu1QlxCslGBFXM
	9xYUO85yxmJauq5fs3+NWTB+7+K1cmDzPUHN8J0ZU1aeiRlTHqf/vGGo1oF+yCj7QbgSUmOcDvAX5
	ZKwKcKoYX+aM7G6/pzweYvcvSZuRbO96MIbpGQ7+73whZZBiRmwqkcBUnDXBe6gmh4ndE9DrQWshP
	K1jQDqAOV53j36cWa8QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTWR5-00000005xKA-2m0g;
	Sat, 27 Jan 2024 00:20:39 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVR1-00000005inR-3PNR
	for linux-rockchip@bombadil.infradead.org;
	Fri, 26 Jan 2024 23:16:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=ppFxbOlS/v6G/Iyc2Jdz2aiKlAo+YrKUjtIhEQOSvas=; b=HqaRyteariv1azqXrm5CT1dwau
	GyTnLNFcUk+Ht7UygqbKFqlcFFCZqLDI+5kVHYF2RCbhJohO1IlD5b6ZskcYH7V+L4RdVehmA8qqA
	LWulBXkcpHc7V6ZjGkr4O38WKJ8m7kt1V2qXnP9WSZyrOVcEsL7kr8DmzgSmRsjLRvxLBem0X8B1o
	wiJdRYE4oyQu+F6k48MlP7pkhGX28UQZ5TGggDlkyLsjyZONEIwWkniSM1AYJpeJ8VIWr3YACZqJl
	Lfycn5UJHRiWNzdHbYVrjmag43gLNCq8sz5AAQnGNYW0QqbGn3HNnqigh8Zi4y/8iXc3rp2P2Htjr
	f/Gq0Yjg==;
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVQu-0000000F96Q-4Bmu
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 23:16:30 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-7831806c51bso75192085a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jan 2024 15:16:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706310976; x=1706915776; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ppFxbOlS/v6G/Iyc2Jdz2aiKlAo+YrKUjtIhEQOSvas=;
        b=mYToIsFpsxfqdmE6CMDidymmle2fS1OZh/Mvch6d5WWuRsPUPANwITB7M8+DKYOpBN
         rt5s8UwyS9Pe3K6ahT3UX3ceCK0aqcbEfOTavvPhkGsMFES3wW4tr1MS2O6JR6znBrJQ
         nMUOk+tMA5AXPzpa+PmWD6Tcc4FJpkKldZKAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706310976; x=1706915776;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ppFxbOlS/v6G/Iyc2Jdz2aiKlAo+YrKUjtIhEQOSvas=;
        b=pqUn7azipKu0Z6SL7jZuR+Qof5qLRJiTUSID7D1eE6hGuenEeVFuzwxwe3kt0KvUMu
         bz8UW46gX1q0EQgnqkMXbF/l9kB9Tix98Dsr9oZhtPr5LHNZ/s4YySlTWhPudB3SdrVY
         v3iAw/z+Bgi9PAYxSLyErmNFT4TqZX4AWhLfaoRJLuObLYsrNFkPxo3l09DagrAK1m2J
         aEn2V4E+L1VT/LFKgDKhTgP2BWpiBLSdP6S4vaReRoh2Vd6ItF+f233HPmLgf1PqSBlH
         vl1MtXUfSv9ZuXjajQlDgPoD/V8q0JdCNDUo2ui2yhEUhEg9WpHivt52E+20aaio0t+u
         sSpQ==
X-Gm-Message-State: AOJu0Yyy67APcjj7G4s5z+uIG9krEL9XcUDMxXYUCe5Ms9G5B+g1Cmhv
	CoaY2TQUfhLgIMpVesTeb78K0BQu/WNs1U+5om5bHBzo9vPG5e9R4/RJGfKl5g==
X-Google-Smtp-Source: AGHT+IGIpAsQSjaDQPGQ6LECGQr9cN1m4828+DZymi0+3bzM+4XluVJo4MprbQD7HbxK6yJ3CFbmNg==
X-Received: by 2002:a05:620a:2182:b0:783:e064:aa09 with SMTP id g2-20020a05620a218200b00783e064aa09mr622459qka.115.1706310976118;
        Fri, 26 Jan 2024 15:16:16 -0800 (PST)
Received: from denia.c.googlers.com (240.157.150.34.bc.googleusercontent.com. [34.150.157.240])
        by smtp.gmail.com with ESMTPSA id m4-20020a05620a290400b00783de3ddf5esm507358qkp.70.2024.01.26.15.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 15:16:15 -0800 (PST)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 26 Jan 2024 23:16:09 +0000
Subject: [PATCH 10/17] media: verisilicon: Fix kerneldoc
MIME-Version: 1.0
Message-Id: <20240126-gix-mtk-warnings-v1-10-eed7865fce18@chromium.org>
References: <20240126-gix-mtk-warnings-v1-0-eed7865fce18@chromium.org>
In-Reply-To: <20240126-gix-mtk-warnings-v1-0-eed7865fce18@chromium.org>
To: Tiffany Lin <tiffany.lin@mediatek.com>, 
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, 
 Yunfei Dong <yunfei.dong@mediatek.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Hans Verkuil <hverkuil@xs4all.nl>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Bin Liu <bin.liu@mediatek.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, Bingbu Cao <bingbu.cao@intel.com>, 
 Tianshu Qiu <tian.shu.qiu@intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, linux-staging@lists.linux.dev, 
 linux-amlogic@lists.infradead.org, Ricardo Ribalda <ribalda@chromium.org>
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_231626_754676_3A6A2AB7 
X-CRM114-Status: UNSURE (   8.97  )
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

The field is not part of the structure. Remove the doc.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/platform/verisilicon/hantro.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
index 6f5eb975d0e3..811260dc3c77 100644
--- a/drivers/media/platform/verisilicon/hantro.h
+++ b/drivers/media/platform/verisilicon/hantro.h
@@ -237,7 +237,6 @@ struct hantro_dev {
  * @codec_ops:		Set of operations related to codec mode.
  * @postproc:		Post-processing context.
  * @h264_dec:		H.264-decoding context.
- * @jpeg_enc:		JPEG-encoding context.
  * @mpeg2_dec:		MPEG-2-decoding context.
  * @vp8_dec:		VP8-decoding context.
  * @hevc_dec:		HEVC-decoding context.

-- 
2.43.0.429.g432eaa2c6b-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
