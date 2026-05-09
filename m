Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30624CD3445
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 17:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujyygZC2pMT9b5OvUbFuLuIeLdquJ6Zt7NGWtdimufo=; b=SVeItYE5LJDVCj
	K+DQGYO11Jc8GlEy0AF35Mw0AKM4tOQwOL/GtBD1l6tBl4LEysTbmRj4giLhTny6IqpSojfGSJ5Ye
	ZT91OVgrNtbWiPm1xwjsGwj5WndLHdH/jRrQEA/kdCPlli8hIscBmmxWMrjSCmbdXVF4mRWr9I/pJ
	XVrIq8IdLL1JdQZ/x0KG+A/DPyftDZEkXnQYjb1sE69yPgIWYA5KlNyvLlTFIJBwFIvZxe27CRMZP
	Z8emy1L0raUY6uu/SMfluLi/1x4QQn7vAbCglviDiHIFi/i9xf/K+uC2eXeUOB51eda9yGxGQfgTr
	sw+xhYqroD9BvoSFFD+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLlv9-00000009Ntm-1JnP;
	Sat, 09 May 2026 17:56:59 +0000
Received: from out-173.mta0.migadu.com ([2001:41d0:1004:224b::ad])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLlv5-00000009Nrl-332j
	for linux-rockchip@lists.infradead.org;
	Sat, 09 May 2026 17:56:57 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1778349401;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jIh60pxxvGKOUsnTbxcu3v39dVCI3FE1FnfA1fpg1iA=;
	b=MPD2dCcmz3mdk8VygCqc9i2PHEr4TZNN9lNCBmKzcxGHZ+eWZ+AuNUgrvZXxXTlqHwdXS9
	wx7CycvLytT3JhZ8axiRlRYLDxxuoBCb9qD6djOQe+86kK2bCeo2lkFLpN2ANV14xXjT5L
	pccNsYyuvstsAo8Na6Faab8YRnpWDwwQpJt6sZrpMXFeH8uMctcmAa8SdnZSDwRZVDWHNz
	5stVLgqHcGfEohu6HqOjmJCrk4NLHKgJgStX+NCXk7IrOF2T1yy3icRH7qmwwqQRarbgIc
	+YLJyETMWPEFvHAQ0fNd05zlzs8yF8Jm+fQHZZkxI7FhRkPx32RcQfdOaOIw2A==
Date: Sat, 09 May 2026 19:56:37 +0200
Message-Id: <DIEC8YT0XK4O.VAG6G4H31KJM@cknow-tech.com>
Subject: Re: [PATCH v14 1/5] dt-bindings: vendor-prefixes: Add Verisilicon
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Benjamin Gaignard" <benjamin.gaignard@collabora.com>,
 <joro@8bytes.org>, <will@kernel.org>, <robin.murphy@arm.com>,
 <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <heiko@sntech.de>
Cc: <iommu@lists.linux.dev>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <kernel@collabora.com>, "Conor
 Dooley" <conor.dooley@microchip.com>
References: <20260415072349.44237-1-benjamin.gaignard@collabora.com>
 <20260415072349.44237-2-benjamin.gaignard@collabora.com>
In-Reply-To: <20260415072349.44237-2-benjamin.gaignard@collabora.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260509_105655_907926_5094A8FF 
X-CRM114-Status: GOOD (  10.76  )
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

On Wed Apr 15, 2026 at 9:23 AM CEST, Benjamin Gaignard wrote:
> Verisilicon Microelectronics is a company based in Shanghai, China,
> developping hardware blocks for SoC.
>
> https://verisilicon.com/
>
> Add their name to the list of vendors.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index ee7fd3cfe203..ebd9072300a8 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1761,6 +1761,8 @@ patternProperties:
>      description: Variscite Ltd.
>    "^vdl,.*":
>      description: Van der Laan b.v.
> +  "^verisilicon,.*":
> +    description: VeriSilicon Microelectronics
>    "^vertexcom,.*":
>      description: Vertexcom Technologies, Inc.
>    "^via,.*":

FTR: Another version of this patch is already present in Linus' tree:
c131d78840d7 ("dt-bindings: vendor-prefixes: add verisilicon")

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
