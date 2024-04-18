Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9FEBC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 15:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7UB+Wwv5tiK7lGFLbM5M7S7k0HSZOyFm++u16YkMP0I=; b=Wkh6GB8H8j+3uycjxQIxn3KF+2
	V4gEFkTbUVsoNmlDhSRw/ji71pZibDSGakYNkg4AFFVzWaq/uot/U8vrBw4zeXxvL51koxAsN/B+I
	LhqRyQNZR7+Mw8QueWYZUp/ynJuCeQbElq02JMjJpzAquaZBDBDIBkF1BlphJXtcGxaYOOYO82VT3
	OSPvB5Ex/I03orzJ39K3kxznxyA+yzJ5aP4mh/mLJinbIHJnXZKUFCO9Yb0Hfcz0Mii9cS/xb6cjG
	aNwtNe8q8302xbP3vKHn+yF6fnLxeP6ZJGX65XtJQiYshsI4b8+/EyvXsybHaazXfBbFAaPia7OMB
	azzTkUfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxTZp-00000002lmJ-1Lb4;
	Thu, 18 Apr 2024 15:21:29 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxTZk-00000002lji-0azC;
	Thu, 18 Apr 2024 15:21:26 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713453680;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=A7pDzprEULb6CX6lMCrdxJvnLBOtCYuc57B+5gNsxmg=;
	b=AqtQxprhMc32q9g8MXCW5LY11LtyaPhs3Orfxlig93+Yp6qilPMh3Yu1G8WvwKR6tOkI6E
	KwsfhKMfvjIvvX9ujuyIU2Eb1z8NnzGLJFSoXlvGecAjLNCGHIJ2FMJS6sb875NF78Zgqh
	ZI14BtUe3koLWe1qXcCn2rZ55g3IiEeIVob0Va5JOJmFd+3tv/dXUbqd4Fal7CpUmaTXqk
	l06Cka29b9MyU1MRfcwnhxtZ8TNGdth61r63jrXZnxBrm4Y5o5Q5jul8a1zf4TO1CjsW6B
	TD0n6okY0jPdOwz2eq61VJieBJPCkF4Nfp8BsPcZeSj0BlTqqr4umUxs6Rkarg==
Date: Thu, 18 Apr 2024 17:21:18 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Rob Herring
 <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: correct the model name
 for Radxa ROCK 3A
In-Reply-To: <20240418130120.67663-1-amadeus@jmu.edu.cn>
References: <20240418130120.67663-1-amadeus@jmu.edu.cn>
Message-ID: <d00953aab0f1c978e3720885a6844caa@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_082124_691671_9EEAA99E 
X-CRM114-Status: GOOD (  11.88  )
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

On 2024-04-18 15:01, Chukun Pan wrote:
> According to https://radxa.com/products/rock3/3a,
> the name of this board should be "Radxa ROCK 3A".
> Also update compatible to match the model name.
> 
> Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>

Looking good to me.  I'll send the remaining naming cleanup patches
a bit later.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>


> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
> b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 99bd5e2c76a0..88e9e0011953 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -772,9 +772,9 @@ properties:
>            - const: radxa,rock2-square
>            - const: rockchip,rk3288
> 
> -      - description: Radxa ROCK3 Model A
> +      - description: Radxa ROCK 3A
>          items:
> -          - const: radxa,rock3a
> +          - const: radxa,rock-3a
>            - const: rockchip,rk3568
> 
>        - description: Radxa ROCK 5 Model A

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
