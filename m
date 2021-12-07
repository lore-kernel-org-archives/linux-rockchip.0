Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37476C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Dec 2021 15:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3u7D527eI8yq8Em3IFEvQ5V+9wMc7EKINK5GPogQM8=; b=dPrUXjDzv22mo6
	QdufAzxoeDwLxNj1JG7xmUGinjyV8x50VtebHoJ/Zg14WQ9P1kdjIT69dcix0E2iqfw3DLt5GM3TP
	EYlK94aoUJlVC+DDtqZkeHpPu+H3j26fogQomiy/uGJvletzWJeYRXvHviJzr2WPtWZgafLvvHevJ
	6Jj4AQXi0BP4OxaR0Li8q1f4/uOq4OtbVURCN1Fzq/XEs0fiNVwzPzrIW3QVAlJei2pyYShRV9ezo
	qj6FfCnsKMzBfurKwqSlYE7UeqnT49K0TiYijTsCDw+1+PdzvuV/iCwfZiTb4X/g/wuJKeQFUbpcl
	OTiCTXGebORC7xFxINUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mucAN-0098gN-Us; Tue, 07 Dec 2021 15:14:04 +0000
Received: from mail-ot1-f53.google.com ([209.85.210.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mubv6-0093d7-1w; Tue, 07 Dec 2021 14:58:17 +0000
Received: by mail-ot1-f53.google.com with SMTP id
 x19-20020a9d7053000000b0055c8b39420bso18421971otj.1; 
 Tue, 07 Dec 2021 06:58:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=VgYpRv7FKDRFJkyswgOt8jfkEjY4KcUU5jFAaY5SUrw=;
 b=F7JxvBQfQtSOpjv+04RoHstMgVTsfAKy1ZUSYiL46TvwL2m/ydsWYFeb+Kp+sGp1+G
 wTu95uY9tSMtQK7U161FZCcQrtZZbhzkZeceY+waKkTfYo3PF0Xupd0o0s3IxzZhoLZE
 SO3F5uMZDvnh/3UmhCV50ZaNC+dWK2iyNNK8InMOR/LlwVCMIVJmTwwTSrN5D456bHht
 sjZqm6Vs5UKwSy9eRbdMhLMHiOJOEKWBn0HZMvB1jDktAN/HzHQxy5zf8LefkDJImlH8
 EleKl5Z1zh+KbJ/o8segJHml6TqVpmsMApB8kYM9ofdqNGNxULL6n8KKcUiqxMrGj71f
 qOEw==
X-Gm-Message-State: AOAM531fLKI8J+GAygfUrjj9kB3NyPPB+eacm99kAhSzHNb7LdmrV2qc
 hM7TMG+gf/b/M/v/XaBE/Q==
X-Google-Smtp-Source: ABdhPJxI+GdBHmtxK/QcTh3tcIy1ZwNfkubLUnPPWtqNhLRymXjSM4MMyk6de2SMgFGNU+/WHw79vA==
X-Received: by 2002:a9d:4f0b:: with SMTP id d11mr35759185otl.227.1638889092708; 
 Tue, 07 Dec 2021 06:58:12 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id m2sm2815394oop.12.2021.12.07.06.58.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 06:58:11 -0800 (PST)
Received: (nullmailer pid 5797 invoked by uid 1000);
 Tue, 07 Dec 2021 14:58:10 -0000
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-media@vger.kernel.org, Lucas Stach <l.stach@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, devicetree@vger.kernel.org,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, benjamin.gaignard@collabora.com,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, hverkuil@xs4all.nl,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org,
 cphealy@gmail.com
In-Reply-To: <20211207015446.1250854-4-aford173@gmail.com>
References: <20211207015446.1250854-1-aford173@gmail.com>
 <20211207015446.1250854-4-aford173@gmail.com>
Subject: Re: [RFC V2 3/6] dt-bindings: media: nxp,
 imx8mq-vpu: Update the bindings for G2 support
Date: Tue, 07 Dec 2021 08:58:10 -0600
Message-Id: <1638889090.684232.5796.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_065816_152788_6B2F0407 
X-CRM114-Status: GOOD (  16.02  )
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

On Mon, 06 Dec 2021 19:54:42 -0600, Adam Ford wrote:
> From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> 
> Introducing the G2 hevc video decoder requires modifications of the bindings to allow
> one node per VPU.
> 
> VPUs share one hardware control block which is provided as a phandle on
> a syscon.
> Each node has now one reg and one interrupt.
> Add a compatible for G2 hardware block: nxp,imx8mq-vpu-g2.
> 
> To be compatible with older DT the driver is still capable to use the 'ctrl'
> reg-name even if it is deprecated now.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml: properties:clock-names:oneOf: [{'const': 'g1'}, {'const': 'g2'}] should not be valid under {'items': {'propertyNames': {'const': 'const'}, 'required': ['const']}}
	hint: Use 'enum' rather than 'oneOf' + 'const' entries
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml: properties:interrupt-names:oneOf: [{'const': 'g1'}, {'const': 'g2'}] should not be valid under {'items': {'propertyNames': {'const': 'const'}, 'required': ['const']}}
	hint: Use 'enum' rather than 'oneOf' + 'const' entries
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml: properties:compatible:oneOf: [{'const': 'nxp,imx8mq-vpu-g1'}, {'const': 'nxp,imx8mq-vpu-g2'}] should not be valid under {'items': {'propertyNames': {'const': 'const'}, 'required': ['const']}}
	hint: Use 'enum' rather than 'oneOf' + 'const' entries
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml: ignoring, error in schema: properties: interrupt-names: oneOf
warning: no schema found in file: ./Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
Error: Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.example.dts:26.27-31 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:373: Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1413: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1564457

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
