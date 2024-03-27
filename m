Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A441C54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 12:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EuSsIL+ynfIIRnNYS5B1q2eUmVKD1o+AVA9bOL3Vg2A=; b=pi+DH/clEx17wT6+b5vMIfeJay
	5oatApkBUvdoH7AvvrtVGCTbSBVukaEZs/QwX5Edma+3qA/bH1Blc9wYVd7tPhFSl6BaR2QBgkJma
	5Yg58C3VosvZmp4Kfc81qXJsQJEBj2KEsaf89vhN6F4e5T3u8fRHku8BQoqp3M3sFMB/Nb0lUx2jn
	ICdXUKhAxz5P5G3XK/7XTC2VSTTZWeQJo1W2RERVTCHe+7Cp+6KnN2P29UHfmD0HEc5oNsNLD22Qg
	bvjpjfQHXefh74Owde+2aXh/xOrn/n8ZPgmCI03MrfqkJfLrELF8K/VpU6Hb/mSx3vwGsatgwwjfJ
	8wiwVU3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpSRU-00000008tT5-3SsC;
	Wed, 27 Mar 2024 12:31:44 +0000
Received: from mail-he1eur01on0717.outbound.protection.outlook.com ([2a01:111:f400:fe1e::717] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpSRR-00000008tQm-2OLR;
	Wed, 27 Mar 2024 12:31:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T0Noxs4YGWJ+qGCnh51M3rEEs8xD4RVCW94tXcBpWMwArZ2Y5fd0oG9etZe8rxOYx6hwewz28b3sm4nozbAuzf9suUUiHbwWIGZZ5wpX0o8W5RbiM/64K4Uwthespi5Q6ZVlFfl7Ads4+BZ2rnfylKRgYhU5lOFPDNP7vYXZPtIHwj4OrHVghRaN0KZB0xlf3mmd1du+vlp8gvDtS2bnV72VEr/IyaYilAbdkLoaSCkhY1YMpggwjrlfknehT/KmCWVqAeGlqjIKtaGtAHzMlkRDuVm3Jwag/F6JYsOfUrIt2b4zvN4yxCn2Q9B1hykX5WkUA+eCSU2zZWIVXjCxaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5troikUcRkXVxVW8O5osqSQja6QsExTZq1l7045Lr7M=;
 b=lsDWWoFnSRXZxEyAtDOKC2twAq9sApv8u6/c4EuX1XezEv30rDy7NhlVieykdzIK3CwcJ6sdFBYzrTAnT83dJoK34WiNnK6zdeMEWATQ7g6fua3fVYRIdUqoYpsfumBN8hhBaJfQfP+VGhbfStg3I1HHlbjm+qw0qPMq4sK8Dbg2PWU0zJY+SROD9CeWulu2Jvx9W4bEjt7zTR/KSKN6Xf6ZVdVKWJrCRCAYQlzYxU6t/TM5geFPAOlH+mFX9yNQDDgfWEvgBX0gnxkJlnpsEnDIG9UwpxluVIXp5mtr6YSVTiTea6sLWdWYwfVQtAVyJMscYqWbu/QwYxt4iSOwgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5troikUcRkXVxVW8O5osqSQja6QsExTZq1l7045Lr7M=;
 b=IKvGclFn31O1S/wPA4HYg17tOtAAb13dZvvHzYNygrJQaVYa77MduxXQ28li228TnB1GF60F9hADTINM0PD8wjNGCVVu4m/mzrmaNejfY5MdTDB/0X5tR+gWABsbtZCUqJNzrwp0rlRPprrposwG7jTIpWIrM1Zlk5sMxrK2LzNiJTiKNfd117qLQ2iX7Nn57XnRxPCkX9LRTbRNqidDKMVqesbYXxSzPz528+JuGEHnuIQpD9UYp20UMLw6d5wgde7Kh+nqp5PQS4eyYtyfJzKlt5M10omJhDpufeeDeIs237GP7bLtgBJQ5pOma5VkgJspMFZTZLQXGjeueThncA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DU2PR04MB9049.eurprd04.prod.outlook.com (2603:10a6:10:2e4::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Wed, 27 Mar
 2024 12:31:29 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::23:4118:ae4a:8dda]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::23:4118:ae4a:8dda%5]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 12:31:29 +0000
