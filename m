Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 022F4C47DDB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 23:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olteoJDLEQDBGhCwJ8/ldy+2vx5hzjpXDi4ZCnx78Pk=; b=O0WdtEyK4/EZH8
	WfwOOTwOSvMaagIcfgfXvHsaeTFRzxz0TAlKLJR0UwOLGlwIk03GD0uz73R5KtN8x0gcev7x23Y+p
	p25ltM9FBK1IghTVNXu8X2KbDMhrJ8wbHIEyEdoRnv9o7yAjb4lGLmSD9DThT/b9X61Rz90DF43kw
	6k7U9YASLppcfTRAgbdK98pE+bKgddirZJf7iN8X/lJG8Ec6QZe2Mszqm6L6ZEv4doHiTSN7sAuS2
	yIVRupE3GCn0OeMBhvDogv+M4qGM6nf3BkuKzdYAkZG/QYxy0gbwUzLeelLx2z6Wj+S+BUsCPiJve
	TdGTiT45282EjUqQ1tHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVRk-00000005jQ6-0Fbi;
	Fri, 26 Jan 2024 23:17:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVQq-00000005ibr-1y2s
	for linux-rockchip@bombadil.infradead.org;
	Fri, 26 Jan 2024 23:16:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=N1vQJsjbXwMoV42WRJ/mwpke5D4/XsDiuadCHfD7OFk=; b=EbDGtct8eOGs4AS+kD35ule6ja
	3RlXsGzWl7EiR0Tgf2HQWX5uZdA3XR7A3WLmWPbwqq7udJe0gI1AkQYdvDUFQWhKY/Fwif/nEwNjd
	o6D3fYx4+zDsRRPSjIT8o7bFEZ9B6cRNmhlNNCu0cHOVOp8SQ9c9EZIp0eiAIPSEgjhDgsoTZLZ7t
	X9Eqh9UPOgbjANx4GiDIaIcPsU499DD+xVZSCXcPQY00k1kL5kSdLqFQj8Xjdpj9qR3ZsMh8Rr5sU
	gyBiONI/1+3uv2fqcS7txzTK0Swyrke99u7awLNT3GcgSi8PLVk61v3iiLiVIa93X2iiUfRfrm2+O
	RmJJFldw==;
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVQj-00000006J16-3014
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 23:16:18 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-7810827e54eso67488885a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jan 2024 15:16:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706310972; x=1706915772; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N1vQJsjbXwMoV42WRJ/mwpke5D4/XsDiuadCHfD7OFk=;
        b=bXJFv/X8DNe0ijoS4Soape7tuBQEotioUdjarnm24IBUueculKabBhDLvtvp4zmGf8
         KX6HrssTi5q9urAFF4VmRg+IXc0wOx606AQkQXfHMc5mBiKae9/hkxqx7kosQMQqLq1Z
         U4Vpn9fziKHnMuoIvC0L5o+I9Fy5uxLsDoT3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706310972; x=1706915772;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N1vQJsjbXwMoV42WRJ/mwpke5D4/XsDiuadCHfD7OFk=;
        b=AUAOZISWkFhw952a2CHRZdpaF1wUcrPfUhgV0cDA1EdGwkJo8kfhp7puJxGh+oH2CN
         aFdFRmGx79SrYgBZeSaMzl1YiDvlVNMfPNYAZwTaWFLAhS/KzXCpr1bL6/C9pFYa5ZpY
         GmbZiKfNxlcR7qHB/PClO9RLIveWJowfp150lRBNejPizOHmeT0yXBUHCaUqUlCn+80V
         Vw+ljIZWjE9ZSkNr+slm3GZZhSM8OwrYXfHZ957cZZC/RiL4i+Pt4yzqG0Z+NJB4fQgr
         pcIuHdy0uERYUFf3XZy0RwZc2UZu1VpBBaX7A9ZR1l3L7EnQfBVu3zRF7Qj9H0v0u+SD
         hBow==
X-Gm-Message-State: AOJu0Yx7lcdoAIAq+Zc/CSkV0WdytJDAs4aRvtODKXERrwGXy28urKst
	3tCO+nPwL/6pbSqQIaHWDVZvGCdcmrzNaUbaHOtkFQhc1RFVquYY6jyk/p2UJQ==
X-Google-Smtp-Source: AGHT+IFXn0MsvuBZAXCBvS9dkUDMWpYZYCtB32osg432CHr09P1w9jeHvq+JeL7M7GqosemFCv0Elw==
X-Received: by 2002:a05:620a:628e:b0:783:daec:2fb8 with SMTP id ov14-20020a05620a628e00b00783daec2fb8mr553057qkn.13.1706310972372;
        Fri, 26 Jan 2024 15:16:12 -0800 (PST)
Received: from denia.c.googlers.com (240.157.150.34.bc.googleusercontent.com. [34.150.157.240])
        by smtp.gmail.com with ESMTPSA id m4-20020a05620a290400b00783de3ddf5esm507358qkp.70.2024.01.26.15.16.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 15:16:12 -0800 (PST)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 26 Jan 2024 23:16:06 +0000
Subject: [PATCH 07/17] media: i2c: adv748: Fix kerneldoc
MIME-Version: 1.0
Message-Id: <20240126-gix-mtk-warnings-v1-7-eed7865fce18@chromium.org>
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
X-CRM114-CacheID: sfid-20240126_231614_005913_E9BC17D3 
X-CRM114-Status: UNSURE (   9.64  )
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

The field is gone, remove the documentation.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/i2c/adv748x/adv748x.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/media/i2c/adv748x/adv748x.h b/drivers/media/i2c/adv748x/adv748x.h
index 6f90f78f58cf..d2b5e722e997 100644
--- a/drivers/media/i2c/adv748x/adv748x.h
+++ b/drivers/media/i2c/adv748x/adv748x.h
@@ -173,7 +173,6 @@ struct adv748x_afe {
  *
  * @endpoints:		parsed device node endpoints for each port
  *
- * @i2c_addresses:	I2C Page addresses
  * @i2c_clients:	I2C clients for the page accesses
  * @regmap:		regmap configuration pages.
  *

-- 
2.43.0.429.g432eaa2c6b-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
