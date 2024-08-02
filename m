Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 483FEC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 16:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5PZY8HsVBRm1ptfO4J2Y6KADJ2TaHQrU8QK61GZL3Rw=; b=b4ehSkWN7mD4GCbfcRQogPA6cc
	i/Ug+D5hvbQtrle53LeAI4kPhoGR8lLTC4lPuWZccWwh5ctJmUSewXmL1gE0D6Nu40B/vlRIIDIY1
	R9bJHr5+0aaYwWkToBadAH0qAVfG9qHKVCx7uPZxsyHgFWW/sUKc+sNg2vDAiwv1Pyk1iO3nsIO70
	qIyxEp9Pdrtr2pzbah9a/Qx8qMy43rZSeWcyHQHqcHGI3XcksX5aT6KN2XzXhR4za/37eIsAdc3EZ
	n+7YIS2/63guBH24UUy3J3aMeBWVWrrruD63ktF+6iWYGWJndydtBBOIgijoKy4YLXh59atXJ4LGx
	DxaqKICw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZuzl-00000009SJ6-3GXJ;
	Fri, 02 Aug 2024 16:19:09 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZuz4-00000009S5j-3Mu2;
	Fri, 02 Aug 2024 16:18:37 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1722615504;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KwALHsOKRKAS3Q1tdMqb1vHKsQ35qPwKEHl6XuAlFNU=;
	b=BZqsoHBImBeptoUEiWjy9id6NcBboizB2l8st96pwdi7ktecNNpPc0L8UtYTKw6DXkDCbz
	15syKXtIoHJaOialwoSLCpwP5BXIva2OvVIisdynejIi2KqfIwtdNggTr7aOpczJd1BMAc
	3P31KP1MLxqhLVKTS42QnxLD+K3y+N77rTiynPSCiMAcOKU1J79gmtEu0Yz/XBQxKdeNme
	+AeT/4w/UWOoD5JpMCUVJWGQLrZk8EzADA5Pcp7IEIqGYeGAyxQJXRzX0GA6I0e8K4VLNZ
	gxSGfDB42xebeH+MO8UAcbR8piIHETIKK4UwkBwvQ+e5WNB3uTfrnoQ1VpTPwA==
Date: Fri, 02 Aug 2024 18:18:24 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, krzk+dt@kernel.org, robh@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Cool Pi CM5
 GenBook
In-Reply-To: <20240730102433.540260-2-andyshrk@163.com>
References: <20240730102433.540260-1-andyshrk@163.com>
 <20240730102433.540260-2-andyshrk@163.com>
Message-ID: <940a46cb471e8b561c393caf2bf3453d@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_091827_380278_39254D67 
X-CRM114-Status: GOOD (  12.27  )
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

Hello Andy,

On 2024-07-30 12:24, Andy Yan wrote:
> Add Cool Pi CM5 GenBook, a laptop powered by RK3588.
> 
> Cool Pi GenBook works with a carrier board connect with CM5.
> 
> Signed-off-by: Andy Yan <andyshrk@163.com>

Looking good to me, thanks for the v3.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
> 
> Changes in v3:
> - Wrap commit message by a maximum 75 chars per line
> - Remove the superfluous blank line
> - Use "coolpi,pi-cm5-genbook" instead of "coolpi,genbook"
> 
> Changes in v2:
> - Descripte it as Cool Pi CM5 GenBook
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
> b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 2ad835f4068e..18ea4160e3e2 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -96,6 +96,13 @@ properties:
>            - const: coolpi,pi-cm5
>            - const: rockchip,rk3588
> 
> +      - description: Cool Pi CM5 GenBook
> +        items:
> +          - enum:
> +              - coolpi,pi-cm5-genbook
> +          - const: coolpi,pi-cm5
> +          - const: rockchip,rk3588
> +
>        - description: Cool Pi 4 Model B
>          items:
>            - const: coolpi,pi-4b

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
