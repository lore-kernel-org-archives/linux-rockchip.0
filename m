Return-Path: <SRS0=qLnh=NI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EF6DC4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 21:32:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CEF99600D4
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 21:32:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CEF99600D4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVfcY9yC/mXaUYZyZUUQVG1R5wuIK1Y3BKxnKQTne24=; b=JUfAfW9dKnaCer
	XFC2D6pgJNwz9rzicNQLi8+pf3kQ/4UfL6IEoziezl97Hk9oG9Nu0ojZv8Dz1JjSDFcMuLXrDhGWi
	HwUIzi2/Qc8PGHrftZZh6OXCSLp1DitS4GPxZaNUkEQScoVF7HI3cnC4yimi5Uv87msj4zpt+ue0r
	l+rSlAncg+YNA02xKO6xxfCgbOoq5C4nubtKBFQgSfJt8Eqc+hWd7dK+K5LFTFkdS3/CDkK1vmOfC
	G3MCQtaXpQM7e7Q/Tacbcp9hzLphIv3O8X9M7eU0UZaD2IQNX7Du1e+cj9Zgum5EBO1y7BJamPXyF
	jQ3zpTDRojYR9S3YnZQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mG6gi-003Yan-Kg; Tue, 17 Aug 2021 21:32:00 +0000
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mG6gg-003YZP-83; Tue, 17 Aug 2021 21:31:59 +0000
Received: by mail-oi1-f169.google.com with SMTP id u10so1274381oiw.4;
 Tue, 17 Aug 2021 14:31:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kt2Fk44GF+8/cRJD0+ngwDqElp7+xnXStRJ3VhNJcN8=;
 b=U1JvtvwRyIVioQuqYAWLoWam1w7CqlOExssr/2GflpHk6U88Heaug4sYWZJ/sGppTS
 TlZpR7tg/rFcC3s0IspJmVs7EeCDQe6c4gLwbzpBC/KLpiacjKwixol9/4meknj1GvUT
 aa4q18ngxQfC22sDaLhIOYvsaaESJg19l2IsdPGT2zhb1yW1KFyIKtf7c3vHmTkIGqnm
 NpUHCeWJXlODVnPtGLhaRraYGa1L8gOVJ4qbbFGaFlIVOwy5E9WMlz+NoIUgvD0pA6Ya
 yjPGfSvGYaIiAqUJhHb8X9fXe1FdhCUEF6xs7K9P0RIrZ9NEbpZ2FxFHEdnc3TASmEM8
 gcoA==
X-Gm-Message-State: AOAM531CvSq2h375vnkX4nN12d5BIxipublbdB3cGqZFKZm1kkzWCICx
 XUMREOoMzRUDT+1oX2Rz2w==
X-Google-Smtp-Source: ABdhPJyY88kwSF6xqTb7bptyaFXmhl8XLJolHuRR2HVS2XGv120oK5kfJ2J1hPSymvlFnYjSS7HwQg==
X-Received: by 2002:aca:ac13:: with SMTP id v19mr4280919oie.93.1629235914630; 
 Tue, 17 Aug 2021 14:31:54 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z7sm625148oti.65.2021.08.17.14.31.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 14:31:54 -0700 (PDT)
Received: (nullmailer pid 877188 invoked by uid 1000);
 Tue, 17 Aug 2021 21:31:53 -0000
Date: Tue, 17 Aug 2021 16:31:53 -0500
From: Rob Herring <robh@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 1/8] dt-bindings: soc: rockchip: add rk3568-usb2phy-grf
Message-ID: <YRwqyZEF6FRpkdHQ@robh.at.kernel.org>
References: <20210812204116.2303617-1-pgwipeout@gmail.com>
 <20210812204116.2303617-2-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210812204116.2303617-2-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_143158_340259_FEC66512 
X-CRM114-Status: GOOD (  10.99  )
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

On Thu, 12 Aug 2021 16:41:09 -0400, Peter Geis wrote:
> Add the documentation for the rk3568-usb2phy-grf node, which is separate
> from the usb2phy node on this chip.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
