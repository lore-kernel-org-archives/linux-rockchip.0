Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4BBC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 12:09:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 58BC961131
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 12:09:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 58BC961131
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvGi+yAEjZJFThvJZQKsHzcLsGsf4VkU3BG2a07/Oco=; b=lBDx86yT9QgIzM
	kXXNENE/i+27pTJ5886QZoN3Gm3GyCcLNlpzwhWRm0/wZcubL7Hi6qPVJULX6tJdRLiygK/0hVJDL
	Pr5hO4SxsmNF1ExGAdOa/368+/KkZ9nyEB6QwYMwYIFqK/cSi8UHswQHmsWcfDm/vLmCzvMokbPI3
	ch5gwdRexLXiQmLPerGV7X+PiqSUtrXwnKXjPliFEpRevPodJ+sw5P478aIT6RGaFWIYWkWrs0QPZ
	8IB8Ai1rd5pvQgqvPxsk9QGpSxPqm4+rlGE3DW1SuLgqmU63AzdaYaMghARGx35geARFMAUyZYiQI
	MNuxDyUdw0udYnYmzuxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNwOB-006eIq-OU; Wed, 08 Sep 2021 12:09:15 +0000
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNwNw-006eBb-Rc; Wed, 08 Sep 2021 12:09:02 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 v33-20020a0568300921b0290517cd06302dso2582873ott.13; 
 Wed, 08 Sep 2021 05:08:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vrLLvw3xOTTCRU86Xfj4PMbgmYuibMDeCWrdzyiGca8=;
 b=cv+/SH/mN90FMG5jPZyfKZkvpn2huTlNIlmI2SattkJr6i3hhNADoibUPC/fG2LsfW
 MmokRhiPE59Afaqx3sGyaZwPN85ReLJj+L81X5fUhb0qLKmVDWsJhiI7eBmnVB7MRuBn
 H7Ut4AvfdpuIQ7NW/oZEwPaoPmZ0jl6V1o/3GtbzWZr9MeUvX7tydz2l01Rz2MydgJaz
 hqMYEF4eGMnMOwstYnQjYucvTo/zyp8OV2mqZZi2fbBHdO3Scdq5VVAVCwFHPbbGAGgf
 1YGqcHriy9+wERwWResfylhKh7ZErLRutaOesguA8s0nZjIs4cCMt3Od80twV7fAe+8h
 MhOg==
X-Gm-Message-State: AOAM5322mvLRgucuXlEBd9cpa6Hs5TB55Xf0b5mmI5fGFfFrok/qg8kG
 1GSk9xwdGMFuGT58UdEJhw==
X-Google-Smtp-Source: ABdhPJyKe/fxlDI+Fva7pn1G9AJ4ZdpS+C3pvKgu6+LleWD1wC5liKyozojGH0TXlI8unEmxTos7Bw==
X-Received: by 2002:a05:6830:603:: with SMTP id
 w3mr2664233oti.147.1631102935279; 
 Wed, 08 Sep 2021 05:08:55 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id k21sm397255ots.53.2021.09.08.05.08.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Sep 2021 05:08:54 -0700 (PDT)
Received: (nullmailer pid 1867581 invoked by uid 1000);
 Wed, 08 Sep 2021 12:08:53 -0000
Date: Wed, 8 Sep 2021 07:08:52 -0500
From: Rob Herring <robh@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: alsa-devel@alsa-project.org, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>
Subject: Re: [PATCH v4 2/4] dt-bindings: sound: add rockchip i2s-tdm binding
Message-ID: <YTin1C4DHMTIAwH7@robh.at.kernel.org>
References: <20210903231536.225540-1-frattaroli.nicolas@gmail.com>
 <20210903231536.225540-3-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210903231536.225540-3-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_050900_950028_1C0BC3BA 
X-CRM114-Status: GOOD (  11.07  )
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

On Sat, 04 Sep 2021 01:15:34 +0200, Nicolas Frattaroli wrote:
> This adds the YAML bindings for the Rockchip I2S/TDM audio driver.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  .../bindings/sound/rockchip,i2s-tdm.yaml      | 218 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 219 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
