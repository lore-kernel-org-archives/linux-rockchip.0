Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8CB7E77188
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jan 2025 06:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UbJusMs7E9APKmwegEL8ve/FPLfzgdWxS8MISjMlFTg=; b=4yTuZ0F7Etj5NF9K5H2+u2ClZm
	cIuBX93V6Od4TsVYrp77S0LTN6aHOQ3bUIzHUO2qcDNOB/lphr5btBGMH0SWmONgfV55mLwgtnFrF
	BhZHiyi2+ym9uAgOK2Hx+fEB1ZQLxJMPzTBiLLtnK8NWGKZy/f+jQ5ZoT+bEBAncHAOuSY/nVgjlA
	OvGDzlM9lntu0RSZT6eG+QeDbQnyswEDRSW5+WTDsLnAGWTsBq7umBpE+szUKZUCQ0Gd2ETHsqjMR
	AMMoww6KhOpX9sPkyhngU+6tVk/JKDFVPwOnKFy79ToB588ZM7SRUBdPhSyKpZBNWjiajRH3bXhoU
	grJW4Lgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUgwX-00000000Ksq-2on1;
	Mon, 06 Jan 2025 06:50:29 +0000
Received: from mail-m3289.qiye.163.com ([220.197.32.89])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUgwU-00000000Kr0-1z4s;
	Mon, 06 Jan 2025 06:50:27 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 7cf4282a;
	Mon, 6 Jan 2025 14:50:14 +0800 (GMT+08:00)
Message-ID: <ca29c6a5-8a9f-4a1f-8a14-bf7b616f4cb5@rock-chips.com>
Date: Mon, 6 Jan 2025 14:50:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 10/17] dt-bindings: display: rockchip: analogix-dp: Add
 support to get panel from the DP AUX bus
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-11-damon.ding@rock-chips.com>
 <uwzrv4jgqqx6ge3lh3if37qvb6w7ubkusohunbn7ukmq5tt6du@e5fwoik4tex2>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <uwzrv4jgqqx6ge3lh3if37qvb6w7ubkusohunbn7ukmq5tt6du@e5fwoik4tex2>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR4dSVZNQktOSR1JH0tDTx5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a943a60defd03a3kunm7cf4282a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PSI6Qgw5KTIQTBgyHQssLhNJ
	KjZPCSNVSlVKTEhNSk9NSUpNSE9IVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFCS003Bg++
DKIM-Signature: a=rsa-sha256;
	b=ZyCJMtVlZB9Q7i8XqHl0UHJInDef0l+BnirMPajG7a1HWOhuK+MkTaFhHOEGFgVWRdnS4utJvJPuPajqGYWUwfwKmbNwEqVzE2njnuvLBxHPiFbVTmDUFKhpZxu48vs7P5VQ6EzM7j+Oa3aeh8UY0za8edyrIP0eM/dVCtBDWNA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=4SFMXBZq9vYc3ofpJpCPeqvivyBEabL0OOJJZkXDUg8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250105_225026_726224_F539DE58 
X-CRM114-Status: UNSURE (   9.89  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Krzysztof,

On 2024/12/27 15:53, Krzysztof Kozlowski wrote:
> On Thu, Dec 26, 2024 at 02:33:06PM +0800, Damon Ding wrote:
>> According to Documentation/devicetree/bindings/display/dp-aux-bus.yaml,
>> it is a good way to get panel through the DP AUX bus.
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> Changes in v4:
>> - Move the dt-bindings commit before related driver commits
> 
> 
> Changelog does not go to commit msg.
> 
> Please run scripts/checkpatch.pl and fix reported warnings. After that,
> run also and (probably) fix more warnings. Some warnings can be
> ignored, especially from --strict run, but the code here looks like it
> needs a fix. Feel free to get in touch if the warning is not clear.
> 

Indeed, the commit msg will be fixed in next version.

Best regards
Damon



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
