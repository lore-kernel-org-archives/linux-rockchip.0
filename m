Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86DCEC47422
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 23:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJqr741B3TePawSQ0bOR5MYatlqqpXhaHaaBt936Hi0=; b=KYI9o2G5zWMQsX
	DwCYyQ+5JFfRAZY4qM0xfrjOuhkuOH+2Qk5W6ucySgT7CqoGu0tvhVGwB1XahP3LXPVJ8pwf2W8n4
	4AZJ1FHdQgDNXE1O6CpEJ5R+2uJl8os1OuB06qG3GrsVZKXsLatGgKb8ubSgP+ufUgriqnfBGuj7+
	jXFQKKqX9392OtbtCj/iLVrWYzBjbSdPIuLJGQSRV4/BCbpMx2OX5wx5/dI+p3i/0pzQbAP40OWq1
	4Flzf6A2rHU8LZ5F52UzdA6Upoe9j5QQLPBMr1i79erceVnPgmwooywSJvJGjbzlSuyYc7M8x+isH
	En05JloR2bbVF8bEKBhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVSa-00000005k8C-2N78;
	Fri, 26 Jan 2024 23:18:08 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVQu-00000005iga-294y
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 23:16:28 +0000
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-783d4b3ad96so78746585a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jan 2024 15:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706310983; x=1706915783; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mtltgslBdQHae+oLD1399tQsPexikCLm+b/oIxSwL94=;
        b=epokoW0nZrBF68rk6G9i2rQEHhuDRksk0Z0bcmrsvG04GeQbuhBiDpzFD7MIfZedSR
         pTLoJT5lFySag1QwwqM8TGIHMEPVHFNRGhUhb1K9zaupzP/pa0lExmls76FuJaN7o6cB
         myt0+3NBaA6V142EqpFZLNTI1Y0D1zR//8coc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706310983; x=1706915783;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mtltgslBdQHae+oLD1399tQsPexikCLm+b/oIxSwL94=;
        b=NSzYfFrthACxgCRWOhivXx+b/30qr2GatMs2GqcdXX7eE49Jda1yoInfGm9KDPZUmM
         wEiv4/FdazR7I9fEt6YNmDpn5RYeEhFo7iIL2axEC2IzOkWktZXAIKMzJ8w9grJY/h0g
         6QuJfo4VUTB7bHJ0yDUPvaWm2/1c7LVSpUYWP2Nb4IzvuFyZwJS5EtpjxZBevFhQ6rmS
         g53ZOEdApdnVMQQ/Mb1pBQ98UjM8lrQh28vE5WUuc/WG+8BuiIi/1c7+C0bIC/2ee9Qp
         Yi7v6w8aelmO7yze/Z0a8ktLPRyu59+g5u+Tus6MRdhcKPWwj/SaoPu4G38rb4dIQa4A
         lYgg==
X-Gm-Message-State: AOJu0YxaBjYWdws0+LH2U4DmpjELYZ+NUe3WP0fnlwHVK+6Safc02xyE
	EkJXdJv0xovAVWH9kX3EJFZlUWFoDwaTlzPamgHDr4ZmOut6kiasevHJzDu4qw==
X-Google-Smtp-Source: AGHT+IFr6+3pqj0JMsLxQ2GW7atIeRCtD6HJIvow5am3DYJqsXSoZPigBa/gFlr3DGsp4f3R3YcSBQ==
X-Received: by 2002:a05:620a:618e:b0:783:4cbd:9ed7 with SMTP id or14-20020a05620a618e00b007834cbd9ed7mr711408qkn.38.1706310983521;
        Fri, 26 Jan 2024 15:16:23 -0800 (PST)
Received: from denia.c.googlers.com (240.157.150.34.bc.googleusercontent.com. [34.150.157.240])
        by smtp.gmail.com with ESMTPSA id m4-20020a05620a290400b00783de3ddf5esm507358qkp.70.2024.01.26.15.16.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 15:16:23 -0800 (PST)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 26 Jan 2024 23:16:16 +0000
Subject: [PATCH 17/17] linux: v4l2-vp9.h: Fix kerneldoc
MIME-Version: 1.0
Message-Id: <20240126-gix-mtk-warnings-v1-17-eed7865fce18@chromium.org>
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
X-CRM114-CacheID: sfid-20240126_151625_014634_0003FB44 
X-CRM114-Status: GOOD (  11.20  )
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

Kerneldoc cannot understand arrays defined like
v4l2_frame_symbol_counts.

Adding an asterisk to the name does do the trick.

Disable the kerneldoc notation for now, it is already ignored:
https://docs.kernel.org/search.html?q=v4l2_vp9_frame_symbol_counts

include/media/v4l2-vp9.h:144: warning: Excess struct member 'partition' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'skip' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'intra_inter' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'tx32p' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'tx16p' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'tx8p' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'y_mode' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'uv_mode' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'comp' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'comp_ref' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'single_ref' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'mv_mode' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'filter' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'mv_joint' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'sign' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'classes' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'class0' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'bits' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'class0_fp' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'fp' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'class0_hp' description in 'v4l2_vp9_frame_symbol_counts'
include/media/v4l2-vp9.h:144: warning: Excess struct member 'hp' description in 'v4l2_vp9_frame_symbol_counts'

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 include/media/v4l2-vp9.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/include/media/v4l2-vp9.h b/include/media/v4l2-vp9.h
index 05478ad6d4ab..f0d80273bd61 100644
--- a/include/media/v4l2-vp9.h
+++ b/include/media/v4l2-vp9.h
@@ -83,7 +83,11 @@ struct v4l2_vp9_frame_context {
 	struct v4l2_vp9_frame_mv_context mv;
 };
 
-/**
+/*
+ * NOTE: This is not a kerneldoc, because the (*name) notation confuses the
+ *	 parser.
+ */
+/*
  * struct v4l2_vp9_frame_symbol_counts - pointers to arrays of symbol counts
  *
  * @partition: partition counts.

-- 
2.43.0.429.g432eaa2c6b-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
