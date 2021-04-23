Return-Path: <SRS0=DeNp=JU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E1AC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 14:44:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 937D26141C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 14:44:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 937D26141C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:References:In-Reply-To:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ikQ5vyn7v6X9p2AfU3WfFuDZHjdWQ4XIWGyZTD7q/0Q=; b=N41pujzA9MJTWwiTcgTqjWJOzu
	iFNJTwRPB/vol870OP3vGg4Tp7EujhA+mHGO9qZrf0UpJfpes395hUkCK9rRcDEfO/NvmDhBdUMXb
	YC4CpK//MRQ6uk4jlWHM84/mIAgbC/7TtoiATtcjl4DFEF0rx/c+isOPF9MEa5O2nB1+/+gUmzkMe
	nH5EV/i+2m+SM2qtnemIKFs8uKbcSLIkou5g+6KMiOZ3kbx+i9R+RofKOtbiS7ERGiiYmvnEYIEus
	NMHcQNBcKFXTDpANbE57ZNQ26MmQTUvu/v8kZLETZSApmq4SES39YH8Edu4P0vgubFJ9OUP3luz2i
	9U3QRLOA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZx2R-001iA6-LL; Fri, 23 Apr 2021 14:44:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZx2P-001i9y-4J
 for linux-rockchip@desiato.infradead.org; Fri, 23 Apr 2021 14:44:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:References:
 In-Reply-To:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=QGN8eRyPKuW4NSsPBFt8iKdg3BE6h033oZLxsd+8+jc=; b=g2aeeKDloy/HWDd5c2bGux6CuL
 0PgjgRNnTtez2Ql6CjA7rNRK6uThGFIY2RclpcyLZ7yckkU3ggG6F5tClNAlIF3KI4RM4EngPhJ7P
 3A4xDck+DJFTpZ4AlO7tc7SOhPkIBSVmt+grwuyVJx4LgnXTK7SFr+PyIS2EpujhKzYOye06dLbo7
 CIaqn8v0MvTBZImvg+qu1VT1XF79mOH/rw2VgRhcb84ZkpMW7AzECfTwddBXFgs++f0ZH6t/1vacq
 J793CxfQirvu0jyrTm5+2U7KWpwykFWVf7Z8z3rzR0rX4ctj8irUNpPbKoO30cmWklu6SErPkWxlp
 z1mZoq5w==;
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZx2M-00ETlQ-7v
 for linux-rockchip@lists.infradead.org; Fri, 23 Apr 2021 14:44:07 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 35-20020a9d05260000b029029c82502d7bso14071917otw.2
 for <linux-rockchip@lists.infradead.org>; Fri, 23 Apr 2021 07:44:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=QGN8eRyPKuW4NSsPBFt8iKdg3BE6h033oZLxsd+8+jc=;
 b=ZMOtTpciBfwUK0gp0vSU6IV8c8p9R/IacFv2z6D60Rm8ZuQPv7beC3gtpvxJIeZCZE
 C3YN+frjzhxBixlnuXqXvUsgmcm7gg8J7Zs3yUI2emYDfizASzcIrTRmHcCVqGp2oEfw
 rK8OMJ2JppvKoarKEDRpihwT++mrdXZvgdFyLT7E7mtzHToqm1gdrCyTU+seDrLkLLWA
 cBZVsq/FnS1WhSXZ5LTlx8dXlwyb7WmS3KEWYyYNbAs3OGNyhVjW957EH/t0Gg4d8Xe5
 n01x+JmrOTnbg5EB0gpSZ9Ix1vUnXY9eHPsRaa/WUDw1XHWxs3deAnQN7s15vcdpSyBH
 Ejkg==
X-Gm-Message-State: AOAM530RtfGSTTk4CAwmwSwcW47qZaRPO77cVqwPiMRbQtcEa+piyISB
 s9uN86lYuSxAxQlRnVxsTCw6zu0/nw==
X-Google-Smtp-Source: ABdhPJxbnDBw8Wvw1Y7xQ7ZUqhUSiGO4keswnUerNmksJcd6swu12AvbpTKWVkPa44qqtxg5JYMhKQ==
X-Received: by 2002:a9d:7003:: with SMTP id k3mr3751327otj.351.1619189044820; 
 Fri, 23 Apr 2021 07:44:04 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b21sm1207972oov.6.2021.04.23.07.44.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Apr 2021 07:44:03 -0700 (PDT)
Received: (nullmailer pid 1023562 invoked by uid 1000);
 Fri, 23 Apr 2021 14:44:02 -0000
From: Rob Herring <robh@kernel.org>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 heiko@sntech.de, linus.walleij@linaro.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
In-Reply-To: <20210423014400.1433347-1-jay.xu@rock-chips.com>
References: <20210423014400.1433347-1-jay.xu@rock-chips.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: rockchip: Convert to json-schema
Date: Fri, 23 Apr 2021 09:44:02 -0500
Message-Id: <1619189042.263419.1023561.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_074406_304021_09DA638D 
X-CRM114-Status: GOOD (  10.56  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 23 Apr 2021 09:44:00 +0800, Jianqun Xu wrote:
> Convert the pinctrl/rockchip,pinctrl.txt binding document to
> json-schema.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>  .../bindings/pinctrl/rockchip,pinctrl.yaml    | 163 ++++++++++++++++++
>  1 file changed, 163 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml: patternProperties:^gpio[0-9]@[0-9a-f]:properties:required: ['compatible', 'reg', 'interrupts', 'interrupt-controller', '#interrupt-cells', 'gpio-controller', '#gpio-cells', 'clocks'] is not of type 'object', 'boolean'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml: patternProperties:^gpio[0-9]@[0-9a-f]:properties: {'enum': ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'deprecated', 'description', 'else', 'enum', 'if', 'items', 'maxItems', 'maximum', 'minItems', 'minimum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'propertyNames', 'required', 'then', 'unevaluatedProperties']} is not allowed for 'required'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml: patternProperties:^gpio[0-9]@[0-9a-f]:properties: {'enum': ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'deprecated', 'description', 'else', 'enum', 'if', 'items', 'maxItems', 'maximum', 'minItems', 'minimum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'propertyNames', 'required', 'then', 'unevaluatedProperties']} is not allowed for 'additionalProperties'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml: properties:rockchip,pmu: 'oneOf' conditional failed, one must be fixed:
	'type' is a required property
	Additional properties are not allowed ('maxItems' was unexpected)
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml: properties:rockchip,pmu: 'oneOf' conditional failed, one must be fixed:
		'enum' is a required property
		'const' is a required property
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml: properties:rockchip,pmu: 'oneOf' conditional failed, one must be fixed:
		'$ref' is a required property
		'allOf' is a required property
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml: properties:rockchip,grf: 'oneOf' conditional failed, one must be fixed:
	'type' is a required property
	Additional properties are not allowed ('maxItems' was unexpected)
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml: properties:rockchip,grf: 'oneOf' conditional failed, one must be fixed:
		'enum' is a required property
		'const' is a required property
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml: properties:rockchip,grf: 'oneOf' conditional failed, one must be fixed:
		'$ref' is a required property
		'allOf' is a required property
./Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/pinctrl/rockchip,pinctrl.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml: ignoring, error in schema: patternProperties: ^gpio[0-9]@[0-9a-f]: properties: required
warning: no schema found in file: ./Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
Error: Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.example.dts:22.9-10 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:377: Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1414: dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1469447

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
