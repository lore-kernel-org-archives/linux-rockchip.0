Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADDA7C48BEB
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=poYCRGCM2v+tWqhHQX7oNkeYoo8e+K1ubU+rEKKUlo8=; b=Uus2Wxi20T6cF/j4hY1MXWPjiv
	nkzB1BuF4IFGfoYF8YYJI5WcRZksJdTu+1gwZuH6HFsFE83PEJplIUwcbDLS+SPxN6VI9PDR8GPZH
	FfTeu4QTB2V9Dn9hBnI1QtLPkS7Lv7ivmMCJc4ORmI+jON+mza6bVNARFtvSsN5600qEkXx5awGEs
	jE3164/PkUVziy56FjuiRlaCku/V5vTEoOJoEgmLUiLDh+/oUODONirSCY8m/M9YAFyMWWQiFzTvU
	CtAd2QpWWGAgqZUtNVIZIX0s5i3H4II3F39qzZzt93Sc+bUIZ31htTkX3/4OzaP1+aDdGSBcidThM
	Dl8n8hag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raK2Q-0000000Dwvq-3sn9;
	Wed, 14 Feb 2024 18:31:18 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raK1y-0000000DwXw-0eEe;
	Wed, 14 Feb 2024 18:30:52 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1707935446;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yBm/TVAwluVa6W1ppxE/9VD5uiTG5c6NeW89/JYMXY0=;
	b=MjznPnCifzzDeID5hxhRe5HjMuAMYMBfod6hcJaXXeGnbCBQyqGdy0V0yM5MkMuUPJDXae
	3yUbZBZOvwjzNhN/gF1r+MvKtUjvueXDXbHJ5jHp5wwOtmmDpfYBwvQ8Gs/0bGPMmWkrxv
	byOOaaLyeYv/t6OzGbL6LfQ5CA+k3/va0d6nWFzbyJabyL2UExOVXZUX87a4DXlHioSbgd
	TInaD9VFAlYhn45qzK8+OzoDskmLudnUYBGxgx2wQcqUitJrd1ec4kW3WojXdOBfOT+wDM
	W5GkNZyizat53+yxu2OMvm1L3pdUY2U3RLZwjPk4g6Fd2aZtdPV3GASLaHwhsg==
Date: Wed, 14 Feb 2024 19:30:44 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Conor Dooley <conor@kernel.org>
Cc: Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org, Andy
 Yan <andyshrk@163.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Chris Morgan
 <macromorgan@hotmail.com>, Conor Dooley <conor+dt@kernel.org>, Cristian
 Ciocaltea <cristian.ciocaltea@collabora.com>, David Heidelberg
 <david@ixit.cz>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki
 <jagan@edgeble.ai>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Ondrej Jirman <megi@xff.cz>, Rob Herring <robh+dt@kernel.org>, Tianling Shen
 <cnsztl@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/4] Fix vendor strings on Rockchip boards
In-Reply-To: <20240214-moocher-womanless-21201b67b76d@spud>
References: <20240214040731.3069111-1-tim@feathertop.org>
 <c03220db663279c9e83bab81f3d829e7@manjaro.org>
 <e952d127-b12d-4b5a-838b-807a876db707@feathertop.org>
 <20240214-moocher-womanless-21201b67b76d@spud>
Message-ID: <d9a17e535f8e414f91fe06b2b71849f9@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_103050_937742_3CDA29C8 
X-CRM114-Status: GOOD (  15.23  )
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

Hello Conor,

On 2024-02-14 19:12, Conor Dooley wrote:
> On Wed, Feb 14, 2024 at 03:27:08PM +1100, Tim Lunn wrote:
>> On 2/14/24 15:14, Dragan Simic wrote:
>> > On 2024-02-14 05:07, Tim Lunn wrote:
>> > > A couple of rockchip boards incorrectly list their vendor as Rockchip
>> > > when they are in fact not manufactured by Rockchip.
>> > >
>> > > Fix the vendor strings to correctly list the manufacturer
>> >
>> > Just checking, have you verified that the old, incorrect "compatible"
>> > strings from the board dts files aren't used anywhere in the kernel code,
>> > such as in some drivers?
>> >
>> Yes I checked that, there are no remaining references to the 
>> old/incorrect
>> compatible strings in kernel code
> 
> What about other code? Like a BSD or a bootloader? If nothing is using
> them
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

I just quickly checked U-Boot and it's fine.

> Fixes tags I think wouldn't go amiss, but I'm not expecting a resend
> with them.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
