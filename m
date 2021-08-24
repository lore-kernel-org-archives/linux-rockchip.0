Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21E8BC4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 17:07:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E46E061462
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 17:07:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E46E061462
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwIJnRuBcjXFBH2b06b7GT43M9cJzjdvv3mnGI3dJJo=; b=zFRy/+2JCckgoC
	QEMRGLJDu7B7kAX2IJ9m0i2g9yPOh3VW9IxLmP8PtUSb7Tqo0pRSPfCFBeuKKyadhqIppWnwlABB/
	UcqGlGc6TFgnBOCm6UEVzLq5/htNLThopmXY79lElS6S1D7N52T+jmaP2mpeWvNsZIiZ6BBMqxuSn
	sqgTNvRnELcsRgZaSKCOAxJQD7wsTBPmGD8c02Nc/Xy6w7NIPrEtDsBeuUBmmOuTcXsFdLmNr/XKC
	EX3n6Nu6pqemfSM7B6dLMfIR/UekVzITPKwvBm31d//kIav91U8q5LGYghDURgGtlFxAOlwtAtqrq
	EMTDuGKxOvzNSXsWHo3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIZtd-0045rn-Kc; Tue, 24 Aug 2021 17:07:33 +0000
Received: from mail-oo1-f51.google.com ([209.85.161.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIZtb-0045qo-8j
 for linux-rockchip@lists.infradead.org; Tue, 24 Aug 2021 17:07:32 +0000
Received: by mail-oo1-f51.google.com with SMTP id
 z1-20020a4a2241000000b0028e8dfb83b4so3933308ooe.13
 for <linux-rockchip@lists.infradead.org>; Tue, 24 Aug 2021 10:07:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=x0+Ku3uRYUZNsC66GsbdnR2uZPO2vq9Jho8/8ikUv4w=;
 b=CeN2+MVkqsOcWxEXg7lUGtgHwqGx1OtqsVXHXmFex5nIWBq6N02qc3PUawyEnFeils
 eWCUcxtSO6vkjj+GcNi4Sffb5Ob3z2GQnZ6t145hKEnoV5sFBq1eyBEuGBODyLEtbeM7
 C0UddDqyC8CS635eUONCek/w6wxkgjmB+6/4UqOSSUFd/mVMsGSTZ5h4a13Nwt99AIuF
 VfH2gRSGZnujdaH5FRK75AA511fQcaylZ6FQGgrug3h7FpCe9W79le83wacsLhjrN6hd
 kw8afFjp0AMvFAJ9JIDjrOZVosMZ9yVr+tFODJY8S1HS4eQd+g16ah9a/qROZNnYkjnb
 PDCg==
X-Gm-Message-State: AOAM530JuN+3gC4S89LSIgdY+iyMkwoxFVyYYuLIyKHFgMuWOuo03TlD
 S6Q0R5YNivUqU++X2jVcuA==
X-Google-Smtp-Source: ABdhPJzFcRyrinyVmQXXuVJkq9e3q3DPx8HeY+Xs4gHp1ZiXtcwNhbdUGwNoK/D/cBshzThYrQhing==
X-Received: by 2002:a4a:2549:: with SMTP id v9mr30504371ooe.28.1629824850050; 
 Tue, 24 Aug 2021 10:07:30 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id n130sm4521973oif.32.2021.08.24.10.07.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 10:07:29 -0700 (PDT)
Received: (nullmailer pid 639790 invoked by uid 1000);
 Tue, 24 Aug 2021 17:07:28 -0000
Date: Tue, 24 Aug 2021 12:07:28 -0500
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: heiko@sntech.de, alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 broonie@kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 12/15] ASoC: dt-bindings: rockchip: Add compatible
 strings for more SoCs
Message-ID: <YSUnUHwMDrU748Hs@robh.at.kernel.org>
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629796734-4243-2-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1629796734-4243-2-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_100731_346415_23475E0E 
X-CRM114-Status: GOOD (  10.65  )
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

On Tue, 24 Aug 2021 17:18:51 +0800, Sugar Zhang wrote:
> This patch adds compatible strings for more SoCs.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
