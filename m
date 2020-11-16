Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DAC5C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 16:42:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0ABBE21527
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 16:42:11 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="l6X/GVdD";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQ5aXPh3"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0ABBE21527
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=CJYg0XiammVcf9qkdEEp7ydyVEUX/0fcFTtcTPcMlnE=; b=l6X/GVdD7ewoXsAJxIoM8ZFnN
	NcJ/Qn6bov3T6Z+UsTMhVAto8NgeoaN8dHIqn48zw8DNftywRKJfqYUS39FAnak+wecyx4dqlQpVf
	DuqbEyi6e6x0lyaW4tLlgqF2/7ymmuQcEXvoq94owBwHU4PDiOtUpTfg/nWhhZfio7mnc/A1YpjoR
	HmoDK43/J/MkRPHqqM8aDgpNVXhEPzds5amQvaPYLP+cdJ6SPtm0HR1t5zwvSWFAhIWWlbQo8JvXZ
	8UrpkryatUzt36ST3fmhN8Zz0p++NamIS6+9sgSaIMFLSoawzYxNiHupj9SZX+LY8oTdvKR0l2tvj
	vel0CkByw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kehZv-0000rT-D1; Mon, 16 Nov 2020 16:42:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kehZr-0000qW-Ku; Mon, 16 Nov 2020 16:42:04 +0000
Received: from localhost (189.sub-72-105-114.myvzw.com [72.105.114.189])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A6AD206D9;
 Mon, 16 Nov 2020 16:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605544922;
 bh=TgH1abjAGKm1AI19eKqktN7to1FFPzXHleFxcxbkKI8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=sQ5aXPh3snFjQmczM+VPazL8s/aZevGo5eKBMXnrsHdeK2P4LWLWwhRgrP+4tjo8v
 fW5whkpjlstLvmNNEO8dlnYlFNu6k+v/nUNQX7WySZoxfEoEU88ZimYtMLQAhFVB1f
 GulmiaLGww5TeaexigJXCTBgVktebrIBLAsYafiM=
Date: Mon, 16 Nov 2020 10:41:59 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 1/4] PCI: rockchip: make ep_gpio optional
Message-ID: <20201116164159.GA1282970@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201116075215.15303-2-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_114203_811777_C9F89A89 
X-CRM114-Status: GOOD (  21.00  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Johan Jonker <jbx6244@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Run "git log --oneline drivers/pci/controller/pcie-rockchip.c" (or
even just look at the Fixes: commits you mention) and follow the
convention, e.g.,

  PCI: rockchip: Make 'ep-gpios' DT property optional

Also, you used 'ep_gpio' (singular, with an underline) in the subject
but 'ep-gpios' (plural, with hyphen) in the commit log.  The error
message and Documentation/devicetree/bindings/pci/rockchip-pcie-host.txt
both say 'ep-gpios' (plural, with hyphen).

Please fix so this is all consistent.  Details matter.

On Mon, Nov 16, 2020 at 03:52:12PM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The Rockchip PCIe controller DT binding clearly states that ep-gpios is
> an optional property. And indeed there are boards that don't require it.
> 
> Make the driver follow the binding by using devm_gpiod_get_optional()
> instead of devm_gpiod_get().
> 
> Fixes: e77f847df54c ("PCI: rockchip: Add Rockchip PCIe controller support")
> Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
> Fixes: 964bac9455be ("PCI: rockchip: Split out rockchip_pcie_parse_dt() to parse DT")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  drivers/pci/controller/pcie-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> index 904dec0d3a88..c95950e9004f 100644
> --- a/drivers/pci/controller/pcie-rockchip.c
> +++ b/drivers/pci/controller/pcie-rockchip.c
> @@ -118,7 +118,7 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
>  	}
>  
>  	if (rockchip->is_rc) {
> -		rockchip->ep_gpio = devm_gpiod_get(dev, "ep", GPIOD_OUT_HIGH);
> +		rockchip->ep_gpio = devm_gpiod_get_optional(dev, "ep", GPIOD_OUT_HIGH);
>  		if (IS_ERR(rockchip->ep_gpio)) {
>  			dev_err(dev, "missing ep-gpios property in node\n");
>  			return PTR_ERR(rockchip->ep_gpio);
> -- 
> 2.29.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
