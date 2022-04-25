Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD706C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 09:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3MX2JOkExkSvcOCbJJM9qJsxghYCpZP4srl+jc4m+T8=; b=R0QFpRFW+I171C
	bRZn4qZLV3F3xrOxuySsF6l5samhVGl6jU581wCwaRL4ohVpe0XYVM2CMauitwOUMouQNC0HPAXyl
	SaAR1O6FLfdrmiTmkdQcPosmV7ZCK7DBXAGJwr9cOJRIGV4HQ28uhoead4KjLtARwr569uLXeicqO
	YuwesCZNyzZ2/ph1RKXCKr4i33w28uSFb1RsxVPBetEZMbQYTCn0bEsWK3vZijzoI48NpHdYHUVVP
	idFAf0yb+funZ8OWtWM2kAxzBJYLamAg9PVs5ogDxsKZ3YVm9vBoLMimhzSlziJYW6VGBvAShUz0o
	D6gGnYO5aFN+I24tDvMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nivQK-0090Bq-KY; Mon, 25 Apr 2022 09:54:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nivPu-008zys-Ow; Mon, 25 Apr 2022 09:54:11 +0000
Received: from [IPV6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf] (unknown
 [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: obbardc)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 4A7021F44585;
 Mon, 25 Apr 2022 10:53:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650880438;
 bh=VBMc9dIEE785nVs3jdcNupByvEPldz01DvtMEbOIyyI=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=ij1WYP9D2ZHcuq8b3qLpKQ8MV4gdm4BeswTuBmmjTbTDl+JrdaXXBC7VvxLR+xn2v
 ddZrrI/HItZ//PKLh82rCb2AChunncCjLJcnpDZ6Xq1fPWecwwdsnTVIo8LjxDlbXg
 Dyoxvup/DDgy/SYK4w+yrSbnayParbZl1VlrDQ+qCVhMAEXjK0Q1ve4fjNuLbrA8ah
 a6TzaGR8kS7l+dO1Mb/n4H17zQUUulYa+S9GviBVmR/Rs+mVYHqqjf+BYp0+Hr0eBs
 48g+6wJAAiI0MDcvEHTqt3lkUoXYqky3s3JYdv8UJiW/FC2mPjX1VeA+1LQ3R2ujsh
 jyziZBWtRcL/g==
Message-ID: <366fe755-6f07-499a-0b19-f046fd03c89a@collabora.com>
Date: Mon, 25 Apr 2022 10:53:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/3] media: dt-bindings: media: rockchip-vdec: Add RK3328
 compatible
Content-Language: en-GB
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Alex Bee <knaerzche@gmail.com>,
 Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20220422133803.989256-1-chris.obbard@collabora.com>
 <20220422133803.989256-2-chris.obbard@collabora.com>
 <ff87d5cb-b0d4-95a2-90b0-7827a2a34d05@linaro.org>
 <34819690-5cb7-bbce-a2f5-3f6e66661049@linaro.org>
From: Christopher Obbard <chris.obbard@collabora.com>
In-Reply-To: <34819690-5cb7-bbce-a2f5-3f6e66661049@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_025403_063005_578C4209 
X-CRM114-Status: GOOD (  15.07  )
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


On 23/04/2022 18:31, Krzysztof Kozlowski wrote:
> On 23/04/2022 13:10, Krzysztof Kozlowski wrote:
>> On 22/04/2022 15:38, Christopher Obbard wrote:
>>> Document the RK3328 compatible for rockchip-vdec.
>>>
>>> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
>>> ---
>>>   Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 1 +
>>>   1 file changed, 1 insertion(+)
>>
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> I acked this but Johan pointed out that your intention was different and
> missing patch context is quite important here. Please explain what
> exactly you wanted in the patch? Now it looks actually wrong, so my ack
> is not correct.

Wow - I think i was in weekend mode and forgot to run dtbs_check ;-).
It will be solved in v2. I have now added the check to my "pre 
send-patch" review checklist.

Just out of interest, I didn't get a mail from Johan and I can't seem to 
find it the archive either. Is that message in public as I'd like to 
address any other concerns at the same time ?

Cheers!
Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
