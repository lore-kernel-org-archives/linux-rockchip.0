Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEDA3C47422
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 23:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SD9waZuclfWfm08i3UKF6rwCHYMeK1DsywZnq3aQO/w=; b=utREN7MPUZvlen
	TRIbyXXUiwEJ8B2Q5hqrAclFgD0LwenjSGoMe9RajZRSBSMwGtTOJ9iKi5sMOD21JQpiEqRBe5Qyg
	a9nqACy+zZDxFeW2b9Ux6+eJndUrap92RgGRpRCev1qMhRV8d6YRIxLDXr3iUMKc+Jqrqa2KkVg/1
	vJUhMqq3YFBkzEo+ntFgmfg/SyRaBS1qA9/DH3NzFc4IHnwviw3Me1QNoosGNumuKULWVXGSghJHK
	uQjuG31A3tWjiCWDcLpKCdPyKXKce6tiPjJPyxyOuMSRf9yHwRnPhSs/7CGYHFCTPbI6S8sU3QwmH
	ps5mNJkV1+puse72cW4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVSn-00000005kIt-3sSd;
	Fri, 26 Jan 2024 23:18:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVR0-00000005imi-3GBo
	for linux-rockchip@bombadil.infradead.org;
	Fri, 26 Jan 2024 23:16:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=lTQuVZL8YGJGo91HZaWDjGYZpj4eaCPL+PrXyKe44Kc=; b=YddYXwcKcAh63oITkBaCpit1S5
	9BYhGPrwX/q8jg64AQoDRZzYXcOLJSELyUzpvqyohUatUKQE7yDJcX5zfCbdqSr3aurI0vbWo3nNp
	tU2UcwaSEKeimOXEADGfWzMmIUhm6r9Razb/NtWwGTBFvzJc2b1c/144D19u3GIntcfmF8pTFCGv6
	CwAXoKxmHXP/NrbjIU+hbNyXorbfxGXeHou69sPTgTk4611RfK4bokHR1mmlRvEO1iij6gtz29dfY
	FtyIhr38l0UiSEjm7Kq4E7Yr60tV3hkeT750pxagWBDmaia+jhiFi+aplll+P58gC+EkXvkNLI5EA
	/qAEudJA==;
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTVQt-00000006J6V-43cd
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 23:16:28 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-783def87c8cso34780385a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jan 2024 15:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706310982; x=1706915782; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lTQuVZL8YGJGo91HZaWDjGYZpj4eaCPL+PrXyKe44Kc=;
        b=bQUHg4VmVPzqNhUQFEdZXekaiwy9kLnmcHvK76QPGtK4FdWDK85kmOwFSu7QJuFg2h
         w97Mndnpcni/Xcsrv8kfM6zmAJ3dqURmvSqDm403g+dEE7vIqb+rgV68Wz0syK17W/8J
         yF1LXd2iI+CNydnoe5LYrneQ14niIfH9rAfU8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706310982; x=1706915782;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lTQuVZL8YGJGo91HZaWDjGYZpj4eaCPL+PrXyKe44Kc=;
        b=kQy269f0Fjs3gCJMSfPU/YxKO8D10Y5HagGp+xlXD4oNI+yR/AQ98dlm9qaz8AczSF
         LuRSp4Tz4f/TFnNYzxBeCQh78twZ8LYr+8vHX9x747HJf/zQBbARrfhtr8PrE7L0oWTS
         mbN1DJhGf3UfJ3ZvrdCeDORvQxo3vQ62++rx78Lb9luguWnZQYiJ3njfq2PZbslRm3HJ
         O4YQ/B1K04n/reQ/laH0Y2Xd+qrtW6O1er35VvDV8+tcxLgm+kTAn6M/1dZA7TgCi0f+
         3ZIvN6nvyAjksFPvjkS0paPcmD07YKsmvMaAKSxd1g7kpCCdaCIsbaYBPVe5aVsE3ask
         CzaA==
X-Gm-Message-State: AOJu0YyC4FPrMIaZGmmApX6OhYwbBcapJY7kroButhDrvaNFn/WCtQFm
	ax2kErbz4P5ZlsdeGULZ0dLflYhaJytm/R/Wff8kbPBHf65QldB2ebaEXxcp+g==
X-Google-Smtp-Source: AGHT+IEphMi3U2VaLxz1TX+i8gpYrzavZfgthHPoIK0is3/PzYweSa+k/yEg+NZuAGKrkSdAEIRBPw==
X-Received: by 2002:a05:620a:22e:b0:783:d13c:cfa0 with SMTP id u14-20020a05620a022e00b00783d13ccfa0mr539361qkm.12.1706310982441;
        Fri, 26 Jan 2024 15:16:22 -0800 (PST)
Received: from denia.c.googlers.com (240.157.150.34.bc.googleusercontent.com. [34.150.157.240])
        by smtp.gmail.com with ESMTPSA id m4-20020a05620a290400b00783de3ddf5esm507358qkp.70.2024.01.26.15.16.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 15:16:22 -0800 (PST)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Fri, 26 Jan 2024 23:16:15 +0000
Subject: [PATCH 16/17] media: staging: meson: Fix kerneldoc
MIME-Version: 1.0
Message-Id: <20240126-gix-mtk-warnings-v1-16-eed7865fce18@chromium.org>
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
X-CRM114-CacheID: sfid-20240126_231626_513602_FDDB5173 
X-CRM114-Status: GOOD (  10.63  )
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

Remove documentation from missing field.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/staging/media/meson/vdec/vdec.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/meson/vdec/vdec.h b/drivers/staging/media/meson/vdec/vdec.h
index 0906b8fb5cc6..258685177700 100644
--- a/drivers/staging/media/meson/vdec/vdec.h
+++ b/drivers/staging/media/meson/vdec/vdec.h
@@ -101,7 +101,6 @@ struct amvdec_core {
  * @conf_esparser: mandatory call to let the vdec configure the ESPARSER
  * @vififo_level: mandatory call to get the current amount of data
  *		  in the VIFIFO
- * @use_offsets: mandatory call. Returns 1 if the VDEC supports vififo offsets
  */
 struct amvdec_ops {
 	int (*start)(struct amvdec_session *sess);

-- 
2.43.0.429.g432eaa2c6b-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
