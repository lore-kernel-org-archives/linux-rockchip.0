Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86498C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 19:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2CRnSFK1QcN4zolpbr/7VcEZaqGUZf9y8CEi/c4YXc=; b=eVuSkUmGuAgFse
	JYWkXgSr7dbv3Xo8EDZ5g09/47nkZThr6r0R1Otwib4KPGHgnAZ7cMOtWRCD0Uf+QALqt6S6KeN+E
	l/Ll7GiIAB2yVgJhSe4zVb1it4eTdAtDEtBTb8BT3//2ZmR9zkxtnedN9PfhotcAql5hoXvxrM1kQ
	32IC0yAdbBHOTq5uVxg+H2vp3ADxzZUroYyloiboLxiIWCshxsBPuFYcG8+csCkWO23TjKpwLdhND
	LXxAglpBJHRC9Z9bBgNMhJRQwQ+P0B0oKhx75n6fktNC7zmSMh9JFTPtmAtJXq1e24wGerJqMdtZ3
	as8lqxtopJ4sW3h7qaXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbSID-00GGXf-0I; Mon, 04 Apr 2022 19:23:13 +0000
Received: from mail-oa1-f53.google.com ([209.85.160.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbSIA-00GGWm-QV; Mon, 04 Apr 2022 19:23:11 +0000
Received: by mail-oa1-f53.google.com with SMTP id
 586e51a60fabf-d6ca46da48so11868169fac.12; 
 Mon, 04 Apr 2022 12:23:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wIFxnat34WFgpybFJIb4ucsy9v2GfYyVlHzTRVzu9II=;
 b=RX+FaLiQA1jUlyAaYmOSas5U6nwIouPxYp3xVNEFfICkGjEEWEeINrx8U0/ZnHL5dm
 PxNyWnNpl0pIsnI8bKkiPnLR8fW/jx87z/F5GqsmdW7SeTwbCPIHFCgpcxEN3ouSAcmE
 McN0hgkGaRJzKXkpJAUULNilcYs2qosQONB8FR2mgAGik4rULNmj+a+HHLtT19iC82Ue
 A16rDFMC/YRB8uBzTS1PbbXmX0lBhkWUSkKH4LNmZ13yon7JFTe3LA0a77XFxnrPvlZ6
 F4KZ+cFYY2o828xT2oiaE/MgK2/OB5u3oqAzOONjS5QwOuu7xfbqZrTnnt0EFZzxE9JU
 MptA==
X-Gm-Message-State: AOAM533muSGPNmNmDScm3ketZ5vhVJw4psok1acIPbONReKXMbg31dNQ
 NyTnpLrBBm0e2iN5tjlIDEehr1jAdA==
X-Google-Smtp-Source: ABdhPJxGvYRMISdRC5MROfVxG4x2VQDddPAJcrf4fiX749Isc/0j1TL+GUY/U5TzrMlxzPaIiijgSg==
X-Received: by 2002:a05:6870:46a4:b0:e1:f307:c1a2 with SMTP id
 a36-20020a05687046a400b000e1f307c1a2mr412329oap.238.1649100188792; 
 Mon, 04 Apr 2022 12:23:08 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 k8-20020a544688000000b002f90678740esm4638093oic.37.2022.04.04.12.23.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Apr 2022 12:23:08 -0700 (PDT)
Received: (nullmailer pid 1802528 invoked by uid 1000);
 Mon, 04 Apr 2022 19:23:07 -0000
Date: Mon, 4 Apr 2022 14:23:07 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-kernel@vger.kernel.org, linus.walleij@linaro.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 heiko@sntech.de, linux-gpio@vger.kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: pinctrl: add rockchip, rk3036-pinctrl
 compatible string
Message-ID: <YktFmxYK76/W1N2A@robh.at.kernel.org>
References: <20220330133952.1949-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220330133952.1949-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_122310_897429_E225BE27 
X-CRM114-Status: UNSURE (   9.60  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 30 Mar 2022 15:39:51 +0200, Johan Jonker wrote:
> Add the compatible string "rockchip,rk3036-pinctrl" in already
> in use in rk3036.dtsi to rockchip,pinctrl.yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
