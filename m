Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D631C3DA60
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 08:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WK9w1M7qmhLpuOVeWCREoKKqNJMapNJTivg3IePZec4=; b=gvdVs9qsu8ocA+1jJ+vhjWc/WE
	YepFK/H59KpB+c1VAcfqOs9V45HW/jYE5/bapDg5pw0867Ppt2Hl1EXDGfnwmSA1SYD2Oha3rBu0a
	1AWD4IO/KK9TgZNQxRN4ttAdKVJ5O7DHwcdUviA31Qhg8Gduyrk0F7jbssJpIcmTKNX7iz3T/1Ef8
	ilZA5pTDIRYvz8PFjEmhQFc161mi8mzE3alaXc8xVcCisTIiBJbiBFBsHdANvtv8Vgv2iqdt8V85k
	dk8owvYPnkTPS6oVKuJDsVCRNY6XOC2vfmB07sJpwkh1YwnK9/z0FXQG6Fs2ntvpc+JXGHPKhJUe+
	r1hqT59w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUMpP-0000000GTGp-1JWf;
	Thu, 18 Jul 2024 08:49:31 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUMp3-0000000GTAc-0ORK;
	Thu, 18 Jul 2024 08:49:10 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721292546;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SALkvY/QibAL7upDWk5lu22M6tm/3Rix8LvRtINb1hk=;
	b=NLMbc8N1+pWcWgTzBjFB/1Goj8gSX2Quy7kTbfHEY/UMDlew7MRKpgnAox9NnyMuCX6bBJ
	CuJdLX5YBHgJzuqBmep+pLztFl/x1GSBArIEvGUZTSpUrT9bxFBAwdlU00bZZ0C34mC+Ad
	/dczLmf4anWWmLPN7qmM0rVuEjBajwnZFO5re7J5g1xD188j5cD3/XTpszjRxpFO8zUpgw
	jWttxSEYbZG3eDkfI45SyVdeOa0pq/KP9rYgjXPd7Q766EWlyOXaQYExU0phXL8A2D7njH
	24iJnetp80fk4csdZcJUpbBWB8W4zNkvJKAj8U3mk3tJe10x5DRADQDyCRheLQ==
Date: Thu, 18 Jul 2024 10:49:05 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Christopher Obbard <chris.obbard@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Kever Yang
 <kever.yang@rock-chips.com>, Collabora Kernel Mailing List
 <kernel@collabora.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Firefly
 Core-PX30-JD4 on baseboard
In-Reply-To: <20240718-rockchip-px30-firefly-v3-1-3835cdd22eae@collabora.com>
References: <20240718-rockchip-px30-firefly-v3-0-3835cdd22eae@collabora.com>
 <20240718-rockchip-px30-firefly-v3-1-3835cdd22eae@collabora.com>
Message-ID: <742974effd418ca210c435b0effc99b9@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_014909_319535_41ACE036 
X-CRM114-Status: GOOD (  11.13  )
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

Hello Christopher,

Thanks for the v2.

On 2024-07-18 10:40, Christopher Obbard wrote:
> Add binding for the Firefly Core-PX30-JD4 SoM when used in conjunction
> with the MB-JD4-PX30 baseboard.
> 
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
> b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 1ef09fbfdfaf5..2ad835f4068e2 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -148,6 +148,12 @@ properties:
>            - const: engicam,px30-core
>            - const: rockchip,px30
> 
> +      - description: Firefly Core-PX30-JD4 on MB-JD4-PX30 baseboard
> +        items:
> +          - const: firefly,px30-jd4-core-mb
> +          - const: firefly,px30-jd4-core
> +          - const: rockchip,px30
> +
>        - description: Firefly Firefly-RK3288
>          items:
>            - enum:

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
