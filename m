Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99E62E7718B
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Dec 2024 10:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ilrj2JPJQjsdz+Tcq+VMIvbRKNETEGVAQzcPs6sr290=; b=o7z5LdUwiWdN+xKwDK4lv1rbQ1
	SVNpan8Q5fNy2fydo0HNNiVK/hvGUIs7bxUUwxXuGgKAHuRsQYVZK06eQVmw7EQ4JP246LYkfMboN
	ykS5CW2v/2/qt13aPIuaxAb8qDk2RYIvqAWs4rqEw84jA9boEkDaX2hWqv6mu37R0rgFtHUhuMSs5
	xJt3E5M1XjCVZpyczNqC6y9489XDyKez0WjSbNMk7gJwmFgyjWefL7OqW9IZCcDI1inclX+BJvozn
	hgjH2Bu9n9AqEHvSRE83gOxcz0jGhG+NDPbGRwyPExiw9ZAvvnFJI+BFhIqfvBtClqx5ZYK4CXz5E
	jUOQtguw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPfXC-00000009mTi-3lJH;
	Mon, 23 Dec 2024 10:19:34 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPfVQ-00000009m7d-2JOX;
	Mon, 23 Dec 2024 10:17:45 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1734949062;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=enmGRB08NO3QtmnFWnrY/j35Ct4goMW51ko1m6ZxXIE=;
	b=OS6lF9DA3Qk56GSVsHBoA4h/fjqlpxfSN90yeEsrNDQqipZ75LyawXRLUOupkoFB+jtvSQ
	8e+hh/d3Fy895oHRhXzAw9fB5oDpvosl8xHP/CTroTzSlfqv9wdmuHBt50Pfx9ACjmNNhR
	5cC76hhTuFWsL2crVeHQGFxlxhkBhKkVEodCtkfKf3N9AoCA5UgWLrV6jSz4TZSCbGiEC3
	/+4T+wN4YSi96It+UCRalHnGu2eKDdbz5cZUM3DalRXJ0kTwWbWUlQTLQKu1ePrLehqHec
	EYH53Xpm9QvXi9urcH18XEc26NhOocnLusK7BXwy67QomvFsHkBta2N5OAKYgQ==
Date: Mon, 23 Dec 2024 11:17:42 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Marc Zyngier <maz@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, tglx@linutronix.de,
 jonas@kwiboo.se, macromorgan@hotmail.com, andyshrk@163.com,
 liujianfeng1994@gmail.com, dmt.yashin@gmail.com, tim@feathertop.org,
 marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net,
 alchark@gmail.com, sebastian.reichel@collabora.com, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Radxa E52C
In-Reply-To: <87zfkmrb4u.wl-maz@kernel.org>
References: <20241222030355.2246-1-naoki@radxa.com>
 <20241222030355.2246-4-naoki@radxa.com> <87zfkmrb4u.wl-maz@kernel.org>
Message-ID: <2a00f25b95cca5f43631188c996d98b9@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241223_021744_751353_031F9FBF 
X-CRM114-Status: GOOD (  14.03  )
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

Hello Marc,

On 2024-12-23 10:39, Marc Zyngier wrote:
> On Sun, 22 Dec 2024 03:03:55 +0000,
> FUKAUMI Naoki <naoki@radxa.com> wrote:
>> 
>> Radxa E52C is a compact network computer[1] based on the Rockchip
>> RK3582 SoC:
>> 
>> - Dual Cortex-A76 and quad Cortex-A55 CPU
> 
> So you have *two* big cores.
> 
>> - 5TOPS NPU
>> - 2GB/4GB/8GB LPDDR4 RAM
>> - 16GB/32GB/64GB on-board eMMC
>> - microSD card slot
>> - USB 3.0 Type-A HOST port
>> - USB Type-C debug port
>> - USB Type-C power port (5V only)
>> - 2x 2.5GbE ports
>> 
>> [1] https://radxa.com/products/network-computer/e52c
>> 
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>  .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 729 
>> ++++++++++++++++++
>>  2 files changed, 730 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> 
> [...]
> 
>> +&cpu_b0 {
>> +	cpu-supply = <&vdd_cpu_big0_s0>;
>> +};
>> +
>> +&cpu_b1 {
>> +	cpu-supply = <&vdd_cpu_big0_s0>;
>> +};
>> +
>> +&cpu_b2 {
>> +	cpu-supply = <&vdd_cpu_big1_s0>;
>> +};
>> +
>> +&cpu_b3 {
>> +	cpu-supply = <&vdd_cpu_big1_s0>;
>> +};
> 
> And yet you configure 4. If your HW only has 2 A76s, surely something
> should remove these cores for this platform rather than keep them
> around.

Indeed, U-Boot will do that, based on the efuses that contain the
data required to determine which CPU cores (and/or clusters) are
defective and need to be marked as disabled.

Maybe we should add a comment block above the "cpu_b0" node, to
describe that a bit better.  Perhaps something like this:

   /*
    * In the Rockchip RK3582 SoC, some CPU cores end up disabled
    * and unused because they're marked in the efuses as defective.
    * The disabling in the DT is performed by the boot loader.
    */

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
