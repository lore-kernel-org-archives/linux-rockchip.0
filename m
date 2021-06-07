Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D796DC47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 15:38:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A0DB36102A
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 15:38:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A0DB36102A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wjQfMkG78/xInJUsBaGfIi5TtgVmXWEcka/2Ttv6A6Q=; b=qqy4cQbVZbf628AYaXXryA2bz3
	TD8dRZIoz9D/PxN7eXKurNU15pPgZKqIz+Yq+gpBd9SO0YD+2RdoNj0X227uoIenOkmvvuM8BkKiK
	jMOrSUId92LcakrJD84K0YjGwaw4nbDPiDlFw36XcceZTGLaxQcfzeK09Ra1dvPUQTnFtgRDy99pb
	am/Y9IAzd1/GDHcXCydzF6U0fgBrxG2VyG2F799KjJaqnqGTpEwqe317eiJTPIR1Gh/lYOoRpSGUj
	k70Tat8WbWEoWAG0nICelcvdOqpBYzQdyH77vvY7lR4588iZNAFNs07OSPkjmrtkCC8tb871Hcs/v
	diux47OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqHKh-004I9Q-6R; Mon, 07 Jun 2021 15:38:31 +0000
Received: from mail-ej1-f51.google.com ([209.85.218.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqHKM-004I4S-BA; Mon, 07 Jun 2021 15:38:14 +0000
Received: by mail-ej1-f51.google.com with SMTP id k25so21914561eja.9;
 Mon, 07 Jun 2021 08:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=u47dRLH9oeOyhtJ8OMrgpRaWizdSf0mAyz6JZPVlC5o=;
 b=u6xHF44T3sMIdmajR+irHU47dlOz5jNo0MMBPBgHJfLsfubbc3wX4jS+d8hv74/qS1
 PtIN6857oiMtm2+Xn7t/JYs3utVKJ73UaVtRDy88dZLCP+DPQioSVlOAcRwo5ZvmHQad
 6cPvmPLm8muB3nEyoANi+fBk3XsQ635WzcZngMkP4rR3Y+/BdQNIsOCJMijHEZMDN0M2
 lQqrKPSlO26etEeAYbzxQeFxoqW03Md3OHQFcdhsm8TtpRPO2HdvDviICvei35cXq+ev
 YN8vNlUUY7TbKcZU1j3/rSQWfv7XVG0KdRzW9hOU/O0/+cjViNJ8gTaq9umeRD56i/+Y
 grWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=u47dRLH9oeOyhtJ8OMrgpRaWizdSf0mAyz6JZPVlC5o=;
 b=OyAeoSe7mcd4eTFOe3IYRMgYeeEYeCoyPwgMhuQAiWDrVF9eS+zlpEDztS2QpBuZ6K
 4OgtQhQRLxj2GKpurSQ+d5KJo7rSAiXwDlGkq3VF50jUIAJZ2gXJUMERKAv+rMLWo1qH
 xWzZ5r5baR2g66pTj9ubNJNAL2Ai3Vd2b2WMQOeODbCX1+nbSqmJj1kXYvwnJ/mkwUbW
 pY6l3+ubbTOQbemXmJDerfNXbK84liOG4xLyru8sQCZGjeV0F0X4a2pScBv7r66/DSRw
 KZSz5HbYUZgCRS9yu+bMulLGdJ6elXz9+cwCaiAmaaP/9Xc9uACoCBAqL/yB/6SCOv34
 Te2Q==
X-Gm-Message-State: AOAM532TYDqj8qpMcnt6sUaqCDAWyNWPyqig/Wg6E4O4oTyEUu2WOONi
 ZnpEtVfutSWQm3/mLBUY8ZU=
X-Google-Smtp-Source: ABdhPJx1ogxNiLcSdGIOUtVV3gUcBzzR83F5bN7m4FcxjGP78JjmVNXmmF0UAeUgUsZXJLtYqovNNA==
X-Received: by 2002:a17:906:68c1:: with SMTP id
 y1mr18460242ejr.32.1623080228600; 
 Mon, 07 Jun 2021 08:37:08 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 v23sm7977384eds.25.2021.06.07.08.37.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Jun 2021 08:37:08 -0700 (PDT)
Subject: Re: [PATCH] dt-bindings: soc: rockchip: drop unnecessary #phy-cells
 from grf.yaml
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh+dt@kernel.org, vkoul@kernel.org, kishon@ti.com,
 t.schramm@manjaro.org, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <e7e09072-9cac-413e-dca2-e2a668c1807e@gmail.com>
 <20210607141845.3331910-1-heiko@sntech.de>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <46289b3c-f804-624b-3c74-1989e57d0a7c@gmail.com>
Date: Mon, 7 Jun 2021 17:37:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210607141845.3331910-1-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_083810_426513_E5497D9E 
X-CRM114-Status: GOOD (  17.91  )
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



On 6/7/21 4:18 PM, Heiko Stuebner wrote:
> The recent yaml conversion of the grf and inno-usb2-phy bindings
> left the #phy-cells in place in the main usb2phy node inside the
> example in grf.yaml, causing new warnings.
> 
> Drop it to make the bindingcheck happy.
> 
> Fixes: e71ccdff376b ("dt-bindings: phy: rename phy nodename in phy-rockchip-inno-usb2.yaml")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---

> Like this I guess?

Hi Heiko,

When I apply this patch locally and give the command below the
notifications are gone.

make ARCH=arm dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/soc/rockchip/grf.yaml

Thanks,

Johan

> 
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> index 8c1c46fef157..62fa72cfea34 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -242,7 +242,6 @@ examples:
>          clock-names = "phyclk";
>          #clock-cells = <0>;
>          clock-output-names = "clk_usbphy0_480m";
> -        #phy-cells = <0>;
>  
>          u2phy0_host: host-port {
>            #phy-cells = <0>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
