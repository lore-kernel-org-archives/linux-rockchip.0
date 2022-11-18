Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CB16C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Nov 2022 13:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WtvRPP7CGoHinli3kO0+Dlqe6XJ/v8PLA2ApKnGPML8=; b=0DpOn9KYmOipC0
	kb5nWrCDIs/Zg7K15a0R+eRSFJs6DuAVwjgkP0dpSPCgwi7hSkK8Aem81Fv2x9RXY/FlckCNfzVQy
	DgNAE0mAUbXfufg6w+CYhk2wv3FOEyX4Nzdzbs1N6aczQnYsbtVa0GturlJj6E25v5JpSq6y8BUGd
	0zL8iGaN+xfFtieA3pZgFgn1Z6yNmWgw0uIdVR85TAyZJXElTZn7Xau2V4q7gcmxQHSWwqc+jW28N
	+JREYnYtWyL7FkAGIL3N6LynR7tqKQPbaX1sSL66aXETRQyGYiwUuzj6LlOd1Q5E767rcgF4OFC4E
	zTJ/jND6fhLYvEaxlchg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow14b-0042FA-26; Fri, 18 Nov 2022 13:06:25 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow14W-0042DJ-Ls
	for linux-rockchip@lists.infradead.org; Fri, 18 Nov 2022 13:06:23 +0000
Received: by mail-lf1-x12d.google.com with SMTP id a29so8077711lfj.9
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Nov 2022 05:06:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SM/Hr9HQlKz57Vtwanp4K4Ls2OlF5cSrPv62Ff71hFg=;
        b=BOBUo5yrSXCso4IIRkcg0o2teW8R3OqiUdLBb/m9b3VJ7Sh5+1gdMnp9pOxXnvd+Yn
         jeS6rOMnYc39Qv7akYw16hE8G+rbBHmShmzV8w4wkEK7LDeUWinfdYLU+LaeLoWQoUZQ
         pI+ZvbcLP5PTS8crCbDRSpjzftHj2eT9RRVk19z6/eVK7fbGk9Okpvh2RH9ftj6H2oCh
         ho/ium4pBWQlacbK/QGRn1rhqlUiuw3WqXiGsfJyZ3sB2XYYBmgH6qjw0My9EbG308PF
         of1sU8XAEEUtv/fOBo22tjrmNKJBQfGuLFLLLYC0E/Xc6JPrvWI+SVEf0Iv+0lrwdkVv
         72cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SM/Hr9HQlKz57Vtwanp4K4Ls2OlF5cSrPv62Ff71hFg=;
        b=jge6clFYrWRNbfYadq3+bcZ/8BCklgomBLfd4EsPGBsODKD+g5NbdTcIibF8l0nl2U
         W5C9pwxgW45j4YKXcq7dhdR1PXGHzv2KONHWyifsDippNSkC3lGqcztGZTLJMLnywGnI
         yCHZ2SPv/y0VNcAi/X+XgczrsqahKr5/IipWLLk8TbRTzRlC+EMGp28HyYO1kidWYfBY
         g7eFkzcwdqPFhh+H22qBX79QncqRNJXBRbTcSKUz2mYMcEe96nvbnwDnW/ZVkC0X9Cud
         3PptXxoVnnUL1ECTq02hhwe7ACsqwmrmHW1u01k3xqK1Ke9hRUduCKn9ka4jJt4CRXzm
         UGyg==
X-Gm-Message-State: ANoB5pkFnQgWwwF6K80rR+AZvEzyA7Errs2HXOgrKvZU049wC5lDgZ8b
	HU+0AHM2kvSuanAWwTvKqOW3xw==
X-Google-Smtp-Source: AA0mqf6Eg4ax1bzTHnu/VGLZTHQlm5c/vZt/4qmejF5rjXEdKZfMIwO0spdeu5nCwA4sLgFgaXuX8g==
X-Received: by 2002:a05:6512:3daa:b0:4a2:ba30:a9a2 with SMTP id k42-20020a0565123daa00b004a2ba30a9a2mr2231992lfv.689.1668776776803;
        Fri, 18 Nov 2022 05:06:16 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bt26-20020a056512261a00b004ab2cb8deb5sm655889lfb.18.2022.11.18.05.06.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 05:06:16 -0800 (PST)
Message-ID: <ca8a6070-3888-8d42-5974-d7c2adc62417@linaro.org>
Date: Fri, 18 Nov 2022 14:06:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 02/14] dt-bindings: media: rkisp1: Add i.MX8MP ISP
 example
Content-Language: en-US
To: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Dafna Hirschfeld <dafna@fastmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Helen Koike <helen.koike@collabora.com>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
 <20221118093931.1284465-3-paul.elder@ideasonboard.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221118093931.1284465-3-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_050620_720061_74928C08 
X-CRM114-Status: GOOD (  14.22  )
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

On 18/11/2022 10:39, Paul Elder wrote:
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> Add an example to the rockchip-isp1 DT binding that showcases usage of
> the parallel input of the ISP, connected to the CSI-2 receiver internal
> to the i.MX8MP.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Missing SoB.

> ---
>  .../bindings/media/rockchip-isp1.yaml         | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 

I don't know what do you demonstrate there... usage of endpoints? That's
the only difference. Such usage is the same everywhere, nothing specific
to this example. You already have two examples, so I don't think this
brings anything more.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
