Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F139C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 14:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+oW0T9cgV/1dt7GVplOPoqLYD+Bbvd3oz4POUKuAf5M=; b=H6CCi6KaPZnteY
	7UAHFfbNQr7sSAfh5pijNoD8cKOmmfL8DxaA3gCwVoK5AN6rqU7538QzWPfSxejWEXBK5/DWWs8oh
	av45C6AtXdSkoFM9njmVtdaS4Nqb9aJxRBrMtqoEt73GrihlpEaVHdmXGx5xYv7b9cgLkSeFiANDg
	g7nZCYhBD0DGovsT4yn299bCHyNXfAsPtuQYlmM1QLc1pHEyCNsWZ/cCoBowqdtG6AoUn3N9NViJi
	5bBfgf+J3mzUNdoDHhxiS59FOdhlgl56nQBPSy6qK7JEGAiKrzG+s24cqqwb0kJOVUg9B4YWRZ98Z
	EmvAY+tl19m8JlXQ3QeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxrJI-0060i6-6Y; Thu, 16 Dec 2021 14:00:40 +0000
Received: from mail-oo1-f54.google.com ([209.85.161.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxrC2-005y63-2G; Thu, 16 Dec 2021 13:53:11 +0000
Received: by mail-oo1-f54.google.com with SMTP id
 w5-20020a4a2745000000b002c2649b8d5fso6915288oow.10; 
 Thu, 16 Dec 2021 05:53:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=B88CYCFjwbaWOV3vKfQzOmcTf0Xm8Ner9hfCDTZa+HE=;
 b=QJp6E2Q8222wFIsNracHX4cTtNZD1Uw5NHY2YlIjjwa8gzEJkdE3QiExCM/VbQs1ix
 jKr5F60L3F+CPrX6hPf0eZxIY83etESV0CPvMRSY8YJUxsfd2XlpeS4qWHcNO9WRdRH+
 6MxwzmxIicJzuICyJUukuNP4C46Gu3eJnT5RMBFM1TuUjmdrJz2mP9Lw6n1KJhS/bhte
 jaNzSOkd8TUtBMt7/7DOoZOjyGzcIVmXlMi89bTjZI5VoLbx9ZE4qFDylFnyqnJDj9vj
 cGpKmyIiOUgiww9+QoE1U3ny9vMt1zXu8PiWFi2IrcdM0uJ/zJiFhdaMHCTWbSeSJoI2
 EpaA==
X-Gm-Message-State: AOAM531LYRzVib48+/ZvS7CsmasU+stgb532W1+iJtfL68igGKafjDRI
 wJeGrlvqV7FCmrvh/g9+aw==
X-Google-Smtp-Source: ABdhPJwrH3DI4/PnTg5MUfd+8UPsCHqVPUfNp95zLksVPxxuQvXT1eDHD1ytbHjBZzQhv38LlZDOiQ==
X-Received: by 2002:a4a:5a43:: with SMTP id v64mr11106831ooa.26.1639662789088; 
 Thu, 16 Dec 2021 05:53:09 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id p10sm1034054otp.53.2021.12.16.05.53.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 05:53:08 -0800 (PST)
Received: (nullmailer pid 4004887 invoked by uid 1000);
 Thu, 16 Dec 2021 13:53:03 -0000
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-rockchip@lists.infradead.org, Shawn Guo <shawnguo@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, benjamin.gaignard@collabora.com,
 Pengutronix Kernel Team <kernel@pengutronix.de>, aford@beaconembedded.com,
 Lucas Stach <l.stach@pengutronix.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 Fabio Estevam <festevam@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, abel.vesa@nxp.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>, hverkuil-cisco@xs4all.nl
In-Reply-To: <20211216111256.2362683-5-aford173@gmail.com>
References: <20211216111256.2362683-1-aford173@gmail.com>
 <20211216111256.2362683-5-aford173@gmail.com>
Subject: Re: [PATCH V2 04/10] dt-bindings: media: nxp,
 imx8mq-vpu: Split G1 and G2 nodes
Date: Thu, 16 Dec 2021 07:53:03 -0600
Message-Id: <1639662783.022719.4004886.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_055310_151334_4589A2B2 
X-CRM114-Status: GOOD (  12.06  )
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

On Thu, 16 Dec 2021 05:12:49 -0600, Adam Ford wrote:
> The G1 and G2 are separate decoder blocks that are enabled by the
> vpu-blk-ctrl power-domain controller, which now has a proper driver.
> Update the bindings to support separate nodes for the G1 and G2
> decoders with vpu-blk-ctrl power-domain support.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml:18:6: [warning] wrong indentation: expected 4 but found 5 (indentation)
./Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml:19:7: [warning] wrong indentation: expected 7 but found 6 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1569050

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
