Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B41DCCF9E3
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 05:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0F15NwK4UASURPfGakOyreXhnG9qI6Jj6De3+zqkzUA=; b=cHAaXNhV1zdzgP
	rNGYA1v6FQvVFr2vijwbOFqx6JOa18OtQF90t2ajjsbe0c4lfi2OOaVtIZHCIBw4S8PrwoS/ujYns
	SOC79r5Fzya3Cf4qM7ZuaF75mOrUk/K5oHngPp+S3Uxt2sPJksoJA3K+AVC7Me72Yy7A8yrKDUyXb
	HIEhYIUwJ+ajqDe3O57PveADTdebkVK4AiQq9O3XOTXxq7QaW/NUgbk1i1medgzJzne+9wXUn7Td4
	3Wdi07Fv2y6BQGyCjhtntk4BUZghAdfFPfXWMTgQnHA/ixbG8mV6h+6cvtAcTWupgaJEZH4+HBSM2
	KVuhnnIHbzf0JQ6RtQSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIgiZ-00000006YWM-2eiI;
	Tue, 11 Nov 2025 05:14:59 +0000
Received: from smtpbgjp3.qq.com ([54.92.39.34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIgiW-00000006YS6-0mlu
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 05:14:57 +0000
X-QQ-mid: zesmtpip3t1762838057tdec3b8cb
X-QQ-Originating-IP: 35SFHE8kZ7xGWDBoL+GKGPZwpecwnMu85STSw/6SU6k=
Received: from [IPV6:240f:10b:7440:1:62e3:2c99 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 11 Nov 2025 13:14:15 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1116323696750514464
Message-ID: <763EE1918D15A524+92d33d40-8c8a-4ddf-81e9-2f57bcce821e@radxa.com>
Date: Tue, 11 Nov 2025 14:14:14 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 08/14] arm64: dts: rockchip: Make eeprom read-only for
 Radxa ROCK 5C
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251109141859.206835-1-naoki@radxa.com>
 <20251109141859.206835-9-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251109141859.206835-9-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: OZZSS56D9fAj4mwVxlYH8PbQQMreRN0J1dMIRig94zXrZokN8VryxVXc
	4q3pjIrlTMsEbEaTZNCcbnndrtMA9WzGKoWogAn/ONBgl5sfV7rxB54Nw6Auvg7UrfzHHM/
	32s07JrFB8PmZFlWNV63ouDjx3AIv07mVco9J1ADjH+BaJ64KBsyGSqPIDp+ntlKbkcn3FA
	mY/hoUSVUwoZhExBUAIklsvHNgvusy9cT4Atb7SWC3xe7SEG7AolBwj5C50tLgWoIosY1q3
	NG8LEiGm3v+MWd+dR9Chc6re7P5QGKig+qRgrrZK6jFJYcqBbu/z6RLVXwtRuBRzPv4a8cQ
	JZ3JDlK6ZrWr634CipxTdVbeZnhjNIrtE8yzU/AUqgwu0LVkerUkjVOF1qC0v202SAfA5Rr
	s7M7oYv3BXeEmHgiymabtuhho5a4al8OGw65b3meo/2WG4DWwtUfi17/FIuNdzkvaZaY82t
	ebiRW/5K2bRww8m0TR1aw1XQJX1zshUMpfn42QunaoRwf43cBsIySU7flWNI4YY5rwViOca
	Izlkq7BJAvCEAnNg8LDEgLtHaPrS5vz55l1jLRz1WstSm3SsGju79Ev9H1m9Fq3SOsAIdJ1
	XvG9xejCJsuKYMbrt2wx7YKaAQkLk+x9jqlvvV703GrOJFGGGbUEumlVwXcf63adlDZ65PN
	Yy0cYYLaPBrhGapaN1hneExMXrDIPB36lk6VbTcr1vSeoCjHctgPCQMgxbeY11R2SoG54Zh
	rygxYuRbfl63V8hnDnd8BGXI0BguR1oTCL6Y77W33fWSjfFBJM4UsCgMe33Rf3IP3OIBg12
	JNjepXo/qknAN1owFQ68kYX8pPzBJ4G3Uhc/j8S722VI5Cj3g5N2uMgZZ2KJettJFqUCx2Z
	WKLefbgVgnu8tFX06iQSsBJhMU9gOoQPqr4xzBJIPb8JRS+Bklh6UmvspPnbKpxyEKxruUa
	FxaUQXvFRZi95Hsv6br/tp36XzjU9f5987IFaGtns5sXZhDtgZ2Q6fD9o75EfHeRsZdbdxW
	gf1EXJlXjkKn/Rkl//OLN5f3Fyhlo=
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_211456_503957_81C05AD7 
X-CRM114-Status: GOOD (  10.59  )
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

I'll drop this on v8. This will be handled in
  https://lore.kernel.org/linux-rockchip/20251111050924.54880-1-naoki@radxa.com/

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 11/9/25 23:18, FUKAUMI Naoki wrote:
> Make EEPROM read-only as it may contain factory-programmed
> board-specific data.
> 
> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v7:
> - New
> ---
>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index e3f286df93b05..4f5376d0d109c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -325,6 +325,7 @@ eeprom@50 {
>   		compatible = "belling,bl24c16a", "atmel,24c16";
>   		reg = <0x50>;
>   		pagesize = <16>;
> +		read-only;
>   		vcc-supply = <&vcc_3v3_pmu>;
>   	};
>   };


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
