Return-Path: <SRS0=unwu=CX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA3CC433E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 17:48:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2F713216C4
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 17:48:27 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="EFEXIs6L"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2F713216C4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X8kQ6GfEY/tlinPisgkq//Cg2W7spRbufMY1e3C/eHE=; b=EFEXIs6LxLdjMmIGJ3e0V/NYl
	G+k3/3JVWFJ4DQz+1NySYiEVN2bsoLlITq7ImwnMHuDzlZ5fjwS5qmiBrpSOYrJsgI7SmH3xG4N7y
	MBSd5ius8wFjRpldf7A8kdM2p6N9lFa8PgPJ/EbkTfTnMd4+jFC/nYpg6A5zJadrWNfwPD2Z9Aaet
	yfKWO7MwdZRoHFsnNoBXDRWTWgI2+s1dN2zFpQAj5nZgQ1wfvtv/KSCdZW2JN54ThENLOHBZyu7Fa
	YK+L154FU6CJy/PpjYINUSXqpBkytXlR/1YG7FT42R62hqp9X/cGcD0zFkSQZla9wU4umO6Zwyolc
	QPBuyVLhA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHsaV-00064p-8t; Mon, 14 Sep 2020 17:48:23 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHsaS-00063k-5c; Mon, 14 Sep 2020 17:48:21 +0000
Received: by mail-io1-f68.google.com with SMTP id j2so1018672ioj.7;
 Mon, 14 Sep 2020 10:48:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PqPt1xAT32RIxLIZosJI+JQoUjrXFn0vUMes1djvxjg=;
 b=bW0VQeqnrR/E9JrWOynZJzOBf4yTdd8QU25aEYfQR0x5/0LTlLcMVi5Bvnv+MJxxcP
 duJRSumn8XkvGGe59lzJPN64Wn4xjFHebzhk18HRPcuEzHXo2JkaNd4tGpXjg19QDEwk
 OZ/If94i9KVOb0UmWZKwFlhMEWnsoB1Hc55CXyD0Fq9jfMe+pazlxjUODifxyGAgQQh1
 z+ARXA1E+4FxMqytEppzF8hmOI1OYbekQc31hWS9wHTQ/NhdfbSbfwFRGkonjdmrtha8
 pkmj8EUk2fAdOLkWw89QtRbZfiAs8OyFxazyOehe7Ecc+juPf0dPy89xRP57O4lcboLo
 SS2g==
X-Gm-Message-State: AOAM5337ZR1l8o+FeZXE6ZXetSiJLj9DaXoy5bpY916k7olZsU3Prh+l
 VMOSieUYaCLqTUQ4Uv+K4g==
X-Google-Smtp-Source: ABdhPJzMqG/uDJkJEjtFvej4Mc/bN+DjyUJgglEvHKfxvSE3kgBG2dw0CE0nO8CSpV+qZuBKSv5uXA==
X-Received: by 2002:a05:6602:2e87:: with SMTP id
 m7mr11860757iow.106.1600105697758; 
 Mon, 14 Sep 2020 10:48:17 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id k1sm7254435ilq.59.2020.09.14.10.48.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 10:48:17 -0700 (PDT)
Received: (nullmailer pid 4126584 invoked by uid 1000);
 Mon, 14 Sep 2020 17:48:12 -0000
Date: Mon, 14 Sep 2020 11:48:12 -0600
From: Rob Herring <robh@kernel.org>
To: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH v11 2/3] ASoC: qcom: dt-bindings: Add sc7180 machine
 bindings
Message-ID: <20200914174812.GA4125843@bogus>
References: <20200914080619.4178587-1-cychiang@chromium.org>
 <20200914080619.4178587-3-cychiang@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914080619.4178587-3-cychiang@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200914_134820_243652_1BEA2B62 
X-CRM114-Status: GOOD (  11.25  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Taniya Das <tdas@codeaurora.org>, alsa-devel@alsa-project.org,
 Banajit Goswami <bgoswami@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 Rohit kumar <rohitkr@codeaurora.org>, Patrick Lai <plai@codeaurora.org>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 dgreid@chromium.org, devicetree@vger.kernel.org, tzungbi@chromium.org,
 Srinivasa Rao <srivasam@codeaurora.org>, Stephan Gerhold <stephan@gerhold.net>,
 linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, dianders@chromium.org,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 14 Sep 2020 16:06:18 +0800, Cheng-Yi Chiang wrote:
> Add devicetree bindings documentation file for sc7180 sound card.
> 
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> ---
>  .../bindings/sound/qcom,sc7180.yaml           | 130 ++++++++++++++++++
>  1 file changed, 130 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/qcom,sc7180.yaml
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
