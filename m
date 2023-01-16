Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E43CC46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 09:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1J4gMaG3DDZqUbqU8TOJ+NoL2zlH87PJcrp4iPbc/Jk=; b=RwG6jx1NH2zH4003xe9Nv7mCqw
	mr9cIanSZupRfzn7TK7ApPCCf6W9hadq6I5N3POzSi9A+5DZG97w3PBwDZCyjQqx7uO+XVizL3Iis
	3cJ2t0gr/wk6RoOVTcwaZygp2Wxs48ePkKgDEX2ClGV4Qz+Cwl/TTUKducJq5Cz4gWLag+PZzIK57
	o5a4nxKJFiE9ydWom8MdV3ao4HkzLty73ZeYRM42M7WTFmVMhX4exOhSdu9LmPfXktRKRYH1eGbSc
	VD9Aae3mNgrjazMm8xfVbKBeOJf2D33bVsijThZmHYXHNzPXgoZEd4vJDD2ZmT/DzcRmCirZ98ItA
	zFKKrvNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHLod-009M2D-0E; Mon, 16 Jan 2023 09:30:07 +0000
Received: from mail-db5eur02olkn2056.outbound.protection.outlook.com ([40.92.50.56] helo=EUR02-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHLoY-009M0W-Q2; Mon, 16 Jan 2023 09:30:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OLRCqgjfQhMkM8FKuMyokfLYj6BrqZt8LjEREl3El09UhdOsWSBXglhPfeIo5j9rk8wKTSSzTKNJvT8eh3lu6/dGjR5+iXtnNPGtJADoOl3AabTAViHIq38waiFYyvk/1C8KTeiQpQPMkcoLB97yfXrF+mVbIUDEg10bZdQxSQo3+9DPJD1p1uscZsvbybOwSnEyCT2q3lhqRM87NuEhs9LSogcD97bvUHwMmZQmZ9AWudIbZxrjFFXe9IQIbGfWysVGQ37lEDXdO3sM2jAaxno1lo96UKKn3nvSDa2XYiYCsFs8RA6Puqa0AK8ZoGEpZOXdW0qTOzMz1/bW9D0B4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/eifhGVqGoHCLxjeZL2lhpNLTApKoiMbXCKVFzYi46Q=;
 b=ZFmEaF8RXb+l65X7Lb20YwVm9c+DR9UtsgANIgOIEwzHaVvwPAeKQC92QcFQS0aAr3JgYLBOjd+DYpMxdXeilpn7q4e+PV+6Bjg19L5DCAaUzk5DxZtHRUGPw/HHTaygHZEM2uSl4CFBAod+6mr7f+4X8A0b3PVLnz1iR5nhXcFf5d/mq+XvIwsZPMVj5ZsugRxJn7r9DtWp0u92aiUVzx/zcM2hDfroolpTM6g3OqamU46VIlk/4u0Z/H90CVOxYXotpIHadScqVFYPKyRZifBOc8VOBLKoKV4DWxmSJTfm6H6X0V17HOIysxjkTcMxgoOtHZJgqzgPmAiE83WU9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DB9P190MB1594.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:247::8) by
 GVXP190MB2013.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:4::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.21; Mon, 16 Jan 2023 09:29:58 +0000
Received: from DB9P190MB1594.EURP190.PROD.OUTLOOK.COM
 ([fe80::2567:af26:29a2:850]) by DB9P190MB1594.EURP190.PROD.OUTLOOK.COM
 ([fe80::2567:af26:29a2:850%8]) with mapi id 15.20.5986.023; Mon, 16 Jan 2023
 09:29:58 +0000
Message-ID:  <DB9P190MB1594D084408339B34C69B060ACC19@DB9P190MB1594.EURP190.PROD.OUTLOOK.COM>
Date: Mon, 16 Jan 2023 10:29:55 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] arm64: dts: rockchip: fix probe of analog sound card on
 rock-3a
To: Michael Riesch <michael.riesch@wolfvision.net>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 frattaroli.nicolas@gmail.com
References: <20230115211553.445007-1-jonas@kwiboo.se>
 <7caeb07b-8465-6bdd-d90d-06a905b56f37@wolfvision.net>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <7caeb07b-8465-6bdd-d90d-06a905b56f37@wolfvision.net>
