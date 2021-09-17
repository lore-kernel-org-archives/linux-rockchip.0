Return-Path: <SRS0=N4HT=OH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78882C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 00:49:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 25683611C8
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 00:49:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 25683611C8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3NmCGFK0RT4Jfrr7onicWjqPurmmcxByZRNxOujOhM=; b=Yx6wbxO1wS2JZo
	PsVGpjZkM6PEeW/MGuH3b0DBz0O4Kyaj05Wu/8JimBdwK2S4tz3IqogcOLdCzeKAZzQnUmc9xm2ac
	CMCtsJYw7wLM9Wtur30SSFLtmHctnHlckfYP/3+3smYEeUdmGvJ0KShonTPMHid1K3epl2nKkxBkL
	+pjklVf09kT1AL7QuRKy6gOjXRRWGLAPZavYclrUGcdGG80IHHJhb+AC2ePRvdNkRoYQGYNHq1iuo
	YQgrNwi61jx+dSbARv2XOFvKpj/BEO4AmgfFm/HxidIgKU5hDITUTTP+VJV/G8dTeIV9/pCh3WpFp
	zf21IkZ9QRIjzT3Ye0/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mR24G-00Crac-Uk; Fri, 17 Sep 2021 00:49:28 +0000
Received: from mail-il1-f169.google.com ([209.85.166.169])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mR244-00CrYX-34
 for linux-rockchip@lists.infradead.org; Fri, 17 Sep 2021 00:49:17 +0000
Received: by mail-il1-f169.google.com with SMTP id i13so8502155ilm.4
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Sep 2021 17:49:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=k7gKpuMaJoydn9f/v4vT+vaFh5PNfinn7hZgJ+Eqzao=;
 b=HVKenf9p87AYffTHwpQYOtjWVPHAAWKIq05Upl2jk114tsG1oz/ks7+5j1eocPTicI
 /0E/f9zNSjwaEknCpf7AcwI2+xlbuvVqlHLKs3d+/q3ZSXFXkDsWtI/WPL0SVOPxe5vs
 SSi6Vf5TY8TauDev6FztCt8SiXEWEh7+4F2OicdtrJI4PPTSACoO0rPu3CBUIsOeq63C
 ly5ys9VV9h57oGGCY9lqC5QWI50bomg+3bYcY4A3Wconqql5X0vIJ/CBAo2ueJUjG9/b
 oH/XnN5HuDtvnm1R9AvY2JyBhb33Ysmc0PBcqvES0H0lPPjLzUeCjeGkj5nSaHzXcMOk
 08KA==
X-Gm-Message-State: AOAM531e1JchPwpUpJ3AEGAfmkrfMIxw4XICo1/RoVoWKNBZgbNSqsj6
 YTw7VKaDQLGsxNgreNgJVg==
X-Google-Smtp-Source: ABdhPJz1qM7Ulfa/Yv+R3w3hGuKWglaG8AkWYT38GJ1KEQkLdB/7UzdPHunJWNKAVgNkrrVuSCN/2Q==
X-Received: by 2002:a05:6e02:8a7:: with SMTP id
 a7mr6165839ilt.246.1631839753093; 
 Thu, 16 Sep 2021 17:49:13 -0700 (PDT)
Received: from robh.at.kernel.org (96-84-70-89-static.hfc.comcastbusiness.net.
 [96.84.70.89])
 by smtp.gmail.com with ESMTPSA id r18sm2521300ioa.13.2021.09.16.17.49.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 17:49:12 -0700 (PDT)
Received: (nullmailer pid 1484030 invoked by uid 1000);
 Fri, 17 Sep 2021 00:49:06 -0000
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: lee.jones@linaro.org, Chris Morgan <macromorgan@hotmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 zyw@rock-chips.com, zhangqing@rock-chips.com, heiko@sntech.de,
 robh+dt@kernel.org
In-Reply-To: <20210916201947.18237-1-macroalpha82@gmail.com>
References: <20210916201947.18237-1-macroalpha82@gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mfd: rk808: Convert bindings to yaml
Date: Thu, 16 Sep 2021 19:49:06 -0500
Message-Id: <1631839746.891478.1484029.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_174916_172663_88441656 
X-CRM114-Status: GOOD (  22.63  )
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

On Thu, 16 Sep 2021 15:19:47 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Convert the rk808 bindings into yaml format. Please note that currently
> there are a few errors that appear when performing a make dtbs_check.
> However, after looking at the errors it appears in most cases it occurs
> on device trees which are not following the current rk808.txt document
> today. For example for the rk808 there are multiple errors regarding
> vcc13-supply, vcc14-supply, and vddio-supply; however these supplies
> are not listed in the current driver or cared for in any way.
> 
> For the moment the rk817 is the only MFD that will support a battery.
> I believe the rk818 also supports a batter but I do not have one to
> test or write the code for. When it is supported we can split off
> the battery to its own document. Note that the battery is being added
> in a separate commit series.
> 
> Changes from V1:
> 
>  - Removed generic descriptions.
>  - Added maxItems to clock-output-names. Max items is 2 per the driver.
>  - Added unevaluatedProperties as false to regulators.
>  - Correct i2c node.
>  - Added note about the battery.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
>  .../bindings/mfd/rockchip,rk805.yaml          |  84 ++++
>  .../bindings/mfd/rockchip,rk808.yaml          | 253 ++++++++++
>  .../bindings/mfd/rockchip,rk809.yaml          |  98 ++++
>  .../bindings/mfd/rockchip,rk817.yaml          | 362 ++++++++++++++
>  .../bindings/mfd/rockchip,rk818.yaml          | 106 ++++
>  6 files changed, 903 insertions(+), 465 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/rockchip,rk808.example.dt.yaml: pmic@1b: 'vddio-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml

doc reference errors (make refcheckdocs):
Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt: Documentation/devicetree/bindings/mfd/rk808.txt

See https://patchwork.ozlabs.org/patch/1529027

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
