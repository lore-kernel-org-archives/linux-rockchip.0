Return-Path: <SRS0=A12b=J3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6213AC433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 15:14:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C5C416143D
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 15:14:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C5C416143D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XgBTU/0/a5jE+cGjF7hN4yj936LYlhDw6DLiyL/yk0Q=; b=Hr4eLLHabX9lXEaGfFdVeh7nk
	ZjlKVHh9n05QiJvyHQC+sckp69Wicegpp/SdbpKWhiwrZ3HCdLp9HJ42zJIQGVUYi6zFbpBZBdTSh
	C1eKU4leSqxiU6jCiPTN3h4XyqlJkZPwiasUeYrjhlDn5DGxqIC4ezNclmQ81rG5RgutODcW4toD0
	C/78Rol3VGUTdycRX2SYtb/6CK95hXshdGch7OwEIoT6Eq2NQ1ZaOIAi6tjii4OSK1mVhlefR4TKi
	rrYb9ka1Hh9S/+OC/DASV/NjfBcmr8h/tx88ZwzAw0YqjKoyqczpisKzDbBPpd5YlQ2me38IiuTL6
	Gq6gzA7jA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcUqv-00833T-CL; Fri, 30 Apr 2021 15:14:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcUqt-00833C-Bf
 for linux-rockchip@desiato.infradead.org; Fri, 30 Apr 2021 15:14:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=bA+0wXYd5n62CVpjXh163QzxzPQitWk+KG3sz2AcuGk=; b=IOw7LpvfTc7CBhhH5DqgpKCcF+
 X1yEfzuf7PbO0A3054naULhh1lXeNvU6rC2o6KjKOnPFbn/tiIwKhDLucUpSaP6p0uEGhas0tSQmt
 yiIjSpeeP9F29+rrh9eK+gGgHMXFLFr63W3fMbe8g+h9Kx8qlc9BzYFW3tph0EBMA9SHwAv1A2qYl
 qOvlf+VHA4yyqpZJhBto5q1jusBKj2NweOx4bjmvgtDOlXKyZm9Dx9tKOLOv2GSY4BEKULrRqNUCp
 i7tEPtR1nYE9RxOSKtI5thsGPbEbH4Rq00hNZXmVoiQnnoF4gDJrRhvRPrmmMOX3KoWJViAxOP0kz
 WYEDBaHw==;
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcUqq-001Tbd-KN
 for linux-rockchip@lists.infradead.org; Fri, 30 Apr 2021 15:14:46 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 b5-20020a9d5d050000b02902a5883b0f4bso1403463oti.2
 for <linux-rockchip@lists.infradead.org>; Fri, 30 Apr 2021 08:14:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bA+0wXYd5n62CVpjXh163QzxzPQitWk+KG3sz2AcuGk=;
 b=EqfhAxKZ1srageCd3t10XsItwaXgRxUUAUcyCIfJjVxXyOM4yCxzOqlFZBTEzOdwsu
 DSv9RUt++HsuQsnUbm2UHkwN8lcNiqYooAtjcWX45kk9mCsRZRqS5Ijz3BAsJuUR26Jn
 JOMTdNSm6Mpak5kIl5d5cN8K62q2KBAvIav2cjEidvCjmPKwg9TQRO3/RJxds9DDq+2M
 w1e7qW97HTUwbH7hl5L6oF9MaZq7gmouuSb11fwwr5/8epVtjOyo/Fwm2qvm8slQMfNK
 AtwobAu9MitmmHOAdMzqDdVWrzjE0Nj+le0GkPmyDS9GjP7YaheQaGFqwVtUuArReANu
 CCbg==
X-Gm-Message-State: AOAM5304rjX0JXAiaqRfsTpJDjC+qsLlGEN4zrHkW9xwfUNegxmXKMB8
 VvtsDvrpgIOX4Wn/LINa1Q==
X-Google-Smtp-Source: ABdhPJz7mv+WLnYokc1iKTOjYu+Sps0+GW+VV4HnXfSL+BcYqE0Bmak8+kqq5/xMCkcLRGKywhN9FA==
X-Received: by 2002:a9d:6007:: with SMTP id h7mr4179722otj.200.1619795682500; 
 Fri, 30 Apr 2021 08:14:42 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y11sm846063oiv.19.2021.04.30.08.14.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Apr 2021 08:14:41 -0700 (PDT)
Received: (nullmailer pid 3337579 invoked by uid 1000);
 Fri, 30 Apr 2021 15:14:40 -0000
Date: Fri, 30 Apr 2021 10:14:40 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Ezequiel Garcia <ezequiel@collabora.com>, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Zhang Rui <rui.zhang@intel.com>,
 Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com
Subject: Re: [PATCH 1/2] dt-bindings: rockchip-thermal: Support the RK3568
 SoC compatible
Message-ID: <20210430151440.GA3323801@robh.at.kernel.org>
References: <20210421200445.32977-1-ezequiel@collabora.com>
 <557ae27c-1d62-69e0-7ae6-921571059f9f@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <557ae27c-1d62-69e0-7ae6-921571059f9f@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_081444_697751_AB3CB939 
X-CRM114-Status: GOOD (  17.92  )
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

On Wed, Apr 21, 2021 at 10:46:37PM +0200, Johan Jonker wrote:
> On 4/21/21 10:04 PM, Ezequiel Garcia wrote:
> > Add a new compatible for the thermal sensor device on RK3568 SoCs.
> > 
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> >  Documentation/devicetree/bindings/thermal/rockchip-thermal.txt | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt b/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
> > index 7f94669e9ebe..346e466c2006 100644
> > --- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
> > +++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
> > @@ -9,6 +9,7 @@ Required properties:
> >     "rockchip,rk3328-tsadc": found on RK3328 SoCs
> >     "rockchip,rk3368-tsadc": found on RK3368 SoCs
> >     "rockchip,rk3399-tsadc": found on RK3399 SoCs
> 
> > +   "rockchip,rk3568-tsadc": found on RK3568 SoCs
> 
> This is still a text document.
> rob+dt has now scripts that check for undocumented compatibility
> strings, so first convert rockchip-thermal.txt to YAML and then add this
> in a separated patch.

Thanks for pushing on this, but for now at least, simple compatible 
additions are fine. If changes would complicate the conversion to 
schema, then we should convert it first. For example, if the new 
compatible was accompanied with differing clocks, irqs, resets, etc., 
then we should convert (or consider a separate schema).

In parallel though, we do want to get platforms to 0 undocumented (by 
schema) compatibles. And then 0 warnings after that...

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
