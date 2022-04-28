Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2BEDC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Apr 2022 08:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULMdjZE32Or8QlMeRCdWT/SCn9ckbUN80T0JQOsOscA=; b=bW7NZfgsrjkxGK
	nDkv+7myfkE+Y8o4hBua7+NWffaPCtENotdnJ5JVzQMTcTX10gJCYHloJeROa9GMI3rzfHaaIfQ+s
	dUXN/SEp+ANKAGoTZyG1bCw9bHK+PIUczxkwt6jL/BpYfOlgDOkUmlYOMgszLN/NbF55gc389lZE2
	ZSg9A2Yn8rfHlnnnI2axfK17bK9XIHMh7z36w542HOdd1/Tf6i+cGUZiwb/gTJbi/3hOjxWz/vVGV
	K2OLICwzu0pnw8LKKTipq08yjLYEamvoEXdXEcgPiJuT0fR3bJvtaAWiOKrRMvzRwaUTlxUdOpANW
	t6iB2pW/Jgmc4B1CZFjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njzSk-005Vi7-Gx; Thu, 28 Apr 2022 08:25:22 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njzSV-005Vca-FJ; Thu, 28 Apr 2022 08:25:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 280C8B81BF0;
 Thu, 28 Apr 2022 08:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6174FC385AF;
 Thu, 28 Apr 2022 08:25:02 +0000 (UTC)
Message-ID: <a7772b0c-a326-6ec3-31fc-d0c172264cf9@xs4all.nl>
Date: Thu, 28 Apr 2022 10:25:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 1/3] media: dt-bindings: media: rockchip-vdec: Add
 RK3328 compatible
Content-Language: en-US
To: Christopher Obbard <chris.obbard@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20220425184510.1138446-1-chris.obbard@collabora.com>
 <20220425184510.1138446-2-chris.obbard@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20220425184510.1138446-2-chris.obbard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_012507_715209_19CFBA24 
X-CRM114-Status: GOOD (  18.11  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 25/04/2022 20:45, Christopher Obbard wrote:
> Document the RK3328 compatible for rockchip-vdec. The driver shares
> the same base functionality as the RK3399 hardware so make sure that
> the RK3399 compatible is also included in the device tree.
> 
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>

I'm merging this bindings change in the media subsystem, so the other two
patches can be be merged for 5.19 by whoever maintains those dts files.

Regards,

	Hans

> ---
>  Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> index 089f11d21b25..3bcfb8e12333 100644
> --- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> @@ -18,7 +18,9 @@ properties:
>      oneOf:
>        - const: rockchip,rk3399-vdec
>        - items:
> -          - const: rockchip,rk3228-vdec
> +          - enum:
> +              - rockchip,rk3228-vdec
> +              - rockchip,rk3328-vdec
>            - const: rockchip,rk3399-vdec
>  
>    reg:


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
