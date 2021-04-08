Return-Path: <SRS0=F7Lw=JF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78B5C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Apr 2021 16:01:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6BE7C610F8
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Apr 2021 16:01:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6BE7C610F8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WkutXEczBvWzmybAzdOibXSPxJtP1WJEOWdPdIKi/1Y=; b=A0NuMPSetJnuhdUNRu7wJPt7k
	mFdInbE19Yy3rPdeluXh+38U6e3RNB6hx/E77ho+jwlh8BsBmGVb09GRDp1Ulzm3TbGmchtAbST61
	ivXUgBuiPZzTdh7TQ1cLRwnnwIv4AfjTZqvfBxalbuBPw/aiGVhwpLfpxT9W5iH4SEk9nsgxb3pea
	7MKMmD66o5TBkLSFH3Rt1qKfhjy7AxtmR39aTKEqaQFiwbjrFkxEPqJadTrUmmSGibNYmjEvZLk5/
	RroZa47Vxy71/+4RmNJ1u+AHusOJ/23TJNxShAqw1QJv09fFVHjgdQkTeGNG8RixihMvu4dMYgvNd
	PbxXP83AA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUX5c-008ZAz-4U; Thu, 08 Apr 2021 16:01:04 +0000
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUX5Y-008Z9c-GS
 for linux-rockchip@lists.infradead.org; Thu, 08 Apr 2021 16:01:02 +0000
Received: by mail-ot1-f43.google.com with SMTP id
 w31-20020a9d36220000b02901f2cbfc9743so2764403otb.7
 for <linux-rockchip@lists.infradead.org>; Thu, 08 Apr 2021 09:01:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yqjpKdQ91clhP2CX3Ais7ztbNgmLiqbD3BZE+9peawI=;
 b=e1XubK12HLpWXUUIPgJTLwd2l9OgdDUEd8ZPDUx4N3hTQRp2a3iN7uZw63ML3deLEZ
 wH540Tapu1+tdQkYPvUq27GK5oh0sARij4Kx83VGyGNBYJGq6ZOMyrKz7AMjzeUH7Jjm
 iEJ7FmbEoVNgkUyMyEuePibDwgQZFUVxAD+10NswBxs6tWsZx9PWFZY5xu0ojAS2Mu5Q
 guEXU/zgOqYh64s1BLsLXBahe4fDl1wq9QUC3gjN+/1OKtHX5YI3R06o/FzlT/d35riY
 w6z8dDjlsdJ5Fd2puGMxKlM0HWzr62wDswM3cegAOb0uVPVPZdHytUIW216ks9Muh+k5
 Xn1w==
X-Gm-Message-State: AOAM531ocJYqRuqsd97BEFfnn97jmyQBLIPj0XhZsvueDSo/Qk7wfPxp
 EcB9Gk68EB6EBczT4KGm0Q==
X-Google-Smtp-Source: ABdhPJzdNKg2N31ad3G586sVgDuMZ1gN87t03vHRgqhgW2oN3O21tcWGPfE7EkP5wf1rlqUJfjkpoA==
X-Received: by 2002:a9d:68ce:: with SMTP id i14mr7916752oto.151.1617897658159; 
 Thu, 08 Apr 2021 09:00:58 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y13sm43846oti.79.2021.04.08.09.00.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Apr 2021 09:00:57 -0700 (PDT)
Received: (nullmailer pid 1556334 invoked by uid 1000);
 Thu, 08 Apr 2021 16:00:56 -0000
Date: Thu, 8 Apr 2021 11:00:56 -0500
From: Rob Herring <robh@kernel.org>
To: Emil Velikov <emil.l.velikov@gmail.com>
Cc: linux-media@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-rockchip@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v4 7/9] media: dt-bindings: Document SAMA5D4 VDEC bindings
Message-ID: <20210408160056.GA1556286@robh.at.kernel.org>
References: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
 <20210401144336.2495479-8-emil.l.velikov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210401144336.2495479-8-emil.l.velikov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210408_170100_673112_5DA26843 
X-CRM114-Status: GOOD (  10.61  )
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

On Thu, 01 Apr 2021 15:43:34 +0100, Emil Velikov wrote:
> From: Emil Velikov <emil.velikov@collabora.com>
> 
> Add devicetree binding documentation for the Hantro G1/G2 VDEC on
> the Microchip SAMAS5D4 SoC.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Frank Rowand <frowand.list@gmail.com>
> Cc: devicetree@vger.kernel.org>
> Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
> ---
> v2
>  - Newly introduced
>  - s/Atmel/Microchip/ (Nicolas)
>  - Drop leading 0 in node name/address
> 
> v3.5
>  - Drop interrupt/clock names (RobH)
> ---
>  .../media/microchip,sama5d4-vdec.yaml         | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