Message-ID: <e2cd7f6e-1e32-41de-94f5-b8d87bf9918b@theobroma-systems.com>
Date: Wed, 27 Mar 2024 13:31:27 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: enable gpu on rk3588-jaguar
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20240327112120.1181570-1-heiko@sntech.de>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240327112120.1181570-1-heiko@sntech.de>
X-ClientProxiedBy: WA2P291CA0030.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::26) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DU2PR04MB9049:EE_
X-MS-Office365-Filtering-Correlation-Id: 910551ed-2317-4193-6ef5-08dc4e59d3c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vHpT4n1GGaOvoUnbem6NAn//nm7sObWTjjGdpm5lPba9xl1NVFu2A4fZeChOCDC7LCBzCiwOZzc+8AOslEABsSI8Cvj3hH0grlhLG9aDNQ6k/UM9srP2ZiWTaSSvD6lxfKDScbyyoLwdGxyXyBFMtNPmX8IRb9XvWy2Kz8PC8C6Ixnqr27TovKTXtobA5MaKA6S8cAxd6OkmmsrxWUf16yOSDPJDmR5CqvWpwG99rU9dtnsDH2ptS14+Mmm1pFyN3bR/nnLh/D9MDZ24oIwg6nQwMcFSyM+N1jT40Q13A1KW8a5o8sXtJUIrQ25OHI00LZVvkUD9XxtQtKZWkVYVnjzTjNe1ip2cj2s1kJR9wTPD7EY+hBttb2FkIEceEGo4HnlAzfKQy2AZHw8p+GgAl01RQtxrt2DiWc5Njwbi3+lyQbCLQlry+olZ+2G/QVQZta/ZtNeYPOFDNBSDZuXWNc3yl8kJ4utWrAc5fJMmZ36qATna7JBQDdqu0SxUjZJyHnNIu1PrSIb3JDIaH09/qLul1qE+D3KUt3873H+1azNBVv+urWuo0CyDWaMNufDAuMdJbxLGknwIAZxyfWV1XSDQUmQSCTp6bejr4tFqfb2w6M3MpOXLfNaUn0ZjHBMF5lOkwkxg4WH1o4ywNI/wiIxdS78A4c1FvEcOczpLOYM=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUdoYlNBYkpQQXNsY1ZYWWlXK2cyaGF2TDVTamZGL2RTaCt4WUFPTExqMC9I?=
 =?utf-8?B?UEZ4S2lBY3ZhazBjcjJCQlNPemxiNVVDdE1QaDdjMGM2em44VEpETjNwa2dU?=
 =?utf-8?B?UG1vdXJycDJRdUthS0ZkVGgzQTlaNGQ3TnJPUExacFVKLzl1WE9HZWR2dy9z?=
 =?utf-8?B?OUZOK3J5SVJrU2NXMHhnUlZaclBvQ3pxZGk0aE1vdVorUmlUdWdydkpRYTV2?=
 =?utf-8?B?SXpjSU5pS2pZZ0U3SDJMTU4zcVVqSDJPNVN5eXV5TFp1a2ZsMVc5bkVPUTBB?=
 =?utf-8?B?Y1p5SVl2eUFqK1BVME00SDlMRzgzMTVVMjVHbkQxRndqS3FraGdualdSN3ph?=
 =?utf-8?B?aFRkeHg0Q0hTQ0NYQ0pWOGxuRWVPMGZOSjFaZ3p1UUYxQUJNcmNuMTV3R3JY?=
 =?utf-8?B?aENqRENsZnFQb25qL1BSV204elRjTzhtMkdiWHJZQW1DNEw4TmRucWdKVXAw?=
 =?utf-8?B?RXFKSWFOeGdYdTd3KzF2WmppOWlPUkRtZnBDdEZLN2RCemwzcVFMbVF3N201?=
 =?utf-8?B?WGkrOHhnQXM4dWxVVmhxTlhXQWxCZ3RVYnZEZzJCa3c5V3hTZU1VSWMvcjNj?=
 =?utf-8?B?dTFHeXhoQSsxc01nV0xuRUZiMlRYVnJBamgvY2JNZUk1TzhNVHpEbVlLVDd4?=
 =?utf-8?B?S0FFNDdhMVgyd1RrSnRnMklLQXdTcXZuWnhmRGNWTXIxMVpNd2M0QjFMbjNi?=
 =?utf-8?B?blAzdXdlaW1XSVJrYW8vSjBZL2l6Wm93UzVwM1VJUkpacjJZa3hvNEdLVFVC?=
 =?utf-8?B?MzBoTlhTNDdDeVE5WVEyRyt0a011WC9odWpuVkk3cnBsL1g0bkh4WGtGeFA5?=
 =?utf-8?B?RDY0TWZtZFpld0FzaDg0NUlMMWNJcFRzS0lzMENEV2VoSnRnZFQyTnB2RUZM?=
 =?utf-8?B?STlRTFBDOS9pREtzMnl3a0dIYm1rcHd6MndUdjMyWkVUUjBMZFgwZXZYWWRG?=
 =?utf-8?B?VkxHWUdvUmNwK1d1OG5KVGMzQ1lvVVlQeGdYY3phN2xkVFJiSmY3QWM0dDlh?=
 =?utf-8?B?RWxjUjQ3WkN1NGhQRFVIK3VVUTlCWWNPaEY0UEQwL2V1ek5rWjlkSGN0M2VI?=
 =?utf-8?B?dnZWR1M5MGIxMW5lMk9OWkVxaUxkOEdGL1BidkI5bXA5K0FXTnJXWUhBRkJP?=
 =?utf-8?B?WjlGbnozMjg4K29EOUpJNy9LTVFkV3k3SkhGcUJ1Qmd3VFlTRjByQ2xHcThK?=
 =?utf-8?B?S2xGayt3dXl4TjlhU1d1dTlzb1cySUdyRDRQNFduVDZFTWtvZ3EzRm9DSDk4?=
 =?utf-8?B?a0V1WE5RR1ppekxKUE10L0J6a0J4bGU1UHhCRUtIQjBRSWxuVXhjeTNpOExD?=
 =?utf-8?B?TDZSVEVJVllZME90a2dmVmFaQ1VENkVKZmIyOEVyNnBTbmt1VERIcUdMekgz?=
 =?utf-8?B?NGpFQm9TeC8yeXpxL0d5Q2ZjM3F0Z09EWGthMGV6UEZ4Nkw3R1RLbFYrL3NF?=
 =?utf-8?B?ZHUwTjhGbndkblo0OUg4enZGSmtrNHhjQWZWYlA5NEc4YnlBeVVKNkdnTkZJ?=
 =?utf-8?B?NjVCZTFFUXFjTjU0Sk1FS2NNaXY1c21ZM2xIMnBtYXB3NFl6M3B6c2ZhYkFw?=
 =?utf-8?B?cThuRmZJSy9QaTlOT2M2bk5HRzh0NHo5YTBDOGc4MnpUKy96YXRuUXRpRkM4?=
 =?utf-8?B?emIra1JnMVhjYm9hY1Z2RHlOMTNqUFhJbFh6QmJuWU1hczBXNHJIc1I0VFRr?=
 =?utf-8?B?N3NWRW9IRDh5TEJVQWlFYTRUZEpaWmR3UDFZSlVFRzQ5a1B0ODZzcHFacW1o?=
 =?utf-8?B?Y2JZZVBHa3gwOGVMWE5JSzQrTVo3cXhMUnliQjdQWXl6V3FUeVZyaitKbE9o?=
 =?utf-8?B?SUNqRU52M1hOM0p3ZWRXL1RiS3l3OUY5RjJtVEdOVXZDNFFsVzVTODVaeW1K?=
 =?utf-8?B?RG5nZGlUWFJWbFErNTROUUZTaVhCZ2Y0S0tiR3h1Zi9pbkxPUDhkUmptd1h2?=
 =?utf-8?B?Qnh5cTE3TGFzSUxCTHg0MnFwenhjVjA5dUhkYWN0K3FkQjlDcmFaSG9mWnRW?=
 =?utf-8?B?VkxrQVc5SzVnS01oY3UxNFpLMm5XL04wUUVDUTN1QjFSMGUwNVZFa2xYa2Qw?=
 =?utf-8?B?K3hjdU41OE1UY1NVemxOQ3BHeTRrbFM5eGVLYzdoUld6K3lZcFljVHBhOXFB?=
 =?utf-8?B?ZW16bmhPSFR4MDNjV1FRV3E0Q0gvenBxaCtPSXB0SzdxNnFEVHNucjRISGVP?=
 =?utf-8?B?ZXkxc3dHa0UvQ2svbDd5RURUR2dOS3F3R0djVTZKY25rK0JhNWhDZ0oyMWlv?=
 =?utf-8?B?MzJYNWJIYjJWdXBrNFFWU2xmOWFRPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 910551ed-2317-4193-6ef5-08dc4e59d3c5
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2024 12:31:29.3693
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lPzgkDtIil5BFHMgANQS272UL7gK1+cjk2RmxU3KygahkyramijYPZTvxfMdhQUy+QcbgypAIz1fSwVGBsJnjQui84NV9wkM5AhAgj17pSZcIkPRT04IATRHLITq6/7m
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB9049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_053141_793082_DED3D146 
X-CRM114-Status: UNSURE (   6.24  )
X-CRM114-Notice: Please train this message.
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

On 3/27/24 12:21, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> Enable the mali gpu node and add the board-specific supply-regulator.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Thanks,
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
