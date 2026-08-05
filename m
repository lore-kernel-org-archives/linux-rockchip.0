Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1DC6C55ABA
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 18:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cw5iZYVj/TtWVhRKRxTJ2goP/P4cKVEqI6nFe1vOHBQ=; b=yDc7GTRhm26iUK
	Cv7a2KLGs1/fNmVC8ozs+hf75j8YcX0BsyHpq8Wxe/msakX+ToKbiR0p8fbK2DvdkjssJudAIOpnq
	sSYbkT0Y3PgQTYpS31YCpS9Lq3A5P9djSO/YibJ/tyM6jltyS7YgEMthgGtP4sDDWanLWPgG68T8f
	yrzLKzzB2ta7mELQ+dv3HsVSX+41GOz/qTH6yBNWwT5rmQNQgW1PxMiVBE8Q4FHRoYaJrf3WLSyZi
	0SnDiXbwvU06JKb0bl0SIziUXy2rM0X0HLXz/3C4p+TAxcASRcChE/RqIC2qdv8oZZYqkwhLpkqWU
	3f1oOuxqdGCxBdCe7SZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrgaW-00000004Pka-29jQ;
	Wed, 05 Aug 2026 18:43:36 +0000
Received: from out-187.mta1.migadu.com ([95.215.58.187])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrgaT-00000004Pjz-1YDG
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 18:43:35 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1785955410;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=asjh1e4/12M1U47u0ygycydMMvDwaXnVjTSsGZZSUqA=;
	b=fvnA+TH6tPFnMy8EEtLfbmcwGCHaFIKnEjq/xXwB96nA0KfwmreSMXYBKBSESKTENGftEt
	t1eIchoAtsGfwfsYbDF1wKSrjhwkAY4qUA7zR8o+o+MLzPjD/+b30w+KXoyP24Bkym/Aot
	BbFhURaY1InqkfMQZgIVNHjMfVnZbamW8oRvMPzV1Ca/0KyXlhjdEA3wlcuje0xpfV1s9v
	G1MeObiamJcQpJgQZHwF8mf+0mHWQVe1qOA9kp9MEuJi4bjnlP+tPqW7vuRp2GDfBXGuFE
	AEUV2KleJIy+UemZQ6RD47XLE98bkjq0kjVz4KdSOB1naqIXR4E0m8+UFA4vZA==
Date: Wed, 05 Aug 2026 20:43:27 +0200
Message-Id: <DKH8CRTZT2XA.1WJNZORRS4109@cknow-tech.com>
Cc: "Oded Gabbay" <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 "Jiaxing Hu" <gahing@gahingwoo.com>, "Heiko Stuebner" <heiko@sntech.de>
Subject: Re: [PATCH v2] accel/rocket: request the core clocks by name
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Igor Paunovic" <royalnet026@gmail.com>, "Tomeu Vizoso"
 <tomeu@tomeuvizoso.net>
References: <20260729130743.128876-1-royalnet026@gmail.com>
In-Reply-To: <20260729130743.128876-1-royalnet026@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_114333_955347_298B4C6A 
X-CRM114-Status: GOOD (  30.85  )
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

Hi Igor,

