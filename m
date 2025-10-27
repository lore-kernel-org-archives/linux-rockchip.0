Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9F04CCF9EA
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 22:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2IrYKc2YVw1N/8JpT6L5wRyrFk6GjlqPfLayqYZL8uQ=; b=m7xHSlngETnJyY
	H4fQLCAIRFEtjLIhvM01opfH5GlzjFYhU9js+o1wSN2+5N7Q+0kqGCA4/70012PAMVNLkFh5j2nOu
	jGkmfikuPtD+4qv/VkLs3H9N1IVe5fstoIVs0chIzCb5DwFORhkZO48BMxXhz/2gFPAxJurMd8ska
	JbKlITbo0L+tbG/p6oU7Rt7Tn/M/dnP8o0xtYBZmwLzWjQ4CtGWNqpa1rue4YaeJ1xygnTdVfWEOs
	+22p6QRQUo874uvaBhrOzxP0qeD5/2M6g3bxOor1LeKe07NAVCrxJrTXQGaO9e5W5sI1jFm4XKNKI
	pxFkJV/akgX2alQMo9xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDVgQ-0000000Es52-3SYK;
	Mon, 27 Oct 2025 22:27:22 +0000
Received: from smtpbgjp3.qq.com ([54.92.39.34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDVgO-0000000Err4-02rz
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 22:27:21 +0000
X-QQ-mid: zesmtpip2t1761603997t8c6ab6ff
X-QQ-Originating-IP: lA5oyn2I9HILxI+p/3NZ4NIfvveAvyDEiKBVdsi7o1Q=
Received: from [IPV6:240f:10b:7440:1:27fe:5767 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 28 Oct 2025 06:26:31 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15533347437243192222
Message-ID: <99DBBA392DBE07E2+bd27587c-ba94-4a3d-890a-9a38f2b5bc04@radxa.com>
Date: Tue, 28 Oct 2025 07:26:30 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] dt-bindings: arm: rockchip: Fix description for Radxa
 CM3I
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonas@kwiboo.se, dsimic@manjaro.org, amadeus@jmu.edu.cn,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251027122641.39396-1-naoki@radxa.com>
 <20251027122641.39396-4-naoki@radxa.com>
 <bd746117-910a-4874-8248-98d3ab6080b4@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <bd746117-910a-4874-8248-98d3ab6080b4@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: MX+1SEN3H+wAqaz+gtICTtIVeoL6T6R4IvWgdXF7HTXZ6Q9sqVgHQ2zY
	1qC0bFZFr0tuR87FdlYvKKOd6AFC0oR4bT6qX0kjCuvFCFz5jZpOq9xqvt3oL2k6tOxy64U
	jfPgMnXs6qCFahsbQ+AYi6uxYnhLqQ9cl2TzYhlhfg6iP5e8FR7kROLhxLTuMx11SzbNP82
	KGcTbdHhpLe+4i6EgGVVvRMfwDigY3njhp69BUbPXCFQxzFutrmsbyFijgm4FSAdTSdok3v
	GmYa+2HZhCLaE+O+ECF/jUYtFWM+urBOf1wxao1mM8U6UG97UKBvz72TAcDXVW+8ruiY5sV
	NCL7HrdgsisM/+Y1fQYQaHnTXQc3SaGGYgM51KsbN7k6D0c+7L025TGEa/jR/5sGR8KqSJV
	0ycqUx4gY3FdStNsitGeUqJ8P9LHYiM3/SS5c00+4fhULFXn4RI20Rx7gErSzXAKaRhMqdm
	GBaZuKAi/xDgQLgJ43RbqzsXu0Rq85+2kiRfFQwMLRvlmQU6sOX3EsE6G087QdU7rtQjnjA
	f9auSH+olfULG/AcVyJ3B+e0vf5VctcmsCMYo+OGBlU6vvyhzKJ+ayKglYsEXXlHtj2hoph
	xZW2XWPr19ev7yLoLOn2fzPiHXA1N05t1FbfEYfcVCiuWfCqy67enA7hglx0wwZ//ggxkCm
	3dnosSckjf9OhnCcslIDOQohOgnHioGOXDDPonZ5oFxQ1RtworV+HaZMzCIdhQmYR8R5co7
	2u4h6UoUe5CBZaP10uGTiEdrjfO014nKCvixmpEh3OVHDUoXoX7E1wFXr0HTfuRqRV7Ck8Y
	gxEndxJEaLw22gmMY1NzvtQIedeWnipgyS4+Pia1F3EcC0MCkfNivdjz3zAM4JjFjKPXwvC
	/2tscdn2JGK4LAC5iy/O597REBjlInqzQzKedROW/QFn42v4xGiILZO0U/EQKQbSsSgzDog
	IReJxhtHvD5nyJSn4ol4b7Giyz43mgo3J3ToBm3ixs2/IvBoq0KsZBUeD
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_152720_328116_48D4387A 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
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

Hi Krzysztof,

On 10/28/25 04:07, Krzysztof Kozlowski wrote:
> On 27/10/2025 13:26, FUKAUMI Naoki wrote:
>> "CM3I" is the preferred name.
> 
> According to whom? I would prefer previous, so for sure:

Sorry, it should be:

"CM3I" is the correct name.

Link: https://dl.radxa.com/cm3i/docs/hw/radxa_cm3i_product_brief.pdf

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>> Fixes: ae9fbe0b1f965 ("dt-bindings: arm: rockchip: add Radxa CM3I E25")
> 
> is not true.
> 
> 
> Best regards,
> Krzysztof
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
