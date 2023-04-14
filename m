Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE94DC77B6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Apr 2023 10:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ov/Qbbaxdy26UCiupmyb7o9I7MlDfAdezo0kmZGLKJQ=; b=yEKyJH55N/znry
	PFJtMzZ1w+XB2TDz4gCmeTJn3iJi4Su2i4j3YbsNjc4Is518wcTZ0qeJYarTS8tR0fpTmz7Nzu1k3
	GnU0InAtaSWAGouXlLGIQ/4qm9qtYP0kA3maDDTIGTB4PD/J5Jdzfa8MJOHNRY9Bwr14Hfa/o61kG
	gSlUU/MtTOrjcR5rH91ls6rnusrXfY2KVyq1SW2TSkgr6RrBfQkOqDTQS73V5rqf9ivLHEKXPuhKA
	u90LPKy3gvNz0/s6AiRQDzNYc2S3CJlFo6ZpnlNnb9LsKdoRDx4lveiAKU6rrV2mzEBJi79lhbemx
	yTVttENPAUlyDoykks1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnH4A-009Fuh-1y;
	Fri, 14 Apr 2023 10:54:06 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnH45-009Frg-2y;
	Fri, 14 Apr 2023 10:54:03 +0000
Received: from [192.168.1.90] (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7E0F5660321F;
	Fri, 14 Apr 2023 11:53:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681469640;
	bh=+5VJd3RWjLm3EX7CJr3/WYFLAQ8x6Xt5f2VD+oJiw4o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Mwdklb+hf1FBuaMCpqWnS+2EjcPRbbunJoxjubrnY6nYElsYcJmUqkxgsHKKO3rlN
	 +/8TvupjfLl0cx6SPytCU3X/SGKylleDOiMCZkgkgZAA7d4uUIWA4UqF8fFJGWOkG1
	 hPwjkCTVCkncVpV1Me9NBe+8Wv1VMaZvuKhsAecTxiEoQErQkrVeQ7qvkQzcHb7phS
	 iY/O2dUXfZFCf0SyN53V63Y41alvPwokHaaTKYnLk9eGfTf64eIwHUmVZo/DLpNdzT
	 CAa8VrMKRFVrhjjhvaUJsYcC1e7hsm0DtngjIYTe3STUJN2w+/Y7neU0wbjDqOZHOf
	 p7bUUR0Q8PSiw==
Message-ID: <4d66fb01-76da-be30-26dd-908ee1a22eb1@collabora.com>
Date: Fri, 14 Apr 2023 13:53:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Use generic name for es8316 on
 rk3588-rock-5b
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Christopher Obbard <chris.obbard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230414093411.113787-1-cristian.ciocaltea@collabora.com>
 <20230414093411.113787-3-cristian.ciocaltea@collabora.com>
 <fe746692-fed3-6635-8658-4e91d30f2aa8@linaro.org>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <fe746692-fed3-6635-8658-4e91d30f2aa8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_035402_108343_F6C0F227 
X-CRM114-Status: GOOD (  14.71  )
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

On 4/14/23 13:26, Krzysztof Kozlowski wrote:
> On 14/04/2023 11:34, Cristian Ciocaltea wrote:
>> Use generic 'audio-codec' name for es8316 node on Rock 5B board.
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> index 62750beb12aa..8cc97d146a73 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>> @@ -72,7 +72,7 @@ hym8563: rtc@51 {
>>  &i2c7 {
>>  	status = "okay";
>>  
>> -	es8316: es8316@11 {
>> +	es8316: audio-codec@11 {
> 
> This is a trivial change. Fix all instances in all subarch/platform DTS.
> Not board-per-board.

Looks like only the rockchip DTS are affected, but not quite sure how to 
proceed in the case of 'es8316: codec@', should I change them to 
'es8316: audio-codec@' as well?

arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts:   es8316: es8316@11 {
arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi:     es8316: codec@11 {
arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts:   es8316: codec@10 {
arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts:      es8316: codec@11 {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
