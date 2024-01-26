Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3BE1C48260
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 23:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ENWpb84o4X0YzAlcEMJhwk2MIm2S6bVW6Snvda/1J0M=; b=zYmMw+TtMQFC/q
	hi9AHUTX10z1nL3sJPyJMTHniz4/q1XjSQTb4YWblY1lc/eJlI+NZktFyPD1OhySmqNMnlFZTygU8
	x0j/45IJh9MqGR0C/cLXGyX4gvskSpP9NQZcPLc6h9wNDZmvRGHQJaV1JVEN1H8bvzTKUeojDB8cN
	tnjLvaq6iieV3M101tYNSThr6TzDDfyVQUdE81AyrekZVnCfE0nkJrHnB+YZbgj2CMCRRXSCX/pwk
	NIepWK0rIt3TrW2vRpHIDV0Xm8xZLL1GmUBktGjGbah9k05NF4dBoxvGQU8O0FVaFljhBqT/7jTq6
	x8/KE6pEjRJmEbE05jtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVSP-00000005jz5-2EDY;
	Fri, 26 Jan 2024 23:17:57 +0000
Received: from mail-qk1-f176.google.com ([209.85.222.176])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVQs-00000005idf-3R7x
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 23:16:26 +0000
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-783dc658b59so61107085a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jan 2024 15:16:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706310980; x=1706915780; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z/RRjO2OK0qr00/hywXC/yqqnZfLNxXiiMwDlCkck/8=;
        b=Z3Q2UgKbN7NxcscnzfzuKK99BtRcZtmdvr43HYKmKYgkjT+sC4nVcJkPERze1tQ6PY
         SNw6ifEXLO078q7xtw+4sSp7jMLBTcGz9tv09TRJQK8JSHKL7p4/YjVmnNQGCzbMoc6z
         h+w6dbkaGi0h2cPdVxrSI1KWP/Acd1Ss6IJbE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706310980; x=1706915780;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z/RRjO2OK0qr00/hywXC/yqqnZfLNxXiiMwDlCkck/8=;
        b=xBKN52CTc5o/XxmkOVjGlhPA4JEQmcUjPP0aQlG03WuCT6jRQEN8RH7N0VPO8ry6d2
         bsbEvMnOLXFir/XyQpuKVMz9lAm1Ekf2bkQaT3gJ829XEfAi5tNfp0unw+hwVZn6xYqM
         4zGCnXV2yZtNzrcVt9Q3G4BUxDn7cdTkLmY++qvaD6v4wj1CkJzkkSaQNjXDbwBSxTJe
         hX2u6ojbr68BUXB6EPpH0b74h3IqFo90p5/jNbzzQ6jM33RFXpArj7jQ54nXtPvm1xWV
         sx7ARwZJhngXbSofcGh+BDfRBdtLil/vmiFjm8Pf2hEfLT0WeBeUugGQ0ARQj+aOSjqO
         R36g==
X-Gm-Message-State: AOJu0YxB4lUp4kVQtBNeYDHc01tQ67eN+q19jG7syZebWySWMYcxXSdK
	R2DefI+SW1naOJMX4uDdH1qw3Cb4YoP/n/jAMTvmgJX3BAK9bywhme55+/T/Cg==
X-Google-Smtp-Source: AGHT+IHKRlOu9LCpALD6RY5rOpayWfV+md9Ii2K85hj6JHlytziq3n5aAFRxrPIkRTY/lkweMMhnsA==
X-Received: by 2002:ae9:e716:0:b0:783:4e2:de7f with SMTP id m22-20020ae9e716000000b0078304e2de7fmr555937qka.113.1706310980532;
        Fri, 26 Jan 2024 15:16:20 -0800 (PST)
Received: from denia.c.googlers.com (240.157.150.34.bc.googleusercontent.com. [34.150.157.240])
        by smtp.gmail.com with ESMTPSA id m4-20020a05620a290400b00783de3ddf5esm507358qkp.70.2024.01.26.15.16.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 15:16:20 -0800 (PST)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 26 Jan 2024 23:16:13 +0000
Subject: [PATCH 14/17] media: dvb-usb: Fix kerneldoc
MIME-Version: 1.0
Message-Id: <20240126-gix-mtk-warnings-v1-14-eed7865fce18@chromium.org>
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
X-CRM114-CacheID: sfid-20240126_151623_005399_44D9E5D2 
X-CRM114-Status: UNSURE (   9.95  )
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

Remove kerneldoc from missing fields.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/usb/dvb-usb/dvb-usb.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/media/usb/dvb-usb/dvb-usb.h b/drivers/media/usb/dvb-usb/dvb-usb.h
index 0990aa4a17bb..cbb0541d4dc1 100644
--- a/drivers/media/usb/dvb-usb/dvb-usb.h
+++ b/drivers/media/usb/dvb-usb/dvb-usb.h
@@ -126,8 +126,6 @@ struct usb_data_stream_properties {
  * @caps: capabilities of the DVB USB device.
  * @pid_filter_count: number of PID filter position in the optional hardware
  *  PID-filter.
- * @num_frontends: number of frontends of the DVB USB adapter.
- * @frontend_ctrl: called to power on/off active frontend.
  * @streaming_ctrl: called to start and stop the MPEG2-TS streaming of the
  *  device (not URB submitting/killing).
  *  This callback will be called without data URBs being active - data URBs

-- 
2.43.0.429.g432eaa2c6b-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
