Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E554C4320A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 13:30:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 098E8613A7
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 13:30:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 098E8613A7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rm82YMCEwbHOrqX9Y0eO5uEgtgfy73JszlAt0j53t94=; b=zTwZD/wkPj/VA8
	qr5uI7bHGJDrqvo1TTrfAyRsBpkaTAvRsIJlTkFacmmxpXLzecqM2h9FHI8uOHCzrqfj4v19n/XbM
	wnMw1liND47WiO33CYSSZAVmT1/T1CDSAEf43OcEYn3tTqIKNZmzhvDi/8oCj51T2LSj+aLsOGv5y
	gdyWUfPJi+u+FbFOiceNM07JeuNIja5m88vS4jOuDx6T2UfY5+ko6WRP7fwxnueC4P1rH5nd4k9SP
	Zc+ddtwNbiIThm7cdjk+3P0jd2ypXdnFkOl/fWDtdklSxVzhoz130t31NKgUYKcf9HQ+hXNVt7Gnh
	lfI/aAWc0MHmLTFwbGvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIA1x-00H4Pa-Nj; Mon, 23 Aug 2021 13:30:25 +0000
Received: from mail-oo1-f47.google.com ([209.85.161.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIA1q-00H4OM-HE
 for linux-rockchip@lists.infradead.org; Mon, 23 Aug 2021 13:30:23 +0000
Received: by mail-oo1-f47.google.com with SMTP id
 m11-20020a056820034b00b0028bb60b551fso5390000ooe.5
 for <linux-rockchip@lists.infradead.org>; Mon, 23 Aug 2021 06:30:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=tYKXcPONtDHENaTk531QOuIYk5FCjGu+6Vp94/ZbRyY=;
 b=oycO0oGMudRbc7BHZG8NgLEVQ0FAgivGa/8DidAGLWuXxtliyVDqlhtibjgmZ8+ABo
 CZjqdY0XyyKHWF6nyBnSC6TbN/mMYEIj/AZKSIp2VuX1v+OjQq6Menif6/csbWdDjITK
 V3Lyyw12wsyiXB/TQ1Y0026Df5YZ0nxgltJaC3aE8e47xp3a1sf3F6Nq3ied+NVlC0rx
 HY0m3rPyPY/rzEqSZ9IZ5gqwvJqj4gybgJaf0f7iH6GFixiix3tQ4UbfP92BAmS90qYg
 nUjdsjaq2YtGS7IUarcgPMOtp1Ued6ul/JopwvE9RNppZlYKnpwBcM/fGEizofNGcCmf
 PKuw==
X-Gm-Message-State: AOAM532Vb7xE82bTPtPMVB8Q0ToUGBP7UWNkvUHrsRhH8IWbbJiMoKku
 RsROqYYysWR2gopWW0VsZg==
X-Google-Smtp-Source: ABdhPJzjXLnJ1CRjEDilFbPZxBvNwH89yBnHeyfUNi7XPvRtSxuGSZLoS6YuOJgz+Yoc+qe1I5w/6A==
X-Received: by 2002:a4a:6f4a:: with SMTP id i10mr39788oof.64.1629725416546;
 Mon, 23 Aug 2021 06:30:16 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id p124sm3620811oia.8.2021.08.23.06.30.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Aug 2021 06:30:15 -0700 (PDT)
Received: (nullmailer pid 1982768 invoked by uid 1000);
 Mon, 23 Aug 2021 13:30:13 -0000
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 broonie@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de
In-Reply-To: <1629716132-21544-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629716132-21544-1-git-send-email-sugar.zhang@rock-chips.com>
Subject: Re: [PATCH 15/15] ASoC: dt-bindings: rockchip: i2s: Document property
 'clk-trcm'
Date: Mon, 23 Aug 2021 08:30:13 -0500
Message-Id: <1629725413.505500.1982767.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_063018_620424_592F1746 
X-CRM114-Status: GOOD (  12.78  )
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

On Mon, 23 Aug 2021 18:55:32 +0800, Sugar Zhang wrote:
> This patch documents property 'rockchip,clk-trcm' which is used
> to specify the lrck.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Change-Id: I648142c57c568bbed209f2b9188b1f539a3285b2
> ---
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
make[1]: *** Deleting file 'Documentation/devicetree/bindings/sound/rockchip-i2s.example.dts'
Traceback (most recent call last):
  File "/usr/local/bin/dt-extract-example", line 45, in <module>
    binding = yaml.load(open(args.yamlfile, encoding='utf-8').read())
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", line 434, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 120, in get_single_data
    node = self.composer.get_single_node()
  File "_ruamel_yaml.pyx", line 706, in _ruamel_yaml.CParser.get_single_node
  File "_ruamel_yaml.pyx", line 724, in _ruamel_yaml.CParser._compose_document
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 891, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 904, in _ruamel_yaml.CParser._parse_next_event
ruamel.yaml.scanner.ScannerError: mapping values are not allowed in this context
  in "<unicode string>", line 80, column 8
make[1]: *** [Documentation/devicetree/bindings/Makefile:20: Documentation/devicetree/bindings/sound/rockchip-i2s.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/sound/rockchip-i2s.yaml:  mapping values are not allowed in this context
  in "<unicode string>", line 80, column 8
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml: ignoring, error parsing file
warning: no schema found in file: ./Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
make: *** [Makefile:1419: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1519630

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
