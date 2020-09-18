Return-Path: <SRS0=OGSP=C3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67920C43464
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2020 17:31:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 176E521481
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2020 17:31:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="FoK3M5kZ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 176E521481
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m65g9shmVCf2tTKnNcbsPI7tFZGkzF2jqQ06YIgPZzc=; b=FoK3M5kZS+bpG81ziFQItnVan
	Qp0EigXsEyyZFI7ENYetJPZlYQiOG33o/m2PE2D9rq5wPRzm8tEKQ5VuGxFmOsrfrIGK6CjEMgkJV
	x7/puZ71N8nJM6HsSHEXU3UIzJZAyI7D8gTtsDwqGStB+Ye3yaRgBzNSELmngKrQEQ/Q1Vx0n/9g8
	3VzWp5ewOzRkSELSOFy48d/PluHVKfCYp7modEkSSQqOkTUAtIaUs4+uesGiP0iMvtX9oqyI8LhHJ
	m7VF3ZNGwDbvhQydmSINj70+1HX84gzRsyT7jcnBpm7EndhLLZ+RS0A6z7XwpBsOCPJtsgBNM2ozo
	zJ9EsnRPA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kJKE2-0000jJ-PH; Fri, 18 Sep 2020 17:31:10 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJKDy-0000iU-G3; Fri, 18 Sep 2020 17:31:09 +0000
Received: by mail-il1-f194.google.com with SMTP id x18so4538473ila.7;
 Fri, 18 Sep 2020 10:31:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/dnvjIk6kRdN9RcFTnO38ZI6MysMJcAHfnKv4EKjfks=;
 b=rGrylO7czFjHBn4dR/KCuFptoJfLtj2iiNhzgWl12/OwIhOl9XTdJrFnxKIdFNdaOB
 vkd7TBoL4TEAU6/MtMeVd+iscmbDNR+3DZVL46H6FVCzqFder/ogYyVrLOp92BO/Kclu
 Ec8pVyvk2bGuLAMKqIWDe2ID5sBy5/Zf6UKFkpxrCeJHfNRT9Xcs4VjqiZSS+Yj5d1Ap
 PhQNpCLPQ8hVnENoN4EIEUhSpOg+V3HtWftnZqFdnR6pY989xU0W/CGmhlsbPzBsLkZ7
 j+K+Yfvzd5ixHKROsg9pzWNIS3RpZHrh7e8ej84WzZLQquuArKdVlWd7JLb9kL74FnB3
 Gu8g==
X-Gm-Message-State: AOAM530U/08sfDbtq9vJFQq45C2TrsVnpbT7wJvoex4IWxTUIiwEUUtE
 Z+JVTBccQCdRiPB89TCWdA==
X-Google-Smtp-Source: ABdhPJxkH6B9G6X/6iPqMXB9irFe8HwwInqRi2YG3MjO/aEkkg5cZ4OtYHLY9D9pcWcU5yptwEZF+A==
X-Received: by 2002:a92:c146:: with SMTP id b6mr21903884ilh.244.1600450264414; 
 Fri, 18 Sep 2020 10:31:04 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id s1sm1941570iln.22.2020.09.18.10.31.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Sep 2020 10:31:03 -0700 (PDT)
Received: (nullmailer pid 3830090 invoked by uid 1000);
 Fri, 18 Sep 2020 17:31:01 -0000
Date: Fri, 18 Sep 2020 11:31:01 -0600
From: Rob Herring <robh@kernel.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH v2] dt-bindings: power: rockchip: Convert to json-schema
Message-ID: <20200918173101.GA3829772@bogus>
References: <20200918093229.252766-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200918093229.252766-1-enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200918_133106_557895_B8E758C0 
X-CRM114-Status: GOOD (  15.73  )
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 dianders@chromium.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org, Caesar Wang <wxt@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 18 Sep 2020 11:32:29 +0200, Enric Balletbo i Serra wrote:
> Convert the soc/rockchip/power_domain.txt binding document to json-schema
> and move to the power bindings directory.
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> 
> Changes in v2:
> - Fixed a warning that says that 'syscon' should not be used alone.
> - Use patternProperties to define a new level for power-domains.
> - Add const values for power-domain-cells, address-cells, etc.
> 
>  .../power/rockchip,power-controller.yaml      | 207 ++++++++++++++++++
>  .../bindings/soc/rockchip/power_domain.txt    | 136 ------------
>  2 files changed, 207 insertions(+), 136 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
> 


My bot found errors running 'make dt_binding_check' on your patch:

Traceback (most recent call last):
  File "/usr/local/bin/dt-extract-example", line 45, in <module>
    binding = yaml.load(open(args.yamlfile, encoding='utf-8').read())
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", line 343, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 111, in get_single_data
    node = self.composer.get_single_node()
  File "_ruamel_yaml.pyx", line 706, in _ruamel_yaml.CParser.get_single_node
  File "_ruamel_yaml.pyx", line 724, in _ruamel_yaml.CParser._compose_document
  File "_ruamel_yaml.pyx", line 775, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 889, in _ruamel_yaml.CParser._compose_mapping_node
  File "_ruamel_yaml.pyx", line 773, in _ruamel_yaml.CParser._compose_node
  File "_ruamel_yaml.pyx", line 848, in _ruamel_yaml.CParser._compose_sequence_node
  File "_ruamel_yaml.pyx", line 904, in _ruamel_yaml.CParser._parse_next_event
ruamel.yaml.scanner.ScannerError: while scanning a block scalar
  in "<unicode string>", line 106, column 5
found a tab character where an indentation space is expected
  in "<unicode string>", line 114, column 1
make[1]: *** [Documentation/devicetree/bindings/Makefile:18: Documentation/devicetree/bindings/power/rockchip,power-controller.example.dts] Error 1
make[1]: *** Deleting file 'Documentation/devicetree/bindings/power/rockchip,power-controller.example.dts'
make[1]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/power/rockchip,power-controller.yaml:  while scanning a block scalar
  in "<unicode string>", line 106, column 5
found a tab character where an indentation space is expected
  in "<unicode string>", line 114, column 1
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml: ignoring, error parsing file
warning: no schema found in file: ./Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
make: *** [Makefile:1366: dt_binding_check] Error 2


See https://patchwork.ozlabs.org/patch/1366725

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
