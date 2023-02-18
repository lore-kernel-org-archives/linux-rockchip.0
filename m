Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5CF9C61DA4
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Feb 2023 12:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OZyKC4RDZWRRaGFZtSTaGDQ54AJ9SD0bfsLENryd1lY=; b=zUW8F4axI0uJOfVOm2VE3TzQWj
	DmAqqGSgTB+zrWlHkguR2+ldsMHMbpQcp4Jt2fN54Ayw6srg2AfQ4ksPPm8HONfQ5JdObBGXRpwHQ
	HggXhlgNbEv/DKhfN1ekKfGI/MOtYmYTDeypLPKC3WG/vHHxoML5qNVMHYd/azUUxcuhr4kEFOFbO
	me37mgGScd7bxB9/ird/cq8pOI0CV0+Vza7HFR+CtcoxUTSq1F2PC9MBSfFRoOZdOW49Tuy4VpKaK
	tWUwka0t2safy31sR7mIOmQxjGpolMrFxeJboU6Ev/VmHZaNtZyb/BWxE+fWYSf3fejikSxHqR4TB
	T8OLtoPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTMjn-00H0nB-5E; Sat, 18 Feb 2023 12:54:47 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTMjb-00H0kU-Rm
	for linux-rockchip@lists.infradead.org; Sat, 18 Feb 2023 12:54:38 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 10so736842oiz.3
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Feb 2023 04:54:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112; t=1676724872;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=//sb/NYNvOOxKrp04fWS+VMUo3F1GFZIyJCs1w1+uek=;
        b=I7P7JsNGzgkMCPgCrqRXdA9ZpA9DOa2tP8KSY8Oy5dWp3x2KJ4cANa9ZYZ+uhdtv58
         wKz1ZkawqpIBakGgBvuy9Idg+QjE+JGuiG9uHqzZjFFqbjjt+C217c/Ce+UuCMAWMmAm
         oHY2nZOtM86GH0FJExXKnPgRP2nbL0/LXrX186H4WcFk+43wXGFVLMPLrOkjw04KJJTg
         1ScetLzsQ7qy7EILdSksGllAL+nqO7DNZycJ25QY7+IWBlQYWEJwZiPyB45M/ZnCVlBW
         ajx6M9qAjtLPy3YN/3om3eRPyv23USb/4PR9j+GCAaSRwV7y63Z5v2faAKGAF2YSH62N
         y1KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1676724872;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=//sb/NYNvOOxKrp04fWS+VMUo3F1GFZIyJCs1w1+uek=;
        b=dk+YzZ1M9dGYnsk0SM6HhS1QYfAABAjp/J0Z+pc7w5h1Ay1yzwu5ifhO8skSH4IFOM
         tpiLT9q2Crj2mrSGB/BVgd05bHxmuqJtuNjIPCy1q3SlF1m0IGMT5eARZsFtsQj9gV9V
         Eh6cfmFijfEyNxSa15v85vc6g5gPpiZoczBvQPnX6wk6MjVEywcJnewxofg/AvL95Qut
         vl8UkC7T+PqG3dWbZUdOIIrb9891WIuIBHq8KcZuXdo9M6n9bgj4labGOQ6oyMETX1cw
         GqOODyVcKsiYRDVW/vyV/zaxJd/eiULJiDulRSqn1+hxuEo/vZOt0gycifNmJWohpdBN
         vx/A==
X-Gm-Message-State: AO0yUKUjh+Hj1NVdCcYvzwI3D6R/nJtYWHLnzL/I8/TzfBM/MniOI3rm
	PhTjCAxzU/KhXCbPBrUZp7by6EjddXL/cDM1
X-Google-Smtp-Source: AK7set8hgUotSkKUQWpkFmsCbsIrZ1DR8W4XyJ/l7M9d1e2GFLgZ0l2Xw76LWIUq6qL4UMbVzzM/jQ==
X-Received: by 2002:a05:6808:1a1e:b0:367:163e:a0e with SMTP id bk30-20020a0568081a1e00b00367163e0a0emr2039035oib.4.1676724872484;
        Sat, 18 Feb 2023 04:54:32 -0800 (PST)
