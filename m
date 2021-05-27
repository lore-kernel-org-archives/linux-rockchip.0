Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA719C4708A
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 14:49:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 85648611CD
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 14:49:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 85648611CD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bm6BKztmg5efJ3irDhamEJetry3AVmr2vEqZg8sxe6k=; b=Nre2yjE4tVN7XV
	cm4wJCxUMt018OYi8Ab1LUWz+NSEJagiXiMKpVyvi3dNvDYPV2t7o4o20fG2/IjLfTHSMM9gOzw/5
	hOoblUDVYM7lOnfei7QYcysyJf7JyvBrRw8S22Nm5ezBIvJVT+wOVmTg3u6U/jXn4I0BCsaVFQ6ln
	dEH+LeUYQ0c9IRC6+cvtscNTu4sbYS/F+4U0YQeu4lp58t3jbmdlKStWdeKU5OEYaDCqjxMK/Qr6m
	gOOuFnq0jc+Ex/FQbZJGNXj6y8GKQ2NF3t1mrrhfzhgNshOUCNnSVsg/zuZUZ89Bb1KUi1vBDJM7t
	JAbTxpaOoy7PsydAlv3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmHKV-006v9b-Jr; Thu, 27 May 2021 14:49:47 +0000
Received: from mail-ot1-f53.google.com ([209.85.210.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmGvD-006kjO-Nv
 for linux-rockchip@lists.infradead.org; Thu, 27 May 2021 14:23:41 +0000
Received: by mail-ot1-f53.google.com with SMTP id
 80-20020a9d08560000b0290333e9d2b247so350675oty.7
 for <linux-rockchip@lists.infradead.org>; Thu, 27 May 2021 07:23:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=cAYbEBVO41pPeY8bh55UYX2lkNaNSE4J1N93ZC37MH4=;
 b=aRJVRoB7xjBRHUwnreJKcW+s052u3CiUhs+nH0FGuP7VrX1Ny3mIpXzJqj3cAy+uhz
 rpXQGt6575tgf0j8PVKsTQVJi46CbjL/9+/UjGQ6JiPCXcCdptP+vhWlI39XdLQC36d8
 9V+wVS1P38UcS8X1mVmMbDw+5sQUWgs9nlA4RvGyfM8xZqfZFJzXEA7qWfRyAvYZq9TH
 51WajKNpYaKJjOG20klaOjhQ7HpX6/qs5k7kIXI9iSF6ZfmNF3JTDeD9Xn/NOXlDZghK
 9JLM5SGmdwZIJYB4cC3unHEgBJxSq/EJrf6aOeWMojRSZNgd37yTJIZRFPvuaQN+15WL
 M6RA==
X-Gm-Message-State: AOAM532lLalxQ0U2BvBMxroeiioPDy6+zTWuiEzPqHjzUyWrp0fPzshc
 E5oZ76CsYVdzzmiTaopGfg==
X-Google-Smtp-Source: ABdhPJwI6N9HRRGnwxmBhqtCjiDJgmQ8vHKe6nUJBYkaRjOWH87S0oYGeVfXuEO4fIChEEkaQUI9NQ==
X-Received: by 2002:a9d:39e3:: with SMTP id y90mr3093636otb.257.1622125415948; 
 Thu, 27 May 2021 07:23:35 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o14sm498437oik.29.2021.05.27.07.23.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 07:23:32 -0700 (PDT)
Received: (nullmailer pid 731794 invoked by uid 1000);
 Thu, 27 May 2021 14:23:27 -0000
From: Rob Herring <robh@kernel.org>
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: devicetree@vger.kernel.org, heiko@sntech.de, lee.jones@linaro.org,
 linux-rockchip@lists.infradead.org, ulf.hansson@linaro.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, jbx6244@gmail.com
In-Reply-To: <20210527082905.1447591-2-jay.xu@rock-chips.com>
References: <20210527082905.1447591-1-jay.xu@rock-chips.com>
 <20210527082905.1447591-2-jay.xu@rock-chips.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: soc: rockchip: convert io-domain.txt
 to YAML
Date: Thu, 27 May 2021 09:23:27 -0500
Message-Id: <1622125407.801041.731793.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_072339_867040_43A34640 
X-CRM114-Status: GOOD (  13.74  )
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

On Thu, 27 May 2021 16:29:03 +0800, Jianqun Xu wrote:
> This patch moves the rockchip-io-domain.txt from power/avs dir to soc
> dir and rename to io-domain.txt, without any change in the step.
> 
> Then covert the io-domain.txt to YAML.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
> v2:
> - first version
>  .../bindings/power/rockchip-io-domain.txt     | 135 ------------------
>  .../bindings/soc/rockchip/io-domain.yaml      |  45 ++++++
>  2 files changed, 45 insertions(+), 135 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/power/rockchip-io-domain.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/rockchip/io-domain.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/soc/rockchip/io-domain.yaml:17:13: [warning] wrong indentation: expected 14 but found 12 (indentation)
./Documentation/devicetree/bindings/soc/rockchip/io-domain.yaml:36:1: [error] syntax error: found character '\t' that cannot start any token (syntax)

dtschema/dtc warnings/errors:
make[1]: *** Deleting file 'Documentation/devicetree/bindings/soc/rockchip/io-domain.example.dts'
Traceback (most recent call last):
  File "/usr/local/bin/dt-extract-example", line 45, in <module>
    binding = yaml.load(open(args.yamlfile, encoding='utf-8').read())
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", line 421, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 109, in get_single_data
    node = self.composer.get_single_node()
  File "_ruamel_yaml.pyx", line 706, in _ruamel_yaml.CParser.get_single_node
  File "_ruamel_yaml.pyx", line 724, in _ruamel_yaml.CParser._compose_document
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 773, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 848, in _ruamel_yaml.CParser._compose_sequence_node
  File "_ruamel_yaml.pyx", line 904, in _ruamel_yaml.CParser._parse_next_event
ruamel.yaml.scanner.ScannerError: while scanning a block scalar
  in "<unicode string>", line 32, column 5
found a tab character where an indentation space is expected
  in "<unicode string>", line 36, column 1
make[1]: *** [Documentation/devicetree/bindings/Makefile:20: Documentation/devicetree/bindings/soc/rockchip/io-domain.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/soc/rockchip/io-domain.yaml:  while scanning a block scalar
  in "<unicode string>", line 32, column 5
found a tab character where an indentation space is expected
  in "<unicode string>", line 36, column 1
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/rockchip/io-domain.yaml: ignoring, error parsing file
warning: no schema found in file: ./Documentation/devicetree/bindings/soc/rockchip/io-domain.yaml
make: *** [Makefile:1416: dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1484505

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
