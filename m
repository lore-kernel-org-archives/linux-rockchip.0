Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E96C0CCF9E5
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Oct 2025 18:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:Cc:To:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lCboXVV14NOPXNPkFtzS/S+Uv0BdtprYVaF/tLJkyLY=; b=XwXqAD1yg68cML
	bR+0Fe8l72PA3gRVoCpj3MLajHRRNGTXzhhw+hdvjpes7V++VdJimAp1dM1cbLcnzEFF+iIcFQo4W
	BXrHrgAqRjEt87qVy0nho0qfqqc1YspWZvHeIuuKBS4KTOcLYFEGW2ci6/U5Mo7LaLMF0ITbO26T8
	D7Bhy1NJb5Fg7fEN6obKqdYi64dgKmxtk3DgiGT137lUb7Qj5pVvz8Om7Up8J8bTs+CZ3LGoLrEi3
	WYyXsSFF638FuINpB7oSlwJPOZndiBwmSfKjltFldrfdDWgHSwq9my0S0+LgL+Fd8dNA1hfq0B1AV
	tPOXZJgP6Z3kq0u8tb8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD5jd-0000000Ce77-1X8z;
	Sun, 26 Oct 2025 18:44:57 +0000
Received: from out-172.mta1.migadu.com ([95.215.58.172])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD5ja-0000000Ce6d-2bkb
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Oct 2025 18:44:56 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1761504290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6XoP33HamohJnYpgEMOOVXkOdMXK2Wj7iOxwWmiRyjA=;
	b=Xu7AezbXj9uqu7+8ZLk5xs1budthm6Tf5t9XogPUBoroeIZZR1h/G+9rdfNJ8Xig4w28K7
	gPD0TnSaKwr90otHjpM6vEpYkhJy1vI8qx6gkVfrEgpiJc4LItyLMgZkP2tcRHROsqLx8u
	LY95EHxK2aJnHc7Fqr36DzEspOnO3QV+cY0tVkC+DWK/NNXHUSpfAVm5cemsgu1JGp67Zb
	dgfEN2OBKCNW6Afk3pK0kcTOiI5KOtrjS7waaQnZWHYHQrdVZchK2EA5Q8I4ZlzUR4yPG1
	ltUHntWkA8gv38x4oGWo5AwdxHnBCt4CR4iVOeIhpsnyvHjUhcz5vkz08vJRbQ==
Date: Sun, 26 Oct 2025 19:44:34 +0100
Message-Id: <DDSH5G4FVB5F.BK0F7WNGG6S@cknow-tech.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Dragan Simic" <dsimic@manjaro.org>, "Diederik de Haas"
 <diederik@cknow-tech.com>
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Johan Jonker" <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vccio4-supply on
 rk3566-pinetab2
References: <20251026172608.108956-1-diederik@cknow-tech.com>
 <e2caefd1-9668-0404-598f-98b26375525c@manjaro.org>
In-Reply-To: <e2caefd1-9668-0404-598f-98b26375525c@manjaro.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_114455_022024_E9E7ADA3 
X-CRM114-Status: GOOD (  15.60  )
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

Hi,

On Sun Oct 26, 2025 at 6:36 PM CET, Dragan Simic wrote:
> On Sunday, October 26, 2025 18:25 CET, Diederik de Haas <diederik@cknow-tech.com> wrote:
>> Page 13 of the PineTab2 v2 schematic dd 20230417 shows VCCIO4's power
>> source is VCCIO_WL. Page 19 shows that VCCIO_WL is connected to
>> VCCA1V8_PMU, so fix the PineTab2 dtsi to reflect that.
>> 
>> Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
>
> Thanks for this patch.  As already discussed in private, this is
> correct and safe to do, because both supplies are designated as
> always-on, so please feel free to include:
>
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Thanks :-)

> Though, I think this cleanup should also be propagated into the
> stable kernels.  Right now this patch doesn't actually introduce
> any functional changes, but maybe in the future there will be
> some related driver or DT changes or improvements that may end up
> relying on DT correction such as this one.

Fair point. Dunno if b4 picks this up automatically ...

Fixes: 1b7e19448f8f ("arm64: dts: rockchip: Add devicetree for Pine64 PineTab2")

Cheers,
  Diederik

>> ---
>>  arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
>> index d0e38412d56a..08bf40de17ea 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
>> @@ -789,7 +789,7 @@ &pmu_io_domains {
>>  	vccio1-supply = <&vccio_acodec>;
>>  	vccio2-supply = <&vcc_1v8>;
>>  	vccio3-supply = <&vccio_sd>;
>> -	vccio4-supply = <&vcc_1v8>;
>> +	vccio4-supply = <&vcca1v8_pmu>;
>>  	vccio5-supply = <&vcc_1v8>;
>>  	vccio6-supply = <&vcc1v8_dvp>;
>>  	vccio7-supply = <&vcc_3v3>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
