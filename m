Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81ECAC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 18:27:27 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2348564FE3
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 18:27:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2348564FE3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hRd0b5+W7ooIWBTZV2YfuNnCLKxo45W4qOSZm7CoG/c=; b=T1o2mPIifUfebYthaDjuchdlz
	V1etyFQ6eXplbHOaXmqJtG5jTZiYjnP+gREao+88aS9zaEfZt+dZQmkFNuEjrRnDFHj9YLh6Losge
	h0Kj/Zx0K6+uBOBQQ4kKX1gbk5MoS8WdzI6DYjDp9fO3tmWBlKZgpF6MiztLUrmKtqiAq1LqOAVad
	WbZ2KhApOCOJCuCAx5GifIJMviFGr1ZFXwtimDCRW5Kwvs9m0kv8np3pRcIkzp8mmd46BU+l3Y3B9
	l5ZsywXDelJ9gmyBVHul7kskWv0v/2UH/a6wKosaJeuE1SVqvGbC6/juF2yPwMMYn3DaeBNdSplcb
	Pq7sgaEIg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJKbA-001iYs-M5; Mon, 08 Mar 2021 18:27:20 +0000
Received: from mail-io1-f44.google.com ([209.85.166.44])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJKb6-001iWM-Of; Mon, 08 Mar 2021 18:27:19 +0000
Received: by mail-io1-f44.google.com with SMTP id u20so10984624iot.9;
 Mon, 08 Mar 2021 10:27:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=97Qo41nmcqQCSePForLjj7qoU92V44P+OYA/wPDxOHs=;
 b=Fhmibx/2RAdY0M7J/+IDFwPQ188iHtVky5+jiUgthteKyiACZWuGU3ULxCFdW1yPWC
 QQIJrEmOydY5adOUrMdcGbCL5ghhy95HS5f94FZTMX+0v6GIvTkqcVU9qAb6i9l+T8/V
 oTlZPWr0KiL3Dd3kwXDzr8/unqVvlLfUx+CxCuAInGRNUXb0BmzEpRBe9txh1sdlizwA
 vzSh1w7PIAZlHRdGeH5+tMa0oY4Srkwt1DgkxYh14JS+Wp7yN37ZoctwIMFPHxoejJX+
 TOytmcviO7CqIUfGQKXLv54TtE7hsrq6V2TRXGdxMsmj2k01sOKydp/dHFy5fmp4Vmao
 5PPg==
X-Gm-Message-State: AOAM530/IDYcEtT41aRDvfTWZKMguvzXr27oR+yGKYvVbWAOQN3Ta8G1
 An0JCiLZCeDv10oOstSiKA==
X-Google-Smtp-Source: ABdhPJz/2LyQxTwCb3KhHlojVzK95l7nGBwrQMjXL50voTRYFspz2SZAuyeE6UmKqRKqZ/5U8DGFZw==
X-Received: by 2002:a05:6638:1653:: with SMTP id
 a19mr24584428jat.113.1615228033721; 
 Mon, 08 Mar 2021 10:27:13 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id f11sm5221050ilr.5.2021.03.08.10.27.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 10:27:12 -0800 (PST)
Received: (nullmailer pid 2745467 invoked by uid 1000);
 Mon, 08 Mar 2021 18:27:10 -0000
Date: Mon, 8 Mar 2021 11:27:10 -0700
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 ezequiel@collabora.com, linux-imx@nxp.com, linux-rockchip@lists.infradead.org,
 kernel@pengutronix.de, robh+dt@kernel.org, gregkh@linuxfoundation.org,
 s.hauer@pengutronix.de, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 festevam@gmail.com, devicetree@vger.kernel.org, mchehab@kernel.org,
 shawnguo@kernel.org, p.zabel@pengutronix.de
Subject: Re: [PATCH v3 2/5] dt-bindings: media: IMX8MQ VPU: document reset
 usage
Message-ID: <20210308182710.GA2745438@robh.at.kernel.org>
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <20210301151754.104749-3-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301151754.104749-3-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_182717_931379_08264D3F 
X-CRM114-Status: GOOD (  13.75  )
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

On Mon, 01 Mar 2021 16:17:51 +0100, Benjamin Gaignard wrote:
> Document IMX8MQ VPU bindings to add the phandle to the reset driver.
> 
> Provide an independent reset driver allow to the both VPUs to share
> their control/reset hardware block. The reset driver replace what
> was previously done be using the 'ctrl' registers inside the driver.
> 
> This breaks the compatibility between DTB and kernel but the driver
> is still in staging directory and limited to IMX8MQ SoC.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 3:
> - Fix error in VPU example node
> 
>  .../devicetree/bindings/media/nxp,imx8mq-vpu.yaml  | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
