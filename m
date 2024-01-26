Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60021C47422
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 23:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlY4dpajj5PucC6uvZX5E8fTXdfBHugFS+E08EJhLjE=; b=Kk5HanJHzlTksG
	w4Goe57KsShkaVk2VVxPBlG/3LE4MNl+1B/sBVTVZvwsJjRBRRnrKGXuZnQ1llNrEG97LxgmLN12F
	zA1KmYkRMcYtSMqljHG5xiaCuCGy+pnv6E7CNhn5e0pmwt05Y4lPCfYa2jOtvaWB4XLJuqgzbOJ6n
	l7fn5PtqCpNAOXT7l/O1+gggV2sT4ZyjMDQhk+2TKd07SgJbCwoRMj+Xvz/0H8OT86//v++AhE77X
	/S2FtXmCNfvoPHDVZGXZ86pUwcqR2QZZJDl1T9FRM8FH/EHW3wsQlTAdDNsT4u3+0sU+91KQmT/An
	LwRBxKi6P/23urK6o2aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVRm-00000005jRp-1wzf;
	Fri, 26 Jan 2024 23:17:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVQq-00000005ibu-21HH
	for linux-rockchip@bombadil.infradead.org;
	Fri, 26 Jan 2024 23:16:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=0dgr7uAnKOP7T5XfeX17z97swkwNkCZ42zeC6YgDi/s=; b=deitjmqzudI9D62Gci7EyVZQKO
	isIaLuI8VMeXCIJfy5DCWZfXFi9IqOLq4izJstqQHOaaF2zBxMAwSwZTluWif3Dvt4/ZQstM/aVDi
	76o78zl83raKAHLarRQESt8AAXf6coPMpurkTsqDKkh2EB4QIKQS9P4EcEBYoy3mIjrhoCpDo/ghP
	LpzNYRcyfP2LFZktzumF5IOzsTM9U4DCCrnjLNoSHwIJNQeMS/q5YksOGyBKGCkD+z8oRioLxE+3z
	thEjErM6T3W3aqwNKM5xFrx4sd8WKNvue0qf9pH6OfY5B+sYmMBXtftpK7oer3XPYZ75hbkj0m3R4
	GYbXmQcg==;
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVQj-00000006IzL-1fha
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 23:16:18 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-783cd9ca29eso38383585a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jan 2024 15:16:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706310971; x=1706915771; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0dgr7uAnKOP7T5XfeX17z97swkwNkCZ42zeC6YgDi/s=;
        b=dX92LDcqOKYKKZ7SBfDQdWT5MQisIfUVNr69kWlmTUCkxYgeYFqiSvxkaq2ziHcC1Z
         OVYF7o4bY1QaC0YeSYEnzEjEpFBbpLhFCjpcTS6hkTO1jm+mpNa9iveEUgmk1DWKG9Dv
         /DBIdF8KwluqrFvfm1bd5arvfgEPVUlWRI5ZQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706310971; x=1706915771;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0dgr7uAnKOP7T5XfeX17z97swkwNkCZ42zeC6YgDi/s=;
        b=D3zi0vnzByKDhxlhArHyG87tKCYsvijhHcJ/EkmNnkOKT6W/D9GMSHNqPfzB/SOzw+
         Dz1hx47Yz+fMpyB0VHnyi5Cf9AZSdLtXEIe/Lv5s9uhAL44Af+Sq2uSRZMaVztkm8MP8
         X2stRDwYdiiRtzJuxfG/P7RKIQs8NUgGnFPhmwmuUiit+1zjp004EwANEspakwhDPEFq
         SQTpbTKtwqFusd/flIdHqWtGgAsnyJNbUm3VFrVqjJXmFhWNgif3OoPWlYx0gHqeoS/2
         rbyQZaN3Mn92SQr5lTwnaEkPHbZO6C+qrgjqpBlU+x5Jn/R+ZwTJXjD34Kb/Cg+uTFMa
         LYuA==
X-Gm-Message-State: AOJu0Yyv6ofUxgSuvlMxeCxq5s3UjbMXjff8CIEaoXQL7JBjwHq0YZtv
	RzjqHchvMiDioWemxcMEmuv2l82tQfGnrEW7UwAib6zCdrQuTBKnw6aReDV0jA==
X-Google-Smtp-Source: AGHT+IHsMkOc7Y1zxu9ngxPBQ4/Ve5FRbTtg/VBTpnZVoIwUFy4DQtcLLUh2LbUFnAzoTvCw0KH84Q==
X-Received: by 2002:ae9:e917:0:b0:783:4dfb:11ae with SMTP id x23-20020ae9e917000000b007834dfb11aemr522337qkf.63.1706310971522;
        Fri, 26 Jan 2024 15:16:11 -0800 (PST)
Received: from denia.c.googlers.com (240.157.150.34.bc.googleusercontent.com. [34.150.157.240])
        by smtp.gmail.com with ESMTPSA id m4-20020a05620a290400b00783de3ddf5esm507358qkp.70.2024.01.26.15.16.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 15:16:11 -0800 (PST)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 26 Jan 2024 23:16:05 +0000
Subject: [PATCH 06/17] media: i2c: css-quirk.h: Fix kerneldoc
MIME-Version: 1.0
Message-Id: <20240126-gix-mtk-warnings-v1-6-eed7865fce18@chromium.org>
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
X-CRM114-CacheID: sfid-20240126_231613_807197_1AD266EF 
X-CRM114-Status: GOOD (  13.07  )
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

Kerneldoc does not seem to understand that embed doc:
drivers/media/i2c/ccs/ccs-quirk.h:50: warning: Excess struct member 'write' description in 'ccs_quirk'
drivers/media/i2c/ccs/ccs-quirk.h:50: warning: Excess struct member 'reg' description in 'ccs_quirk'
drivers/media/i2c/ccs/ccs-quirk.h:50: warning: Excess struct member 'val' description in 'ccs_quirk'

Convert into a standard doc.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/i2c/ccs/ccs-quirk.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/i2c/ccs/ccs-quirk.h b/drivers/media/i2c/ccs/ccs-quirk.h
index 0b1a64958d71..392c97109617 100644
--- a/drivers/media/i2c/ccs/ccs-quirk.h
+++ b/drivers/media/i2c/ccs/ccs-quirk.h
@@ -28,11 +28,11 @@ struct ccs_sensor;
  * @reg_access: Register access quirk. The quirk may divert the access
  *		to another register, or no register at all.
  *
- *		@write: Is this read (false) or write (true) access?
- *		@reg: Pointer to the register to access
- *		@value: Register value, set by the caller on write, or
+ *		-write: Is this read (false) or write (true) access?
+ *		-reg:   Pointer to the register to access
+ *		-val:   Register value, set by the caller on write, or
  *			by the quirk on read
- *		@return: 0 on success, -ENOIOCTLCMD if no register
+ *		-return: 0 on success, -ENOIOCTLCMD if no register
  *			 access may be done by the caller (default read
  *			 value is zero), else negative error code on error
  * @flags: Quirk flags

-- 
2.43.0.429.g432eaa2c6b-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
