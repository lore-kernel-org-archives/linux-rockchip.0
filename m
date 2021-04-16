Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F7EC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 18:55:54 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 60ADD6137D
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 18:55:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 60ADD6137D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tJnEipOug5MHYCyhIFMZI4ED9yyFS5LElWJXKLU73g8=; b=gTQzvjhJ6WVleIiDoUvtLLAqK
	JW2S/NsjyIHsdOe9ef8p2lujy5ELgTV9Wx2AGh5xDtSxRyHMfUNRRz3Cq7IQQBNFKxLmpUusihv6u
	+M9+JpEVN+kZfdxy2cvllHFFjToGsBgNWFRuDJN8cfxja/8sapZlTWlhjKO/C475rPa7C4V4jBBhy
	xgXr698xQSfHhWkgq2TlLR9eW1oXPKh2IpLZc5XzT0ML8DHIpS+v88dItivRHwCUKuqS4g54vDh7I
	efxWSjeS0yUv/s7Kw9lXPkIbgvSXPbfTNWM+aLnJqwO+HToLYmNN0ddY0k+zN5PRSdya3UevAQc9I
	D1gdibZbQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXTd7-0039Lo-Cv; Fri, 16 Apr 2021 18:55:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXTd4-0039LJ-K4; Fri, 16 Apr 2021 18:55:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=q0XnIQb5diD8IPv4s6rwLLTY1KVewVry0xUSPPhi/S8=; b=Tncsov3tjx2I2y8vEpbPIsCYhD
 1P0voQq9tkNrcsu17NnvlJKx5okKDpoWxGFp9GnfSDM8/u4t5ZAm/I/QUA7UasUmsiJDvXSO/OQY1
 KcxPDk6077M1cBpW4NLLm+yIYlkAfWtKEazcW84MIEjb6EhnIaqdKXEQyYDAc3FpyrhtW1p/5sTvw
 0MqDPGJ+q/ah358oIzPm53KkxkYjYsvDeQfyl1FaiY46DrjZQEGnQsQT1elHldxPEyD9kPFL/VGJ4
 H94RqkyoAyu4S+bGG7VfBT0t5OVBVPFy7euaYtFI1KN3jR+Pj7lRLHwImd/Xam3oq14sTDe2oUb9N
 G7eHIXFA==;
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXTd0-009dmN-2m; Fri, 16 Apr 2021 18:55:45 +0000
Received: by mail-ot1-f43.google.com with SMTP id
 f75-20020a9d03d10000b0290280def9ab76so21534434otf.12; 
 Fri, 16 Apr 2021 11:55:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=q0XnIQb5diD8IPv4s6rwLLTY1KVewVry0xUSPPhi/S8=;
 b=ArP8S8feOPqWbbDuvg0jJo5leCCc7Le9h9jRLselYzEAeodNpdtED/O+xfQ6tjv276
 hQCQdgZg9EB5JcRUBtKC4po04WaUu0UPaRWcx0Kv1/odvkT7RV1T0KhHhB+TnOCJ9XWn
 hdxjHCbuykXofWFDSmJUVcaIvdjnuwH0X4zg+2Ab4xSs71BKa4A/TjAjLcnLgrtMtM0O
 jSf6HOjnva2hr+jHHyWTkKBZJE0hPQebMddtklBOKXUl3g4yLcXkGD5EiuHBpotFCcd7
 o7+Fx+VhqiPsIq99V3zugufZdmrOZd6eghPlounTYTwVhKt7fy1n0F5y9k+ENoiPNvWw
 DJ7Q==
X-Gm-Message-State: AOAM530ScBQiNkBWyu+r9jeYQ/LdUG14TjjNZEiSHHZTotSexC3lTyuN
 6PyJyd24DTxbS+rbSYQ/KQ==
X-Google-Smtp-Source: ABdhPJxVd4dmTTWBaTQhaeWV5iEBuOJ5oUi07oM5z0AdLS/Wn6jqGGrjGDFsCB45thclYifOE/Ctuw==
X-Received: by 2002:a05:6830:1697:: with SMTP id
 k23mr5103598otr.132.1618599341453; 
 Fri, 16 Apr 2021 11:55:41 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c12sm1286587oou.26.2021.04.16.11.55.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Apr 2021 11:55:40 -0700 (PDT)
Received: (nullmailer pid 3751813 invoked by uid 1000);
 Fri, 16 Apr 2021 18:55:39 -0000
Date: Fri, 16 Apr 2021 13:55:39 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 zhangqing@rock-chips.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, enric.balletbo@collabora.com, heiko@sntech.de
Subject: Re: [PATCH v8 11/15] dt-bindings: arm: rockchip: convert pmu.txt to
 YAML
Message-ID: <20210416185539.GA3751624@robh.at.kernel.org>
References: <20210416080342.18614-1-jbx6244@gmail.com>
 <20210416080342.18614-12-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210416080342.18614-12-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_115542_138834_3A7E0790 
X-CRM114-Status: GOOD (  10.21  )
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

On Fri, 16 Apr 2021 10:03:38 +0200, Johan Jonker wrote:
> Current dts files with 'pmu' nodes are manually verified.
> In order to automate this process pmu.txt
> has to be converted to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/arm/rockchip/pmu.txt       | 16 -------
>  .../devicetree/bindings/arm/rockchip/pmu.yaml      | 49 ++++++++++++++++++++++
>  2 files changed, 49 insertions(+), 16 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/rockchip/pmu.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
