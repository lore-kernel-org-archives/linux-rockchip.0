Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4C27C47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 10:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t97WyZThx93X1bJJgWJBmzmFSdb1I5CVk0lQ7N1eI48=; b=j5euvjVDWk63bG
	JL4Us22MgDoSylhrgOXaYpWOFRoXYPx6lfudN0MKg69pNISj6QO+FcDvL0zXd7v+tzpqeHh4WrhRm
	haCh7wTeUx7yk1wTY9yf2l0HN2fQ4005xAbmyJA7V9bcozCrOKBAjGKROOcFDFdHAu4t3KqK7ZeIA
	APUk82XlabDz2DIDL29oByFUcdDfDW2b90DH32JkoN6LMHsEDKLHFHs8t35gA9G1jPktIxUZBiZNQ
	yd8+oWwwvlO4AD0K9dF/i5mlqsgV1yZpZvelMpg5/kEfO4TohaU3NYGcj5IMd2FolRrrMStyNJvEp
	fsXjYQMmnGbaE6CgkfGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2j0-00FBoq-10;
	Wed, 17 Jan 2024 10:00:46 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2iv-00FBnl-33;
	Wed, 17 Jan 2024 10:00:43 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 547D45C01F0;
	Wed, 17 Jan 2024 05:00:41 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 17 Jan 2024 05:00:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1705485641; x=1705572041; bh=/wyX6Sl7+DhZnU3Q0TqpgZ3lJgja7hsu
	xIwI/YnreAM=; b=JvpBt54aNxPc5eIOC7IKmqJ3Y4pxs9Rlf5XtSozN/z/0N0XV
	kuqOyw6w2rJAatrWdgZLk+ooBcgtJUUyovzEcGZHsgmAM0H0701C3vFy9mTzU50Z
	19WBRw3E8mRPSVPIpj80xlQpsIegCytRR5FtaWq2OMIU39akxyBv4KWlU9Vm2/RW
	xlQyNVfAJE/HxyY21QjSwQIfFCkU6Z/oOg50PxnqsLf3UEyVoMhyO+mRqy4B2sgq
	HuuP1Cf7Z5GgM2QYVRcTG0O9DVyNzzCTl6Xmbw2Vg8Gucp5qq7Mz4irKjqSis96O
	lYHOZqdJf8L4BjV4livP2K6ZpmLdM2UniLjLGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705485641; x=
	1705572041; bh=/wyX6Sl7+DhZnU3Q0TqpgZ3lJgja7hsuxIwI/YnreAM=; b=c
	vFTVzureYHhCJuSVko6WtERLnqRTShzXpzB2EdnaW2Cj/lFRnoP8S5JJ0nvCGTtG
	BHciWEVNMh19U8/lthQMIG/7hDgvXYmx/om5Z/5A6wze2qvoCchx8LDYiWy867f7
	158Vl8ewpW61ripRPI/CA5C8cKo5EgLlfS2lIbyvflcAK83Ge+UKtr5gOO9Sniam
	Wfs12RODG/ECucnjTeHs8DWljWuhzwBFWEZuJeyG15j3rQ4GrXLL0aAv1BZl/RlM
	vzXXzTwMktF/lO18QHPNUqQ8HyIqmrqn8SE122RWhC8+Fp2D1XITQT2XCBpi1+qb
	gZBlcN+5xNI99+UYapNmA==
X-ME-Sender: <xms:SaWnZZ4VGqcYzFGAA4wQ6hkZVFvoHSJFJokORoeLiU3BJzC7hIsD8A>
    <xme:SaWnZW5EJc-FiJ4bXlMsxgewY6jLSNBE2Q7Dp17PGDFPZ3DIJp4727mKaZ9m6a0Q9
    10mpiPNuA>
X-ME-Received: <xmr:SaWnZQdPIR-xv10WFcVshrLLLhEhc6TLr68Z95bpSO3RW4MSKtN85kjPWBMTUhpwUoDaOoC4QI_BDbT9Ynm8s95v60g3ELC74RN2WQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdejhedgtdelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtjeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepheehgfelhfffgeefkefgjeelkeduleefvefhgfekgfetfeetvdeigeekjedvffeh
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:SaWnZSJchl_9uHWzSN1NMwcq6K9xhadlAIzeLRGfWJ-IrYkjMPlwRQ>
    <xmx:SaWnZdKKlwoTakPSyYUrD1zponkriQ-b0cxjzYdoLe4u9HtgLAqoGg>
    <xmx:SaWnZbxjvT9A0ozhruPW0bwUuPbxgxYeT8ZscIadExV41FvHAV-P6Q>
    <xmx:SaWnZaB1HhecaFQtqLxw-BRxH-UOeqx6igLxfYm9XMsPFlN-aciL4w>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Jan 2024 05:00:36 -0500 (EST)
Message-ID: <792fb886-beac-44fd-a8d5-82187baf9c62@feathertop.org>
Date: Wed, 17 Jan 2024 21:00:36 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: rockchip: rk809 fix existing example
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Zhang Qing <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org
References: <20240116132102.3272682-1-tim@feathertop.org>
 <20240116132102.3272682-3-tim@feathertop.org>
 <3d4d8fc4-2b57-454e-a7f7-637309590cc3@linaro.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <3d4d8fc4-2b57-454e-a7f7-637309590cc3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_020042_130318_F5718755 
X-CRM114-Status: GOOD (  11.89  )
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

Hi Krzysztof,

On 1/17/24 18:43, Krzysztof Kozlowski wrote:
> On 16/01/2024 14:21, Tim Lunn wrote:
>> Fix typo in the example specifying wrong compatible string for rk809.
>> Remove additional vccX-supply properties that dont exist on rk809.
>>
>> Signed-off-by: Tim Lunn <tim@feathertop.org>
>>
>> ---
>>
>> Changes in v2:
>> - Fix vcc-supply warning detected by dt_binding bot
>>
>>   Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml | 7 ++-----
>>   1 file changed, 2 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>> index bac2e751e2f2..9b9d670708ce 100644
>> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>> @@ -154,8 +154,8 @@ examples:
>>           #address-cells = <1>;
>>           #size-cells = <0>;
>>   
>> -        rk808: pmic@1b {
>> -            compatible = "rockchip,rk808";
>> +        rk809: pmic@1b {
> Drop label.
>
Yep, will fix.
> Best regards,
> Krzysztof
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