X-TMN: [vbNKo9wQa5AjzOTTdgVFFkAG19dpSE6+]
X-ClientProxiedBy: AM0P190CA0002.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::12) To DB9P190MB1594.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:10:247::8)
X-Microsoft-Original-Message-ID:  <8d41b5f8-bbd0-2a06-6506-88b290ac6cf8@kwiboo.se>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9P190MB1594:EE_|GVXP190MB2013:EE_
X-MS-Office365-Filtering-Correlation-Id: ff40dfeb-82bd-412a-909a-08daf7a43b9e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	1aYQdkxRS+XDX9PVPkTxhba0erqWQfHaXM8VHvnr+IEqFlBDJlcbBK7TRuWSLBX1N9n2eVd1y4gMkvKBwFxpsrQV1/V+q86INmMSt2p+6nKktj44ZR3/04NAKDHjX+Za3yU7W+lK4F6gacUO/bv8fgIIEKrThNV9gb6bhcVkNgxkjF1z7g8uMmLQJDDUzoPCEXobDgVkbrBmCqcvTj7RqNr4L765F85w9PdhRBU0cCk5Oldpn9LTcLAbeTfVJ39A/Ea6XiRQaIEmfQ8Bkq/Ydlaan23AZGf4d7QW303sAAyZYUnbqjaOJLXIf6TEyCzEJ1A504L9e3bdXPdA5GlOJEYlrPAegef5alxnAyd10xcbiy7jnLQkdYx3v6mMPjUUiSmUbDztkqaxgmLFcfu614veGpapb2GNyRazy0RdG1uFDy+RPCfuTlSRvWVvIf/BWedr3QMahw6Di9gphA7boj4Rp4Yq6OeBssxFKFl99mGisJA/8dDU/0VbpB3n1U3gLvLTN7SGV/Bfg3Sv1qUT5N3p/8wwQeJOB6e7MsalDPZZiMuuW5qvHM/58aHqMz/KyvM6HHWxtt11lWLAaIbkyKqHV87m54cRjAg9M0Hl3C/xkHmHnxJKlFUjY3m9IpcASQIL5/+JVpaExb+hUegaQw==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?UDJlckFmQlhMMWYzMUh3aUI3djhnd0VLOHBsd1dQRG00bVFtS3pIV1I1cnAz?=
 =?utf-8?B?L0lPK0JtTmx3SHZ5ZGVYTzVyWUZFTTRteExxckJwL2FrY1FkUm9UdWFiQnNl?=
 =?utf-8?B?TzQwdGxacVZVNWF0Zkp0ZkVKaFgrWnQ4TTZIak5MTzlQR0ViQkhuWnVyMFNZ?=
 =?utf-8?B?Sy96Vk01bWNVZXllck9XZ0xBV0FrUk5lZndiWHFML2lHWTJReHgvUWhYR2Rr?=
 =?utf-8?B?MmgzOXB1cWpyZUFOTkdnSjZNNlp2djRwV25UYnRPU1ZHdmJDMkJqRnJGLy9N?=
 =?utf-8?B?SXhDNE5aaG5DQ24wN2FtVW5lbnlaVW9MekRZeXVZbGtIbnBYcHFzcXhJVE1v?=
 =?utf-8?B?TStzOWV0UC8zczIyVjNCTjkvQmszMS8wSURIL2l2UGkzejJBUnJDc3NlaXdL?=
 =?utf-8?B?Y3hVVHZJM28xU0U1N1BHZW1iM3VENzlaaGVGcDlLRVA1bDVXMHBvVXdWUk9R?=
 =?utf-8?B?bnIxZmhmT09pVWV4WllBYlIzcmh1RWlpZWpQSXhuemhvT1FoYUl5Z05naXRI?=
 =?utf-8?B?N2FiWmlsWXZGRE5zM21sa1hRVjIrOWpNNWtlZ0ZaMFA1V1pHS0wzUTQ5WHBH?=
 =?utf-8?B?VE5IdmtzQ1k2MzQzdGtIUkV1NUxiNlg4bTlySUM5Q0N6bWVCM3lac2VYa25x?=
 =?utf-8?B?K3VlTTdQd1JCRXdoa0RlYTAxRnpWc0lxUGc3dlUrRVl5S0JiTkpaZExWYTZG?=
 =?utf-8?B?bmdwZWdjS3lSSGhhVC91SWlURS8wdjZQYXJJMHNHTDVaMDJ1SktqeGV4bGI5?=
 =?utf-8?B?aWZzWjhsZzdKU0pyRmlkVnFMMWl4VFlrTzhXK2haTmVTTThKQXJnOHpzOGYr?=
 =?utf-8?B?anQ3SHFHcEVmN1FKMnRwQ0hJenhsVFVTSHpCNGFRRDFFL2ZzTHJwMFBjclZG?=
 =?utf-8?B?WVVlTEhtZ05uMytiTS80Mm5qSlhuNGtyeENGNnB5MGw4aXpnZE9kOGFiMVA0?=
 =?utf-8?B?S1VESllUWjJwaUNQWnA4MVdHd0tOeElySUNrNmxGeU5IMjVJTFlQcjc0KzNa?=
 =?utf-8?B?d0lvK3dqYzNoWFNtbGFPNUdVWkxwTHIzc0crU1ZNcEtEMldBZ2FRMnNtUGdO?=
 =?utf-8?B?NS85ajQ0cXEzVk5QOUpwWFlmNS9mZDA1NjI5eE1NYUpjWmYxR2VnUzV1RXd3?=
 =?utf-8?B?R1RHc3JRZGQ3S2ZaTktLaHdYcFdsSFdNK1lzOTh4Nm5YN3p5Z3hOWHMrdm5M?=
 =?utf-8?B?eTJORTM0NUhVUW8xOXNKaGI0TTNGc041MzE5ZHZSYmQ2VmdzdTJZZks1Z2tl?=
 =?utf-8?B?NURUak1OVFFnWFp4d2F2MHVCbGp0RmJBQ1dmMTd3RnhwUkNNNjNEOXd2L2ZP?=
 =?utf-8?B?YW5MVUdyeHk0OEw4UXR1M0w2UHFjeWx1UXRHY1FHYU93VnB1NFBFK29CdnMv?=
 =?utf-8?B?UDVhRGF2L3RDbUU1L1V1RmNXZkpWWE1Oc0dOc1pTd2YvaXIvQkthWVNVNUVF?=
 =?utf-8?B?U3hOV1dwNDVUYU55K1RQZ29CZzd4K1IxWHpRTkVqS0RkclppQk5RZjVvM1Fa?=
 =?utf-8?B?Q3hFRm8wRFg5OVphL1BtM2Z0a0JLenEzd09sTmFjc2dOamp2MWpLU3BQb0k0?=
 =?utf-8?B?b3ZEamtVQXE0WEFQbEJ5aDFxbWxUNmhhNWJpanVEOG9CbjRjekRDcDRHU1pX?=
 =?utf-8?B?Qy8yQWRpTjlhS05XWko1aTY3L3BDU0hmS3ZSb3ZyelphcFpqeDh5UVJZeEdH?=
 =?utf-8?Q?sUpV9y2LJpCXETFNRq4f?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-91991.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: ff40dfeb-82bd-412a-909a-08daf7a43b9e
