Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A326C10F16
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 12:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ilfcdNifyy7kPEGA+TCv4Wvhk5LM9L2izBcBkVqv6Ik=; b=O5bHzcypOMM2gJH+Np13Sv8DKu
	K/WXSBXizTVIGyRW8prP2J3du+KDsAFo6m5pdHo9JrZeHuc6SU6z+EM28bhkvoJEEspWNfuOzFcvq
	nrxJTXcsPb3kc6oQBNiQdEEdUV6Dtfyx04M/XdPKgOuC31v1wWrlskeMRprdPyNBFd2N4SWmFORAW
	9vDWKMndFdrOypS4jPCtRcYgV0EcTqlmbVGzROkk7ibVV/kUTtGhXao1e++QgbEKHwtqsyO9AoVer
	bV9HUeNz8xnWBwHtCbAnBEwc0wGK2nT5Wuw+B/cgbALlGTHAk/cyPZJeRm8qzEgkUQMCMfWR6PAkw
	vusm/4IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3xpB-00000007M7e-19qc;
	Mon, 06 May 2024 12:52:09 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3xp7-00000007M5K-474f;
	Mon, 06 May 2024 12:52:07 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1714999920;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IcAm2WrGck6byiy+v8QNJrY6eKW4T+0LgdGn5v1lLbM=;
	b=DEhFH1LDh4TTBT2TfjjW0xq0TwYRYMMugmJ8I375PFBqP9tG2nTqogmv4k0fmu1eeIawwu
	5WCOl3bIj5SxFlkPSplKtRyPzCEZx8KiMznb86aAWsdBlisFba5INw+HNAmtW9pL8PX7o6
	mTpC/HKVXzQljAFKtc04q/LUrz7wQacVZEZNQTGnX0vGqN+Q12UbFhlri6Atm0DyDap68p
	K1BV5hC2SJC7yUlAARVKc+byCwufqGfO6KtYS1eVA5LU7nPIfpms9OG1erjHviTt//SwjP
	HF0DSW6LbqPSXzLC5bWxwCAnVJNbykTt+tDk1L6fMt0GDVJ58G2Fr4gnEmddxQ==
Date: Mon, 06 May 2024 14:52:00 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Alexey Charkov <alchark@gmail.com>, Daniel
 Lezcano <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/6] arm64: dts: rockchip: enable thermal management on
 all RK3588 boards
In-Reply-To: <2543817.5xW6y1K4kI@bagend>
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <20240506-rk-dts-additions-v4-2-271023ddfd40@gmail.com>
 <2543817.5xW6y1K4kI@bagend>
Message-ID: <d40159069633e44ffe47a944cd9ec5a1@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_055206_353399_B221FF2E 
X-CRM114-Status: GOOD (  15.65  )
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

Hey Diederik and Alexey,

On 2024-05-06 14:28, Diederik de Haas wrote:
> On Monday, 6 May 2024 11:36:33 CEST Alexey Charkov wrote:
>> This enables the on-chip thermal monitoring sensor (TSADC) on all
>> RK3588(s) boards that don't have it enabled yet. It provides 
>> temperature
>> monitoring for the SoC and emergency thermal shutdowns, and is thus
>> important to have in place before CPU DVFS is enabled, as high CPU
>> operating performance points can overheat the chip quickly in the
>> absence of thermal management.
>> 
>> Signed-off-by: Alexey Charkov <alchark@gmail.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts               | 4 
>> ++++
>>  8 files changed, 32 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts index
>> b8e15b76a8a6..21e96c212dd8 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> @@ -742,6 +742,10 @@ regulator-state-mem {
>>  	};
>>  };
>> 
>> +&tsadc {
>> +	status = "okay";
>> +};
>> +
>>  &uart2 {
>>  	pinctrl-0 = <&uart2m0_xfer>;
>>  	status = "okay";
> 
> I built a kernel with v3 of your patch set and someone tested it on a 
> ROCK 5B
> 'for me' and it had the following line in dmesg:
> 
> rockchip-thermal fec00000.tsadc: Missing rockchip,grf property
> 
> I'm guessing that turned up due to enabling tsadc, but (also) in v4 I 
> didn't
> see a change wrt "rockchip,grf".
> Should that be done? (asking; I don't know)

Nice catch!  As it turns out, having "rockchip,grf" defined isn't
needed for the RK3588, so this warning is of somewhat false nature.
In more detail, having "rockchip,grf" defined is actually required
only for some Rockchip SoCs, e.g. RK356x.

I can get this covered in my soon-to-be-submitted device-tree cleanup
patch series, if Alexey is fine with that.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
