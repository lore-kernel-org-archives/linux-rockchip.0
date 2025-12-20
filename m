Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89F44E668B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Dec 2025 16:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFgDg03ExkoCgiO2usu84Phe/c9+QAZT5YXnOnbwOZU=; b=lUxMloaap9HP97
	D1/FeBzNfg9y3jcH6e6JOh6ux6rR5UKE4yiIa6C/oH6Dgf7e7WveIKKXxGmtLAzt2eiXN1Nf3GjXg
	waXcWlY5j2OopnN11q/4vOMTBmeYj7CwWqrKKLZ8Djq2lR3Sn1OAGVT94Hm8Yuv7RoMVOT6l8nsmf
	4Tizyz+AidDSuuyxfDCf1CY4JVKhPZTMBw+3wf9RUVoX8CCkDdosBWKCnEOgAVdec1waux1WLT4x4
	nnMKl5YPyL8FC6ok52v3mUjm+xTbmchQcTr8R/ZCA+BMeXl0NHr4+D3sJQf1aPIUOLzvxrvsbBiTX
	SH3kKb8XJmOHCx97bFeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vX06G-0000000Bl6o-08Zz;
	Sat, 20 Dec 2025 16:46:36 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vX06D-0000000Bl6C-04Oy
	for linux-rockchip@lists.infradead.org;
	Sat, 20 Dec 2025 16:46:34 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-7c9011d6039so86323b3a.2
        for <linux-rockchip@lists.infradead.org>; Sat, 20 Dec 2025 08:46:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766249190; x=1766853990; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c7EP/tpx9GWxii+AYAC7WJOYO3DbJ6aXW68IWJvk5iw=;
        b=boRNm4DeHiOkRSUASk3dJqek6+qzmWie768/gr9+FzEwQPo2SZwmq0+xitskup+u+M
         xeEqNXJsQyNZjber3T68eMmqzzjgugsaQdJBNwwcKOxhuOLYRjeME6R4vNzYEhLpew6q
         9EbCgJ65zpCrw+b/ti9VnOo1NE3k15DRZZE0TXTlgFRZrl2WsDTDSv/XVipfw6+crNrX
         VCTbPWoEd4yIuXZmdvmjZCawEYbuNyMY7LttejNPy+DFBzYCNX9VFTTe+wAdLyIZzYRe
         D0m3hiyjhxoj39s3dlhXdhx7url6Eo5zzICcccWWWEW9XJ4z/LxsfIobLR1DgIPegHRQ
         Uraw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766249190; x=1766853990;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=c7EP/tpx9GWxii+AYAC7WJOYO3DbJ6aXW68IWJvk5iw=;
        b=C7ZBtPtYFpeRL0CijTwGsJD/YdeOFOOu9hVXMFsWO3qz2SS5RVc17t2bM2CoK3FdS7
         adXzvNgHTgaVdS3WxfxOpA4HI5TCtrC7PBM+irzs0yJNDXcQ3TBkRryUUM7MozmfrzbC
         YS2zoNCLG9qhZlBZ/YBTiFZO1Dz2sXz0NlWKJOf37q6Rl9WlsxnWqJE/1slhq3nQWI2u
         76+kY50nHNFrKZpJiaPJsZ5FnrYqbIYjuwqRVH4avD+QnlLJUKy8O6IaNGuXduA0BcKi
         jUDs18QCqYz7GZBL7KNbLogrnLQ+GyY50mXF/yGiuReE9fqTesZpAqxpxDNVtjLA8Tju
         vzjg==
X-Forwarded-Encrypted: i=1; AJvYcCUs7xji0p5IgFBfidzOZGsHR1kX8SOYPYDE+1oXVMlYSFdzWSeNqnubxoNSYzw0wj4f8MlBdZLSow+s3xI6Sw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwX3kZwxYmKGJEmRF+N58cqX0SU+pB6aCfPrYURbmDtYn83Gc8k
	wowi8e2TbeaXCZCdqdr0qWrMH/uMUz1nWboTYald3B4Bp1Whoh1W9IQD
