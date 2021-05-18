Return-Path: <SRS0=76ry=KN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83E5FC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 01:30:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 47BBB6139A
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 01:30:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 47BBB6139A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OK6DtjtwMDQlGAxSogZY5tQiLpp/ExaNwf3khROc/Z8=; b=SXdhNud7si9lvlHE7TXq8L5CK
	ztAenASb5sqluRFB8a7H/fqNaa5QId5Cc0quZ/dWFSW4vDLbOiQEUphUlp+1QNP/P6EiuTgtMw3aX
	AzL3k30FhEda3kgLaztUSr3onDMAe7EUPjK/fgVtsSuJzHBIG3Yh7ywaG105i6FTaozhN405p3yA6
	9GG9rHrt3PjGvwGdzflJb1kzfViSMRWkxt2OaMB6XoxdqdeDKk8mk4DiMX2U4PZ2nX0XnMWiiZtkr
	j2Va/IG8TZjbbftw/tH6q1ie1HYVCojgPPyrxTrLe42FXOHZi9Pdi25+AHcIJeTJoe8uEsoBwOOrP
	jl6KTAXTQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lioZP-00GdHK-3n; Tue, 18 May 2021 01:30:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lioZ4-00GdBY-UR; Tue, 18 May 2021 01:30:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=cx3l6CvtI1ll9g0cgBO35Hn+lFtc7ivvIdqy0JP6JeY=; b=hyZrVmZJhROqc/Zoi++8U1tF1u
 cIfSUA5m+AdWnSyA0Ubxrbat4Ke0al8bnfCcdbl7SJjiCCjDqgLPBqAmeDDB7rSAchyPgnfEdpCHE
 DpG1TesUG/RVgaWe6UYoYvmgddf70sLZFU9avTpvJkN7Uf3JZsOmX24Be3XiDNHR6y/nxMFIr5+QE
 mNnbAoei8+goDyEaGAZXnwejeWUFecPB/tkc4B3M0pWQhnvAQAtUOf0q7szAhPB9qeJDkaDVbxO3M
 lAJV3N6IRdDYoL1Lf2iLM7IFMGrW7JxyiROpCe5GyJMeSsgwKlorFLJOIbT8thljatVZIV8EfINKh
 OI6da22A==;
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lioZ2-00EFuH-I6; Tue, 18 May 2021 01:30:29 +0000
Received: by mail-ot1-f54.google.com with SMTP id
 r26-20020a056830121ab02902a5ff1c9b81so7254214otp.11; 
 Mon, 17 May 2021 18:30:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cx3l6CvtI1ll9g0cgBO35Hn+lFtc7ivvIdqy0JP6JeY=;
 b=SB2Zc1erYQ3k7CjvZZnrLEOayl/HyhYdxxnCRspBM3WhCJyF+rvSDE88ImWSDOXqux
 ip2ffv61a7yTXVIkbw4g+f0GlNLK8Pw6ht3cZLx2bJ6V1FlGob5SabE8FxtYPb3swxgf
 dYCHX0U+edaeHFWwnI9oSJy5BGwBEBGoLbtd59qSVRorEFxADjhZIi//xo3ogPHnRAwg
 eJuaq755ZRxox7mHSa6XrFHYe8wr8LBPlGqmULQbooyJk/bA5XeRCKGtXz+eD0h/gCki
 kiWOyC5Hrbe2N+JkIArKJwfP2jCrS+H6Btoihb4HNKxcB5W/p9DLLsT6q4JTSgCKI1B9
 FPfw==
X-Gm-Message-State: AOAM530jUIlK/OPTTcybsb2lL5woXCcmcP252SJUelDZD/6+S0+80ISc
 73aCHQt/3ymiBnJtcgsbsA==
X-Google-Smtp-Source: ABdhPJz+nVjAvJnRO8Ny+80dCbU0wUxAMhuDRrN2qVHjeOr12VQUCQiSxYhYjuHfxBCdZKrOPDW5RQ==
X-Received: by 2002:a05:6830:1e70:: with SMTP id
 m16mr2082679otr.340.1621301427967; 
 Mon, 17 May 2021 18:30:27 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u14sm3132305oif.41.2021.05.17.18.30.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 May 2021 18:30:27 -0700 (PDT)
Received: (nullmailer pid 3605184 invoked by uid 1000);
 Tue, 18 May 2021 01:30:26 -0000
Date: Mon, 17 May 2021 20:30:26 -0500
From: Rob Herring <robh@kernel.org>
To: Tobias Schramm <t.schramm@manjaro.org>
Cc: Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/5] dt-bindings: usb: dwc2: add compatible for RK3308
 USB controller
Message-ID: <20210518013026.GA3605144@robh.at.kernel.org>
References: <20210514150044.2099298-1-t.schramm@manjaro.org>
 <20210514150044.2099298-4-t.schramm@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210514150044.2099298-4-t.schramm@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_183028_615269_9FA9875B 
X-CRM114-Status: GOOD (  11.59  )
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

On Fri, 14 May 2021 17:00:42 +0200, Tobias Schramm wrote:
> The USB controller in the RK3308 is compatible with the RK3066 USB
> controller.
> This patch adds a compatible string for it.
> 
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> ---
>  Documentation/devicetree/bindings/usb/dwc2.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
