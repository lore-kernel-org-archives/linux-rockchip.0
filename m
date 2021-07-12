Return-Path: <SRS0=7Rgf=ME=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 841ADC07E99
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 20:05:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 49A5A611CD
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 20:05:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 49A5A611CD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZ3iTR2y5nKDlyIriAl52zvzJof8g/YlK8Hysb34hY0=; b=0waM5ijlj92t0F
	Ebvl1UYlUALXNuYQbeXNYKzBWIv9nkbyz/a7lz4Sng7QS2ZN3h2uSDB+B2NsF7+grVdo1JVm9lpsW
	51ES+ks/J7b4rwZMEf2f/ffse63ujRuvzj982tKrdcvVGGzOk8fHSkuzfKPlh9w4rM5PYTU9Aa48T
	lc1372UIvu0adwsRQWZDlT+wlWhiPM+5hRqsEUwnwQcwDpQZkLw4kieDQtocfktmHhvR1b+EQUC+a
	vWl5N2RLcSQKdaCzibRWViIWd14oCtDLslXtcEDHArYTgW4lG9/16mIUagwJtYdGSwHV00BPbmYtm
	HMgVOnqCZIh8QYXKupNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m32Aq-008Kz9-1h; Mon, 12 Jul 2021 20:05:04 +0000
Received: from mail-io1-f41.google.com ([209.85.166.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m32An-008KyW-Uj
 for linux-rockchip@lists.infradead.org; Mon, 12 Jul 2021 20:05:03 +0000
Received: by mail-io1-f41.google.com with SMTP id y8so24228707iop.13
 for <linux-rockchip@lists.infradead.org>; Mon, 12 Jul 2021 13:05:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eU8NZJGeRlOXg3sl+j9LmKuiwWZGjFx2BmOO4WsxHwQ=;
 b=SFlEKCCYOqN+o1b0j4QsV3MosffhJZtSpDOtGBCGwsaiqRuALW1ckF6NZB+3cR29bE
 cFOEFzS4JnPQfGrPMaUb5bGQf4mUR6RrR0+RwOewkjYDivKUlQX+U1rrFMlWf02tNbi2
 12nj4g0VJtwx/DapMxCWOkHbU8ITJ4oCfMGyJPO+kwZcRYALQ827pNE0jKAk237NNozi
 LE5YrzKCiJYotsYT525KL0/zrDNJi8tX0nAjQcvUKKWphI6Kvo488n7I1+bSYmbJ+PfW
 M7uxu50oIHVumxjvLukj8VyAFP/IkRhBW7mF776wnNbWUAu+wyxYynIW9cTIhYXTjG8G
 lksg==
X-Gm-Message-State: AOAM532xjf792loxf1gGaCqoNA1fVWhseOGehOEZ8Ov/P6f31SIyF+v5
 ccs5lgG1ydzrPdEgpHZZDA==
X-Google-Smtp-Source: ABdhPJzzLX+ZdqoCfmxhhaV8Y94O6v7F+qOxJCcAbfAlxsuTPGYrt9RQmKau2ZsrZtOfICFUSyHGCQ==
X-Received: by 2002:a5d:83c4:: with SMTP id u4mr469396ior.21.1626120301443;
 Mon, 12 Jul 2021 13:05:01 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id n13sm8619755ilq.5.2021.07.12.13.04.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 13:05:00 -0700 (PDT)
Received: (nullmailer pid 2397426 invoked by uid 1000);
 Mon, 12 Jul 2021 20:04:58 -0000
Date: Mon, 12 Jul 2021 14:04:58 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 dafna.hirschfeld@collabora.com, helen.koike@collabora.com,
 ezequiel@collabora.com, robh+dt@kernel.org, Laurent.pinchart@ideasonboard.com,
 linux-media@vger.kernel.org
Subject: Re: [PATCH v6 02/10] dt-bindings: media: rkisp1: fix pclk clock-name
Message-ID: <20210712200458.GA2397368@robh.at.kernel.org>
References: <20210618130238.4171196-1-heiko@sntech.de>
 <20210618130238.4171196-3-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210618130238.4171196-3-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_130502_036206_C94C1869 
X-CRM114-Status: GOOD (  13.07  )
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

On Fri, 18 Jun 2021 15:02:30 +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Having a clock name as "pclk_isp" suggests really hard a remnant from
> the vendor kernel.
> 
> Right now no driver _and_ no devicetree actually uses this clock name
> so there is still time to fix that naming.
> 
> Therefore drop the "_isp" suffix and only name it pclk.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip-isp1.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