X-Gm-Gg: AY/fxX44OqLHlyxgC4TEuSAw85jAybzJLJWSct1Bg85dOhq1t184iTSbp3Frta+Nf3x
	FuOMzanj5gam+63zKB54OBGOVVsMwaqHBtjIy6Vic4/7sK/M7W/STtcmVuaGmxeEKFVJw81UtvS
	es5jFLr/Z3R6PmB5xoKOTkVIcBnqiXHDu/dsz/FCqQYSjRJWChR9YeC1HEyjcXQJi5v6te8NTgY
	9cNCBK0+/R9HckT+GYyPsGi/qqQPEVqbaSuEJButbVrZaVwm0Xb3u4qTbkjua957fv+qYlG8L20
	qfxgV+MzExXYdnIJZq8cFmftJMP792cbhqg9Pi0E7LQo7yOwUrD28lTywvsOWV8IhR0J+sYxft3
	qI0TI2uluLR9st6xF4khTkhYiyRmim+9joE9vfnVknuYfODWjsJBIySyAdR751u04nRq4RBSEp/
	qZif7wA67oG90=
X-Google-Smtp-Source: AGHT+IGdbB/Ckh95eIe2oO+uZBQ1VnyCdlca/UmZcXPpvQIRCA3Pnsjbf93FSIDDgBGYnoV1NiUdeg==
X-Received: by 2002:a05:6a00:a89:b0:776:19f6:5d3d with SMTP id d2e1a72fcca58-7ff6430c36bmr4406942b3a.2.1766249189699;
        Sat, 20 Dec 2025 08:46:29 -0800 (PST)
Received: from rock-5b.. ([45.32.55.39])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7dfab841sm5623899b3a.35.2025.12.20.08.46.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 08:46:29 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: detlev.casanova@collabora.com
Cc: corbet@lwn.net,
	daniel.almeida@collabora.com,
	didi.debian@cknow.org,
	ezequiel@vanguardiasur.com.ar,
	hansg@kernel.org,
	heiko@sntech.de,
	hverkuil@kernel.org,
	james.cowgill@blaize.com,
	jonas@kwiboo.se,
	kernel@collabora.com,
	laurent.pinchart@ideasonboard.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	mchehab@kernel.org,
	nicolas.dufresne@collabora.com,
	opensource206@gmail.com,
	ribalda@chromium.org,
	sakari.ailus@linux.intel.com,
	yunkec@google.com
Subject: Re: [PATCH v7 14/17] media: rkvdec: Add H264 support for the VDPU381 variant
Date: Sun, 21 Dec 2025 00:46:04 +0800
Message-ID: <20251220164604.10052-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251218232829.337811-15-detlev.casanova@collabora.com>
References: <20251218232829.337811-15-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251220_084633_074251_B12858B0 
X-CRM114-Status: UNSURE (   7.70  )
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

Hi,

On Thu, 18 Dec 2025 18:28:24 -0500, Detlev Casanova wrote:
>+static int rkvdec_h264_start(struct rkvdec_ctx *ctx)
>+{
>+	struct rkvdec_dev *rkvdec = ctx->dev;
>+	struct rkvdec_h264_priv_tbl *priv_tbl;
>+	struct rkvdec_h264_ctx *h264_ctx;
>+	struct v4l2_ctrl *ctrl;
>+	int ret;
>+
>+	ctrl = v4l2_ctrl_find(&ctx->ctrl_hdl,
>+			      V4L2_CID_STATELESS_H264_SPS);
>+	if (!ctrl)
>+		return -EINVAL;
>+
>+	h264_ctx = kzalloc(sizeof(*h264_ctx), GFP_KERNEL);
>+	if (!h264_ctx)
>+		return -ENOMEM;

I can see the sps validation is removed:

	ret = rkvdec_h264_validate_sps(ctx, ctrl->p_new.p_h264_sps);
	if (ret)
		return ret;

This should fix decoding issue with chromium when minimum size of h264
decoder is lower than 32. While I find this issue is caused by chromium
not following v4l2 stateless spec, and I think checking sps at start
should be still necessary.

I have sent a fix to chromium[1] and it should get merged later.

[1] https://chromium-review.googlesource.com/c/chromium/src/+/7274555

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
