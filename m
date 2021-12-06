Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3ED5C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Dec 2021 14:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPvnnOH3oXM0A4cuVVtuZVade3w+/M+rEO/FRp6SBNM=; b=QH0L9v1XkVl40b
	4TjN355FEgfL4UaAXjRFBJYlarQ4qAgBUTZCCWvJ1Q0a3ihHhjLz8w6BMRrZ2MXbMXD7/XSYXZ5J4
	K/2J2wKDCM0yV7Z9BcLoNNNdhlR2zl/+RZ9jFMdZt6ZiYxoQT5qlXu/Zly64L53rv7o6b4bf/qcjx
	ESGL2FtFfN5QK7iaFivhAju+XEoBw+E6N4DxYUPiqUAm8Cwwn/MLxz9U4M2+WSAx7tjuO0gQJGv+G
	Mf65MxgbuuR+KBq4AjdVBpL8I5Efnf+5Kcl7jM37m2OXssahGJ6MNrw73oVmQBOCFvTM/DnMid0Gm
	xwrdRKXOjVy/q4e73dtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muEvp-004BiI-5r; Mon, 06 Dec 2021 14:25:29 +0000
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muEvm-004Bgl-H6; Mon, 06 Dec 2021 14:25:27 +0000
Received: by mail-oi1-f180.google.com with SMTP id s139so21661149oie.13;
 Mon, 06 Dec 2021 06:25:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=1UM6mk2YqDOCPpxKmVW4hUay67A5ShMZFccLmrgtyws=;
 b=TkZpci+w37FyACn2YExOt+K/RpYZTm9ML6KKtWf773Qw55mLbEjg4BzqjMx2XdPh54
 psAbznIjeNO6zOIiRBjGFb2QOmW9OwVKt+nFJw7Km0fHpIQC05DxbxJyOIUSlpWRIl6c
 QH6wqkW8Mq4d/IToYumjEhKJBGd80tLAZkGdwkTxrUDYP4NzMdZ57qYAozYpA5VvtOl7
 srdiDrpO2vtY1QV+voDxiZL2ff455PYnJSbEj3lE+T/oBhEInwvyr3Stpkknlh3q9H6p
 7PqbZJSb8M6gsURRE7kPn2jm3lFTtdogNNg4D1psSJ5AH3EmlEkwrh6wt94n766h+wwN
 jJfQ==
X-Gm-Message-State: AOAM533pBxjGo7EOAEZegjVAajue1MnB+UGndclXPGb8iuUtDFkcALIh
 3hNYNwGfuM80qIYDJ3rV3g==
X-Google-Smtp-Source: ABdhPJwHh7iLhlSQhwyOIjqD6otmwOl55D4ggjQJihayjKesYaNOleTLyfqMib/TY7E6KZA+XSLjEA==
X-Received: by 2002:aca:1c02:: with SMTP id c2mr24930352oic.53.1638800724490; 
 Mon, 06 Dec 2021 06:25:24 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id x12sm2181654oom.44.2021.12.06.06.25.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Dec 2021 06:25:23 -0800 (PST)
Received: (nullmailer pid 1976291 invoked by uid 1000);
 Mon, 06 Dec 2021 14:25:22 -0000
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 benjamin.gaignard@collabora.com, cphealy@gmail.com,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-staging@lists.linux.dev,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 nicolas@ndufresne.ca, Fabio Estevam <festevam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Lucas Stach <l.stach@pengutronix.de>
In-Reply-To: <20211205181618.1041699-3-aford173@gmail.com>
References: <20211205181618.1041699-1-aford173@gmail.com>
 <20211205181618.1041699-3-aford173@gmail.com>
Subject: Re: [RFC 2/5] dt-bindings: soc: add binding for i.MX8MQ VPU blk-ctrl
Date: Mon, 06 Dec 2021 08:25:22 -0600
Message-Id: <1638800722.475991.1976290.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_062526_590608_74FEA0D1 
X-CRM114-Status: GOOD (  11.60  )
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

On Sun, 05 Dec 2021 12:16:15 -0600, Adam Ford wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> This adds the DT binding for the i.MX8MQ VPU blk-ctrl.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
>  .../soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml      | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.example.dt.yaml: blk-ctrl@38320000: compatible: ['fsl,imx8mq-vpu-blk-ctrl', 'syscon'] is too long
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.example.dt.yaml: blk-ctrl@38320000: compatible: Additional items are not allowed ('syscon' was unexpected)
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1563759

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
