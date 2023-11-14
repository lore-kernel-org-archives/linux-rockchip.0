Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59061C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Nov 2023 13:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5Q6z/5mgbDNYki/+y50zHbgyt8uDrfVgdhA+r60vtY=; b=MNBUyUmse+qFs7
	qW/UmWxTW71uJcWbYCk4iU11/HRrs/wfKqG/WaJm+VfSyyyUZH0hSkOLGYDlZ/rEvuUhF3bBa5aru
	n1TO7GCwP1zRnnh7AMJvFDQVyOWukdqjG57CB+Y9aTOHnODWBA3qo9O3SF8bdCE42FYGhhkmjAz/j
	o0K8QpzqxUSNw+3277FqItvbHmDNTD7W9mMbZ12eUSzee0y0dtwgbERhzz4nALlP3CJZjxbFdhAiK
	npJvD/C+ivramdkIUqOJNP3RjHE3bh69y4rKcgTJueDNQUYw27W4urdv/4NZQ7GZzhr/5yZMmeXS7
	ciqy9geWllFQAL2JRF+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tir-00G4w2-15;
	Tue, 14 Nov 2023 13:44:57 +0000
Received: from mail-oa1-f48.google.com ([209.85.160.48])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tio-00G4u3-1X
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Nov 2023 13:44:56 +0000
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-1efad296d42so3334243fac.2
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Nov 2023 05:44:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699969492; x=1700574292;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PmEgb+EV0Zl7D8C3uAM8E/H1l2y9vB0lqB3Tm7vb8U4=;
        b=SlpOrSS6FdCGLpOJW7xrZq/kJwKD4dmg+cVVAnMbJfJyMrEw+D9oxgtkoUrAiLDfcp
         pXp9ESs5YhZoeY1z4bvDBCalMHvNIOISWrvY3d84nG4fuyADmjjilmr3uj4iDYkTLLYe
         HuBL7ZkgPuz1B1oCpzJLrHugF+UrnXTgmdtIap6LPFQ0natv6nXxNpxnf5yzmxccQBXC
         0omPZSM70656jccCjyvzGvjZZ6dXTmBoMrLZv2GQn2e0KB++zuUHRB8rw3PKGjwuAznk
         XH47BqxJRuWEl3/6mwgPUEAPoorhtvW/5sp+2wiKX+8RHhcppbzra6tPpsoNjP9MhGa/
         fNuw==
X-Gm-Message-State: AOJu0YwwtiE033+WSZTz/VBDzcFuSZd/vZYrHXflQoTiIgaAllimHqDp
	aubS3xVdDyIcRmVYPUPHFw==
X-Google-Smtp-Source: AGHT+IEoAU1Lg6SlYx8VqG5eB7OWyqoEYSPcEMHmWoXzIY4/iBbuR3rMHc1ozP3vv2heVSdCnLsY+w==
X-Received: by 2002:a05:6871:7291:b0:1ea:85a:db2e with SMTP id mm17-20020a056871729100b001ea085adb2emr14076992oac.45.1699969492557;
        Tue, 14 Nov 2023 05:44:52 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id wh6-20020a056871a68600b001e12bb81363sm1394830oab.35.2023.11.14.05.44.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 05:44:51 -0800 (PST)
Received: (nullmailer pid 1652367 invoked by uid 1000);
	Tue, 14 Nov 2023 13:44:51 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: devicetree@vger.kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, kever.yang@rock-chips.com, chris.obbard@collabora.com, heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, hjc@rock-chips.com
In-Reply-To: <20231114112841.1771312-1-andyshrk@163.com>
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112841.1771312-1-andyshrk@163.com>
Message-Id: <169996949102.1652338.14967893657318401842.robh@kernel.org>
Subject: Re: [PATCH 08/11] dt-bindings: display: vop2: Add rk3588 support
Date: Tue, 14 Nov 2023 07:44:51 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_054454_514942_9FD52CAC 
X-CRM114-Status: GOOD (  13.20  )
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


On Tue, 14 Nov 2023 19:28:41 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The vop2 on rk3588 is similar to which on rk356x
> but with 4 video outputs and need to reference
> more grf modules.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  .../display/rockchip/rockchip-vop2.yaml       | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.example.dtb: vop@fe040000: clocks: [[4294967295, 221], [4294967295, 222], [4294967295, 223], [4294967295, 224], [4294967295, 225]] is too short
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip-vop2.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.example.dtb: vop@fe040000: clock-names: ['aclk', 'hclk', 'dclk_vp0', 'dclk_vp1', 'dclk_vp2'] is too short
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip-vop2.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231114112841.1771312-1-andyshrk@163.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
