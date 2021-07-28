Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73519C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 15:51:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3D9B8603E7
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 15:51:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3D9B8603E7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yjAW8QGWgSrXFpKTGjhoA/EmOJgsSl6NDgWkFz4Lkc=; b=MXG7Cq9NiIVD1d
	AwEhM3V9o2o819qwYCU25hTScfpB3vvxQBnrsrSHcVbjL3XD+x0lPWIzk0DLohZHlQe8qwGVN06LX
	TGWNL7kO0Y3xEYgniFlqa0iXYOzleTVR/UsHI27j/zXFCGKqPQnEX6zWHUIGOHKltEWHVRDzKYAXB
	BLWsRW7B5Q/DuKoZasyIvHCTMGgM1Euo9DQFQ6h7BQ83bq+1+/XQNgECIdCh+CBAX19XbVi1YMFg4
	bGrcclJoq/8pUUWF39ElyMtIR5DHmzO1I70QvJUIvGyDuwOlB9JRHwTJDKi1yZKF6UCcYvK09+VyC
	Bx4KQKcRAW0H8A/OUpQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8lqQ-001NrN-TU; Wed, 28 Jul 2021 15:51:42 +0000
Received: from mail-io1-f42.google.com ([209.85.166.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8lqO-001NqV-Ep; Wed, 28 Jul 2021 15:51:41 +0000
Received: by mail-io1-f42.google.com with SMTP id l126so3476971ioa.12;
 Wed, 28 Jul 2021 08:51:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=QGlRQ7YvLwv8K5AbN7ZnxnSoIhB/O2l82NrH2XfQAws=;
 b=Kysg/sMDCEMVAWI3f4ALrY8yVDWMYvVL+LNQaQX6OB4Y7sLZ2YIhy/pWTaKrRQMJpj
 WaO9gMbZjrZ8nnOYX/iSbzQP2dM6GZ8Ef16W3IITcjfTcSemcJUyrUoJ7pkc2eSGCN8s
 yJxRDhVEoCYdQkKJ9MRoA1DQH/F94aiCDfc69dD+2vjQi7ku8aY1PgiHTF8o38/ngEI7
 A1Z+/Xvrb0KyOeGF2j8a4g9nf4sgWD4K7sW5u7yiVsDUSkQsyN5oj0c5u/ZVo26c1huc
 ByrAIxuMTX/nZMUOuVvzSrdm6oHj9LoMIHsT0phfWjfsD73yewfwAeYenV5u8W1kIa/q
 HFog==
X-Gm-Message-State: AOAM530cnwUTnYgcmtEADpgRELnbL4xvdS0fFYTZREPVu3fDaIXEbym6
 LLFQurHTDEBvtFcTG4imrg==
X-Google-Smtp-Source: ABdhPJzaxRpaGHuNLWhFtE2F69DI0X2Ny22fQs48Z8P6xy+5OSHIaCODrcsxpUgXTInNv5LVA4hffg==
X-Received: by 2002:a6b:1685:: with SMTP id 127mr99194iow.135.1627487498497;
 Wed, 28 Jul 2021 08:51:38 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id t15sm238450iog.26.2021.07.28.08.51.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 08:51:37 -0700 (PDT)
Received: (nullmailer pid 1132983 invoked by uid 1000);
 Wed, 28 Jul 2021 15:51:35 -0000
From: Rob Herring <robh@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20210728135534.703028-2-pgwipeout@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <20210728135534.703028-2-pgwipeout@gmail.com>
Subject: Re: [PATCH 1/9] dt-bindings: gpio: rockchip,
 gpio-bank: increase max clocks
Date: Wed, 28 Jul 2021 09:51:35 -0600
Message-Id: <1627487495.967642.1132982.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_085140_544385_1EA8B3B3 
X-CRM114-Status: GOOD (  14.10  )
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

On Wed, 28 Jul 2021 09:55:26 -0400, Peter Geis wrote:
> The rk356x adds a debounce clock to the gpio devices.
> Increase the maximum clocks to account for it.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.example.dt.yaml: gpio@2000a000: clocks: [[4294967295, 9]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.example.dt.yaml: gpio@2003c000: clocks: [[4294967295, 10]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
\ndoc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1510854

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
