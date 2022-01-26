Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 882D2C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 22:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=77zIs8rbkNenwi+nH9wIrcRxhvmhR43nawy57rhMS3g=; b=YLj5QllQkss2fZ
	p4c2FvAVYdD9rGcTZarNilCIifDNR7/hhtfAEe9oGHnzfmsTFnJhAand6M/+peYV0rKL4hzxjgZ0t
	04WFD0bw9A1kkTdRyjWQGq2PNNdtp4mXRKFZnI7qWK2GUKp9gztBX6BwPwBzXK8wbS9HwSBzgGJn4
	JYQb+Nrv9L2Z9Vkbu+tnitcP/z9GQUT6BTRFt01H+ioianl++4ipNIMLj4VSFyWz8fYSiGf0iwh3j
	4y03XeJrVUjBTr7QU6WPufWsi7pYnbH2L2O4VpB5OGQZ+6ep4Mz4dIvkqbamJXCYd/C8/+Ky3TtqP
	qgKc5rF9GioaPI84OXGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCqVp-00Ddmd-1O; Wed, 26 Jan 2022 22:11:33 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCqVI-00Dde6-Qa; Wed, 26 Jan 2022 22:11:02 +0000
Received: by mail-oi1-f176.google.com with SMTP id s9so2287329oib.11;
 Wed, 26 Jan 2022 14:11:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=u1H8zRHkM4TlSBs3WPMSl8FmOXRRvPSkQ8QlzX+j8Ug=;
 b=MDnqpv2trYqmixttAP2TQlo4a3mM6rXlViKCtM5x6vkVc9FS7xVqZwKwZdCBBHoAHD
 PyGQeU9Al4mKzvgY+tXqtFej9jUsjAQRS4T3Hl6TApuFefNMswROsUsATkGiDsbWRjxT
 apNxias02n7tQKcs15J1kxKRzpxPRNxhOCRmDgyHGk2wfFFpA4D8ZiKAT61rkdcKVO88
 95Lom3xdi/noVTYezJRxJm2mtEnqnyvNzW8WXM5RHkvs26VFgTdzxA/SmA2Dc/lMreRL
 YK5DnRFUjbJL6WR2HnEk7igvOahf2mAKx15/vYYFEoVlpnk/tiUPHJP/mqsebf3vopm9
 LlGA==
X-Gm-Message-State: AOAM530GlOk+DocMekGpZ7WjujMAQMSEYiXdJwy6R/3ssfxf0wlvbqfK
 sINKPuJhE2Btr3w60LFABaX8g5D1vw==
X-Google-Smtp-Source: ABdhPJzRlKVnlXBnp9LIHNhl9lMVOLOxenluy535Ix5S6IlmC8DC2FgmzzOLihP7JVQPOqttxL/Ngg==
X-Received: by 2002:a05:6808:21a4:: with SMTP id
 be36mr5290595oib.85.1643235059959; 
 Wed, 26 Jan 2022 14:10:59 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id i13sm9005588otl.46.2022.01.26.14.10.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Jan 2022 14:10:59 -0800 (PST)
Received: (nullmailer pid 1535096 invoked by uid 1000);
 Wed, 26 Jan 2022 22:10:52 -0000
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, kernel@pengutronix.de,
 dri-devel@lists.freedesktop.org, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
In-Reply-To: <20220126145549.617165-18-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-18-s.hauer@pengutronix.de>
Subject: Re: [PATCH 17/27] dt-bindings: display: rockchip: Add binding for VOP2
Date: Wed, 26 Jan 2022 16:10:52 -0600
Message-Id: <1643235052.852354.1535095.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_141100_881879_254F3F16 
X-CRM114-Status: GOOD (  14.61  )
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

On Wed, 26 Jan 2022 15:55:39 +0100, Sascha Hauer wrote:
> The VOP2 is found on newer Rockchip SoCs like the rk3568 or the rk3566.
> The binding differs slightly from the existing VOP binding, so add a new
> binding file for it.
> 
> Changes since v3:
> - drop redundant _vop suffix from clock names
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../display/rockchip/rockchip-vop2.yaml       | 146 ++++++++++++++++++
>  1 file changed, 146 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.example.dt.yaml: vop@fe040000: clock-names:0: 'aclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.example.dt.yaml: vop@fe040000: clock-names:1: 'hclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1584511

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
