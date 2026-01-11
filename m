Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5157CD2502E
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jan 2026 09:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2LawsMlzu2tMviVPiJXTSTcpJ0DNllwIpsSeyWafz8=; b=PqnGy//bSnaJYf
	xvpfJpSTbEoFaCHpeHOjJGpr1CZEjVLBhGE42waA1tL9nnw0T6VThrSNVM9CnXHiJRmVxfRmyq7Ao
	ATFQ9g2VWJHyAdMl+F90EF5PlDgNmPJVltbbqduv2G5TqDbAujwZmcdfOHe54vNfoT32sCjcnBzWY
	5dUoLscyfTYY5VddzjIT3iMBN0jzWloGh/ltn9Q62meOhqlt/yHKlI5GLzOVyd88qmqH9APbTllty
	0owHZ5bB6gwZxWEvdueCDznYCOgvkT+WXVYLp2YjrpvO+b5O5YPyHt2T7p5lgmuVWbjzNIjNiazUL
	mZH0Zwr3J5hAIZBbshZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1verxP-000000045bp-0UKs;
	Sun, 11 Jan 2026 09:41:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1verxO-000000045aG-13YH;
	Sun, 11 Jan 2026 09:41:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=+wr9BUD2EsKWYxLcYOUIrFPJntMmQbYJ0iMrn06ut0Y=; b=HYSLeOnWoOJBhwbJ7GwDT4z6xr
	3cNSCUu5KIGfPvBM4/tz6stZAznAEce3Y5IV/7ml+07XLFXlZx/958okUqD4Nvqx72YZNAgYz7Im3
	2FxPaYcpKYkHfTjDkeqZPROTFoqCux7dqGPB1nR7sNGgFqyHTnHOMnBglYcHMrp7kYN8NHMR/yFJr
	xGstTtIKU4p7a47k9GBwKYUC8uAzxfrU4Y/nxgRrU3QG6Eewkd+SvnGctzUNz/S3wBLi6lmux9LJc
	VRUJiP2o59v+FyNMKeI83wLNcsKkKhmHSeNTM5FiFHn7hmHyNW7ew0Yf8CCNpCCcl2XGQhBaHcb3v
	SJBzMjyA==;
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1verxG-0000000GyB9-43ja;
	Sun, 11 Jan 2026 09:41:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 58954408F2;
	Sun, 11 Jan 2026 09:41:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F452C116C6;
	Sun, 11 Jan 2026 09:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768124505;
	bh=+TuUJhJ2yQsU60k2jmWlPomv8SG7G2UBq1YcJ30ostc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M3sgumNEkLFv6olReQSEPNWaivLlKJr84QX6oc7VD2c9MCMzAHlkriDKjmNsolKlK
	 riRd35xrS4wGdjpi4DuGG6O0aG03qHKvHzUZNjhsjnXhhj9C7vmkZJ7R2q9QCLO781
	 o6caaz5gfwUZ0qRi0lRuXUcUab+YhyX+IQb8GVcrUpEnMfJ5+Kg24nASsxuB+3BcdT
	 QmITz8hhbfUwDNMKEQPC+xxd/d77OMDcgHywT35mK9WuLfLJlhMs7T+xQ5JFD8dkA0
	 YQ0XGFT7WizVkwO6lwi13XY9stE3bvP32d1M7Ng9JzxbD2zVmbJTYZa8JvnIvRbeuw
	 vm8pUzHj87dag==
Date: Sun, 11 Jan 2026 10:41:42 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marco Schirrmeister <mschirrmeister@gmail.com>
Cc: heiko@sntech.de, ulf.hansson@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1 1/3] dt-bindings: mmc: rockchip-dw-mshc: add
 rockchip,disable-runtime-pm
Message-ID: <20260111-melodic-chestnut-coua-73e6ec@quoll>
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
 <20260110010715.1610159-2-mschirrmeister@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260110010715.1610159-2-mschirrmeister@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_094151_660791_EDC8FECB 
X-CRM114-Status: GOOD (  16.90  )
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

On Sat, Jan 10, 2026 at 02:07:13AM +0100, Marco Schirrmeister wrote:
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
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index acb9fb9a92cd..41f2644ca2ef 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -100,6 +100,14 @@ properties:
>        If not specified, the host will do tuning for 360 times,
>        namely tuning for each degree.
>  
> +  rockchip,disable-runtime-pm:
> +    type: boolean
> +    description:
> +      Inhibit runtime power management. This is required for boards

What is runtime power management? Like Linux PM? If anything phrased
like that is it is a clear no go. Bindings describe hardware.

> +      where the bus timing becomes unstable if the controller is
> +      runtime-suspended.

You described the desired Linux feature or behavior, not the actual
hardware. The bindings are about the latter, so instead you need to
rephrase the property and its description to match actual hardware
capabilities/features/configuration etc.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
