Return-Path: <SRS0=E64z=HE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33DDCC433E0
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Feb 2021 17:45:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E628664DA3
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Feb 2021 17:45:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E628664DA3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:References:In-Reply-To:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1eSLYc+C3v4QTERQbt8k/nxSJtH2Nk1dI1SwCP4ze7M=; b=NuvZ/vDOxygxBk2UE+aAfHhcxJ
	K6EoNA0gqlV/QzYveHyynWFF/bfIJhcZbP0F5hFpGSWqGwih0MS/9d7NvY6liWPIF3oAt1tvduaYh
	5X9hORMCqTOMmit0I+lWPtviT96gUukGNFTx81jWxkAn7XXTFfE+L7QVDqrh53e/9bDtZ4hV9/rl/
	ff9aqJ/JL0r6oIv8Duhn5rkUgB0zofyErSK0c1E2u+sscHV/pTyeW2kDBufUr9HNgGZzQaRPhhKPX
	vus8rGFon9Ll22DL1m9lHmM+ly5pW8rS/zPY9X7Q2wHziJWA0TTcDRSmElWSLLj9y07zGkQkd3+sV
	bRxCyObg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l6zjd-0000Cc-K3; Tue, 02 Feb 2021 17:45:05 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6zjY-0000Ae-7u; Tue, 02 Feb 2021 17:45:01 +0000
Received: by mail-ot1-f47.google.com with SMTP id n42so20625503ota.12;
 Tue, 02 Feb 2021 09:44:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=JTlXOdBngJ1YJUbwfAUG7x6kg6XjEmBq9/mlkFXBIug=;
 b=tlyFJtpZBDJef0Um5bVLFXrufBXv5czy1afPcejyu4m7hvZ8fTN45fdYnKWBRv/fZE
 NGYAW1n/0SLMBKg87AWj3iX0L+dF5Ii1CoAlAnI5/FT5s/YFyunjguVgj0kmf4xbAnjD
 yUu2ZwA776ZPtWDwE2i8fUVWOUjYzYkgEr+i4EdEJXvwk7tpd1fYG43L/NcuPA6pYojW
 Gi0FmWoic+JidSbUI74EqN2M5qd3NK8ftwgK4Lztx56o72mE8FjPqvwX39unJ3adR6rB
 FRA0sRS52iB40VGB1t3XoObZrJkaPj7UlmVLCTLcwykk1sgRANYHGYpK+u8EuBWbTWma
 bUag==
X-Gm-Message-State: AOAM531zOVBcv/1RFjw97yCwVuum++X6to/lMmDeiappHdVIEfhwzUF3
 m1yzELTskZjpwIw/AYMrFnJLwnLUvQ==
X-Google-Smtp-Source: ABdhPJxG354Fp569hTYJNvqu/3BDjRzPg3XgNq8Y/835+LrvwJGubs6mr2k1CNdj094klpMzHCN7CQ==
X-Received: by 2002:a05:6830:185:: with SMTP id
 q5mr16809793ota.359.1612287897139; 
 Tue, 02 Feb 2021 09:44:57 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y24sm4824050oos.44.2021.02.02.09.44.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Feb 2021 09:44:56 -0800 (PST)
Received: (nullmailer pid 3887345 invoked by uid 1000);
 Tue, 02 Feb 2021 17:44:54 -0000
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20210201194105.32673-1-jbx6244@gmail.com>
References: <20210201194105.32673-1-jbx6244@gmail.com>
Subject: Re: [PATCH v1 1/5] dt-bindings: usb: convert rockchip,
 dwc3.txt to yaml
Date: Tue, 02 Feb 2021 11:44:54 -0600
Message-Id: <1612287894.993003.3887344.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210202_124500_303237_DA3FCC7C 
X-CRM114-Status: GOOD (  14.30  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, balbi@kernel.org,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 01 Feb 2021 20:41:01 +0100, Johan Jonker wrote:
> In the past Rockchip dwc3 usb nodes were manually checked.
> With the conversion of snps,dwc3.yaml as common document
> we now can convert rockchip,dwc3.txt to yaml as well.
> 
> Added properties for rk3399 are:
>   resets
>   reset-names
> 
> Generic properties that are now also filtered:
>   "#address-cells"
>   "#size-cells"
>   ranges
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/usb/rockchip,dwc3.txt      |  56 -----------
>  .../devicetree/bindings/usb/rockchip,dwc3.yaml     | 107 +++++++++++++++++++++
>  2 files changed, 107 insertions(+), 56 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
>  create mode 100644 Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Unknown file referenced: [Errno 2] No such file or directory: '/usr/local/lib/python3.8/dist-packages/dtschema/schemas/usb/snps,dwc3.yaml'
xargs: dt-doc-validate: exited with status 255; aborting
Documentation/devicetree/bindings/usb/rockchip,dwc3.example.dts:31.11-18: Warning (ranges_format): /example-0/usb@fe800000:ranges: empty "ranges" property but its #address-cells (2) differs from /example-0 (1)
Documentation/devicetree/bindings/usb/rockchip,dwc3.example.dts:31.11-18: Warning (ranges_format): /example-0/usb@fe800000:ranges: empty "ranges" property but its #size-cells (2) differs from /example-0 (1)
Documentation/devicetree/bindings/usb/rockchip,dwc3.example.dts:21.33-38.11: Warning (unit_address_vs_reg): /example-0/usb@fe800000: node has a unit name, but no reg or ranges property
make[1]: *** Deleting file 'Documentation/devicetree/bindings/usb/rockchip,dwc3.example.dt.yaml'
Unknown file referenced: [Errno 2] No such file or directory: '/usr/local/lib/python3.8/dist-packages/dtschema/schemas/usb/snps,dwc3.yaml'
make[1]: *** [scripts/Makefile.lib:344: Documentation/devicetree/bindings/usb/rockchip,dwc3.example.dt.yaml] Error 255
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1370: dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1434297

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
