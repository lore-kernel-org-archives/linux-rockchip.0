Return-Path: <SRS0=t7eY=PA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35F68C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 15:34:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E5F7D61076
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 15:34:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E5F7D61076
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohWernBPQxmEqT4SkZDARxvZAyIWkxIiVURHJ9igTaE=; b=v87b5tMi3rlbuX
	ggHtKjQ9799it8zkCLe/qGnTQJLUGwNxIFxexfNQJUBpAjoHi43BM1CV/564l/TYeUa894UOO50ah
	mmGdOl4NQls71HeHPtDeetKUmuL+Hdl7WxlSMINfwSHY18qnYr7Lv853xusvF4B7l0ibURrvvi5qm
	qUmLl3gwnVOiIHmQlXzwLvn+JYYUw1Tth9/MCRmqK6ARsZnjFespenB8JQJ/dCqzIKLveSNYni+dw
	xCgKrmGRQRaCr1Eh5PsnayAeB3OQszm8If5O7Mug+q/vsYb/UJN4la61sunjmaZVfIiW4p8wXrEJE
	j8UeGROr70GAJbJrTksw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maJnR-00DLoF-1V; Tue, 12 Oct 2021 15:34:29 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maJnO-00DLmS-9v; Tue, 12 Oct 2021 15:34:27 +0000
Received: by mail-wr1-x42e.google.com with SMTP id g25so21650196wrb.2;
 Tue, 12 Oct 2021 08:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BP/Jzg1o84avvBiAAVMKsyPyktS8JE3pNY0emzlJRR4=;
 b=ECwqR6XRApqzjnKzFwgGgnGPhONoNpqYRGNWWmqUAk/S2Kl0ketM+2GZniFXr+WEHW
 Q/gR1ZiIJL6XEiiU5Xf/vYUrnHHzMxIkKLY76jNIEUEeXfPg4gDk80U/47j2kLsKTFY6
 mSSKzus4KuRovaOlCiCoB/JtSXXiGYgZZMMVrVyZ40TZFRIDyUZfF1RaiP+Drj6EfFPR
 G4os43c51rOxBbv+wtClXXDwV/5obJ2M9vZxWRVRaXOv043mRuRLoaVJZH4gRdN77F29
 TNiDok6/LdinixEar9eHYa1jVsKu3G6tbhg/kGlNTlrguc/7Sa2tFA9weEN1H8uTF6Ak
 VGnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BP/Jzg1o84avvBiAAVMKsyPyktS8JE3pNY0emzlJRR4=;
 b=DrowBmt+uOzEZGR/S4ioiKe9HJ7DsnsieCnhSl3sht7VyEDb7yD2WNhgNHy7Lc2nFK
 FN5cMM7nqKU1Hhp/y9aocIBSJp+pIQI9AcZVgOZp3D5FGtKdS5a3dR6WrK+PTp+j67Y4
 FkTDy+EuaCKW0IJuzu4vxqQKh+WCvAjBV1v6bdcIRdf7ZJcDa5WOtZ+iC+bakBnO9fBx
 e5xghYYTwhXmqnhapBUWa702YRkYi1fP8KPXY6p4tZBcd9G5VPH/6NLPjUaiSAbs+alZ
 EM8tilYxZKDSoR7Sz6AwHP8FOui1HInGdXFD5r1CrACV+P760o1K0XGt/KNZrqKGb+Xn
 Kd3Q==
X-Gm-Message-State: AOAM530E2FK6mCo67iIPaZj3YkOKkH6+5lLttINjjE4qu5RA9KPD8Chm
 Rr5+7oa3VIqWARopOZAUI5w=
X-Google-Smtp-Source: ABdhPJxTqeLCMlwwJrqItDvWvZrbEbSTwEDtZ98ME6yzw3kWZ8DXDs4wp5uQOOcfJ4LNcmavhLTNQA==
X-Received: by 2002:adf:a387:: with SMTP id l7mr32531103wrb.214.1634052862098; 
 Tue, 12 Oct 2021 08:34:22 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net.
 [86.58.29.253])
 by smtp.gmail.com with ESMTPSA id q12sm2735972wmj.6.2021.10.12.08.34.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 08:34:21 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: mchehab@kernel.org, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 hverkuil-cisco@xs4all.nl, jc@kynesim.co.uk, ezequiel@vanguardiasur.com.ar,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v2 0/4]  media: HEVC: RPS clean up
Date: Tue, 12 Oct 2021 17:34:19 +0200
Message-ID: <21222555.EfDdHjke4D@kista>
In-Reply-To: <20211012143552.661751-1-benjamin.gaignard@collabora.com>
References: <20211012143552.661751-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_083426_361757_004AFEAF 
X-CRM114-Status: GOOD (  17.93  )
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

Hi Benjamin!

Dne torek, 12. oktober 2021 ob 16:35:48 CEST je Benjamin Gaignard napisal(a):
> This series aims to clean up Reference Picture Set usage and flags.
> 
> Long term flag was named with RPS prefix while it is not used for RPS
> but for mark long term references in DBP. Remane it and remove the two
> other useless RPS flags.
> 
> Clarify documentation about RPS lists content and make sure that Hantro
> driver use them correctly (i.e without look up in DBP).
> 
> These patches are the last in my backlog impacting HEVC uAPI.
> From my point of view, once they get merged, you could start talking
> about how move HEVC uAPI to stable.

With your changes, HEVC uAPI controls still won't be complete. Cedrus needs 
entry point control, which in turn needs dynamic array support. I'm a bit lazy 
implementing that control, but I guess I can take a look in a month or so. 
rkvdec also needs more fields for HEVC. With patches collected here:
https://github.com/LibreELEC/LibreELEC.tv/blob/master/projects/Rockchip/
patches/linux/default/linux-2001-v4l-wip-rkvdec-hevc.patch
fluster HEVC test score is reportedly 121/135 (8-bit tests only).

I would certainly wait with moving HEVC uAPI to stable.

Best regards,
Jernej

> 
> version 2:
> - change DPB field name from rps to flags
> 
> Please note that the only purpose of commits 3 and 4 is to allow to test
> G2 hardware block for IMX8MQ until a proper solution isuing power domain
> can be found. Do not merge them.
> 
> GStreamer HEVC plugin merge request can be found here:
> https://gitlab.freedesktop.org/gstreamer/gstreamer/-/merge_requests/1079
> 
> With those piece of code fluster score is 77/147.
> 
> Benjamin
> 
> Benjamin Gaignard (4):
>   media: hevc: Remove RPS named flags
>   media: hevc: Embedded indexes in RPS
>   media: hantro: Use syscon instead of 'ctrl' register
>   arm64: dts: imx8mq: Add node to G2 hardware
> 
>  .../media/v4l/ext-ctrls-codec.rst             | 14 +++---
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 43 +++++++++++++----
>  drivers/staging/media/hantro/hantro.h         |  5 +-
>  .../staging/media/hantro/hantro_g2_hevc_dec.c | 27 +++--------
>  drivers/staging/media/hantro/imx8m_vpu_hw.c   | 48 ++++++++++++-------
>  .../staging/media/sunxi/cedrus/cedrus_h265.c  |  2 +-
>  include/media/hevc-ctrls.h                    |  6 +--
>  7 files changed, 84 insertions(+), 61 deletions(-)
> 
> -- 
> 2.30.2
> 
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
