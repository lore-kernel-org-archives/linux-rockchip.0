Return-Path: <SRS0=wP8P=PD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DF6AC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 17:45:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 40BB361184
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 17:45:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 40BB361184
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eZkuQM70rdXLmz4kidMY+sREM19tSsftYgvPyk3YuxU=; b=JJoSBi8nHw5UYbZBXz23Sa0iqm
	q7DFUFfqnG6xpS1hArl2FpBpghnWuOSX/USuHAF5z4EUu6xOXuVupDXirxm5HYOMClgi/Ili+AALa
	7ngfutsdk26GlMZPDhO2VOuXoD0KMLq4bhUkzvBvUopE6IVQY2rRaEKXEk6ynPg1ilNs7hvSICbof
	qr70qfRyGsGo0084O5oJR31vhqWQP1aD6fa0LzTreFA3qxjkk9ElGm8q1ECStEjfiJgtKDjy5aYo9
	AdIbZA820uo6ufkm+pVYFw85/MxJNRRae554wl8rZ2vLu6K2W2Mh2yTqWShW7fA4kfbIRgJ4zj7SY
	nZSOmPPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbRGj-008Lio-Iq; Fri, 15 Oct 2021 17:45:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbRGW-008LfF-Tj; Fri, 15 Oct 2021 17:45:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6344B11D4;
 Fri, 15 Oct 2021 10:45:05 -0700 (PDT)
Received: from [10.57.95.157] (unknown [10.57.95.157])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BA7CF3F70D;
 Fri, 15 Oct 2021 10:45:03 -0700 (PDT)
Subject: Re: [PATCH] ASoC: dt-bindings: rockchip: i2s-tdm: fix rockchip, cru
 requirement
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, linux-rockchip@lists.infradead.org,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20211015143115.1445707-1-frattaroli.nicolas@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8553b0cd-95e4-c3db-c75a-d3b28e99f131@arm.com>
Date: Fri, 15 Oct 2021 18:44:56 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211015143115.1445707-1-frattaroli.nicolas@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_104509_051674_52B68E3D 
X-CRM114-Status: GOOD (  18.72  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2021-10-15 15:31, Nicolas Frattaroli wrote:
> The behaviour described in the bindings is exactly the opposite
> of what it should be, so this patch fixes the description and
> adjusts the if conditions for adding rockchip,cru to required.
> 
> Fixes: 510f1c133aed ("ASoC: dt-bindings: rockchip: add i2s-tdm bindings")
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>   .../devicetree/bindings/sound/rockchip,i2s-tdm.yaml   | 11 ++++++++---
>   1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> index ce3e18b50230..93f5221e9381 100644
> --- a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> +++ b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> @@ -86,7 +86,7 @@ properties:
>       $ref: /schemas/types.yaml#/definitions/phandle
>       description:
>         The phandle of the cru.
> -      Required if neither trcm-sync-tx-only nor trcm-sync-rx-only are specified.
> +      Required if either trcm-sync-tx-only or trcm-sync-rx-only are specified.
>   
>     rockchip,grf:
>       $ref: /schemas/types.yaml#/definitions/phandle
> @@ -147,8 +147,13 @@ required:
>   allOf:
>     - if:
>         properties:
> -        rockchip,trcm-sync-tx-only: false
> -        rockchip,trcm-sync-rx-only: false
> +        rockchip,trcm-sync-tx-only: true
> +    then:
> +      required:
> +        - rockchip,cru
> +  - if:
> +      properties:
> +        rockchip,trcm-sync-rx-only: true

FWIW, isn't this just a long-winded way to say

   if:
     anyOf:
       - properties:
           rockchip,trcm-sync-tx-only: true
       - properties:
           rockchip,trcm-sync-rx-only: true

which itself could still be more concisely

   if:
     not:
       properties:
         rockchip,trcm-sync-tx-only: false
         rockchip,trcm-sync-rx-only: false

?

Robin.

>       then:
>         required:
>           - rockchip,cru
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
