Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D24D7C5478C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Feb 2024 07:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D0uA+oHw/kZvuh5TH7cw6sm7tbbSDueLgvWUvAyOJKw=; b=nsty9dZc9+FHaee/DF2qZq3JHZ
	8XJSMonOlhtS+PDdjn7h+RCOSeur7BabWsQ0k7FjR7i94Psh2g0VL/Bt/wXhvwHOXKHyZotBBdXA4
	IfobfS/QFkMsIa3S1gbhDWZ2e6L99Ur8UstRwfQPeYnor8JSYLLVPRjp9YPwE7A36WNe0mbNWgapl
	ljXMjpqzIouPR/XPzZDNLOgetqA7Sii24l1849u83PP1r/CuVUaZ0pQYWYDQ7xlGS7TdeVP65jjt9
	GEcJT4C7KH2PmDquW3RhS5I6iYp/92NGjdJtPqlw1oXLjzOLK3y3pqA+Dz67tFUKjkkftDoQX7qYS
	ARlRpOVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdPbo-00000008FVs-2osB;
	Fri, 23 Feb 2024 07:04:38 +0000
Received: from mail-am0eur02on20701.outbound.protection.outlook.com ([2a01:111:f403:2606::701] helo=EUR02-AM0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdPau-00000008FJx-2GOn;
	Fri, 23 Feb 2024 07:03:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RWXEEqSoWBRKtpfZ9/Ryroif7f6czprDhnsMKRxZV0j6vi3eBZEjR13puKrV3mRY2WygHN+XDr2Mku0nrRB66qsSpZeVMUEaVSr+wOPeNgUf6RYZI/uF55oHzDLaRwJjCeNKoqVGHbsdT93trsULwS2baKQ703SqKGROTDfFcZQof3q7ktbvJxEqST+CGBaIwn/Vow3p79ZRYjtg+bu7WER5Bu60202XR6luOqH/tBo060Ow1WeFk07TELpvNAjvmyi2EndfgJ/iQUuBF71a0pipHz+t1aX7l6BAywlPjCaRyOWBVMBgze3tsXaCmr7oiHI+tx6YlV4e3itDRSEE2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aiX8VStqOjwKyiQSWOkpEfuBQtrrllbVK1IhZYQULy4=;
 b=ipC3uDc0Sh2iV5dFl+shtzm2U8cUZGYARhSQNhwAB8Q6pLnfS19XtZ+YQIitjAe0Tsr9rpj7VHYVcXGBH5veY+HsLugVUR8cANSwdZeCwiURIloZ/WaFoN4lMgXuZ9qS+oUyfunuthKJRHPWM8OkDy+jcYP2rLdNnqcG0x1CD4mMXhJKdOj/F3/Qu8MNhEZ11509YlAY5TFQgW3knXST+bcgL4MDywDO7oZX2X3ijmgUlgA1hGcYCk95YBaeanYmF+tA4XUt5u/MQCOTdKVYGFhxbbgTQRdHxXcSbPXdXXrW+CKFlMw5nTCQU8Vosy5PhYl1JF5sRdJjvHL68HZHcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aiX8VStqOjwKyiQSWOkpEfuBQtrrllbVK1IhZYQULy4=;
 b=kvQKpKC30P6xEb1eAl7uHrHscwjsqjeNjgizSn5TMRbiZXJX4WabmSZBLWBEQo2z5Ud2o69HisvwWyFasc92Qumzp2yYqtV/eN1vxZ6g2uQjzI5ziFk5VCTdl3E32iN5wUk09uqHqWezy9J23bygP6d4EM9DZSBeyJy6ddWkIt0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DB9PR08MB6666.eurprd08.prod.outlook.com (2603:10a6:10:2a7::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.24; Fri, 23 Feb
 2024 07:03:24 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9%5]) with mapi id 15.20.7316.023; Fri, 23 Feb 2024
 07:03:24 +0000