Received: from [192.168.10.175] ([190.11.59.127])
        by smtp.gmail.com with ESMTPSA id q132-20020acac08a000000b0037d813cd612sm2868122oif.43.2023.02.18.04.54.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Feb 2023 04:54:31 -0800 (PST)
Date: Sat, 18 Feb 2023 09:54:20 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH v8 0/6] media: verisilicon: HEVC: fix 10bits handling
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: robert.mader@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, linux-imx@nxp.com, hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.co.uk, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Message-Id: <K61AQR.89JE1N9UODFT2@vanguardiasur.com.ar>
In-Reply-To: <20230203091622.127279-1-benjamin.gaignard@collabora.com>
References: <20230203091622.127279-1-benjamin.gaignard@collabora.com>
X-Mailer: geary/43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230218_045436_280182_53A57780 
X-CRM114-Status: GOOD (  17.41  )
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

Hi Benjamin,

We are almost there, just some minor comments.

On Fri, Feb 3 2023 at 10:16:16 AM +0100, Benjamin Gaignard 
<benjamin.gaignard@collabora.com> wrote:
> When decoding a 10bits bitstreams HEVC driver should only expose 
> 10bits pixel formats.
> To fulfill this requirement it is needed to call 
> hantro_reset_raw_fmt()
> and to only change driver internal state in case of success.
> 
> Fluster score for HEVC (140/147) doesn't change after this series.
> Fluster score for VP9 is 146/303.
> 

Given the series is changing the format negotation which affects
all codecs, can you test MPEG-2, VP8, H.264 and JPEG encoding?

Can you also run v4l2-compliance on all the /dev/videoX devices?

(Adding Robert Mader, who recently helped test the JPEG encoder).

Thanks,
Ezequiel

> version 8:
> - Correct patch 4.
> - Add a patch for VP9.
> 
> version 7:
> - Remove unused ctx variable in hantro_try_ctrl().
> - Change HANTRO_DEFAULT_BIT_DEPTH value to 8.
> - Simplify hantro_check_depth_match logic.
> - Keep ctx->bit_depth as integer value because it is use
>   to compute buffers size for hevc.
> 
> version 6:
> - Split the patches in multiple sub-patches.
> - Rework hantro_reset_encoded_fmt() usage.
> 
> version 5:
> - Add Nicolas's review tags
> - Add Fixes tags
> 
> version 4:
> - Split the change in 2 patches.
> - Change hantro_check_depth_match() prototype to avoid using
>   ctx->bit_depth
> - Return the result of hantro_reset_raw_fmt() to the caller.
> - Only set ctx->bit_depth when hantro_reset_raw_fmt() returns is ok.
> 
> Benjamin Gaignard (6):
>   media: verisilicon: Do not set context src/dst formats in reset
>     functions
>   media: verisilicon: Do not use ctx fields as format storage when
>     resetting
>   media: verisilicon: Do not set ctx->bit_depth in hantro_try_ctrl()
>   media: verisilicon: Do not change context bit depth before 
> validating
>     the format
>   media: verisilicon: HEVC: Only propose 10 bits compatible pixels
>     formats
>   media: verisilicon: VP9: Only propose 10 bits compatible pixels
>     formats
> 
>  .../media/platform/verisilicon/hantro_drv.c   | 49 +++++++---
>  .../platform/verisilicon/hantro_postproc.c    |  2 +-
>  .../media/platform/verisilicon/hantro_v4l2.c  | 90 
> +++++++++----------
>  .../media/platform/verisilicon/hantro_v4l2.h  |  3 +-
>  .../media/platform/verisilicon/imx8m_vpu_hw.c |  2 +
>  5 files changed, 86 insertions(+), 60 deletions(-)
> 
> --
> 2.34.1
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