On Wed Jul 29, 2026 at 3:07 PM CEST, Igor Paunovic wrote:
> rocket_core_init() hands core->clks to devm_clk_bulk_get() without ever
> setting the .id members. The rocket_core array is allocated with
> devm_kcalloc() in rocket_device_init(), and rocket_probe() only fills in
> .rdev, .dev and .index, so all four clk_bulk_data entries are requested
> with a NULL con_id (unlike core->resets, whose ids are set a few lines
> above).
>
> clk_get(dev, NULL) ends up in of_clk_get_hw(np, 0, NULL), and
> of_parse_clkspec() only consults "clock-names" when a name was passed,
> so the index stays 0 for all four entries. Every entry therefore ends up
> holding a handle to the *first* clock of the DT "clocks" property, i.e.
> ACLK_NPUn. Nothing fails: probe succeeds and the driver believes it owns
> four different clocks.
>
> The consequence is that rocket_device_runtime_resume() prepares and
> enables the AXI clock four times, while hclk, pclk and - most
> importantly - the NPU compute clock ("npu", SCMI_CLK_NPU on RK3588) are
> never prepared or enabled by this driver at all. The NPU still works
> only because the Rockchip power-domain driver sets GENPD_FLAG_PM_CLK and
> its attach_dev() callback walks the device node with of_clk_get() and
> adds every clock to the pm_clk list, so genpd happens to keep the
> remaining clocks running. The bug is therefore latent today, but it
> means the driver holds no reference to the clock that actually feeds the
> NPU, which stands in the way of any future frequency scaling
> (OPP/devfreq) work.
>
> Found on an Orange Pi 5 Plus (RK3588) by reading the live clock tree:
> /sys/kernel/debug/clk/clk_summary shows four "fdab0000.npu" consumer
> handles on aclk_npu0 (and likewise on aclk_npu1/aclk_npu2 for the other
> two cores), while hclk_npu0, pclk_npu_root and scmi_clk_npu have no
> "fdab0000.npu" consumer at all - their only consumers are the
> "npu@fdab0000" handles created by the power-domain driver via
> of_clk_get().

I have confirmed both the 'old' situation and the 'new' one on both my
NanoPC-T6 LTS and NanoPC-T6 Plus (both RK3588), so feel free to add

Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # NanoPC-T6 LTS, NanoPC-T6 Plus


Cheers,
  Diederik

>
> Set the ids explicitly, in the order mandated by the binding
> (Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml):
> aclk, hclk, npu, pclk. After the change the driver holds one handle per
> distinct clock and clk_bulk_prepare_enable() covers all four.
>
> Note that this is a user-visible tightening for out-of-tree DTs: the
> old NULL-id requests resolved by index and succeeded no matter what
> "clock-names" contained, while the named requests fail probe with
> -ENOENT when one of the four names is missing. That is the right
> outcome for in-tree users - the binding requires exactly these four
> clock-names and rk3588-base.dtsi carries them on all three cores - but
> a DT that relied on the permissive lookup goes from silently running on
> the wrong clock handles to not probing at all, so record the change
> here where git log will find it.
>
> Fixes: ed98261b4168 ("accel/rocket: Add a new driver for Rockchip's NPU")
> Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
> Reviewed-by: Jiaxing Hu <gahing@gahingwoo.com>
> ---
> v2:
>  - document that resolving by name is a behaviour change for DTs that
>    do not carry all four clock-names (Jiaxing Hu)
>  - collect Jiaxing's Reviewed-by
> v1: https://lore.kernel.org/linux-rockchip/20260729092939.118779-1-royalnet026@gmail.com/
>
> The same four id assignments are board-tested on RK3576 (ROCK 4D) as
> part of Jiaxing's RK3576 enablement series (v2 6/8), so the change has
> been exercised on two SoCs between us.
>
> Verified on RK3588 (Orange Pi 5 Plus): after the change clk_summary
> shows one consumer handle per clock instead of four handles on aclk, the
> NPU still powers up and down cleanly through runtime PM, and a
> MobileNetV1 inference run via the Teflon TFLite delegate produces
> bit-identical output tensors to the unpatched driver.
>
>  drivers/accel/rocket/rocket_core.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/rocket_core.c
> index b3b2fa9..5dd260b 100644
> --- a/drivers/accel/rocket/rocket_core.c
> +++ b/drivers/accel/rocket/rocket_core.c
> @@ -28,6 +28,10 @@ int rocket_core_init(struct rocket_core *core)
>  	if (err)
>  		return dev_err_probe(dev, err, "failed to get resets for core %d\n", core->index);
>
> +	core->clks[0].id = "aclk";
> +	core->clks[1].id = "hclk";
> +	core->clks[2].id = "npu";
> +	core->clks[3].id = "pclk";
>  	err = devm_clk_bulk_get(dev, ARRAY_SIZE(core->clks), core->clks);
>  	if (err)
>  		return dev_err_probe(dev, err, "failed to get clocks for core %d\n", core->index);
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
