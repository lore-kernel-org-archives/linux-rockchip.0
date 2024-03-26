Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B608CC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 19:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qgk3lPgllycmWy6G6LZbecTAxT2AiDgSb4Ykw/+tiHQ=; b=sdkGdP54tdtmziwvNzRrTOygfp
	fUFPZcoIcSWdS/8lSX0dAdar3FiZpX6wxePriADJIlrnTasEqweXipPgRTEZqy0SI1Xtiuu0Ovuch
	kz7yH/p/KEiInOGPzmLgQEj1rVVR9X5w/J4nGwcS9rMbvx/58m7qdxreINlQQBHw3CoRTJxw0cN/E
	hzM7bX7uVu34YEjOEcJEX8UrzJObRRe75jMraDbgzCafEegVltZsYE72RdMXgPOlU3OFb+/V3aZCo
	URn1m+XbCWAG5nxAzcwlCJkiJtOhvjNOAoYDzBIczk1DL6Ri2tebDzunvY8C0ihIm/c8AvkyxNvfV
	/Wyw9vpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCvD-00000006EFl-1WnJ;
	Tue, 26 Mar 2024 19:57:23 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCv9-00000006EEu-0VLg;
	Tue, 26 Mar 2024 19:57:20 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711483036;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Xdxbt16Q0f6CqU6yeOFhWB+1nByjcjx4pNUNCjrto2I=;
	b=aJw4UsDYDzSEQygSUSOl+p5ZjX2WL0g3w7qrdlsdnjGGmLl5td1BeQILUAgqHoT4SYOHnb
	P2qKgWLD/ZtCAEgsyRlh/3fUxi9Wv3fBXOcQgUvWNXEv8RdFE0rbGOL2iOZmjl2DVqFvye
	+IyvoDdB3JzxESeirCP6yFu4jiikr8olKy/z5v9T/hrlspxzVw6Gofk2f6+I5f121xHbhd
	+AWmf2XQN3CCjYY977zAKlgdLVOi6r8t21XG3DUC9erQKwFEMiBBWj4zOdix3ubI4tsK0I
	O4cpwLlYjbX0Bel7vir7n9dvBM23ZqmDlX5wItxFhMk6Bd9BIlyRclyffVklSA==
Date: Tue, 26 Mar 2024 20:57:16 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 boris.brezillon@collabora.com, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: quartzpro64: Enable the GPU
In-Reply-To: <jbyqey5y5ngr7mkrrmdxrwyw5ogd7rq56af6mrmhsckboanvyp@tcaav2tridos>
References: <0f3759ee390f245dac447bbee038445ddfecbec0.1711383286.git.dsimic@manjaro.org>
 <jbyqey5y5ngr7mkrrmdxrwyw5ogd7rq56af6mrmhsckboanvyp@tcaav2tridos>
Message-ID: <78f5ee0cc543aa4406c15fcafa50f2e8@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_125719_585268_75DBF3DB 
X-CRM114-Status: GOOD (  16.98  )
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

Hello Sebastian,

On 2024-03-26 20:54, Sebastian Reichel wrote:
> On Mon, Mar 25, 2024 at 05:19:04PM +0100, Dragan Simic wrote:
>> Following the approach used to enable the Mali GPU on the rk3588-evb1, 
>> [1]
>> do the same for the Pine64 QuartzPro64, which uses nearly identical 
>> hardware
>> design as the RK3588 EVB1.
>> 
>> The slight disadvantage is that the regulator coupling logic requires 
>> the
>> regulators to be always on, which is also noted in the comments.  This 
>> is
>> obviously something to be improved at some point in the future, but 
>> should
>> be fine for now, especially because the QuartzPro64 isn't a 
>> battery-powered
>> board, so low power consumption isn't paramount.
>> 
>> [1] 
>> https://lore.kernel.org/linux-rockchip/20240325153850.189128-5-sebastian.reichel@collabora.com/
>> 
>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>> ---
> 
> FWIW
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Great, thanks for your review!

>>  .../arm64/boot/dts/rockchip/rk3588-quartzpro64.dts | 14 
>> ++++++++++++++
>>  1 file changed, 14 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts 
>> b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
>> index 67414d72e2b6..68d432c61ea5 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
>> @@ -285,6 +285,12 @@ &gmac0_rgmii_clk
>>  	status = "okay";
>>  };
>> 
>> +&gpu {
>> +	mali-supply = <&vdd_gpu_s0>;
>> +	sram-supply = <&vdd_gpu_mem_s0>;
>> +	status = "okay";
>> +};
>> +
>>  &i2c2 {
>>  	status = "okay";
>> 
>> @@ -491,11 +497,15 @@ rk806_dvs3_null: dvs3-null-pins {
>>  		regulators {
>>  			vdd_gpu_s0: dcdc-reg1 {
>>  				regulator-name = "vdd_gpu_s0";
>> +				/* regulator coupling requires always-on */
>> +				regulator-always-on;
>>  				regulator-boot-on;
>>  				regulator-enable-ramp-delay = <400>;
>>  				regulator-min-microvolt = <550000>;
>>  				regulator-max-microvolt = <950000>;
>>  				regulator-ramp-delay = <12500>;
>> +				regulator-coupled-with = <&vdd_gpu_mem_s0>;
>> +				regulator-coupled-max-spread = <10000>;
>> 
>>  				regulator-state-mem {
>>  					regulator-off-in-suspend;
>> @@ -545,11 +555,15 @@ regulator-state-mem {
>> 
>>  			vdd_gpu_mem_s0: dcdc-reg5 {
>>  				regulator-name = "vdd_gpu_mem_s0";
>> +				/* regulator coupling requires always-on */
>> +				regulator-always-on;
>>  				regulator-boot-on;
>>  				regulator-enable-ramp-delay = <400>;
>>  				regulator-min-microvolt = <675000>;
>>  				regulator-max-microvolt = <950000>;
>>  				regulator-ramp-delay = <12500>;
>> +				regulator-coupled-with = <&vdd_gpu_s0>;
>> +				regulator-coupled-max-spread = <10000>;
>> 
>>  				regulator-state-mem {
>>  					regulator-off-in-suspend;
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
