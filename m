Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAFF9C27C6E
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 03:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AUD1yrxkqe4uHuBNxt6wmbjYlOIQOJ7836dTaIU0EHo=; b=MFB0IYBQzf7NVO8oytgUsFAEBz
	YJAIjMKG34hN+XFFWYGFoPFVXqYO3BBFJhlSdT97hGCjXE5vpyPkZm9DZ8COPB3BwPbcG9PpdyXST
	7JYx2kgwIQQycJK5k++pIivy6yy2IBVn0yfIkfGc3j/T8buIWav9DktVzj0Q9EIaZ0QBv6+9PQTv4
	Nl8aUGJJrP4qNJxZFUM8USpNqIKuL/wiatLWfG/16k4Szl+5d3fXqx87Y4qfWW+PYdSFMRhoVfgcO
	SwekVXLV8UKEDKPL9RsiK1VCKdmS0h+HO5N8/zNHWcDqUZBXbwS06fF2w8UZSzAQZr6d/9hIxtTsu
	5Y+rIEbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIJth-00000004YzL-1rFp;
	Sat, 15 Jun 2024 03:16:09 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIJte-00000004YyO-0WUm;
	Sat, 15 Jun 2024 03:16:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id ACFD7CE2DA9;
	Sat, 15 Jun 2024 03:16:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2E22C2BD10;
	Sat, 15 Jun 2024 03:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718421359;
	bh=YLAQKIAnX3QMVP03+hq3W1LYE+KdzSFfVIBax3SmWnw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=fufHqMUNUJVqYWeGSnEY3L2GyzfFt9r1rIGoyLTMphbZMcfWeBW2zaOKKF2McoWwt
	 ic/QLRbSIwkLviUB85ZJyevRAK2RiWI6t3CKPO1EbhcDJYvPPs5JeZOcSlCoVJFGqJ
	 MCZxZkoFNsc2qrawuTFAKzWafMjcBvB6oy6hFvKDKmKeHNb4DlQtJZTdqZ3JD670LC
	 EjuIpuRmx+o9j7IdolP7nLbcKyBF4z/OloteTC0yYA7gqTQjw5YfNdNa6vn7jhP6CK
	 WJoAVn1q5nbwqz/I6T0tz9jaerJVtrOn5+0S46wDGtACdgErB5yYtrvK3qj3r+1JQD
	 ez6U/NLONQ7BA==
Date: Fri, 14 Jun 2024 21:15:58 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Andy Yan <andy.yan@rock-chips.com>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
 Diederik de Haas <didi.debian@cknow.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
 linux-staging@lists.linux.dev, Alexey Charkov <alchark@gmail.com>, 
 linux-media@vger.kernel.org, Dragan Simic <dsimic@manjaro.org>
In-Reply-To: <20240615015734.1612108-3-detlev.casanova@collabora.com>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <20240615015734.1612108-3-detlev.casanova@collabora.com>
Message-Id: <171842135800.2249604.16144745633066075384.robh@kernel.org>
Subject: Re: [PATCH 2/3] media: dt-bindings: rockchip: Document RK3588
 Video Decoder 2 bindings
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_201606_408659_84802B94 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Fri, 14 Jun 2024 21:56:28 -0400, Detlev Casanova wrote:
> Document the Rockchip RK3588 Video Decoder 2 bindings.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../bindings/media/rockchip,vdec2.yaml        | 80 +++++++++++++++++++
>  1 file changed, 80 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec2.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip,vdec2.example.dtb: video-codec@fdc38100: reg: [[0, 4257448192], [0, 1280]] is too long
	from schema $id: http://devicetree.org/schemas/media/rockchip,vdec2.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip,vdec2.example.dtb: video-codec@fdc38100: clock-names:1: 'ahb' was expected
	from schema $id: http://devicetree.org/schemas/media/rockchip,vdec2.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240615015734.1612108-3-detlev.casanova@collabora.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
