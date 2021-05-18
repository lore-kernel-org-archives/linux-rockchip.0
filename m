Return-Path: <SRS0=76ry=KN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBECDC433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 14:16:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7ED59610A2
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 14:16:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7ED59610A2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ArTZna1Ybg8ut3p8QiwyBGxP9hg2lPxkkZuEiN+BE+A=; b=MVjy75BH1qHheDtsc/9TYQTqf
	OgZ47mU0u28Twnm8e5gxviwJdZguRnG6TddwBPztpt1QGHIb7Wa/VpltWkoJ09ynnC0pchfhI+liM
	CdxYOFTFq1tvKSEuYvcKDmjPMIfU3FOclHQ3z4oLro+oEA71oBIY2l98+X3bdfKDky/vh9V1Gd2eA
	VhgvuM4MKp2iTCP/QK5783kySZ9GgOsUUHbrCyTJmdY1pETuiWZc/LtCw6H4QXwMUNU5Wf+d+Mukh
	YYOoK4oOjvhJbftnG1CP9dHJxBikm3nnNbejBT6etd/YtQQLatc728+cxCMP+TiXa6Yfz/BQZCUHn
	VzeTWgFuw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj0Wg-000zAd-Rh; Tue, 18 May 2021 14:16:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj0WT-000z5u-HE; Tue, 18 May 2021 14:16:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=ApdT2ZVeO/Dre6C+tPn+oiUE2pUa+eU6zxwzAzRnwbQ=; b=0ICWQuyacqTJ3i5WdMzS3wALSO
 xtRH7LCP7UdF7m8KTy7F9eHM4S0jN2Er0aupQ9Zm7Vk6k1zY6b+qM0qbHH5mspkMPbINTra7E689u
 RRApQA8NhCznnuV5BV5Q/O1t5iGbjtYUwkAz3vPwNRuLl6lvRySKz5SnJov/8G7BbFksYwNFLCM3X
 0RDA42efL+BsSuT0jNIiKcFKHX91TN+IIZDmQS1e8X6LgAGlIGai95OstFXnmAWFDCCmnWLikrT7Q
 kYfhbAGljYWLkoE/0ITeGPzCF3vC2X8KPj1ihX0VJGZp3R3MyoIxLTfCmEQ+0QocBgKQmJ2BgCr5+
 cH4/xyOw==;
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj0WQ-00Eiag-1R; Tue, 18 May 2021 14:16:36 +0000
Received: by mail-oi1-f182.google.com with SMTP id j75so9862690oih.10;
 Tue, 18 May 2021 07:16:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ApdT2ZVeO/Dre6C+tPn+oiUE2pUa+eU6zxwzAzRnwbQ=;
 b=WvY0Wk4BPFWkDcJ74MQhOgkp99TjDz78GBSKmJPSDcv72F7S2sYcxhkXoNGF26Cx+h
 mYfDoKW/Jx+VrvKvymlEGx6lp59TfjeBZpUYlkVRC1cEeidEBdQcvWgKXzIJCeYN+HzK
 Q4xMEpG6bhBU0MSQ8hIl2OKQ3j7H7itg2Uq8S7mbCteTdAQWFIgAoncezhnDumji2ENw
 hoEEH5cxxIMOcqyHGkWMKDCJY4Qo0dPcQmcCWAwvOWuSHxMiHXbR+9cnRDlg/hhkabOh
 TAO1Tjl/7NiIuXgIk1GZ1YqnjrNPq9bq7TET80BtiZ2KRJRp5EPlCE4P8BN5cXmMuYkO
 cIjg==
X-Gm-Message-State: AOAM530e1TrSuf0YbP9nn0Ru5bFJBN1ngRE5pCDNlAACd8WHAhDSFq0/
 YUj3o33guRtOTRJMIK5G4w==
X-Google-Smtp-Source: ABdhPJwKeA/B7qE5e/6vshliOBR9uw9IAmWJN/K6lQBwRVuSqMtApoETBfkjLsWH9TEiXwE6k88veg==
X-Received: by 2002:a05:6808:997:: with SMTP id
 a23mr3602047oic.129.1621347392729; 
 Tue, 18 May 2021 07:16:32 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g11sm3434822oif.27.2021.05.18.07.16.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 May 2021 07:16:31 -0700 (PDT)
Received: (nullmailer pid 612177 invoked by uid 1000);
 Tue, 18 May 2021 14:16:30 -0000
Date: Tue, 18 May 2021 09:16:30 -0500
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-mmc@vger.kernel.org
Subject: Re: [PATCH 6/9] dt-bindings: mmc: rockchip-dw-mshc: Add Rockchip
 RK1808
Message-ID: <20210518141630.GA612127@robh.at.kernel.org>
References: <20210516230551.12469-1-afaerber@suse.de>
 <20210516230551.12469-7-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210516230551.12469-7-afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_071634_100930_2A9CECD7 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 17 May 2021 01:05:48 +0200, Andreas F=E4rber wrote:
> Add a compatible string for Rockchip RK1808 SoC.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
