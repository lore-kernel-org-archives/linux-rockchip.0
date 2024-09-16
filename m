Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64D66C3ABB2
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Sep 2024 08:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2fdp+xofEUepP57c0WJHWVUqq4tjLdem9qfW1GEq+g=; b=Sfrc3ud9LSRZIS
	e9SbiEeIm8zOtWYZfW85cAD+OAazTUkVA75sLtnoEiptjAh6U474xMIrjJKAroRhX0DDND6OXFssL
	KRE88Kz9f+iDaQaKcBRezQhhxaw2sXkVZRwmKeSDEapHLRKpv8mv4grdYR+ifykcO5F7AFAryGkTa
	9GLkflw1EiJH0ceaoU0xtVoLvKa0knBLSV4Md0MkL3h5NZt/GV+FPfgvcSJhsxjmgZx3FcEpM7Uk4
	WgmqrYgF/Vow1hXe/rsYFQJErWBuAkp5WviU6Wc1kCiHHN0dIPZaQCQGYDFnlS63lOxVSq6+SCLYZ
	CgIvcO5//wpun1gH99ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sq7Li-00000003SvV-0J8N;
	Mon, 16 Sep 2024 08:44:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sq7Jg-00000003SPh-3gKN;
	Mon, 16 Sep 2024 08:42:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 753CE5C5A46;
	Mon, 16 Sep 2024 08:42:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE46AC4CEC4;
	Mon, 16 Sep 2024 08:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726476159;
	bh=swYJlI50S7AJ+S7i31RttXpQ4Ia7PAjwfWgqOfvVGGM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ekLWbcu3OR+ybUQgWZZYE3ngjaaeoqD7TPRPTIptDXkAxLKyVbAmwKkJveBU10ofy
	 IGFaR2c81Xu5nV4Q9AOV1p4x19/CisgizWGM+D96Sav4PGHSJ7PpCtKsy4y5fXgleK
	 sj8/eJHaoZwj99LI8NPBzSUzYgYS1QGW2F+5sl9hJEuyPIDYiVYwcV1JYAsNc9TnYB
	 L5YPj0m4dPxqZPJILj2UkBVU8Z5yD5mM55qZdZ+AumDG1c4g5i9yf2WfTNbttyjvca
	 aRMoa+euL5N+bE+R25QRwHIw2kyRR+XyLfw+y+vUveu4TjRM8iaEyPvYpdQwhN5S5r
	 WtS7pCgpPR2ug==
Date: Mon, 16 Sep 2024 10:42:35 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>, 
	Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add prefix for
 Ariaboard
Message-ID: <6jpnlw3fj3l3uz4d3as7gz7lsggchnvj423bauw35cjx5kxlnh@p3trmys7yvjr>
References: <20240914145549.879936-1-bigfoot@classfun.cn>
 <20240914145549.879936-2-bigfoot@classfun.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240914145549.879936-2-bigfoot@classfun.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_014241_004658_3CCD953D 
X-CRM114-Status: GOOD (  15.24  )
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

On Sat, Sep 14, 2024 at 10:55:47PM +0800, Junhao Xie wrote:
> Add an entry for Ariaboard from Shanghai Novotech
> 
> Ariaboard represents a product line from Shanghai Novotech Co., Ltd.
> 
> Link: https://shanghainovotech.com/
> Link: https://ariaboard.com/
> 
> Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

<form letter>
This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation: Please add
Acked-by/Reviewed-by/Tested-by tags when posting new versions, under
or above your Signed-off-by tag. Tag is "received", when provided
in a message replied to you on the mailing list. Tools like b4 can help
here. However, there's no need to repost patches *only* to add the tags.
The upstream maintainer will do that for tags received on the version
they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.
</form letter>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
