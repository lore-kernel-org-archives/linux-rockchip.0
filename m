Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 472ECC00140
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Aug 2022 00:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hpkh4H96HmgVpjxHItSQr1xmbHsUxa86m0WbRUeE1y8=; b=B6QPxU610Aidhg
	6VR68GTt/nGztCAwFyN+deZM7n0zBg92k59LLjwzkIxCH/dyilT1XdhqQom28nHaoYmeFSqeuz/aK
	YypuVJGMQKVu+miUqF+2sk4LCSIcqDeqQs15v4+ZaGf6/jova9WK/vjBO1cwIulnnLMIcnOtmwnqG
	m8+um47De0IBBl1nKJ85dAhd0SUY1bX8hJZp4rhXg170O3gSPamRoMQ15ABe/OEzd20+wVm3K7WOx
	8E4hDbqPwSSGwi6+8qkhVj1GmVz7/YxXBXgakFtGsL6pqDZydkBe3yQuMyi9jYZjk0CNovNHO121C
	qE/6E2krV0JM5rrmgbWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oK81j-002E1T-9T; Sat, 06 Aug 2022 00:50:51 +0000
Received: from proxmox1.postmarketos.org ([2a01:4f8:a0:821d::2])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oK81X-002D6t-R0; Sat, 06 Aug 2022 00:50:41 +0000
Received: from [192.168.1.12] (unknown [81.178.197.238])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by proxmox1.postmarketos.org (Postfix) with ESMTPSA id 4B54B14020C;
	Sat,  6 Aug 2022 00:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=donut; t=1659746912;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6+H8xUW4Rhn35ZgS8r8sBJ9xnI+2jJ+DSyfpo8/CdlE=;
	b=NT6RaTjguEL+pJQ67McqDUL5SQqhI+oZDFYyZemMvLELpD0dByrPhJxSk7JT1zy03FmaHl
	NsZUMu4beG2SAijx1NYPmgiCg+XcZrPpHrE9QjT8F8ZkK7NR2jF7ak5Y3h9vwDggzufQxn
	lC6VKM5PNDNxd/4+oCEyRtAlVyjGa3U=
Message-ID: <a3ea641b-548e-5858-f8e6-0c84966fc97c@postmarketos.org>
Date: Sat, 6 Aug 2022 01:48:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 0/3] Add support for the Pine64 PinePhone Pro phone
Content-Language: en-US
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc: megi@xff.cz, martijn@brixit.nl, ayufan@ayufan.eu,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220805234411.303055-1-tom@tom-fitzhenry.me.uk>
From: Caleb Connolly <kc@postmarketos.org>
In-Reply-To: <20220805234411.303055-1-tom@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_175040_448461_D908673F 
X-CRM114-Status: GOOD (  11.47  )
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


Hi,

On 06/08/2022 00:44, Tom Fitzhenry wrote:
> PinePhone Pro is a RK3399 based phone produced by Pine64.
Please CC phone-devel@vger.kernel.org for phone related patches
> 
> Add a basic DTS for it. This is a working base that will allow myself and
> others to add more nodes.
> 
> Changes since v1:
> * Simplified the DT to a minimal base.
> * Introduced the RK3399-T OPPs.
> 
> Samuel Dionne-Riel (1):
>    arm64: dts: rockchip: Add RK3399-T opp
> 
> Tom Fitzhenry (2):
>    dt-bindings: arm: rockchip: Add PinePhone Pro bindings
>    arm64: dts: rockchip: Add initial support for Pine64 PinePhone Pro
> 
>   .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>   .../dts/rockchip/rk3399-pinephone-pro.dts     | 385 ++++++++++++++++++
>   .../arm64/boot/dts/rockchip/rk3399-t-opp.dtsi | 118 ++++++
>   4 files changed, 509 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
