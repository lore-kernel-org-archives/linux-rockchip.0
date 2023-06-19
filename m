Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAA85EB64D7
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jun 2023 02:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5U0zNt/Ud4GbN8EQGoRDtOjEo1Momr78yixPmjZaN4=; b=A68cinF4RpxNUi
	muTcBgJb9vaWq5ABheAZQnFXDO+QhK+P+W+EXPPN+6gyql8Ar0VuOxRSeQNTHhX36P434rlNHITMo
	fBEWjzrFMpjmTAbnhod+DJFYWhAkdAu5ryK2Qk7g8ulWVjXDqv7+OB46LyhjRMBDUiod4LdAAALDS
	KDnM6flQkM+VGU2Axkhb5ZUcMumnD2K8rVCvmsIzvJfBhD+eV1bIJQXhCnYAxgwK7nNJ5FIc0uugy
	ra5lqa5g2whMyr29Ls9GXmduGyP3wexaLViVsxZMhKQc5ogn4BKs718HRkIxtA9nbsUBZ7CLtYW2+
	gQMbvvg3ydGJhMKnM8eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qB4Qh-007Bbo-2b;
	Mon, 19 Jun 2023 02:15:43 +0000
Received: from mail-io1-f54.google.com ([209.85.166.54])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qB4Qe-007BXr-0p;
	Mon, 19 Jun 2023 02:15:41 +0000
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-77e2f4498d3so117882739f.1;
        Sun, 18 Jun 2023 19:15:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687140930; x=1689732930;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=32Swg/UjoS3cjV/nFi0Bc3Ya5tQYAIpuii1MxYpla+0=;
        b=PuLCLPqtY/7OO54ScE7H1zrmHhQYtW809RtGuwNRY0WgcyInNEkRRjbyP6+xWfNFqe
         4KkH/JzkPJd9zhKwlULqwstv02Fo1lLcN3omxotqHtoQjFHwHAmLKleYEiJbA5G0ONYN
         hoKJ4L0ofI+btJx8HctbwJfSdnC5kXARZ3ToB80XvYTH7KUPjsFZh/r4r+c9yaxutyie
         EyDKvos4HNDIFZiA1MeBphFeutI2XfpU0/Sd38TDa4AJHRBfeNsz71TP4A6ooICiUwmX
         0rnmSTGnYHfdFaAZEDp3zeFAMSCWsPDeKH1vzi9SUZqGQVd/dPgsjOmQ51obrHkyFiMU
         krIg==
X-Gm-Message-State: AC+VfDwQLpnPj1QtlsLlHLB+HLRo+s6lhPnfjqd5cHFqpCuvjMqGaAYg
	swBiywRlFwWXL7v1xRFCIw==
X-Google-Smtp-Source: ACHHUZ5TCWb4WJX/SaVFMO5AYbmrF1gAF1OID/i5CY95XSzj4oglTH4qvR0Wg6hTT1ROypX5YAMAiQ==
X-Received: by 2002:a92:90f:0:b0:33d:85c3:93ee with SMTP id y15-20020a92090f000000b0033d85c393eemr7373943ilg.17.1687140930209;
        Sun, 18 Jun 2023 19:15:30 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id h1-20020a92c081000000b003421d25e5a2sm1591707ile.50.2023.06.18.19.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jun 2023 19:15:29 -0700 (PDT)
Received: (nullmailer pid 2830 invoked by uid 1000);
	Mon, 19 Jun 2023 02:15:27 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Furkan Kardame <f.kardame@manjaro.org>
Cc: linux-arm-kernel@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, arnd@arndb.de, linux-kernel@vger.kernel.org, conor+dt@kernel.org, dsterba@suse.com, heiko@sntech.de, linux-rockchip@lists.infradead.org, deller@gmx.de, devicetree@vger.kernel.org, broonie@kernel.org
In-Reply-To: <20230617135315.25441-2-f.kardame@manjaro.org>
References: <20230617135315.25441-1-f.kardame@manjaro.org>
 <20230617135315.25441-2-f.kardame@manjaro.org>
Message-Id: <168714092636.2784.10614022790347799844.robh@kernel.org>
Subject: Re: [PATCHv2 1/2] dt-bindings: arm: rockchip: Add Firefly Station
 P2
Date: Sun, 18 Jun 2023 20:15:27 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230618_191540_297790_21A023A1 
X-CRM114-Status: GOOD (  12.17  )
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


On Sat, 17 Jun 2023 16:53:14 +0300, Furkan Kardame wrote:
> Station P2 is a single board computer by firefly based
> on rk3568 soc
> 
> Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/arm/rockchip.yaml:189:1: [error] syntax error: found character '\t' that cannot start any token (syntax)

dtschema/dtc warnings/errors:
make[1]: *** Deleting file 'Documentation/devicetree/bindings/arm/rockchip.example.dts'
Documentation/devicetree/bindings/arm/rockchip.yaml:189:1: found a tab character that violates indentation
make[1]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/arm/rockchip.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/arm/rockchip.yaml:189:1: found a tab character that violates indentation
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/arm/rockchip.yaml: ignoring, error parsing file
make: *** [Makefile:1512: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230617135315.25441-2-f.kardame@manjaro.org

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