Message-ID: <5bb0b0a9-3d4c-4303-aa43-38789bee286d@wolfvision.net>
Date: Fri, 23 Feb 2024 08:03:20 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/14] media: dt-bindings: media: rockchip,px30-vip: allow
 for different variants
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: Mehdi Djait <mehdi.djait.k@gmail.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Sakari Ailus
 <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20240220-v6-8-topic-rk3568-vicap-v1-0-2680a1fa640b@wolfvision.net>
 <20240220-v6-8-topic-rk3568-vicap-v1-4-2680a1fa640b@wolfvision.net>
 <20240220-catchy-cupcake-e600e5af7650@spud>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20240220-catchy-cupcake-e600e5af7650@spud>
X-ClientProxiedBy: FR3P281CA0162.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a2::14) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB9PR08MB6666:EE_
X-MS-Office365-Filtering-Correlation-Id: df9999dc-6ad7-404c-0c37-08dc343d86b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fe1ifzTqcCsntbDOvy8cDVU2kZ7gtkJer7SbdMl//nbNDHrMlsAe4ykeQ/zbZE8RrUq+GHsF1nlHkhR8I4Ev8aUxG/g4V+frYvqNp/6k2r0RhRpTflSHN9kWscgabFOaRaZ9JdesKfqgBNIi8P3KxX22F3vUGOdSi4Utq9tnYUGatMOFr4qDPoMgPWPc2LkG/ON6616X9qgi/1Xz4u7nYrKr8yKvFH3mD20bEv9n/P1oEF8VthGMAkgWmTb9EoaXjAuWlx6n5BOiWPaVSH0iMx245UPHNvhm4F2Dlfb3ODBCXE8Q03HTwRjau85UFN6aJeDv7jiNJwxAXxhOkDzEvTNrcILOeFEVNCizQixLAmO9BMtdMHIl/aFaI+HP7RHh9QLddGUHaCm+ZTGZ90vNK2WXOGgQyVDAWpadyhqyeD+wDwaNg30lDkyDWJUFWtnJnRgP5f9UspaLpzcPiIi83XNXZsSa0nIvE5eVO6h5hKCvMopZhUaBtzqJpKbaCNdBxUL1z0QICS1OQon++7Tb1KQlxCPlsuHG0e7EZlgNCLI=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bTRzSUd0S0kwTGF4WEZMYjl4bnBFMVNLZkZLRE1RUHFNVVlKVDJFdnRNWnls?=
 =?utf-8?B?OFZNSHRxcmoxMjF3djNERzhCY0Z0OVBoWTFqbmNjUlZQVDNKZFg3eUYzNFlt?=
 =?utf-8?B?bVRlb2xhQUJycGR5VmlmQVRhNWN4NjlqSTVhSUtuWmVTMjFKSUVheXN5elhT?=
 =?utf-8?B?VUpLcUJsMmx3cWZKTWlWdldPODlzVnNMVk01czExZkg5dU5OVTN1MXVlcW9P?=
 =?utf-8?B?TE1UcDZ4MG1zYVVmbDR0NXhkTmVYMDFDQXV0OHQ4Ny90ZmxxbEJHYTlVcEww?=
 =?utf-8?B?VExob0dwQXhQOE5lbFMzdVQrWEljRGRFbitqUkkwY1pYTW1BZTdTY1hTdmVl?=
 =?utf-8?B?dDJXMWltRVZNcVlPMGh0YVgwblB6ZytEOWRsOFJGNkc3Z0x1aHZzYStzWHV6?=
 =?utf-8?B?aGg5RzllNXVQT2RrMWN2VU1kUXdoR0pVSlE2cktPQlo5bDFRT1daOWp4SDdn?=
 =?utf-8?B?QXFaWWRrc2ZueG81V2piVUdBS1VIL3pDSUI3cEJ6SDREVVM4Y2tuT2EzbUFK?=
 =?utf-8?B?Uk1mSkJkRldlWjY3NnovVU96MUt2UUEreDZsVDdvSFNWYWt5MHNEOWtmczNt?=
 =?utf-8?B?RXZ2NjU3bjljeWdqVmdINURNWVhuR2ZuaFN1VVQ5STN4MmpNbzNoelMrMnc4?=
 =?utf-8?B?SmJ2ZXR6a1puTFZ5S255dTdIaUhQa3FLTnk2WmxwckxTVjIwQXJTTEg0cFRH?=
 =?utf-8?B?eHRuZkN1Mmh4YWRCWVdWQ3dDWnhoM0YvQWxaUDBWZEswYXI1aGJtS3JFRU5D?=
 =?utf-8?B?RVFtaC9tQ0w4allobE00b0xVNmVqbnhBZ2N5V3lNS0JTWkhGZEpUbXhhQ3hO?=
 =?utf-8?B?Qlk1SEZidFAvaUpvcXI3U2VqRmRaSXdsVllaTk1EbFRNd2xZUjFFTHVETEJi?=
 =?utf-8?B?TFdEYmJtdXNHQ0lxOUppenFFSWwzajAzYTIrSGlDMGRSNU1lNXpNZHhuLys4?=
 =?utf-8?B?dm15ZkNZTDE5VFkvVlFEVDRkZjUrQllsck50TVNDZFc5Zm5Lc01rMzJ2c0p0?=
 =?utf-8?B?WElLd0xZWERkRjViNWZwUHlGS2xCSTZBTEw1cE9aNXVJNGhQakp5SkRMQ3BY?=
 =?utf-8?B?ZmhQSXFocFV5eDc3bllYM1RnNDFndnAweE5JT1BySEJGNWxZdkZSdGJnZG1G?=
 =?utf-8?B?bjk0Z2xGNytPZzdGVEV0aENXYXRaa1FWc1ZFMm1sY3FhSUt5WTBWNGJTcURQ?=
 =?utf-8?B?eWlLT2JDcTVHU3FDeW51dzkrajBhbzBjM3hWMmRVTlNNazhsNXcyV1NwOVhv?=
 =?utf-8?B?dlV6QzlzWUtaQ3Irbkd2Y3p0SDYxeUxuRFFRcDdHeWhvaW8rK1pDbjAzakVp?=
 =?utf-8?B?L1paWGpZM1Z2dDBIOUV1RUxFbWYzT3NxdldFTTlxU3FHdWlkUWVEL2NFaDJV?=
 =?utf-8?B?ak1zSnRZRDJvUlMzZzdPUncvUVJlQW9USXFzMzFhOXhCS1NVeTAvMXpoanps?=
 =?utf-8?B?VDVRQ3FHRXJqN3E3YnBKdjQ2am4xcVVEK28zbUE5RkhhZm9qclpyOFQvcHRv?=
 =?utf-8?B?Ti9zVGxBamg1azhPcm5kZngzdmdmUmY0d3lGTUI3L0V1Qmd1TlV6czFzVFZz?=
 =?utf-8?B?YTVsZjZuWGNocGJsSHlpWis0M3dZK2lla050SnBKNC9FVDUyeWdEMWN1UHRv?=
 =?utf-8?B?TldmL094NlAzbmxyWVJQM2NONGRDSUlPU2pQVllHUjlxZXgxVzRCMThWUGdo?=
 =?utf-8?B?bWplZzRtRUhKRzhFMWpjcEZvdmwrVkJxekorYzJYN0tRck5pODFkQTdmZStF?=
 =?utf-8?B?Wkw3VklndTkvUzRrenBYV1kvcTNXQ3RsTDhyc2ZzMWh4RVROeDdxNXk4aHVi?=
 =?utf-8?B?Q0VHMm1aR1RRSE1MQXBkbDRQNUo4VHNKYllCR1BOU3ZGeE9KYko1cTh1MWdM?=
 =?utf-8?B?RjQ0VnN1Q1hPZzZKUXRBQUtpajF6bnhsVmxaSDRObVVJVStOTnNYRTBRemlo?=
 =?utf-8?B?RnJrUUt3d0Q4a08rMmlUVXZuaG96UytZQ3BKMXJmWXhDa3lHN2hob3JINmNi?=
 =?utf-8?B?ODVXcjR0bzI0NlU1OUVCTXNjVERUeUtPb3pRb3ZLaXhYS1ExdkpXUFJUblpr?=
 =?utf-8?B?bHNQMTQwVzZINDRDMkxBRi9SNjhEd0JhOHRmZHdQaHZXdGk1OXRDS3VTSTdK?=
 =?utf-8?B?UlA0ZkMrOUM1SzZFV0MxOEdRTW02Kzd4QXFIV3dkRTc0MUxJRmR1K2hxRE5L?=
 =?utf-8?B?R0E9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: df9999dc-6ad7-404c-0c37-08dc343d86b6
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2024 07:03:23.8563
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F3085bLMR7yz2mBLgoE5AM8t4idEqGXcMzWbOr8qkFSAtK6cporGKOJJy6BZ6Gr2Ro9QBceHsm9G5AlcV9ErwU6YdUjoNnWNjGRw70c+xPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6666
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_230346_801895_EA82C56A 
X-CRM114-Status: GOOD (  19.13  )
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

