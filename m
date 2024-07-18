Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65389C3DA49
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 04:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tGr8BDLTtJr754FlhOdzqC/ULTuh9iep5QEIgl37dEc=; b=qjmhPrpBMuQv4fpYVbE56z+YaW
	AIsRboqG8aeNuHB9CIwgNrM8AJVfgt/TgW/WRDW+jUXjG0Nc6DgL5pX46HiFtwVI21ndYJTylZDIY
	zBSAQU5PmSB7PTsswDhRMosvGqlh5K24ifLg/DUi3tWVESBPPraZryjquVy3E0d63l+tqKJ3ND9ck
	RHVYm+e7vQW8xYKFZMrUE1sDBR5PcJkOM2UQa8pWUUBqJedE9bGruW0WDY9VZyOtGVuRTTWnmiKLP
	oX94ttwseKPKWQknbibTmKk4eCXcQhVT3O9och9y/wMKUr52h5b8ExkhRue5d8QxKECEkWFsloe4u
	HUbdWwAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUIpe-0000000Fk1M-2Yu9;
	Thu, 18 Jul 2024 04:33:30 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUIpH-0000000Fjwe-32nC;
	Thu, 18 Jul 2024 04:33:09 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721277184;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LtwV/4WIDbK+8ZAf8F7AmoboBuDaoArPtGFAuXsacys=;
	b=ibWb1zOpKy9ZI5nXD1vhDusuMQ4PARctoV12KdFb8hR5WPuN4uPLFz2wfzrkCVgseE9FkK
	wxr+n+jy7ImDib+jkJ8dY+BQykkD0OnOwX9DtGuHtRTx7izrooNAWEnBz1UeIoA3xfaRH8
	KCt0YoqpQQRYN8eaeB6fFRn9V8h4I1ighz62TmxdZZz7d9gG92XNJEVEzvAtUfxVUy3kbJ
	D6guebULiUMWkVarXc7WtMrYBEIWU9+QJznprFnkTcxPJF+zYIZ1Ugk/TB+RK1m0cgNNGE
	EDM+9AbT8tgs2nyQ5Q0J1QSCPrSqeO9bwgk8b4ZZP9sJNvKrs+aFhh83pW8QgA==
Date: Thu, 18 Jul 2024 06:33:04 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Christopher Obbard <chris.obbard@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Kever Yang
 <kever.yang@rock-chips.com>, Collabora Kernel Mailing List
 <kernel@collabora.com>
Subject: Re: [PATCH v2 0/3] Add support for Firefly Core-PX30-JD4 SoM &
 baseboard
In-Reply-To: <20240717-rockchip-px30-firefly-v2-0-06541a5a5946@collabora.com>
References: <20240717-rockchip-px30-firefly-v2-0-06541a5a5946@collabora.com>
Message-ID: <38d7b7e9ab71bf1b0817e666f4233b9e@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_213307_951604_CF45BB4F 
X-CRM114-Status: GOOD (  15.12  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Christopher,

On 2024-07-17 18:46, Christopher Obbard wrote:
> This adds support for the PX30-based Core-PX30-JD4 system-on-module 
> from
> Firefly and includes support for the SoM in combination with the
> Firefly MB-JD4-PX30 baseboard.
> 
> ---
> Changes in v2:
> - Split into two separate files: dtsi for the SoM and dts for the 
> carrier.
> - Change devicetree compatible to match SoM/carrier split.
> - Change device names to better match vendor's name.
> - Properly model baseboard & SoM regulators.
> - Properly model baseboard recovery key.
> - Remove DSI panel (& related nodes) since "sitronix,st7703" compatible
>   is undocumented & hardware is unavailable.
> - Remove unused audio-related nodes.
> - Remove unused UART nodes.
> - Remove unused PMIC pinctrl nodes.
> - Add node for baseboard LEDs.
> - Link to v1:
> https://lore.kernel.org/r/20240716-rockchip-px30-firefly-v1-0-60cdad3023a3@collabora.com

Thanks for the v2.

> ---
> Christopher Obbard (3):
>       dt-bindings: arm: rockchip: Add Firefly Core-PX30-JD4 with 
> baseboard
>       arm64: dts: rockchip: add Firefly Core-PX30-JD4 SoM
>       arm64: dts: rockchip: add Firefly JD4 baseboard with 
> Core-PX30-JD4 SoM
> 
>  .../devicetree/bindings/arm/rockchip.yaml          |   6 +
>  arch/arm64/boot/dts/rockchip/Makefile              |   1 +
>  .../boot/dts/rockchip/px30-firefly-jd4-core.dtsi   | 322 
> +++++++++++++++++++++
>  arch/arm64/boot/dts/rockchip/px30-firefly-jd4.dts  | 178 ++++++++++++
>  4 files changed, 507 insertions(+)

It would be better to name the new dts(i) files like this:

- px30-firefly-jd4-core.dtsi
- px30-firefly-jd4-core-mb.dts

This would follow the <SoC>-<brand>-<SoM>-<carrier>.dts pattern, which
is somewhat common and sorts nicely in directory listings when there's
more than one carrier board for the same SoM.

> ---
> base-commit: 51835949dda3783d4639cfa74ce13a3c9829de00
> change-id: 20240716-rockchip-px30-firefly-59efc93d6784
> 
> Best regards,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
