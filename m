Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C58FC46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Dec 2023 09:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ySP336nwgJJW36UbArQ2U0aktqcLnWn4QS143wioYBY=; b=pAbIQ1dMF7bAyS
	wZIqviC+hju11Z/0NXAbPpX2IzVVX9/1gwei+d71Wk04C7MR2hqsOxuxSDM0/fo+VOE8IXNK/YI99
	6IFz44xgtPUD7LkbzKi8pleF4EaMvxxfeVas9mjj/kHF0c0RK/2Q12hGgXAuz+DQLzJ0mkPd5t43u
	lZxm+xN5XM3b1ezX/1gZBMQxkhUPjW1IGrG0c2NIueMCUJRdAeITNIgP98e4KRKNdTstp4jFnctd0
	nPc9YfE+6fSxokX2ra3cz15AKfhBATIslZi9IgURuapumezFM3McoYpzEYE3S+oCtGygs1LgRwKKt
	0iyZ9la/rrcHJDdM99rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJVve-002U1K-0P;
	Sat, 30 Dec 2023 09:46:50 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJVvb-002U0Z-1E;
	Sat, 30 Dec 2023 09:46:48 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-336990fb8fbso5495328f8f.1;
        Sat, 30 Dec 2023 01:46:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703929604; x=1704534404; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KcIgIsj01sfpjFRquhulh/IanhBls2XFsraUoERkxCs=;
        b=bFnWHeJHwDX1aTr9tx5UyabVzzyg8g31T6pFJLgR90HwbIiue1XlTRDdW9o+kM3USH
         mJH/G/oOuRXxsbK9ZJavDjkjAfYLmWf05TFy3I6wP/z5pX+ak6UsHwcKgKPBSWTJrE9T
         zCzUeAt3M1R1u6yxe2T8R63yDDqR18cHXAm3o2klWeTHz/F5UCE/NFaa9M//QKO043rD
         O2lR23EXxfwJdAlfd2Ud23iLqODa+w+AO4IVWQYjiiXuuKTC0rUtSHRdG+c7hsGLKQnm
         0tW3aqvaWvn2nIryW/wdBCey/xqg/b7moa8/zCIPp4yjy2GceOVTBlbcmXQ2puoshP5x
         ka5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703929604; x=1704534404;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KcIgIsj01sfpjFRquhulh/IanhBls2XFsraUoERkxCs=;
        b=kT12PrNVzGtAdxAfpSpGvAL5u1UJtEi/swJ03fGgVPRKwIzF5zQeKx8RDJTcAQcZ7+
         eRszzbYEoJ0sE1/NN5OFdJJzgl0JNXssbW8jet7ki0qtZ06kd3HOa1ZGplVtwbMPa88I
         uyJ7onTiXs4mTaGTjC3wpMsIvg8jB+TMuz2RkGPva4jbUFh3RaNQEKj+JtcGEakA47UB
         wwcowGzDzo1a+UJNcS869ONGdhDGQOuSEDdVFqbbUw0RZwnYZibtI5qx2j3/MdqItx8l
         P3SPBjhG7j05/qcBrm/ECFcgcNrcJ1PnnwIkGMeAqT4Vyb0HxgRkMDfqIbBvCoF779q3
         6pTQ==
X-Gm-Message-State: AOJu0Yy3AnOLvQHfypNAL6Kxp00XuxwWVgy+6deUSp7IpfvsLsyUZoJ+
	+QEHcfxGEB0IZjUOfv3pWA==
X-Google-Smtp-Source: AGHT+IFHjVI4HXWdQwlGa3DbmbNjqiZW1HpjbV8+bibBI296VYU1udwPscg4qW0FUPVSkm3UCaEiPQ==
X-Received: by 2002:a05:6000:c4:b0:336:8085:3bac with SMTP id q4-20020a05600000c400b0033680853bacmr7150627wrx.77.1703929604115;
        Sat, 30 Dec 2023 01:46:44 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:eee3:932b:58d4:3518? ([2a02:810b:f40:4300:eee3:932b:58d4:3518])
        by smtp.gmail.com with ESMTPSA id t12-20020adfe10c000000b00336f43fa654sm8149059wrz.22.2023.12.30.01.46.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Dec 2023 01:46:43 -0800 (PST)
Message-ID: <35df6456-2bc2-415d-bc61-09e4b440e2ac@gmail.com>
Date: Sat, 30 Dec 2023 10:46:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] Add hantro g1 video decoder support for RK3588
Content-Language: en-US, de-DE
To: Jianfeng Liu <liujianfeng1994@gmail.com>, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de,
 sfr@canb.auug.org.au
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20231228131617.3411561-1-liujianfeng1994@gmail.com>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20231228131617.3411561-1-liujianfeng1994@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_014647_446464_07A8CB69 
X-CRM114-Status: GOOD (  13.26  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi, Jianfeng
Am 28.12.23 um 14:16 schrieb Jianfeng Liu:
> This is the v2 version of this series adding hantro g1 video decoder
> support for rk3588.
> 
> Changes in v2:
> - Fix alphabetical order in patch1 and patch3
> - Sort device tree node by bus-address
> - Drop rk3588_vpu_variant fron v1 because that is exactly the same as rk3568_vpu_variant
if the RK3568 and RK3588 variants match, patch [1/3] is not necessary. Just
document a additional compatible in a similar way it's being done for
rk3188/rk3066 or rk3228/rk3399.
If there are ever differences we don't know about yet, a additional variant
can still be added in the driver.

Alex


> - Link to v1: https://lore.kernel.org/all/20231227173911.3295410-1-liujianfeng1994@gmail.com
> 
> Jianfeng Liu (3):
>    media: verisilicon: Add support for Hantro G1 on RK3588
>    arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
>    dt-bindings: media: rockchip-vpu: Add RK3588 compatible
> 
>   .../bindings/media/rockchip-vpu.yaml          |  1 +
>   arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 20 +++++++++++++++++++
>   .../media/platform/verisilicon/hantro_drv.c   |  1 +
>   3 files changed, 22 insertions(+)
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
