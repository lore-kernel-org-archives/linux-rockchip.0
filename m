Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9E9AC3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jul 2024 17:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=scp2jw3oi0+hLHuUsOo9zIWkM9PkDdOCByBND/pmmvQ=; b=FtO/Tk1cRQvixLmGoAYGDDXiTZ
	tT0Tg+LJuFJcsgHhgwUaLDBpNTRlxTUnVYtHMokcMoWu+gQd82ZF90evXnoq+6ezmFneyEeAWNWZB
	iXGP3Gu+7vGuSrePLiqUCyYuPKN0wrpfaB20lId9bDsUioPCCSMdXWBeCM+sdERvmI6wgp8GVYOgJ
	PibdVqSRWlWCLwJYliOr3l4j5cEO/S8Fkvu2rw8cpglPfZOtTi60L31/EYbT5zbYy7UiKtou3Plya
	4OfrQX0HLzCIOpCVMPCSu+IUq31OBAv9xWqAXQAdpi8DzYZpBhtenc/U29rPuk3O8ReRLN9RJIzZM
	4U3n+udA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTmFh-0000000BAsK-2CwQ;
	Tue, 16 Jul 2024 17:46:13 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTmFL-0000000BAoK-2XRi;
	Tue, 16 Jul 2024 17:45:53 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721151947;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JhR8ShgNZ4zr20pJvrZSBhHiN5aG2Rwxocrt8rVDf8Q=;
	b=frWSgU0Qd95vdp7IVtKo2hahyPh0ax6zmYOnpAABSPSToBxVZlIm22kufuYPn4pI4U4Ax5
	7AAvkancGLjf1Fg3LyYZdGPzrqX9rVBBnOxY5CqVStIarucIfekCUob5l1VKSfm9dQveDC
	l0kIVoXz9nRWl0YK76gRFVBBfp/uZKgb3hNbihuotaxjgb9jTaQCR5/5XN7CMQc5mxYiVE
	b6uMTC5SYczHW3K5Tuzq9o/lh7gqgGVl0KPgkvMmjybI5uE0Yqki888sEMEkPdnxLNQ6v2
	IFdZ1h75d1k3KRMNjn4DnT9ABU3LCgS6qI7IH5+/7YGtBuTS1NzHLthqErY+gg==
Date: Tue, 16 Jul 2024 19:45:44 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Christopher Obbard <chris.obbard@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Kever Yang
 <kever.yang@rock-chips.com>
Subject: Re: [PATCH 0/2] Add support for Firefly CORE PX30 JD4
In-Reply-To: <20240716-rockchip-px30-firefly-v1-0-60cdad3023a3@collabora.com>
References: <20240716-rockchip-px30-firefly-v1-0-60cdad3023a3@collabora.com>
Message-ID: <81015d015aae01f2d5fa70262304837e@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_104552_127759_E07DC065 
X-CRM114-Status: GOOD (  10.85  )
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

On 2024-07-16 17:51, Christopher Obbard wrote:
> The Firefly CORE PX30 JD4 board is a SOM and motherboard bundle from
> Firefly containing the Rockchip PX30 SOC. This series adds support for 
> it.
> 
> ---
> Christopher Obbard (2):
>       dt-bindings: arm: rockchip: add Firefly CORE PX30 JD4
>       arm64: dts: rockchip: add Firefly CORE PX30 JD4
> 
>  .../devicetree/bindings/arm/rockchip.yaml          |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile              |   1 +
>  .../dts/rockchip/px30-firefly-core-px30-jd4.dts    | 562 
> +++++++++++++++++++++
>  3 files changed, 568 insertions(+)

It would be better to split this into two separate files: a dtsi
for the SoM, and a dts for the carrier board (which would include
the new dtsi).  That would reflect the actual hardware better.

> ---
> base-commit: d67978318827d06f1c0fa4c31343a279e9df6fde
> change-id: 20240716-rockchip-px30-firefly-59efc93d6784
> 
> Best regards,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
