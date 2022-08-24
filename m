Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AF7FC00140
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Aug 2022 05:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6y0TxsbdxPCuOQmzskXWdYjr7cdqo4es1FqLuMxfiCA=; b=ZuhZ60ntMqI3Ni73IeWLSBfCKE
	w1mB+leggfO50IS5zuXWzX902+EXbnLhd4jraLGUY2OHjdy13WywCltzkBAlc3/YvElUQivK7vL64
	AnpK9gawxPmoOwx3z/6RH38Xz2r38cGzK8mDXbJT2hbRmcF52k7+cVyYfi/jz73JfORuG8YAnaDR8
	CIgxsohMIQ6YeNE8YRJs8rqD9e3P3u7mu7AvpJgdY56If7PZHwyFkLPvGbA1bEh1e00DHlsQqciEN
	atrXu0TGcAnIU/BVwE7L7Nr0zpfajbMji1DczoDmqJ8My9tP0es2VofqcL1jhsvzl2z5GEvPMNiND
	qIH0mZSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQjAV-00Ah0b-5G; Wed, 24 Aug 2022 05:43:11 +0000
Received: from mail-eopbgr60081.outbound.protection.outlook.com ([40.107.6.81] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQjAT-00Agzn-4K
	for linux-rockchip@lists.infradead.org; Wed, 24 Aug 2022 05:43:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yt1nDft8TYITPx38YJApAJRCNIc8snyhIQZJgs8K5IaVN3hsILFrk2lpkrF/jD0cfbswcg9/Wom1FDCclo0taPBJiGkA/w8eC54rTmn45s/+EeoR8JcLQmMDPJIdJ8qXaFd95UqJ5FqePOb9ayZ992xvFt/Kn/HR55nBjxGP5ZpmC708Bcn8UAJUv3MhS5gUizwpAToFweVbVvIb83tX/2NDKylK6kNvEUWmFCQh9nDuQUfupQEkX53uReHhnda7bpLRYkfxR86jcb6tFMEj3B+7TnkM21jxJDluC57szoQM7Q+vqcg2LxFxEP3WASTdqfAbj0TKI6Lf+bry/G3FSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zV5vpzb/e0q415CGwT/htOv4c6ZPVdeSRUfuOFqlZ0Y=;
 b=Z1gDq+Lwonprdhwq+i96k97ADp5TRuzegF0+AIxhpYickgH7Jl4JP/jd6z8uFktqqFyBrd/zjRy7oONTRE0t5O6X+UblE4jFikuawLx7RcJpdglpfPae1oarg0tREyEl8kA4wJRrp/ccBGaLD4x4m1JmFFT3ZF2pRmZ44b2v3F1z4xtO1UrPbvintFVE5QzrZ0clEaYE5W0GXqpAY7eqAHxHHi8aktfttPw6zJOmh88Gok/Wksr23VusU6BWyFbTuUn28rSOyMY9PhlPWlvb19Wei7XEitul8FHL0g9OcYjuJzCZxkGkVAORPLK1VF+sHm31YhT5CmRffX6b6VxK5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zV5vpzb/e0q415CGwT/htOv4c6ZPVdeSRUfuOFqlZ0Y=;
 b=m+6oDscCzGgpeHUcFTYGD4ctOJrnS36u+61l+0sEZ7Aux2341HDvptbw2MXy7YgbK1yU1cu5+f5asdhCFAPZuYX+nlKZ6abdvuQbRcmmU4dqbmRwM9XXd/sXBhhlqV+f9FPAWPbo5kjSX+VZHqbgJ2Sdc3UD+zrvF3QYyblnLcs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22) by DB6PR0802MB2600.eurprd08.prod.outlook.com
 (2603:10a6:4:a1::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.21; Wed, 24 Aug
 2022 05:43:05 +0000
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::2c84:f6b5:8727:b073]) by AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::2c84:f6b5:8727:b073%11]) with mapi id 15.20.5546.024; Wed, 24 Aug
 2022 05:43:05 +0000
