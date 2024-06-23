Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20EFEC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 12:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZuiEXXngSKN9w4Nc+OERJ+caS7QBP6O+9GZBa0t/6uU=; b=hjfLhfxhQEqPnE
	M6eutSWHGhPqQRtb3aEmLwQJRW71B5XF0XMLclD7DCF8vEdtzedMJ3hvM+vLFnYYmdPVFdZaQy/sh
	VUbKcZhdcm4POt+IY/x8xkGHkhfP+wYLNpKJAIIR3dhHyu6rC4PF7yZxGUgjdtLkMnL8SAOuFJqSn
	L96SG0s0V4ZsGEkXS0TIaGZScl8OgrAqOlbDKYRQVF7OL3DYOG8u33q5B2gs3BpBdeNknnpg+x0tC
	rcet0JIQeC+id9IbysYr5EZEtt8MTinlVZ6Xmj4q83H2fWM7z+HEf4VcgfwstsUMOxSldpO/PAHpG
	7oZGjjrSn4R9PtitJKLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLM5K-0000000DxCb-2DPU;
	Sun, 23 Jun 2024 12:12:42 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLM5F-0000000DxAO-3m6z
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 12:12:40 +0000
X-QQ-mid: bizesmtpsz6t1719144718tnr1oj4
X-QQ-Originating-IP: lvSdtWzGw74y0pIOzFRPYLJbPCgAP1nJPyiEmIdlvOc=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 23 Jun 2024 20:11:55 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12654803974381824126
Message-ID: <9A5C6ACA074B094A+171f5286-c19d-4a9f-ac27-b4506e468227@radxa.com>
Date: Sun, 23 Jun 2024 21:11:55 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi E v3.0
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240623120016.82990-1-naoki@radxa.com>
 <059eec26-b7ca-4bd0-9e63-cfceffc4a777@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <059eec26-b7ca-4bd0-9e63-cfceffc4a777@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_051238_452699_00CC58B8 
X-CRM114-Status: UNSURE (   6.27  )
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

Hi

On 6/23/24 21:08, Krzysztof Kozlowski wrote:
> On 23/06/2024 14:00, FUKAUMI Naoki wrote:
>> Add devicetree binding for the Radxa ROCK Pi E v3.0 board.
>>
>> Radxa ROCK Pi E v3.0 is a single-board computer based on the Rockchip
>> RK3328 SoC with a compact form factor.
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> 
> Isn't this v2 of something? What changed here? Provide detailed
> changelog per each patch (see submitting patches).

this patch set are for adding new board.
please discard previous patch set.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