X-MS-Exchange-CrossTenant-AuthSource: DB9P190MB1594.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2023 09:29:58.1740
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXP190MB2013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_013002_902302_E8801490 
X-CRM114-Status: GOOD (  18.67  )
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

Hi Michael,

On 2023-01-16 09:41, Michael Riesch wrote:
> Hi Jonas,
> 
> On 1/15/23 22:15, Jonas Karlman wrote:
>> The following was observed on my Radxa ROCK 3 Model A board:
>>
>>    rockchip-pinctrl pinctrl: pin gpio1-9 already requested by vcc-cam-regulator; cannot claim for fe410000.i2s
>>    ...
>>    platform rk809-sound: deferred probe pending
>>
>> Fix this by supplying a board specific pinctrl with the i2s1 pins used
>> by pmic codec according to the schematic [1].
>>
>> [1] https://emea01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdl.radxa.com%2Frock3%2Fdocs%2Fhw%2F3a%2FROCK-3A-V1.3-SCH.pdf&data=05%7C01%7C%7Cb09a8096d417409ca0c108daf79d85f2%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C638094553170941885%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=upix1Lqcu1y5vYkPtcB5Ao5TA04brBcecCS0LX2ipe4%3D&reserved=0
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> 
> Makes sense to me, but...
> 
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>> index 00d873a03cfe..a149c8b83f94 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>> @@ -573,6 +573,8 @@ &i2s0_8ch {
>>   };
>>   
>>   &i2s1_8ch {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_lrcktx &i2s1m0_sdi0 &i2s1m0_sdo0>;
> 
> ... shouldn't this include i2s1m0_mclk as well?

i2s1m0_mclk is already included in the pmic/rk809 pinctrl, so it was omitted from the i2s1_8ch pinctrl.

Best regards,
Jonas

> 
> For some reason this has been omitted in the pinctrl defined in
> rk356x.dtsi. But then rk356x.dtsi also claims
>   - both i2s1m0_sdo1 and i2s1m0_sdi3
>   - both i2s1m0_sdo2 and i2s1m0_sdi2
>   - both i2s1m0_sdo3 and i2s1m0_sdi1
> which are mapped to the same respective pins. Therefore it seems that
> there might be something wrong with this pinctrl altogether.
> 
> Cc: Nicolas Frattaroli, maybe he can provide some clarification.
> 
> Best regards,
> Michael
> 
>>   	rockchip,trcm-sync-tx-only;
>>   	status = "okay";
>>   };


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
