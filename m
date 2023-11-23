Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96434C5AD4C
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Nov 2023 09:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXJxPBHrlSnGCT/yro6Ay8bLKveozR6g4G0FJdZRPOc=; b=fO2q1wHqjxPPar
	BJpUaAA/WZC4uj6d7vV6hIhYb4UfVnMXwyVjRK6j3vP1viS5XjhyxmXsPYw1EPwB4uatWgj5tP91R
	r85FjMvH2MpiBTQpNDgAHB51fB6DNPLTFIwiIBnm5J3of93GteFMJ1WHzi6kB4U6OOsCGTVRN1zDz
	nkvdW1IjvStVLPXHUiI7lOvAyXk+DgFBMjo8TVVFqrgwd4bXT1dnz4wbNSbgOO81Dlj4q+D01FQdX
	QlgEyKiJajH+v6ehE5dmNzOAt1/sVQXsWKe3aswRfNkoqRnuIJExqLBUcEurJPhQFfx2fZt6NI7KJ
	72yWGRUG4xWp37tsj1eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r66AS-004H9e-0u;
	Thu, 23 Nov 2023 09:38:40 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r66AP-004H8P-2l
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Nov 2023 09:38:39 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-5cca712b715so5911437b3.1
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Nov 2023 01:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700732315; x=1701337115; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9Cq2uvOez9cvoP5vKajshu6haOx7AM5LMNaL0dM3kCo=;
        b=TqizHUD1MkEqS0TvCMzWtjk3GvIvCKzbInBhL9rbFqTJxxXStKypNkhPasibOSikf7
         oXMMZ+II46Il07/hg/u5P/yH7fEATCQ7sUshp3xKsnSe5snPfkX2u3EAGRq0MpbKzAQg
         95RVQaTdbTXDGSNnHTjEzFLRJ0JDyysncer3dezmsWJd0/0cYxycspZMM0JmEiZhvL+v
         pXxg/J0zL+NR9zqGvZjmKsJ2ME7iDesSV8AFwaRNfuzm26fjQ5y8LsvuCfXssORQMNiw
         FQLUJynZSDKraUsvZCMTLdwIHogaSd6HwGLr5YNtPjIhxi2LsOSi9kpOtMNxVuatmgtQ
         XXCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700732315; x=1701337115;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9Cq2uvOez9cvoP5vKajshu6haOx7AM5LMNaL0dM3kCo=;
        b=CuMaSM3pZNJvtJg+BJZGV7CbRhc7VCvY6jYyMPO81gxU8GFRP8XQV8qPzHv9JBCoUQ
         C9Z111jf3beFrqcdDrmFTdiUMhdXixfh7wKpHJ8545R4H3wnaiEyDJU+TlEijNQ1AoD6
         P6Kn1sipJR39BTPfIL9E8m4Z/CFYT+ssaFq8R/uX7N/wvglTrAB4+1GUAiiojEZrwdmq
         J2JpfFAt1uL629UFl+SdpHkiSbKP7fN3Wd4UjNUWA7Gb0rR4KR2B7Cw4/voGt9SzsjEr
         h2s53k/+Q9e+SjYEh0eKqFmmx6YhLe8WYCUGzfja90wJ1j/NKq7d1opsf1+nK/yRQ9Im
         OtHA==
X-Gm-Message-State: AOJu0YyvlotCn3ujNgEdDTRPN2Zcwg84J6ADADrazKkA+zx7MHV9GdHQ
	ljPUmXHtjMPON3xw5WkwyqjY7kfqq99BFwl3OmG8vw==
X-Google-Smtp-Source: AGHT+IHUNZ/Kpf46s2OJno2HdyVz1WDaY8aTV/gcTXwP0fy9aTOY2/fgpkJJBKzSzB6foUUtbUHTXljX7Tki6sR+KVY=
X-Received: by 2002:a0d:f485:0:b0:5b3:3eb5:6624 with SMTP id
 d127-20020a0df485000000b005b33eb56624mr4241289ywf.46.1700732314987; Thu, 23
 Nov 2023 01:38:34 -0800 (PST)
MIME-Version: 1.0
References: <20231018061714.3553817-1-s.hauer@pengutronix.de> <20231018061714.3553817-27-s.hauer@pengutronix.de>
In-Reply-To: <20231018061714.3553817-27-s.hauer@pengutronix.de>
From: Jagan Teki <jagan@edgeble.ai>
Date: Thu, 23 Nov 2023 15:08:23 +0530
Message-ID: <CA+VMnFz__fdzm-N-jFX9L+n5znqeopD8B3tZN4FiH5fWtzUu4w@mail.gmail.com>
Subject: Re: [PATCH v8 26/26] arm64: dts: rockchip: rk3588s: Add DFI
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	Heiko Stuebner <heiko@sntech.de>, Chanwoo Choi <chanwoo@kernel.org>, 
	Kyungmin Park <kyungmin.park@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de, 
	Michael Riesch <michael.riesch@wolfvision.net>, Robin Murphy <robin.murphy@arm.com>, 
	Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_013838_086329_881BA606 
X-CRM114-Status: GOOD (  18.70  )
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

On Wed, 18 Oct 2023 at 11:47, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> The DFI unit can be used to measure DRAM utilization using perf. Add the
> node to the device tree. The DFI needs a rockchip,pmu phandle to the pmu
> containing registers for SDRAM configuration details. This is added in
> this patch as well.
>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>
> Notes:
>     Changes since v4:
>      - new patch
>
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 5544f66c6ff41..e693a341f6f27 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -443,6 +443,11 @@ usb_host1_ohci: usb@fc8c0000 {
>                 status = "disabled";
>         };
>
> +       pmu1grf: syscon@fd58a000 {
> +               compatible = "rockchip,rk3588-pmugrf", "syscon", "simple-mfd";
> +               reg = <0x0 0xfd58a000 0x0 0x10000>;
> +       };
> +
>         sys_grf: syscon@fd58c000 {
>                 compatible = "rockchip,rk3588-sys-grf", "syscon";
>                 reg = <0x0 0xfd58c000 0x0 0x1000>;
> @@ -1329,6 +1334,17 @@ pcie2x1l2_intc: legacy-interrupt-controller {
>                 };
>         };
>
> +       dfi: dfi@fe060000 {
> +               reg = <0x00 0xfe060000 0x00 0x10000>;
> +               compatible = "rockchip,rk3588-dfi";
> +               interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH 0>,
> +                            <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH 0>,
> +                            <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH 0>,
> +                            <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH 0>;
> +               interrupt-names = "ch0", "ch1", "ch2", "ch3";

Look like the names never documented and nor supported explicitly in
the driver. Do we have any patch for fixing it in the mailing-list?

arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb:
dfi@fe060000: 'interrupt-names' does not match any of the regexes:
'pinctrl-[0-9]+'
from schema $id: http://devicetree.org/schemas/devfreq/event/rockchip,dfi.yaml#

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
