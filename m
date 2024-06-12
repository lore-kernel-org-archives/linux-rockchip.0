Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18209C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 17:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BG4GL+z3ZPmLqGMASwVu3fzquqZ9SV9NS6YSPboh/CQ=; b=r9SHw/8O2fhyQxBVNexqq0r0Et
	mspM7/Ko6recsqhPGx7vFd/1JnGwTBQCbH1HKRbeBY5izeWi6Yr71/uz4RD88L4Nu2V2ZI/Dw31cv
	yrd/zK+1lxlPakgZ9pMyaq9NYMK2jwMc+U7fcsiW1jN8pMg/+JQjsEim0M2JCO8sZhLfD3TTrCtg1
	I1RRWVgS0Kaa0ghLJcTXEk0z8rYwimv8ICrEw7D+3PhqarigXEW+AQEkz09RRmyXw5qX5XeB/2ELi
	5skXIO7/HIFK8aNQEkELxj84sGMkRsZuvKLS0G33xv/Cdh9SiN2VB3E0yRv6fG95l/Lp1Uycq8zI5
	iBJ2ccHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHRjv-0000000DZ3d-4Bho;
	Wed, 12 Jun 2024 17:26:28 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHRjq-0000000DZ27-0OSW;
	Wed, 12 Jun 2024 17:26:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5B396CE21FE;
	Wed, 12 Jun 2024 17:26:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58848C116B1;
	Wed, 12 Jun 2024 17:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718213179;
	bh=8mAINEWgGiadV1kEJND+F9WvJE3WuJIALswoL9FapSI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=LypDdc56kiZi2JjvRRlVxTTMRS9WLepzejGCDmQSSqGvE8U5TsAtu5H7PCR7GWD2R
	 +V0vb9dzRZdgXA/g8wDH85Ykf4fzHukdkp1eeNKP+zPvnocP0m15T1hyy8vIZjm+sI
	 hZWYo5G91IrrSKFHkF6uATS6vQeP8wnNmRkjmDh1QI4l330XPyLK7vX1UUO4xEOzSd
	 lSz0C1gpZyZLJ6XEs/TI3I55reyrrvf5ZZS+SB5ArmB+yErQn/fGulgKkQAYUGc0g4
	 RXvFduL9Y9KlCeTYEfQZC/uvOb5lB2e3ERkH+SJHxK8V78Xu8YwttIPlA334EtlbOe
	 AzBB30DTa/aiA==
Date: Wed, 12 Jun 2024 11:26:18 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Shresth Prasad <shresthprasad7@gmail.com>
Cc: skhan@linuxfoundation.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, cristian.ciocaltea@collabora.com, 
 javier.carrasco.cruz@gmail.com, krzk+dt@kernel.org, 
 sebastian.reichel@collabora.com, heiko@sntech.de, 
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
 s.hauer@pengutronix.de, vkoul@kernel.org, andy.yan@rock-chips.com, 
 kishon@kernel.org
In-Reply-To: <20240612160336.5132-2-shresthprasad7@gmail.com>
References: <20240612160336.5132-2-shresthprasad7@gmail.com>
Message-Id: <171821317822.3213383.11527359300023322395.robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: phy: rockchip-emmc-phy: Convert to
 dtschema
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_102622_406063_A5A98FBB 
X-CRM114-Status: GOOD (  10.86  )
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


On Wed, 12 Jun 2024 21:33:37 +0530, Shresth Prasad wrote:
> Convert txt bindings of Rockchip EMMC PHY to dtschema to allow
> for validation.
> 
> Signed-off-by: Shresth Prasad <shresthprasad7@gmail.com>
> ---
> Changes in v2:
>     - Fixed example
>     - Changed file referenced in grf.yaml
> 
> Tested against `rockchip/rk3399-firefly.dtb`, `rockchip/rk3399-orangepi.dtb`
> and `rockchip/rk3399-pinebook-pro.dtb`.
> 
>  .../bindings/phy/rockchip,emmc-phy.yaml       | 79 +++++++++++++++++++
>  .../bindings/phy/rockchip-emmc-phy.txt        | 43 ----------
>  .../devicetree/bindings/soc/rockchip/grf.yaml |  2 +-
>  3 files changed, 80 insertions(+), 44 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.example.dtb: syscon@ff770000: reg: [[0, 4285988864], [0, 65536]] is too long
	from schema $id: http://devicetree.org/schemas/soc/rockchip/grf.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.example.dtb: syscon@ff770000: reg: [[0, 4285988864], [0, 65536]] is too long
	from schema $id: http://devicetree.org/schemas/mfd/syscon.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240612160336.5132-2-shresthprasad7@gmail.com

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
