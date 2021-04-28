Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 793D6C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 22:15:43 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BF49661412
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 22:15:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BF49661412
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:References:In-Reply-To:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ObP7fftDrp0anqYjowUndhMJdGoLxX/nNw8BuUiB1ZI=; b=OlyVKVfkKX8A94urSNHDeoHeBS
	L1ry9ET6IxUl917DKxN33oXLGbBVrr/oewXKDlOVdNxGUnAi7sprv/Nv3Z/LcKvzg2zEck2CHKZey
	vGlzL+/4fUS2hikFqGN6t3E+ulVArKMIMuvNSYHCaOYwqSg1MB4ikoVSdHP968Hw/uuoNofPstg4w
	mfV4fdN60zwekZimGHjlknkV2vkl1luLrT/FHGZCFAwbaOyWsCC2y11lCFHbAsSYdtE5U4wH4P8lE
	UgU7lXIhljXDXXbArFIUbUfG98m8hoTDR8CKMOLQz8wFIFabsephrfd9jW4DtsfEiz3JLjgmzoL4N
	ccNV+cug==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbsT2-004MOD-Nw; Wed, 28 Apr 2021 22:15:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbsSn-004MND-7j; Wed, 28 Apr 2021 22:15:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:References:
 In-Reply-To:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=gYgk6AJrAYzNx39r/XzjJt1ApfnhLWc9A/uBhzNpze4=; b=OI5tQj1JuvX9Vl8ras1zi5BPG7
 tyRgnWzirfhBpokAdD1QAeVzkWv9kUT1vqCqEgDfTxPiNF63AFXr65XDz8lMZ2uccHsc+x4jBOA/f
 yxGKmLLyD7f03ci/TjeH40B0+enHeVFkRUAy0zgfuDgVB3/Z5nOe0YHm8T4S9rFQT9sahyws3lLKq
 2+4QepN7mvvJca6HqgucaPSqwhYH+GRdBt5Tuuja+nFYYSIT8sHJM6OjcfeNhFdxFQK7Njdw9c2+B
 FBfZdI0gwxfjYEUQb/cb/c6pmE1uJwi5BmoXrCo8FZHvo41U6UiO43bR+ll0E/JnoYt3JymPZYYZi
 6/rcF7og==;
Received: from mail-oo1-f51.google.com ([209.85.161.51])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbsSk-000DhB-8Y; Wed, 28 Apr 2021 22:15:19 +0000
Received: by mail-oo1-f51.google.com with SMTP id
 p12-20020a4a2f0c0000b02901ecdbb16887so7318524oop.5; 
 Wed, 28 Apr 2021 15:15:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=gYgk6AJrAYzNx39r/XzjJt1ApfnhLWc9A/uBhzNpze4=;
 b=DAy5Pv9eK/bSV3D14HgCf9fi5hxsxk26wrhx5vdnD2lBV/5u3qQCDktD9jWIZLxSKD
 C+/TCoPD6eCWSu3/I7hDeKB0KqrU/U4sU4u/q3RLUaYkWZ4I38XGM7kL80uMXCE4v6+z
 c+vXTqtjK94b/TtoVUyjtU7hh4jXp4LjuTum8mJI0jvuheG/mplfdhm9iSPoVamHUixv
 lXCKIcqbh7KHUW6UFchbtLPoaZB2lUXFWqg52uYhMmQvL+6lTUDA1w9rY+Li/8SklDtg
 sfm1CKo4L6qzJUXd5AG8lWGsj6cKgsEplBzZZNKPq8Bro9aend0KF7I2sCkjD6pKLy5k
 3tiw==
X-Gm-Message-State: AOAM532WKGpU6y8M7ea1yQGw3FYcuA5LqWqUKsYBjWcmXfuPdr8PXUBm
 8+efG78TSqROLQFpAF15gg==
X-Google-Smtp-Source: ABdhPJxZArFwbVeIF8l00TfdHEC2VcZYpSALlJgxSt21DhqXruJlYIhnGLdMAytU4YnTNvOcFrdcCw==
X-Received: by 2002:a05:6820:381:: with SMTP id
 r1mr24594188ooj.79.1619648115937; 
 Wed, 28 Apr 2021 15:15:15 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w2sm284666oov.23.2021.04.28.15.15.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Apr 2021 15:15:15 -0700 (PDT)
Received: (nullmailer pid 4061033 invoked by uid 1000);
 Wed, 28 Apr 2021 22:15:09 -0000
From: Rob Herring <robh@kernel.org>
To: cl@rock-chips.com
Cc: david.wu@rock-chips.com, jagan@amarulasolutions.com,
 linux-kernel@vger.kernel.org, jay.xu@rock-chips.com, jamie@jamieiles.com,
 ulf.hansson@linaro.org, jensenhuang@friendlyarm.com,
 linux-serial@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-watchdog@vger.kernel.org, gregkh@linuxfoundation.org,
 huangtao@rock-chips.com, mail@david-bauer.net, linux@roeck-us.net,
 devicetree@vger.kernel.org, heiko@sntech.de, cnsztl@gmail.com,
 wim@linux-watchdog.org, michael@amarulasolutions.com, zhangqing@rock-chips.com,
 maz@kernel.org, robh+dt@kernel.org, uwe@kleine-koenig.org,
 shawn.lin@rock-chips.com, linux-mmc@vger.kernel.org, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org, wens@csie.org,
 linux-rockchip@lists.infradead.org
In-Reply-To: <20210428134938.22383-1-cl@rock-chips.com>
References: <20210428134759.22076-1-cl@rock-chips.com>
 <20210428134938.22383-1-cl@rock-chips.com>
Subject: Re: [PATCH v3 07/10] dt-bindings: soc: rockchip: Convert grf.txt to
 YAML
Date: Wed, 28 Apr 2021 17:15:09 -0500
Message-Id: <1619648109.786418.4061032.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_151518_322415_074248D8 
X-CRM114-Status: GOOD (  11.16  )
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

On Wed, 28 Apr 2021 21:49:38 +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> Current dts files with 'grf' nodes are manually verified. In order to
> automate this process grf.txt has to be converted to YAML.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  .../devicetree/bindings/soc/rockchip/grf.txt  | 61 -------------------
>  .../devicetree/bindings/soc/rockchip/grf.yaml | 61 +++++++++++++++++++
>  2 files changed, 61 insertions(+), 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/rockchip/grf.example.dt.yaml: example-0: syscon@ff320000:reg:0: [0, 4281466880, 0, 4096] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/rockchip/grf.example.dt.yaml: example-0: syscon@ff770000:reg:0: [0, 4285988864, 0, 65536] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/rockchip/grf.example.dt.yaml: syscon@ff320000: compatible: 'oneOf' conditional failed, one must be fixed:
	['rockchip,rk3399-pmugrf', 'syscon'] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/rockchip/grf.example.dt.yaml: syscon@ff770000: compatible: 'oneOf' conditional failed, one must be fixed:
	['rockchip,rk3399-grf', 'syscon'] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/rockchip/grf.yaml

See https://patchwork.ozlabs.org/patch/1471171

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
