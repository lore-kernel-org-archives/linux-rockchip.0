Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AE78C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Apr 2022 13:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJIY8z51ZBjZSiSc9uqta4/QWf9bFR7xfxXcl1ahFW8=; b=f3sIek1Hpg32Xk
	07D9hjxGmpYSF4dunNszYOTDuMzvLJSwHkB/7hzXlQ9DtrySllqiGR/j/iEF+syIkbwQ6ldMVw83Z
	qK3RmxwWB7sMUhLG2CQCiWMAJLS93ZZR5PX/fKSJqmBL5E1EhzicBIzVEbCy6AgzS9Msm8SgKKJCN
	vHbZf8j498qT1XhN81n8VfgAUPAWE22j9GSxds8RghKqR/sE7iS1O3FOxAR9otxl7pU4Shdq7DjYC
	DHGw9nZBUvldhErfeGTNnHQdm5p4i6P2g1zn83eCLJfPvoynN7SHyVY3mXS+KwCccI5eBTzF7vFEb
	PcsZChbAEhoXwI0T1+6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nezWU-005nCf-Jg; Thu, 14 Apr 2022 13:28:34 +0000
Received: from mail-oa1-f54.google.com ([209.85.160.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nezWF-005n1N-8D; Thu, 14 Apr 2022 13:28:21 +0000
Received: by mail-oa1-f54.google.com with SMTP id
 586e51a60fabf-dacc470e03so5241284fac.5; 
 Thu, 14 Apr 2022 06:28:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=1uOhWs8cm16131L6dfi8BY/Hr1kwqioEhMv1kPjh21A=;
 b=FAv/xakz9Le4qyHDrDaEredda+8S2Z1wkl8S4iMScp9ynJ+vGnO1AXFFfqDqgTbrNg
 WPfKHT3jJL7CoPeSKNZp0Is2BgK/xBdBIfDw3JTpH5kKKk2BoQWo5kft0MCPDwfP9Mjf
 OS45SVtstSEOxgIp+tdJ7xGwHhlRiJk35yBucvQJaRif9LAM2ZSqAgSr8ijTJaD8dyrz
 XYY1e2Q3hv2rqTBXnNy7CzQhqti9BBmJaf1ZgaFvpHMnz5/xxQTnWCAuVJXhmUNi6/53
 PpScQNqKbP2NBog28dyuUsdlsXNHSBcjDauj7BwYMhAnXMak4hJjQi7FsfYvgSFAAF/k
 PfHA==
X-Gm-Message-State: AOAM532G2NCpINJljCSw+uepRQH81ThxpUZ/6/PYzeJPCrWPl9/MRRmZ
 1bKCQAEEP9fzS8HA8lcyZju6CmStSw==
X-Google-Smtp-Source: ABdhPJyH1P7seZTuHtknt0P9RpLaIUL8KvuTzAmz12RLMFPKbN6I+QpfZtLgjNxlPTOvprxh63GYuQ==
X-Received: by 2002:a05:6870:d0ce:b0:de:79e2:7ec7 with SMTP id
 k14-20020a056870d0ce00b000de79e27ec7mr1224269oaa.245.1649942895544; 
 Thu, 14 Apr 2022 06:28:15 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 o8-20020a05680803c800b00321034c99a6sm8965oie.3.2022.04.14.06.28.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Apr 2022 06:28:15 -0700 (PDT)
Received: (nullmailer pid 1863786 invoked by uid 1000);
 Thu, 14 Apr 2022 13:28:14 -0000
From: Rob Herring <robh@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20220413190713.1427956-25-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
 <20220413190713.1427956-25-clabbe@baylibre.com>
Subject: Re: [PATCH v5 24/33] dt-bindings: crypto: convert rockchip-crypto to
 YAML
Date: Thu, 14 Apr 2022 08:28:14 -0500
Message-Id: <1649942894.398402.1863785.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_062819_334714_94E0A468 
X-CRM114-Status: GOOD (  10.64  )
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

On Wed, 13 Apr 2022 19:07:04 +0000, Corentin Labbe wrote:
> Convert rockchip-crypto to YAML.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../crypto/rockchip,rk3288-crypto.yaml        | 66 +++++++++++++++++++
>  .../bindings/crypto/rockchip-crypto.txt       | 28 --------
>  2 files changed, 66 insertions(+), 28 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
>  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml:30:7: [error] duplication of key "const" in mapping (key-duplicates)
./Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml:31:7: [error] duplication of key "const" in mapping (key-duplicates)
./Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml:32:7: [error] duplication of key "const" in mapping (key-duplicates)

dtschema/dtc warnings/errors:
make[1]: *** Deleting file 'Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.example.dts'
Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml: found duplicate key "const" with value "hclk" (original value: "aclk")
make[1]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
Traceback (most recent call last):
  File "/usr/local/bin/dt-doc-validate", line 25, in check_doc
    testtree = dtschema.load(filename, line_number=line_number)
  File "/usr/local/lib/python3.8/dist-packages/dtschema/lib.py", line 912, in load
    return yaml.load(f.read())
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/main.py", line 434, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 121, in get_single_data
    return self.construct_document(node)
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 131, in construct_document
    for _dummy in generator:
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 674, in construct_yaml_map
    value = self.construct_mapping(node)
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 445, in construct_mapping
    return BaseConstructor.construct_mapping(self, node, deep=deep)
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 263, in construct_mapping
    if self.check_mapping_key(node, key_node, mapping, key, value):
  File "/usr/local/lib/python3.8/dist-packages/ruamel/yaml/constructor.py", line 294, in check_mapping_key
    raise DuplicateKeyError(*args)
ruamel.yaml.constructor.DuplicateKeyError: while constructing a mapping
  in "<unicode string>", line 29, column 7
found duplicate key "const" with value "hclk" (original value: "aclk")
  in "<unicode string>", line 30, column 7

To suppress this check see:
    http://yaml.readthedocs.io/en/latest/api.html#duplicate-keys


During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/local/bin/dt-doc-validate", line 74, in <module>
    ret = check_doc(f)
  File "/usr/local/bin/dt-doc-validate", line 30, in check_doc
    print(filename + ":", exc.path[-1], exc.message, file=sys.stderr)
AttributeError: 'DuplicateKeyError' object has no attribute 'path'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml: ignoring, error parsing file
make: *** [Makefile:1401: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

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
