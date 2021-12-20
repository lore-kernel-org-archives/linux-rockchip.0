Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4744C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 14:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgX8RnCrl8RpWelyZO47GoELKtkXDX338HKIh8hPEEA=; b=dwbukbkE6fgUFq
	LIs+L7q8B8w39vHi/AX23zwHLEJAsJ/ljF7VkCMj1leJ+ipkDl0zDTwpm8U5FYHT8Fs9gOFT5ELDc
	xS9NQDtT3+5Jw4popou7xq5RX6iugihibg67nOvbTD+ontwcRlh31HeDMEl5+rhopALBovTfKuLAK
	4bwSRuqw4EtIRjt+kZCH+BucfSjXEeLh/OL3PemSZAHeFvftUMy8emCfojOg1KMooqC1LFFHRayzk
	428h5XZkD3PdoCBiqxIgqCrujuWVNOtIri21uOonxK7J+LOkbxSDzUPhgVushh439/08bI4CIwvSq
	BolJ1LSpFrtBhfizoZYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzJhg-002o8e-Lm; Mon, 20 Dec 2021 14:31:52 +0000
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzJdm-002mwS-CN; Mon, 20 Dec 2021 14:27:54 +0000
Received: by mail-oi1-f169.google.com with SMTP id t23so16021841oiw.3;
 Mon, 20 Dec 2021 06:27:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=0HF1/eEs4uNXgGgZaGJCwogk1k1+OMvFCdkf2UqV7d0=;
 b=7rkdSNZDIYWnw7SofMaU0qNTFuKFtWNEu7C/7rnR5iiR+SIl40aOQmRhM1oChkflw2
 9TlU/jg1umhLGKMZD8cudpzqStaIbl/ZD6d1KLztuQTDLLhz3/pyqW43wkWa07kizyR4
 d75/jnqjTHd4GuTrL7q/VE7hK5tqjfssBEbse7Gd/gQFQPa4Ub069Qf8KMePuRY2uPQW
 3AEkoqzhkad5j1ZRMSwQmvZ5TtELdSsEQocdAny8GKFbsZcEC1sstTFAPp5bTT5orj3S
 +70PffxQQiX5ppb/pgd6VPNab4oQsysDMrZeq9R3pw5B5iwCbXwO1hfWD6p2eqOtC5AX
 gQKQ==
X-Gm-Message-State: AOAM533LAqIBcLf8cDIFmpA5fx/xTsEJ21aHixMAWxhTD6FfuXNLyxoB
 jWthUVX00UxlogFkHhPBhQ==
X-Google-Smtp-Source: ABdhPJwPZtPxdqBpHNVXFuZ1adLYUpT5JTnct7AZ2huqm1Mfpvpf7plLuN0/gFVgnqB2QKMqArVi4Q==
X-Received: by 2002:a54:4019:: with SMTP id x25mr18152692oie.116.1640010469050; 
 Mon, 20 Dec 2021 06:27:49 -0800 (PST)
Received: from robh.at.kernel.org ([12.252.7.226])
 by smtp.gmail.com with ESMTPSA id z12sm3072301oor.45.2021.12.20.06.27.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Dec 2021 06:27:48 -0800 (PST)
Received: (nullmailer pid 3388822 invoked by uid 1000);
 Mon, 20 Dec 2021 14:27:43 -0000
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, kernel@pengutronix.de
In-Reply-To: <20211220110630.3521121-12-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <20211220110630.3521121-12-s.hauer@pengutronix.de>
Subject: Re: [PATCH 11/22] dt-bindings: display: rockchip: Add binding for VOP2
Date: Mon, 20 Dec 2021 08:27:43 -0600
Message-Id: <1640010463.860879.3388821.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_062750_489544_E7A753FC 
X-CRM114-Status: GOOD (  13.29  )
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

On Mon, 20 Dec 2021 12:06:19 +0100, Sascha Hauer wrote:
> The VOP2 is found on newer Rockchip SoCs like the rk3568 or the rk3566.
> The binding differs slightly from the existing VOP binding, so add a new
> binding file for it.
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
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.example.dt.yaml: vop@fe040000: ports: Unevaluated properties are not allowed ('port@0', 'port@1', 'port@2' were unexpected)
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1570971

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