Hi Conor,

On 2/20/24 19:58, Conor Dooley wrote:
> Hey,
> 
> On Tue, Feb 20, 2024 at 10:39:14AM +0100, Michael Riesch wrote:
>> Move the documentation of clocks and resets to a allOf: structure in order
>> to allow for different variants of the IP block.
>>
>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>> ---
>>  .../bindings/media/rockchip,px30-vip.yaml          | 58 ++++++++++++++--------
>>  1 file changed, 37 insertions(+), 21 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml b/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
>> index 675a1ea47210..7168f166798c 100644
>> --- a/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
>> +++ b/Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml
>> @@ -24,32 +24,16 @@ properties:
>>    interrupts:
>>      maxItems: 1
>>  
>> -  clocks:
>> -    items:
>> -      - description: ACLK
>> -      - description: HCLK
>> -      - description: PCLK
>> -
>> -  clock-names:
>> -    items:
>> -      - const: aclk
>> -      - const: hclk
>> -      - const: pclk
>> +  clocks: true
>> +
>> +  clock-names: true
> 
> This is, unfortunately, not how we like multiple soc support to be
> handled. Instead, the widest constraints are added at the top level
> and constrained by the allOf. If none of the names etc are shared, at
> least the widest constraints for minItems and maxItems should be able to
> be here.

