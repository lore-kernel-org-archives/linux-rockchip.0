Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FF05C43458
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 02:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=takO/CPAqE9aeRPcXwPYFLtHEbzy69kkhi/2GdPAXUA=; b=KRBp32T26yzWMT
	OFUZjpxqeATzRXL+93p/a8lYuqo1RTBYe3kKGoAOF08Ehxmfjjqu0G9APRF1JKmqpDEgDLsXqiK3M
	5zvX3+nUEEjatS/wlB98cPseyxNSwIhN0hEoUC3zTQGcEKhnmYCUnIwGlcHx1HXz3zpxtn+fjjr8X
	zzaFc1IrrebHZHW0mEzuDGFGLRSyafSIiNLVgY4a/RvZie/nfh37PJzLcIrozxu/EcRen4we6lQhj
	4zUWULlm0sMaWkS1no5Nyv6sf9/79hHqk5+hRJ/FibjJ/qkUgpRC5ac7MIffCrVQiTF1a82PU56Q7
	44fKALiwrYkAjgfsn91Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgvFL-0000000DuRb-3cFM;
	Tue, 07 Jul 2026 02:09:15 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgvFK-0000000DuR4-0s6w;
	Tue, 07 Jul 2026 02:09:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2E1A3600AA;
	Tue,  7 Jul 2026 02:09:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 261E81F000E9;
	Tue,  7 Jul 2026 02:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783390152;
	bh=X+GavMHJxo/C0eP06aCFkaFhtwTiuGsoQw2pkGdhRkc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=COKZ92laQhl1csIEkPD6FHIBolJNsjd27MEkSM1QUkHmeCLiZzXhiSbxzh+80bodW
	 Eo9LRa5hhnpXN+NLjvJp085C/ja6Wp0kSwiGNSJNmoRY0VMOuRk0HtTHPWoPRWbzUm
	 wPYcrpPXbnkCqJcf8CqOEAQDZDMcWc3rQ5UWFuqQRmtv8Rk8ky7xVSrz5KvRasbxHi
	 UMVdqAoIRjPMxTVHGtxZ0RjWrfxUPIfEr2WQN3lodMRh6jyJykB/lLCHPIfb70YEsK
	 myxcIfD0CkLgRK/xGp5L/yinB0F6Jm8aVbqq76O0bX9Fu1ja5G/x8EiONakVuWhlPY
	 LEGrsrv//djCQ==
Date: Tue, 7 Jul 2026 03:09:07 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Simon Glass <sjg@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>,
 linux-arm-kernel@lists.infradead.org, Andy Shevchenko <andy@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>,
 Jonas Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 09/12] dt-bindings: iio: adc: rockchip-saradc: Add
 RV1106 compatible
Message-ID: <20260707030907.1502dba6@jic23-huawei>
In-Reply-To: <20260706195818.3906949-10-sjg@chromium.org>
References: <20260706195818.3906949-1-sjg@chromium.org>
	<20260706195818.3906949-10-sjg@chromium.org>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Mon,  6 Jul 2026 13:58:05 -0600
Simon Glass <sjg@chromium.org> wrote:

> Add the compatible for the SARADC of the Rockchip RV1106, which is
> compatible with the RK3588 variant.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
> 
>  Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> index 6769d679c907..c3bb03dc4853 100644
> --- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> @@ -24,6 +24,9 @@ properties:
>        - items:
>            - const: rockchip,rk3576-saradc
>            - const: rockchip,rk3588-saradc
> +      - items:
> +          - const: rockchip,rv1106-saradc
> +          - const: rockchip,rk3588-saradc
>        - items:
>            - enum:
>                - rockchip,px30-saradc

Follow the style of this one...  I.e. use an enum and
then a const given both the rv1106 and rk3576 fallback
to the rk3588

Thanks,

Jonathan



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
