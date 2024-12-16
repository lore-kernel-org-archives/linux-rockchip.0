Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CF85E7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 15:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dNqzEstCx0mlfY57/toH9EJZxWI0MWqY9R/ghoCTkEo=; b=LNXj2NfBwfVhZMCNxoGhsgNOql
	T0ylZEStxjzgF3gnBm/AEPj1t00FlGaxO1HJvCDQIMFAuFJ6bjIcWtaz54o+cQSQRpPDIlPo9NyWl
	W81Jn7KI8yNVWA2Qj1XRQc+vZO+FO/F9ffUqoyOLlr6V8roInTRL2bXj1Pq/qe2HFwBOA2P+R1bcd
	T0uVN5VLr8pwI4SWuRfSracyudjveOHgXCbaQHjd08kbaaBI+xYDB61HKhLwI5/S/X09onaPvr3ZP
	zUaBM56zGdEM2uOTCE2gdSgbsNwsTruM3Xm6x3bYhZ32P2IF9mvc9ooCv3mbhCJBR9yXUGL3D7Mrb
	MZoJUWzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNCyz-0000000APCE-2nHc;
	Mon, 16 Dec 2024 15:26:05 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNCyx-0000000APAp-2QNb
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 15:26:04 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1734362762;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9evQ+oPwTCUbzQzP5U3dWXf4KUBJHrskKrWQezN528Q=;
	b=mJ9QFtn7nrpc6dSqMwQmwR2hVj26Hea+JmbiiOxWpe/731Bv1aM9gdihwFgcA9i9tRJjmP
	OgmMwf362G1ouxy+31U85v2Wzy4dXAJSIuvQe6LfMURMM/J0/YBL+lv7edUNeyyUYOlp1l
	35a0mw1vfeOtdW6xUBPbHT6bf6puPAyX/KGDLDDOhxEGhT+q2YT451BwrxHfC8yDFYDCZF
	XTAk8X0JDbB30/2+T8BrBUTnGNRRazg/ngzb55G8babyDjy1KUrcqoCIrDLE1zWgjMLlj5
	IQLDL193YFCV93Lt1TfkRUi0VSAbvwrO0OJ8TydHJK2jFrG+roxWzCAp6UVwJw==
Date: Mon, 16 Dec 2024 16:26:02 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 02/12] arm64: dts: rockchip: Change node name for
 pwm-fan for Radxa ROCK 5C
In-Reply-To: <E3B9E510C4F8D95A+7a184f12-902b-47ea-894c-4552e189d19b@radxa.com>
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-3-naoki@radxa.com>
 <0b0efc1d-2340-4ec5-a46e-62a6cebbc2b6@kernel.org>
 <5707EE9715A7E332+f33721f1-8b50-4262-bdaa-468ad2c79ecc@radxa.com>
 <281bce4e-cec5-4ad8-940a-c9ef16202a43@kernel.org>
 <C6FD94DDF2E16CAE+22e3003e-0d66-4092-a9a2-def5daa6c202@radxa.com>
 <feec46a1-76b9-4479-b364-b09cd79b3d69@kernel.org>
 <E3B9E510C4F8D95A+7a184f12-902b-47ea-894c-4552e189d19b@radxa.com>
Message-ID: <cf1ccb80597d1a2421c5c60decd6412a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_072603_761397_64D2CE39 
X-CRM114-Status: UNSURE (   4.67  )
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

On 2024-12-16 15:38, FUKAUMI Naoki wrote:
> On 12/16/24 23:27, Krzysztof Kozlowski wrote:
>> On 16/12/2024 15:19, FUKAUMI Naoki wrote:
>>> On 12/16/24 22:56, Krzysztof Kozlowski wrote:
>>>> On 16/12/2024 14:48, FUKAUMI Naoki wrote:
>>>>> On 12/16/24 22:37, Krzysztof Kozlowski wrote:
>>>>>> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>>>>>>> Use more common name "pwm-fan" for pwm-fan node. No functinal 
>>>>>>> change.
>>>>>> 
>>>>>> No, generic name is fan.
>>>>> 
>>>>>     
>>>>> https://lore.kernel.org/all/71aa84af7a030e66487076e0976c8cad@manjaro.org/
>>>>> 
>>>> And? That's incorrect advice.  There is no such device as "pwm-fan".
>>>> There is a "fan" and whether it is pwm or gpio it does not matter.
>>>> 
>>>> See DT spec and generic names recommendation.
>>> 
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/hwmon/pwm-fan.yaml#n67
>>> 
>>> Is it wrong?
>> Yes.
> 
> Okay, please fix it.

Good point.

> Feel free to use:
> 
> Reported-by: FUKAUMI Naoki <naoki@radxa.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