Message-ID: <ef70b8b7-c1ff-a6b9-077b-83ea48c66c24@wolfvision.net>
Date: Wed, 24 Aug 2022 07:43:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 0/2] drm/rockchip: dw_hdmi: Add 4k@30 support
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, kernel@pengutronix.de,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
References: <20220822152017.1523679-1-s.hauer@pengutronix.de>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20220822152017.1523679-1-s.hauer@pengutronix.de>
X-ClientProxiedBy: ZR0P278CA0175.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::17) To AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 89b9faa9-a359-4693-7b87-08da8593841c
X-MS-TrafficTypeDiagnostic: DB6PR0802MB2600:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	fhbDhDFElVRJGFHg1ysJSf4+vs2Nd7Y2eI+QJ3Phnkf9jT+5K/kKUWO6bKo1AFbm1lvzwg/DKqvD9TzHi3w3euCE3vWbYizqlU3hO8hnzotSF2WcfLSrq3xD02UjCJ7mPiUiXb0cRAGHN8MfMVAoi5S0sjKl+CtqSZ2/pEjYW/TBHRo73VYWIBv5vIss9CqHc6xAAyqz6BWiiDWaL/u8RihD2yPe00fnbZP+ReXvcYFEN4l8pVcerOdbaclFqQSu/c5FkSLL3e85i8VKYB345dFNaLIdUlY2zkBz4niywIK2WIP09zaOUwTfzy7CayEt5kzPEmtzYeh2wrOhsefYnAluk2+qs4h6l9xDr2A4SgS8HGMHSLBJG2JnX15YePHCm/HE9oWB6sFjn8LsPrFagb3lz32GU/zWEWBTtjY2wopRlZCrJTGEpXHJhRZvVdKDRFVox9BXRDJp8Vq+nu4o2R3rL3uLDiiRYksiNGQ+pcWqZkLlmR1iAqr6IcnWYB7MS6uFTxariYs8htDzWkRUxNp0trk+LSw8u3fB+SrAgcEpfkdO0HuISiL02/JB5RPq5uUN7bvbxg1VVA+qL3aXN+fu2zfaTDDzUzSzJJ29wE/KHtqHbtXfkxXH3Dl/DKtWN914DUOHEfykYX9A4OmoVoOg12kDg+1d3bt0Kkr45mRDBQ7I1N8jWmujYcUN3hVhSAVOt3Pw2iP0ZUN3dLcpvUGSnpWqqztFnAksCAdJ5G2iJEVrWzBRAt/vtaTpKMUWhamnf4jQMS0P42VxgVI3B8Q7scR3yFTOBBdvGplXJBA=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4PR0802MB2131.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(39840400004)(136003)(346002)(396003)(366004)(52116002)(83380400001)(38100700002)(66476007)(36756003)(8676002)(4326008)(66946007)(66556008)(8936002)(6506007)(4744005)(6486002)(5660300002)(44832011)(31686004)(478600001)(316002)(6512007)(54906003)(31696002)(86362001)(53546011)(2616005)(186003)(2906002)(41300700001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?N0ZNRHhsV2l4cjgyR0FpZXZ5WVJhNzJPUDBoSEVpYk5TZk1YYzFXbkVldkhi?=
 =?utf-8?B?QUlPaUgxVitiMEVUVWViZXllK29HRk9MMXY2NStRdG5Xd3I4Rk9BUkVNNlc5?=
 =?utf-8?B?NHB4bGRzemV0VlBqeG9CNUxkbmlhWWIyWDZuOUpiKzl2WktGNE5EUkRteHMw?=
 =?utf-8?B?M0FyM0pEWHRxNUdEaVdEanJKR3U0YTdUNlQzMGNVK0tEK1lSSXpUOFJSNytI?=
 =?utf-8?B?YXNVRXN3cGJOQnNCR3JZandoVUVaYTdKTStYYUdtYkx6UVgvc2YrSXUzeVAy?=
 =?utf-8?B?d29DaWFqMzlmeWcvUU5GVkdpSWVRbWI4c2dlNWFUd0wwRzR0L1NUOEJkUkV6?=
 =?utf-8?B?MjN2Nko4ai9JOXVKcUhTcnlENXFudXo2VXFrM3JiajRuVlZqSGtES3VUK1pt?=
 =?utf-8?B?dXlFb0g5SWNxejdtbFAzOFNURU5vSHNNZnBRWGdlVm84MURKQmpMZHR1aEhn?=
 =?utf-8?B?dVptdXlLUGxRVVVWWHBrcDVpYVR0RlJFZFJZbDYrN3M4Sm13Qy9UeFhHYXhh?=
 =?utf-8?B?YnVtaTlqc1NWVWRBR0ZQN21UQU5KdCtwaVA0S0VEOGNXUGkzeFU3NnVOUVht?=
 =?utf-8?B?NmZmNlJjMW5ZRnVTRHBsekd6L3Jna2l0ZnNIODg1ZWNEaUdvcnB0am8rS3Fu?=
 =?utf-8?B?K2NJWEp1T2syVmZaZUtDcHFXUUtMeVVXWldqTHVMK29SOUprT0pHV2pUU3Ny?=
 =?utf-8?B?cTlFZ0s4QUtKS2lYbkhINEpZY2NTdzB2bTkvNnhmYW44Tk5zWXA5TGNEMm9N?=
 =?utf-8?B?eEIwYVpvdUUyL2xFWmo4NzQwMHhnYnlQdEYydkpJUk1TZDJSa0x2TnUwQkpR?=
 =?utf-8?B?TFZxUTQrOFIrcW52NUdqdmlVWFhVQTliaEtienJkcnU2Z0ZPSUJRNWZXUjRL?=
 =?utf-8?B?a3VYcUhxQVdzaWlmYzl5SVJTT0s2T2N0ZkhkelAwRTN6dFZsNmVsYk9QRGh0?=
 =?utf-8?B?S1gxNzhNM2ZycmtFNStjVjdtelo5dFpDTk5VRFZsZWwwQXBtSSswbmxNT3Y1?=
 =?utf-8?B?K2VsWkI0dUF2cEErTDVNaFVmdXEzK2pNOHMwcWNLUFRiNm5YRXloVHhCcVRq?=
 =?utf-8?B?eDlaRVZURG9PQXVWVWZmZkF1TUJrSGdTaDNKaE9RWWlJWmJpcDlWTVlpb3Jj?=
 =?utf-8?B?V1NZY2VPYkFtUkRrb1NWdE1mK2ZyTmZadTJPSTVqWDZRNSs1SmZYaEpDaGd3?=
 =?utf-8?B?ZHBJajUxUjdGRmZwakFkV2FqN1VUQ1IxaWIyMTAwb0VCclNrekR2VURkN3h3?=
 =?utf-8?B?QzVNRWVVbGNoUTV2Y0QwT0V1TG50NlRyVGNYcitFSjJrQmNOTDFRQ2lFWStR?=
 =?utf-8?B?U29RdEs1a1V4VHhxNGpRejhhYWZkK0VXcEZRY253eXNyeXJVakZxY2tnOUdz?=
 =?utf-8?B?b2p4cW5RSDdtMWZ0aWh4OU9rYTc4SjRnQmk0ZlZua2QrWnY0bDNLdklIUXpH?=
 =?utf-8?B?WG9uRVA0aE9lbEN1R0hPS0tUaDlYMjQ5Y0ZCaGQ4MGhENm5NeFZJTlRWNHVR?=
 =?utf-8?B?UjlIOFRvcGQ1TCtQdzJsZGFudlJKRzdIS2tQSDE3b2VOMHQveDhaNXd1ZXlO?=
 =?utf-8?B?YVJTL0VFN0habjA2WVUwdTBmQVRRNEk3M3kxMVV6T3NtNU9aaTloYWFVWkty?=
 =?utf-8?B?ZXlOL2JycWZMOWJkQ0Q2alZwZzdNT0I5YjNQQ0NrR0JaeVJyeVF5M1haZDlS?=
 =?utf-8?B?alJLT083d0Nad2x1VlUySlo2UldPYzVxWmZXZnQ3MlhIMlNCYlRDck81b1dx?=
 =?utf-8?B?ZXZnNFNUa3BaSTJFYUFWdWV6UnV6M3FCSFlCYkdBTk40R2h5MlQ3UEpHa3dB?=
 =?utf-8?B?VjZxb2JGcWxBdGV1a01ackgyODJZdkpEWDlHODY1Vm1TMEw4M2JJdHZORDBv?=
 =?utf-8?B?ZkZPbmZueEdTVG1mMU44OVQ1TTltL0R0bDVaTzRUN0VQMENyVHFId3o1SHh2?=
 =?utf-8?B?SHFVelNhanFSMEhQQlBFQ2NVSGZ3VE1OcWdMS3l2eHBNUGM5bjhWVUU2YldZ?=
 =?utf-8?B?a1I4WEI4aXl1VW9wTWk5NXU4ZDdkbzliYi81czFTQUxNeUJ1dWloM2Z5TWVU?=
 =?utf-8?B?ZVB2bVBkamg1UFRsYmcyZUU2cEZ6eksyOUhPZHNmNFBTaUFTMDJZKzYvSG94?=
 =?utf-8?B?RjU1Y1JIR3VaelY1VlBndXlKbnNRL25vYmxCNkdXNDZzc2REZlgwZEhOTEQ5?=
 =?utf-8?B?Q2ZsY0NVSmxQTG5YUnpZQmtvZXlKVGhjUUlQRGtrYnFyaEtndEkzL2ZDNXhM?=
 =?utf-8?Q?Xp8KrpQurUpu9S5LjNEQoZKU8uuCuDnvN5GkX2nvWk=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 89b9faa9-a359-4693-7b87-08da8593841c
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0802MB2131.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2022 05:43:05.0898
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h2aaVpNFEEq11EBbt2/201gS4n2vjkoNVXuLqi8Mqc5RVzAryW2dLcbqrOs09uMbMvj4vHvNUlPNj8xfkSu4Zoq9Y3HTvqyFA2ZGTu7hf0g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_224309_214191_73D720F1 
X-CRM114-Status: GOOD (  12.92  )
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

Hi Sascha,

Can you Cc: linux-rockchip list to get more feedback?

On 8/22/22 17:20, Sascha Hauer wrote:
> This series adds support for 4k@30 to the rockchip HDMI controller. This
> has been tested on a rk3568 rock3a board. It should be possible to add
> 4k@60 support the same way, but it doesn't work for me, so let's add
> 4k@30 as a first step.
> 
> Sascha
> 
> Sascha Hauer (2):
>   drm/rockchip: dw_hdmi: relax mode_valid hook
>   drm/rockchip: dw_hdmi: Add support for 4k@30 resolution

Great stuff, thanks!

On a Radxa ROCK3 Model A with a HP 27f 4k monitor

Tested-by: Michael Riesch <michael.riesch@wolfvision.net>

Best regards,
Michael

> 
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
