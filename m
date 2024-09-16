Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D39CEC3ABB2
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Sep 2024 15:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRLBH+IJFP1SdKSrLYzWjENuNOkaQ8YmSImhDe5uqhE=; b=aXKKzC6tahU/nM
	NjDpp5pEQFGwRSF7BTef1+S/EiqnzpJ98Bhg2yYXoU1UQRdexjyeWf/cHLxq33mSpU8JHah6DfEy0
	hivWDfx1qppUdg/TjOWV3tVZt5RosxnO0JiD9oYKwHvj3i2i2ZVAS2ZRgOafXhW7SDzhk6x8h5lt4
	HqES8M04pSupcwDWGPdDTwz7YOaiMBq7lCgAsaz7y5hmPxOartUOah/ErYmZFwijLFnC+nNHcJmu2
	t8UAfLjOAkmonEaSpjiIEVuXGQcXGUx2ok170su5HPxg90NBMbfUhgx4chzJu6aJuUdp+YI1kW1XA
	iOshK623uah6c06EyEnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqDvc-00000004NrW-4AbN;
	Mon, 16 Sep 2024 15:46:16 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqDvZ-00000004NqF-0Miq
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Sep 2024 15:46:15 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1726501560; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=LhiurA48EpisqqZ0he4yr2KgWvnbjwYiwvuJUJKoKw8l0u1SB8eyiBBxKPkxNV8FML7eg4D1PIzpipMu9EepsQTdTg2WwKeC7BqKF0duEomoKPxO3JUCyBk9ogYubmglcaRtacUJBNEan+covTsDFeRlPwDnqk+wKfBgu/IHxRA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1726501560; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=TjwJ4FDCdt734YAQPc/f2Tm44fHky68i9g69jZnst8o=; 
	b=NVgsKp+phprM340tifR6Zf3HfXSd538n2mMpf7Sxn6fAIffRkLWIYGQN9jlW23AKrhsaPvOLNo6ejG+M2zty3vQ3lSbfKvs2+Z7nI/SKZ5dyVYmzTtgcrXEdp26E6nFDuzVZ0jMTIWH6bw8pGwFeGCHf+FrsGaXQIrbUIY+xtUM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=adrian.larumbe@collabora.com;
	dmarc=pass header.from=<adrian.larumbe@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1726501560;
	s=zohomail; d=collabora.com; i=adrian.larumbe@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=TjwJ4FDCdt734YAQPc/f2Tm44fHky68i9g69jZnst8o=;
	b=ExslBwo1iemmyAQusGX7f+Lik0IfWnvNj5sSWaHLMNfZLT4izEgdzeJz0q32dVay
	rr75PHSqPl+d0E0T44hrj9w4M1b+9sX65K0gzIzL+zyLhbqZMSv8pZ3SFGTk8VlAJ5O
	TEQrqAzvlbAwcGeLw2Y3z0ONKvTVbr6WVFx6a9J4=
Received: by mx.zohomail.com with SMTPS id 1726501557780427.4745003950086;
	Mon, 16 Sep 2024 08:45:57 -0700 (PDT)
Date: Mon, 16 Sep 2024 16:45:53 +0100
From: =?utf-8?B?QWRyacOhbiBNYXJ0w61uZXo=?= Larumbe <adrian.larumbe@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Elaine Zhang <zhangqing@rock-chips.com>, Boris Brezillon <boris.brezillon@collabora.com>, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v1 0/6] Fix RK3588 GPU domain
Message-ID: <36ddjlsivqd4kzxckegxvjfuddkhigj5kjt3gurossfaihbddv@3stp2dnidusn>
References: <20240910180530.47194-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240910180530.47194-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_084613_255401_08B44159 
X-CRM114-Status: GOOD (  25.15  )
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

Hi, Sebastian, thanks for the patches.

I've tested it on a Rockchip 5b board and now I can reload the driver at any time.

Tested-by: Adrian Larumbe <adrian.larumbe@collabora.com>

On 10.09.2024 19:57, Sebastian Reichel wrote:
> Hi,
> 
> I got a report, that the Linux kernel crashes on Rock 5B when the panthor
> driver is loaded late after booting. The crash starts with the following
> shortened error print:
> 
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to set domain 'gpu', val=0
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to get ack on domain 'gpu', val=0xa9fff
> SError Interrupt on CPU4, code 0x00000000be000411 -- SError
> 
> This series first does some cleanups in the Rockchip power domain
> driver and changes the driver, so that it no longer tries to continue
> when it fails to enable a domain. This gets rid of the SError interrupt
> and long backtraces. But the kernel still hangs when it fails to enable
> a power domain. I have not done further analysis to check if that can
> be avoided.
> 
> Last but not least this provides a fix for the GPU power domain failing
> to get enabled - after some testing from my side it seems to require the
> GPU voltage supply to be enabled.
> 
> I'm not really happy about the hack to get a regulator for a sub-node
> in the 5th patch, which I took over from the Mediatek driver. But to
> get things going and open a discussion around it I thought it would be
> best to send a first version as soon as possible.
> 
> Greetings,
> 
> -- Sebastian
> Sebastian Reichel (6):
>   pmdomain: rockchip: forward rockchip_do_pmu_set_power_domain errors
>   pmdomain: rockchip: cleanup mutex handling in rockchip_pd_power
>   pmdomain: rockchip: reduce indention in rockchip_pd_power
>   dt-bindings: power: rockchip: add regulator support
>   pmdomain: rockchip: add regulator support
>   arm64: dts: rockchip: Add GPU power domain regulator dependency for
>     RK3588
> 
>  .../power/rockchip,power-controller.yaml      |   3 +
>  .../boot/dts/rockchip/rk3588-armsom-sige7.dts |   4 +
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |   2 +-
>  .../boot/dts/rockchip/rk3588-coolpi-cm5.dtsi  |   4 +
>  .../rockchip/rk3588-friendlyelec-cm3588.dtsi  |   4 +
>  .../arm64/boot/dts/rockchip/rk3588-jaguar.dts |   4 +
>  .../boot/dts/rockchip/rk3588-ok3588-c.dts     |   4 +
>  .../boot/dts/rockchip/rk3588-rock-5-itx.dts   |   4 +
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      |   4 +
>  .../arm64/boot/dts/rockchip/rk3588-tiger.dtsi |   4 +
>  .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   |   4 +
>  .../dts/rockchip/rk3588s-khadas-edge2.dts     |   4 +
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  |   4 +
>  drivers/pmdomain/rockchip/pm-domains.c        | 130 +++++++++++++-----
>  14 files changed, 144 insertions(+), 35 deletions(-)
> 
> -- 
> 2.45.2

Adrian Larumbe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
