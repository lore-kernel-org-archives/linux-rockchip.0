Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5E7CE7718F
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 07:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RRvnlX+JLsaN4y8t0ngEoXVtu8HXH3ZlV64XSANDZk=; b=tJqKHwon0alGV0
	5UJMeaQlFXosD/hEVXqJcnu/dd0a435iF2xbbyOnoxbm6QNJx2d8ijmdtY34om3fTPyou6o92MDRJ
	WR6eXYV8wit41oyJHOYN8khW0eWQFIi0uGZpsicdcSKNcyEFReKlTFW3Z6/sV3ZQ1M9DcFVUpq1NM
	2jTzytmzQo+4NpIU7joRj1n9A9ZjWpLzQOgSzxKPfoOLeWN9Cpi0udeePaKYaRz4Javc1V2RDpZ8p
	5NtCyvxVbUIVsR//ZWE/h1iu7RAOu6SvsaEPK8uQMtm2v59mjXnfFJcMDLP863Qnu/WeBTjgZB6RP
	qThhujcD3cdCDWLi/p8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR4xz-0000000HHPr-3dZu;
	Fri, 27 Dec 2024 07:41:03 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR4xx-0000000HHP5-3BnQ
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Dec 2024 07:41:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8513C5C603C;
	Fri, 27 Dec 2024 07:40:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35F8BC4CED0;
	Fri, 27 Dec 2024 07:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735285260;
	bh=vZh45f7DcV/ihH8wAEQ9uEdqDbk/ADLKTkNo1deSqJM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JsuYEpYWKcziW/Nu1Vnug3S2gKroilmKL/BFlsVF38p/8VySn7MqxwFBj4DsDI5KI
	 wRuU0pF0wBVGEvjYxwBoLuPExkkmy2nFrZ8Z9fu/VF0Jke7+ig1t0hYvBFtpKOoVb+
	 Eh+zP/eHQPdk7TYczGd2yuLz8bR4ovAkzhuYUgxWirwIsy6wzzGcn8NUwIbaTg9stY
	 9vi4y10qk8eBNGL5ihAyvODGM/1Zft/Qamxag6/x2YvoWmv2Sre4aKNvf3DpHa+BaJ
	 srtCnDoYGW/vNc4EfV1cnAkXaCCrwpy1TNzcpwcZ+bgMjvZLNsY3B543hRWrirXC+Z
	 NfTLTufwUVFkg==
Date: Fri, 27 Dec 2024 08:40:57 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	David Airlie <airlied@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Simona Vetter <simona@ffwll.ch>
Subject: Re: [PATCH v2 06/17] dt-bindings: gpu: Add rockchip,rk3562-mali
 compatible
Message-ID: <ebznnq7lhkgk6c4ft5e7q2u7vn4z6yi4ntyd5wiecvcme6eri3@zhgyttih2zxc>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-7-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241224094920.3821861-7-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_234101_848073_93CA99FA 
X-CRM114-Status: GOOD (  14.22  )
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

On Tue, Dec 24, 2024 at 05:49:09PM +0800, Kever Yang wrote:
> rk3562 has 1 ARM Mali-G52 GPU,.
> 

This we see from the diff. Say something not obvious. Where is the
driver change? Why devices are or are not compatible?

> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index 735c7f06c24e..b0d4806614aa 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -25,6 +25,7 @@ properties:
>                - renesas,r9a07g044-mali
>                - renesas,r9a07g054-mali
>                - rockchip,px30-mali
> +              - rockchip,rk3562-mali
>                - rockchip,rk3568-mali
>                - rockchip,rk3576-mali
>            - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
> @@ -60,7 +61,7 @@ properties:
>  
>    clocks:
>      minItems: 1
> -    maxItems: 3
> +    maxItems: 4

No, existing devices did not grow. Plus this is now desynced with the
names.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
