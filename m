Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8466D277C9
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jan 2026 02:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OI4MGgRzMUjid4vCZ72ZE7rl+B7zn33jRV14Qg46gYg=; b=UJmihftyT5mKg3IPTofhxUn5qK
	05vCSOFq83t/xn0QLoNGsXhWtmXQefWvjJA3kIVaIvUqjl4a1Dadl4dIErYNraa8/Wo7q6UbIcnpu
	OpqY2LgQ8pRx2Ns8QyPkvK/nigfxUZ48d1DiWzhC7DWks9xhR/CTivzHkKLq8R/HCQuP+AMw6HPJk
	oV7a1dYof1n9XvrKGo6RWNSqbXpWOg+YtpmgHOqY/+yXHnnyRs1Z7ZrO3Gr4OOo4ojRi7zVkzdiuW
	OEJFcbPP4lCs+SXu/ULAUDczQumvN2BkOnlgXZNJTW67L/QStmvz7CkZpLvFpH+IUN5lyKvrxfO8C
	CkZBwbWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veOfg-00000003Bwd-49zf;
	Sat, 10 Jan 2026 02:25:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veOfd-00000003BwB-3ckh;
	Sat, 10 Jan 2026 02:25:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8A3CC41930;
	Sat, 10 Jan 2026 02:25:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48E03C4CEF1;
	Sat, 10 Jan 2026 02:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768011940;
	bh=ue9P0DHp6hQsd2MCq0QDFjG6D1P+AJ9p0ypaECF8siM=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Fd8PH/lvq33dCfSIh454iKWbtElXcSEaA1CMLviXZifrjm96C7TxHYThyHIlsp/hF
	 lyqr+jiQ3N5pbufMW6LModJrncLZQnCXGUpjZdO0QrpBrsIOnc3mM89TxZmFFdmozi
	 lQDr0NH8AkX4jB+hW6Z3E9ydZgRMVCgFDpawCo5fS7FZ6FgKG8kTHNyg2MD1FV9ghn
	 s+4fubVK7xUm7OwGxJ7OlOnYi/NFCvZhYmh613rIr6uZnVRjb349wiwVl6l+usfg9U
	 3J40lebOOlvqle06aTOnJudTkzsE53CTmJ8pdzlIoABvkR0OEWL5A4//3bgbquhTpd
	 q8K1BzofdNEkg==
Date: Fri, 09 Jan 2026 20:25:39 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-mmc@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, 
 linux-arm-kernel@lists.infradead.org, ulf.hansson@linaro.org, 
 linux-rockchip@lists.infradead.org, heiko@sntech.de, 
 devicetree@vger.kernel.org
To: Marco Schirrmeister <mschirrmeister@gmail.com>
In-Reply-To: <20260110010715.1610159-2-mschirrmeister@gmail.com>
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
 <20260110010715.1610159-2-mschirrmeister@gmail.com>
Message-Id: <176801193939.232931.10116845812476923767.robh@kernel.org>
Subject: Re: [PATCH v1 1/3] dt-bindings: mmc: rockchip-dw-mshc: add
 rockchip,disable-runtime-pm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_182541_924602_94FB33FC 
X-CRM114-Status: GOOD (  11.28  )
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


On Sat, 10 Jan 2026 02:07:13 +0100, Marco Schirrmeister wrote:
> Add a new 'rockchip,disable-runtime-pm' property to allow boards to
> inhibit runtime power management. This is required for boards like the
> NanoPi R76S where the bus timing becomes unstable if the controller
> is runtime-suspended during idle periods.
> 
> Signed-off-by: Marco Schirrmeister <mschirrmeister@gmail.com>
> ---
>  .../devicetree/bindings/mmc/rockchip-dw-mshc.yaml         | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml:110:1: [warning] too many blank lines (2 > 1) (empty-lines)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260110010715.1610159-2-mschirrmeister@gmail.com

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
