Return-Path: <SRS0=eK8e=KC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45D1FC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 20:48:31 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B165460E08
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 20:48:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B165460E08
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w39jVekoBWRoM8M27Ff2L+EN2tf98D7rOebRmEWnntg=; b=APzEyCwzhjqWcyXI7HG0/JCV/
	e+ePP35/lzOruD8GS8M4xuCW+JtZCLphbnmKSfl5YxUm4FSAlZcoDWb75PC7enKfPVWk6ubMSN6zf
	3Cl2vG9ZiX4mKOtOOWy97czimn21HrLPy+bSYRmh/WUzxDo2LmiOgSENsWYscU6TecUCp5gbtfg7z
	+xfDmbkJASaJRiMQSYEeh9f9mYYoI9T5bJmoN3OLUyIcPp86pE7gKpEgDp9aK9wj/c3/OOOLMLW2F
	++T9BdBVANn+Y4PcIvoahzv/b+xCOcBUGgWt2Ii1g0pnAmN/L/4JxO+0/wxsB4F5mX2akTJrhWukk
	wslX1h9+Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf7Oc-0081w9-Ob; Fri, 07 May 2021 20:48:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf7OR-0081ua-Gc; Fri, 07 May 2021 20:48:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=HU+cc6QB3f1fPnYktuf5XnUl4ynjpynUl2t6lVOEa5M=; b=mYCMpb2WwX9Mz5C4r8IPODO/Wg
 P8GUOpbpcvriL48HJqz71huBTAMeegEBcsZCBS7vEcV9OLAPhyzc9okA+M2hBPa2QZ4VFCYQGqcZC
 K9y3mKzLvMUFiswxPQaDcNQYFGUKxzWfYdga4z46lTSigIecZ9b1Q4/uCALqrsaNTOV6aiPpcl1eg
 f5D3ShyYnmG7XUcma8cLeKHpUZ6Rl9jgvs1uJH5l9RdzOf1rNQUbkVJDy9MYU01igSSTRzJClEdoP
 eUAE1rOHcqjYwCnT8RGuG1LVCSVeILO0egc+YY7kwfZSsV04VjufEXwzlZafHLtCAwZzOXJu92tgR
 umIndO0g==;
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf7OP-007Avh-4n; Fri, 07 May 2021 20:48:14 +0000
Received: by mail-oi1-f175.google.com with SMTP id m13so9858189oiw.13;
 Fri, 07 May 2021 13:48:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HU+cc6QB3f1fPnYktuf5XnUl4ynjpynUl2t6lVOEa5M=;
 b=c+ECpjaaBm6FoM8pXglaBYi1Yamw5iDujfJzY92Cdh3sWOK3CqKay9mj4PUCV9zLPj
 Z/ww8B/yXT/jR2p6b0KSAyr8jkPdHK43FaqesCso2ELoL4RTtib55qZBz+7BoSMSg1Lk
 iQPwiJUDPyXiLI4CvNduclC1EJeKLJLSAP6NpkDmonnYIf7yo7S3ocvFiAH2yWgiK6hD
 nGMauFrYYGqvucecOqo+qR237ZrA9aMGLm8hDFXclsWPBsSI5EsSTwcG548gpG3vjUxj
 ijJIH+jDKaYREqaWKXZ1xGBt+fdn7YHLtJEl1RlYRicjbCVJUwtvIUaIxzImJXjsZHm3
 NcOw==
X-Gm-Message-State: AOAM530r2b+QCRl32aBUpvw6QgfcwMJWRp+A4havLQl3vbkaYQ/U0SvN
 w0Q5PMhnK1yPN/AOZiCDCw==
X-Google-Smtp-Source: ABdhPJxsDYwiJwIh4yaHta4SS11PTmwCu05WiwyrFfAqWHDIsc+5n85jx0lFK7+D6RTXRfkE0h1OeQ==
X-Received: by 2002:aca:c30f:: with SMTP id t15mr8519964oif.145.1620420491792; 
 Fri, 07 May 2021 13:48:11 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z6sm246025oiz.39.2021.05.07.13.48.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 May 2021 13:48:10 -0700 (PDT)
Received: (nullmailer pid 2856423 invoked by uid 1000);
 Fri, 07 May 2021 20:48:09 -0000
Date: Fri, 7 May 2021 15:48:09 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: cl@rock-chips.com, jay.xu@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, bgolaszewski@baylibre.com,
 linux-kernel@vger.kernel.org, zhangqing@rock-chips.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 huangtao@rock-chips.com, linux-gpio@vger.kernel.org, linus.walleij@linaro.org,
 david.wu@rock-chips.com, robh+dt@kernel.org, shawn.lin@rock-chips.com,
 heiko@sntech.de
Subject: Re: [PATCH v2 1/4] dt-bindings: gpio: convert rk3328-grf-gpio.txt to
 YAML
Message-ID: <20210507204809.GA2856332@robh.at.kernel.org>
References: <20210505134028.13431-1-jbx6244@gmail.com>
 <20210505134028.13431-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210505134028.13431-2-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_134813_202153_DE3DAE95 
X-CRM114-Status: UNSURE (   9.99  )
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

On Wed, 05 May 2021 15:40:25 +0200, Johan Jonker wrote:
> Current dts files with RK3328 GRF 'gpio' nodes are manually verified.
> In order to automate this process rk3328-grf-gpio.txt has to be
> converted to YAML.
> 
> Rename 'grf-gpio' nodename to 'gpio'.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/gpio/rockchip,rk3328-grf-gpio.txt     | 32 --------------
>  .../bindings/gpio/rockchip,rk3328-grf-gpio.yaml    | 51 ++++++++++++++++++++++
>  2 files changed, 51 insertions(+), 32 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.txt
>  create mode 100644 Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
