Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF55BC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 14:07:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6EA8B23340
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 14:07:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6EA8B23340
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:References:In-Reply-To:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7xsitIt7UdQMZZ7CxhFRb+Q0KuXZcxR5vSmG8LJRTcQ=; b=i/C+Xcsz7lOyLry92ctYcKdmiD
	3wSvw8hLTV6ubT/INYUEOnPg1bnfEyF/VHQ4Btrfddq5CRQ6PrJA9DA4ywKp7FcU5Tti/4rrRNcoQ
	9JL2QUDLTXYIYEBn31h6gIMutVw6KeaHCiDzM8/cFjYVcJpaSRqrbXvlZaMdzm/0pr/dt3vDftNne
	NqS/ZzEjgEXmydeQ7gErIvje0wHqzu8ULtc4Z+JDhlsFlzXZxOtmR7XoJcr5MtnqwVzAfXyMC0R3j
	Ec8Poc4qPDqj3zCn+lOxu9zDCAJbS4iDYcIdDB1CNVf64H99nJKuqsDBE/EowtuX/yDKVpQcM6d4Y
	I8pXdUvg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2E96-0008Ox-2w; Wed, 20 Jan 2021 14:07:40 +0000
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2E93-0008OV-Eh
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 14:07:38 +0000
Received: by mail-oi1-f178.google.com with SMTP id w8so3310891oie.2
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Jan 2021 06:07:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=zcKgwjky9crKlWMGPybKhU6+7gIFQmOWdjIZJmpIFjc=;
 b=TX3AmNtax5DW5KRt9kotyCrDRzVkpWNjz4OmW8rPRQKIkQXMKRwBhcUwb4ax/94/WM
 tQQOJU9x16xWXhtaZWjCrF+e66e89Zyj3BLNbskJFpKbsgK4ACF9re47o4FtbzPFzYrQ
 lX6zpVIuzqry4c5sLp7kfUuPsdG3jsBbbCxapMxja0Q6F5h1pwJVVxx/sbDKN4ExbOrN
 DolV92j61/n6TD53JKmXVpQ0HgUpA9hSN8BbpbVPM0WNXHpwIDQmRuXUbkeL6GOnFDDq
 3on6FG2XO5Va5LAj7Vu6O3CquWqubS7OjlmFbASTXO4anNa2TLvONdzv6yunhBNuPeph
 cNXg==
X-Gm-Message-State: AOAM531xihuWzQROM0Vp1E94F9nIlCkOp5XAhOHXtl0dctwH/AqCNEXH
 r2cBaVItzitV2w9BvyAVJA==
X-Google-Smtp-Source: ABdhPJzcEAq7/9jtYgE52EsiAT1br27RsunNbC2p9kjwtyWOTE98FYW9E/oOsC5otWdKb86kBgxzuA==
X-Received: by 2002:aca:c74d:: with SMTP id x74mr3006218oif.177.1611151656166; 
 Wed, 20 Jan 2021 06:07:36 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d10sm360682ooh.32.2021.01.20.06.07.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 06:07:35 -0800 (PST)
Received: (nullmailer pid 31593 invoked by uid 1000);
 Wed, 20 Jan 2021 14:07:34 -0000
From: Rob Herring <robh@kernel.org>
To: Simon Xue <xxm@rock-chips.com>
In-Reply-To: <20210120101554.241029-1-xxm@rock-chips.com>
References: <20210120101554.241029-1-xxm@rock-chips.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Date: Wed, 20 Jan 2021 08:07:34 -0600
Message-Id: <1611151654.051365.31592.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_090737_537481_43E25B2D 
X-CRM114-Status: GOOD (  12.28  )
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Johan Jonker <jbx6244@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 20 Jan 2021 18:15:53 +0800, Simon Xue wrote:
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml        | 140 ++++++++++++++++++
>  1 file changed, 140 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml:39:7: [warning] wrong indentation: expected 4 but found 6 (indentation)

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml: properties:interrupt: [{'description': 'system information'}, {'description': 'power management control'}, {'description': 'PCIe message'}, {'description': 'legacy interrupt'}, {'description': 'error report'}] is not of type 'object', 'boolean'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml: properties:compatible: Additional properties are not allowed ('item' was unexpected)
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml: properties:compatible: 'item' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'type', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml: properties:compatible: Additional properties are not allowed ('item' was unexpected)
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml: ignoring, error in schema: properties: interrupt
warning: no schema found in file: ./Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dts:19:18: fatal error: dt-bindings/clock/rk3568-cru.h: No such file or directory
   19 |         #include <dt-bindings/clock/rk3568-cru.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:344: Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1370: dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1429132

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
