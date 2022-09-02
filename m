Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA981ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Sep 2022 20:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pvBxzTUiwplwqdGLrIaYOytOTAHvLlqee9FjPHQdfmU=; b=Ux4va6M7SOVbvO
	vqsTrdEwYQc2kPXE5EYuZH1FVwQ2qHEfTlN0W5F0EjXu6dKTQrSgjbeiGJyKVKdiBFGMxevjD55pi
	qTNMy96rgrZ1emAjtuVncV2tEHA4JBy8HtMWZKsslio/rLtaHlwhvWKO1gCtbhhDbRxyX7dcwkw9Z
	qd42SeXhmNA1Jf6BmsrWwIgH5lJR1i1SjYFj/wETjgHVJOHnh4Uebxx0P5FU4+ziFZwpCX6kjFvDr
	gp1WMNtsqC4XixkUGBh5voFYMR/mFdnRT6dZOzN0VfAODRPHQ1cEP7IQpzfuXR8ivqFpYi+Q4Yb+w
	Cr+ekQgMPxFxMjA5tkSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUDk3-00Auqr-7U; Fri, 02 Sep 2022 20:58:19 +0000
Received: from mail-oa1-f49.google.com ([209.85.160.49])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUDjo-00Aujk-6w; Fri, 02 Sep 2022 20:58:08 +0000
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-12566bc8e52so4477295fac.12;
        Fri, 02 Sep 2022 13:58:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=NMFkilh6xzQlpE/21KWS17CHLjbAGy9AZDPzdQ6r4NA=;
        b=NVTjZnTiaOf+UrYU3kKdckMstRbFf+m18mrRqQwslxyLFoZT1F/faosk3bpAxCn00l
         yTF8jF9PKIw4Qhs+yn/osO9rnaM6cNoqQIwYv9mz5H6+ceFQW8pi+yCbCWJuLcyBfkU5
         glJ9LK/52uc2NZz4xb38RHNTAsfuR1MrRePnjoozLBbcrKl8fWMpig/QX9l6N1NZwjfq
         J06QlnTwq7lLSN46aUcCk70yJgsA9E24qZhnw18Mrwi/B3xm6hf0cam3t22m5cmnA+Qp
         oEkNOXclKLRCvVa2M/rJMWKvMVWviYRCikURj3ZGtGDZ++FCVgp7LasjLVVg8tsx72HQ
         WznQ==
X-Gm-Message-State: ACgBeo1ILEGarVD8RgCG2d2TDokWwPmuR1Img9l65zClfKtRALnRrLIp
	jQa3rHoBEp6KqFt1fggsyQ==
X-Google-Smtp-Source: AA6agR4RmyPOO9I+ALVKX9Yvshkht0l1mRDatfpNK0sQjNpXRyD4k3p2t/G6sGqOtPeXPIOZwrIARg==
X-Received: by 2002:a05:6808:23ca:b0:344:be60:144d with SMTP id bq10-20020a05680823ca00b00344be60144dmr2697674oib.38.1662152280593;
        Fri, 02 Sep 2022 13:58:00 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id o2-20020a544782000000b0034290c4ed01sm1363455oic.41.2022.09.02.13.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 13:58:00 -0700 (PDT)
Received: (nullmailer pid 403129 invoked by uid 1000);
	Fri, 02 Sep 2022 20:57:59 -0000
Date: Fri, 2 Sep 2022 15:57:59 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH 1/6] dt-bindings: arm: rockchip: add rk5388 compatible
 string to pmu.yaml
Message-ID: <20220902205759.GA403061-robh@kernel.org>
References: <20220831182629.79255-1-sebastian.reichel@collabora.com>
 <20220831182629.79255-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220831182629.79255-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_135804_306449_3841A93F 
X-CRM114-Status: GOOD (  10.97  )
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

On Wed, 31 Aug 2022 20:26:24 +0200, Sebastian Reichel wrote:
> Add the compatible for the pmu mfd on rk3588.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
