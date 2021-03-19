Return-Path: <SRS0=S+7F=IR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D047C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 21:49:31 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F172061956
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 21:49:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F172061956
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:References:In-Reply-To:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LaRfWGpMZfe9jm9SkQAS3f1MVljRfeZ87dIblDtOrNM=; b=IqwKUmqV7yoqXp3FM59G17rUl7
	sZVwkfg/2n64t2YGx2f6rjUXZMyEKd37h7hlW6LgNQpUmOe6sZr+N9XTwjG7hz6zxJybM88AbYAwF
	lhAsS8rxQTZAxfHBz7Ddb60i7znmsG/ketXhoenFJvv/t4D4JJa2UD+Cq7y+akdbhw33b+Zkbf0bN
	DkGPZRXeoqxHgTI/VPH6Yofb6LJDIsJa1eJASNilXBY+FsmZp/uKeKIgWMZJN3Fw2+DOLrumhEg3A
	yO7FQo+0C9oa27RREzVjy1p4FdK8HKgaeLwJ01ta+XHlstLu+Uc86zxNQOiLrrcAAPTLjchksPd9b
	wrsRxPYw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNMzk-008DEO-Mt; Fri, 19 Mar 2021 21:49:24 +0000
Received: from mail-io1-f53.google.com ([209.85.166.53])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNMze-008DD3-Lx; Fri, 19 Mar 2021 21:49:22 +0000
Received: by mail-io1-f53.google.com with SMTP id z136so7639364iof.10;
 Fri, 19 Mar 2021 14:49:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=fkKLG/uVB75TRHpEJhq5M/a3yUCD2nHnE8bqwd4TUUE=;
 b=FofqPZWNXJB+lhfsRsHuKw6WtxGGpL3YMUUWlserH/E3Dr6hgOQKFqwkJU0XrP+uoy
 1v+x172b6JOPccEzIuLy8aSMuF2lYhEIcncQ1GoT+OEtfmmtwyNl93u2jIVjp9KMFey0
 sfutkkeM61vkNyZHdF0xaZ+SkUp1vFTbBnUsGS8cZo6nMCICZyW8BkST+4wAw+xmXlkb
 G0u+ToysLQ7sGTYQ3YrkSkgtaEoYjqzVKWob3Uyg1u75C4zopLSF3vLs55Y9mQoSq8Qg
 /1Qq6fWxdCfOpmCwUdzhQnC1gO+MvJ2nSS20kpL3Pu9Hf5E5GApg9DDjt0WTa/yS5klj
 64yw==
X-Gm-Message-State: AOAM532o5FDVofVRljbWHnyjdLY2KP5DejC1wJqVfBcu5zk7c3feBXA+
 f6gkSjPSnuW14TDhwIik0Q==
X-Google-Smtp-Source: ABdhPJx6l5rWYKE3yxkxEjzt97f76s0cVjPiaDdBYIbG/3M1ZWeLln2M9CnGhJ/EYBEGw+I+SR4G6g==
X-Received: by 2002:a02:230d:: with SMTP id u13mr3113524jau.53.1616190556701; 
 Fri, 19 Mar 2021 14:49:16 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id d10sm3133370ila.47.2021.03.19.14.49.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Mar 2021 14:49:15 -0700 (PDT)
Received: (nullmailer pid 1647631 invoked by uid 1000);
 Fri, 19 Mar 2021 21:49:12 -0000
From: Rob Herring <robh@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: devicetree@vger.kernel.org, huangtao@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, kever.yang@rock-chips.com, finley.xiao@rock-chips.com,
 tony.xie@rock-chips.com, linux-arm-kernel@lists.infradead.org, heiko@sntech.de,
 cl@rock-chips.com
In-Reply-To: <20210317025159.2248-3-zhangqing@rock-chips.com>
References: <20210317025159.2248-1-zhangqing@rock-chips.com>
 <20210317025159.2248-3-zhangqing@rock-chips.com>
Subject: Re: [PATCH v1 2/3] dt-bindings: Convert the rockchip power_domain to
 YAML and extend
Date: Fri, 19 Mar 2021 15:49:12 -0600
Message-Id: <1616190552.552444.1647630.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_214919_093057_51D01F4E 
X-CRM114-Status: GOOD (  12.25  )
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

On Wed, 17 Mar 2021 10:51:58 +0800, Elaine Zhang wrote:
> This converts the rockchip power domain family bindings to YAML schema,
> and add binding documentation for the power domains found on Rockchip
> RK3568 SoCs.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  .../bindings/soc/rockchip/power_domain.txt    | 136 ------------
>  .../rockchip/rockchip,power-controller.yaml   | 196 ++++++++++++++++++
>  2 files changed, 196 insertions(+), 136 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/rockchip/rockchip,power-controller.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/rockchip/rockchip,power-controller.yaml: $id: 'http://devicetree.org/soc/rockchip/rockchip,power-controller.yaml#' does not match 'http://devicetree.org/schemas/.*\\.yaml#'
./Documentation/devicetree/bindings/soc/rockchip/rockchip,power-controller.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/soc/rockchip/rockchip,power-controller.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/rockchip/rockchip,power-controller.yaml: ignoring, error in schema: $id
warning: no schema found in file: ./Documentation/devicetree/bindings/soc/rockchip/rockchip,power-controller.yaml
Error: Documentation/devicetree/bindings/soc/rockchip/rockchip,power-controller.example.dts:32.28-29 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:349: Documentation/devicetree/bindings/soc/rockchip/rockchip,power-controller.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1380: dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1454404

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
