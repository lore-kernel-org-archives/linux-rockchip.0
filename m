Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46F37C47071
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Nov 2023 00:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5F0iinMkwU3GwBQEgZXlWp6wb1I7TBfMw4yxrjZr1Q=; b=0HUocQxBo80yWo
	tQm+ITzVLnHLrgSCem1c60qqn3dY6pnhLwh/1daSFY/Psby7ePRuuINl/ZfYVTFQlWWbS+sTyhCjK
	3hG1cVIErKMTd/3TMA1AQ/30Sl2T0GSHOoXI5fXVCcusX70CyrG13/RL+3z+8YVKZ8TuaRIGXP5zQ
	Xwu1JDNfvuLsKCyQsEr0nI/vDdhoeCNm1ZWN2D1AsKWnHlutuOuoHJheMeGJ2wBUO4NBUll4pomYU
	YkSL8rgv7oxcVhloplIikhvHSLgPOeevtWmw9w+pHU2baPM7aA+eA11cdukQAkU/WH2MkdnOkZbOa
	VXQtV7Nio7jB8kn22uBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r49FV-007cIY-2j;
	Sat, 18 Nov 2023 00:31:49 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r49FR-007cHu-0y;
	Sat, 18 Nov 2023 00:31:47 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 3E5FE5C00C6;
	Fri, 17 Nov 2023 19:31:37 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Fri, 17 Nov 2023 19:31:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to;
	 s=fm3; t=1700267497; x=1700353897; bh=/fgtpcHgSxhcVDgEhVXlZfO4k
	mpZ8rHgP4Q8kKZbK4M=; b=e6ivXeFTXs5gXSZGLuPHQSxnsnd6VdT0Z7xa1YFFP
	9bQVQiGEtlKamwaC6NW3sQyDpuRgrQEAYUcfQvmYbTCJefqghurV6VghLHu1GUb4
	1w8WJep1aQ29DBUb03nIFNKaJ5VVv7JaQmryfYejtiBZjSBWZGYMSrMbb88huuQx
	hAkc5/xL+uS20k1rmawPYPs+7L4y1mpQc1R0Sbx0VNbo9s0w1WJ+7GPBuKOwzMHm
	cQQrU+DES/ugkMbXHjdTaEaKLZ6kGa0vRogV7p42MZlKlV07hav7ll+Lf9z9v4kh
	w70LwBceXs6HUDO7+tYn1TddI4uqL6nCEkFRLoP6sPp2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1700267497; x=1700353897; bh=/fgtpcHgSxhcVDgEhVXlZfO4kmpZ8rHgP4Q
	8kKZbK4M=; b=tcgV+BHIAFVsPOQiKqiUTt7uiAwP0SDmi8yxdPnnq9RsyLrU2ZI
	u1hRvxGx4snh6K1ZQri6wT05TWJ7bXErs+5+AEydJcoyJCfL7LRmAWZYv2ft5RHM
	XR968j3O/NgYKW+ZLIO2WhjWUIvkO3X1avWJPTneYH+Rjlqp99FhaUxUFAQTGieD
	JThnZH/z6zPWo3v73je1CJ4ADmq/kN+nHfuILO80kkWOCBQsDBN5//o5jA0P4Zz/
	abivR8fc4GraGy8inpvuPmfT8tSZCyWcnIbxy23ufUUtnmA4LIrMu7X3MijV0+6t
	i7Xeq6/Q1SHN1HIW0pvgoPJY/RBSRro8+bg==
X-ME-Sender: <xms:5wVYZZW84nky9C-XfBq4BqgzVZ9uk249k7Tr5jXf9jyXo_Gbctyv0g>
    <xme:5wVYZZlFSvKgFwzU7uQOiFALjOcEwZCMk36rW4d7ERwV4XneFhuIF8yv_1QAeJGas
    X3iZl7eqg>
X-ME-Received: <xmr:5wVYZVZwk7K_2mzydasM1YRR-eacjdWlzIIGW2nJcN9kvhoCRY2nK-ywxABqeNyWRE-MRJw4Smadq66_tmC2yUUqR6XGdqFDzlnFmg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeguddgudelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtjeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepheehgfelhfffgeefkefgjeelkeduleefvefhgfekgfetfeetvdeigeekjedvffeh
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:5wVYZcWE3-eI4J2rxdiu_cnBn08MbWGWmietTU6dUgHUA8y71C-lpQ>
    <xmx:5wVYZTlKVAMMpO47ZuMQD538iYBo8SgH-PfI8I4rgvP68a7wh7mSkQ>
    <xmx:5wVYZZdsBYEjrbX4ArUrtgpGM6H6FReVtCdEjN2b6ylD9xgLpF7rUQ>
    <xmx:6QVYZV4a99zVCYA47QtxzuN2_pXV-4u2Eje8H0BgK7czo3gRFddQXA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 17 Nov 2023 19:31:31 -0500 (EST)
Message-ID: <d552f438-157a-4682-8d74-6e05ce5a2c91@feathertop.org>
Date: Sat, 18 Nov 2023 11:31:26 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] i2c: rk3x: Adjust grf offset for i2c2 on rv1126
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 linux-i2c@vger.kernel.org
References: <20231113120705.1647498-1-tim@feathertop.org>
 <20231113120705.1647498-4-tim@feathertop.org> <4846724.GXAFRqVoOG@phil>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <4846724.GXAFRqVoOG@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_163145_852506_E48F740E 
X-CRM114-Status: GOOD (  19.38  )
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

Hi Heiko,

On 11/17/23 06:54, Heiko Stuebner wrote:
> Hi,
>
> Am Montag, 13. November 2023, 13:07:00 CET schrieb Tim Lunn:
>> Rockchip RV1126 has a special case grf offset/mask for i2c2
> This sounds misleading. When looking at the soc-data, the grf offset
> seems to be the same for all busses of the rv1126, only the offset
> seems to be different for i2c2.
>
> Sadly I don't have (and didn't find any) rv1126 TRM, so couldn't verify.
>
> Change itself looks nice. As it's only this one bus of one soc so far,
> we likely won't need a more involved solution just now.
>
Thanks for your comments. I agree it sounds a bit misleading, I will clarify
  the commit message and comments in v2 of this series.

Unfortunately I dont have access to the TRM either, however I have validated
  that this fixes i2c2 on actual hardware.

>
>> Signed-off-by: Tim Lunn <tim@feathertop.org>
>> ---
>>
>>   drivers/i2c/busses/i2c-rk3x.c | 8 ++++++--
>>   1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
>> index a044ca0c35a1..83b7bf7b48a7 100644
>> --- a/drivers/i2c/busses/i2c-rk3x.c
>> +++ b/drivers/i2c/busses/i2c-rk3x.c
>> @@ -1288,8 +1288,12 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
>>   			return -EINVAL;
>>   		}
>>   
>> -		/* 27+i: write mask, 11+i: value */
>> -		value = BIT(27 + bus_nr) | BIT(11 + bus_nr);
>> +		if (i2c->soc_data == &rv1126_soc_data && bus_nr == 2)
>> +			/* rv1126 i2c2 set pmugrf offset-0x118, bit-4 */
> same here, comment could drop the offset reference I guess.
>
>> +			value = BIT(20) | BIT(4);
>> +		else
>> +			/* 27+i: write mask, 11+i: value */
>> +			value = BIT(27 + bus_nr) | BIT(11 + bus_nr);
>>   
>>   		ret = regmap_write(grf, i2c->soc_data->grf_offset, value);
>>   		if (ret != 0) {
>>
>
> Heiko
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
