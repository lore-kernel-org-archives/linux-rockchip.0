Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE0AEECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 15:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3ooObVd+ZG24R6FblQDHj0ErsABfKbyspf+wRJx3iA=; b=vAFwfyxiWMvh7k
	BvbH4WoYXKXLR5CB5oErtPA8z9YNRBNzlgnnLSheFKQGdvUVonOnftHmPNpWPpmaf6khlt8vufIyk
	vSrABi7387BcXq0crVeHoqUDgvazHLJ4jh5szt+g++soYqxVIkI7POG8WcLFwbReqURyuaunPoqc0
	kBI6xet+2eA4Cd3CKjxEX+tE85Vg3AZRfsCrp1BDPaIN0vRZjE3pTYH/9W6xgm+Idrqs0pfp2lRK5
	xhQJAmieHxvr1DcpZU/rzjdXmsHVmXysp5N+iTzGDI2jeYFd4ssv7pWYgcpJPULbkkIkB2es51xVN
	c9XmL1JrXXps+fQj1DbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTliU-00Cfd3-Dj; Thu, 01 Sep 2022 15:02:50 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTliR-00Cfbc-NN
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 15:02:48 +0000
Received: by mail-lj1-x22b.google.com with SMTP id k18so11794129lji.13
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 08:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=bnyyJOLQMDavRkWLRZipZELRn6w/ZbL+BYoEZkO8mHY=;
        b=WpGYICj5Pt+Uin8WRC4W2vhxDlI4cvPygQYSssZqzyXZ34212z8zUnIX48xKDJqMHE
         v8a6NLx/FeMuWBsNAOkPeW0q0zLgN+dbKzgP4Z3x6nH93Iv5Rpv/vlbLBIKmK1pYUBjZ
         aMlsU40WukCTd0JgefTxqbB/Q7fLcjbzWzHRqO9s6ONp2bt1B7WRNFoBvKsGLw8xdLZo
         GGw7xBl//zf9V5EzYnQzlNWm8/MGAihvPs6RnKuphS1ocQ9cjDMQcEvvSRsyV7luBiWW
         Y512mT9AA7AcZ1aLbDKf+XGzR87fqqTslSWMfzweuEGDstrx4rNEGtnbJLcy2DSWFHAe
         JCmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=bnyyJOLQMDavRkWLRZipZELRn6w/ZbL+BYoEZkO8mHY=;
        b=lAKfFYeYxO/vVQM4QE0XVx1BCxIKitLThTKV9VnUVm7HCSwEUf0URvsg7aqY6SQu2o
         QO08WmK7ADUyNvIrr5YshszU79H9croIrKM/tgM9XtnceiuYwKRB7zS7508eiT4FcfbH
         G/++APyyGcN6IKYk9IfTLfstl1Z/46SqBj+kJA6imOoGJVj7H+eUPAB00oSLRkUkjbCB
         3cKnOPaDAcZdRyuTQoMWTLDed1PP2Ub8T8QLkAxGwr0ObMpz8Swlu43zdYVMNyFZe4Lq
         3Mv7EBg8qCuY/CTaNlMF8seI7uAx1a8vzp5NIPfeTCJuATwMlg56bk2n50j1hFEQzsXD
         +3XA==
X-Gm-Message-State: ACgBeo0LOWrpa2xq3/p79CBmSBueNTspi9ErKVK7bf5P34GRdS69WMDZ
	wLxcE5cQeYMYOI4SiLlNdQjON7iU41dzCB5i
X-Google-Smtp-Source: AA6agR6gT8R6Q+X3W/6U7AKKGJTV4+E5AaniYtSdiEHafWUuuCSs8O2SVPBq6jkgGrazxSQszi3E7g==
X-Received: by 2002:a2e:b5d3:0:b0:267:4da0:ce3b with SMTP id g19-20020a2eb5d3000000b002674da0ce3bmr3645047ljn.420.1662044562919;
        Thu, 01 Sep 2022 08:02:42 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id z14-20020a056512370e00b0048960b581e3sm1396263lfr.8.2022.09.01.08.02.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 08:02:42 -0700 (PDT)
Message-ID: <745a351d-4418-1233-8b6d-c65cc6aee239@linaro.org>
Date: Thu, 1 Sep 2022 18:02:41 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/1] dt-bindings: pwm: rockchip: Add description for
 rk3588
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com
References: <20220901135523.52151-1-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220901135523.52151-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_080247_789782_2D315845 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

On 01/09/2022 16:55, Sebastian Reichel wrote:
> Add "rockchip,rk3588-pwm" compatible string for PWM nodes found
> on a rk3588 platform.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