Just to make sure I got it right:

clocks:
  minItems: 3
  maxItems: 4
  items:
    - const: aclk
    - const: hclk

...

allOf:
...
  - if:
      properties:
        compatible:
          contains:
            const: rockchip,rk3568-vicap
    then:
      properties:
        clocks:
          - const: aclk
          - const: hclk
          - const: dclk
          - const: iclk

Is this the desired way?

> That said, this patch should be squashed with the patch that actually
> adds the other device to the binding.

That can be arranged.

Best regards,
Michael

> 
> Cheers,
> Conor.
> 
>>  
>>    iommus:
>>      maxItems: 1
>>  
>> -  resets:
>> -    items:
>> -      - description: AXI
>> -      - description: AHB
>> -      - description: PCLK IN
>> +  resets: true
>>  
>> -  reset-names:
>> -    items:
>> -      - const: axi
>> -      - const: ahb
>> -      - const: pclkin
>> +  reset-names: true
>>  
>>    power-domains:
>>      maxItems: 1
>> @@ -85,6 +69,38 @@ required:
>>    - clocks
>>    - ports
>>  
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: rockchip,px30-vip
>> +    then:
>> +      properties:
>> +        clocks:
>> +          items:
>> +            - description: ACLK
>> +            - description: HCLK
>> +            - description: PCLK
>> +
>> +        clock-names:
>> +          items:
>> +            - const: aclk
>> +            - const: hclk
>> +            - const: pclk
>> +
>> +        resets:
>> +          items:
>> +            - description: AXI
>> +            - description: AHB
>> +            - description: PCLK IN
>> +
>> +        reset-names:
>> +          items:
>> +            - const: axi
>> +            - const: ahb
>> +            - const: pclkin
>> +
>>  additionalProperties: false
>>  
>>  examples:
>>
>> -- 
>> 2.30.2
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
