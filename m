Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D8EFC46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 08:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U87gVV7aunBCMiJB1akAcQCYETCjQmd2dKLIAQJxCB8=; b=QSRzN6cdXPYGGMDUTdRoB5CqWd
	GJd4ZA1ApiHDmVk4nS55gtJT1hZVYg3dtcJt4Bc6FhL9t9fShRGh7cowtaQ+F8XMzelg1vaLNPQb/
	5uE1uZ81h6KwcLy1XdfaLpXW1c3pJAX32bviAvjDB5xRd1azh08lJ06lC686aZAPLFPIwMA7s9MXr
	rPxk0JmRadIJKl/tdmG9PeSkMoGFP6OvCK4LCSBEIxgHJ/Z8dqo9vM/PQR40f9JuxcRJk8U5YMvuZ
	x4XNHMoQRA5cE4246Pj3WF1z1vDinkCd2Rz+rgmyVkOVDU1thoKny7PIanY7nBnBDOVQfjDW32Kzr
	rKNI+JQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHL46-009CS7-L1; Mon, 16 Jan 2023 08:42:02 +0000
Received: from mail-db8eur05on2069.outbound.protection.outlook.com ([40.107.20.69] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHL43-009CRQ-4M; Mon, 16 Jan 2023 08:42:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xlw4i/SLU96aLdR9/uQdtdt/WHAx5EqJZYasZXAdLr3lYbAu0MXpKoT+FRBpNUnHEor0mJl/pdPewwIp3/X+/EGXhhV5RLhJjnwGgOZrCpS1Mm6W0DHNBOOJztZb0Mj4sjat3ocmVFirOLIXAI56sf/akk0RtCNCvq+wACvsMGhezdH3t2N2TICw7T4QjEKWuLyB8/eOz09qowCX2FTg9aK7KWccUPNi/+f9pZP2JA8RUuM00hgtb4BIZg+rZqo7ATmzytFcizIdIwPC0rjWr1cUK/aXjQ7H2qPMPXRmvwNzxZ45VhF59nB4NnfnyGqK6YbTyFIDcWLtFWPWUHJ3hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xBSZUZEsNbce5U+AdU2fg84edFd1WqiTQ/uQS+EZrGU=;
 b=b7lNSFL64Oh7QylmtEtifJ0cQJ90V1VNWFGJEDAmkCn8I31MmHYgS5v5+Vdyoki+R0YXEeSwuNy/8w2vWXra5O2OS9Xrj61LzMNyK0RfYIKzrB2DymZKaWPoNNUCd6i+0VrNEH52cgVk1ANk2XzO1vsutkS2scJBp7vg9iMnzgiXNeiU2tGJML0n3i5DBTVCTjg+T/jeNxe0LyGl9EZgw3K3DV5/6OCc8YGRKMoqKWf3d0UE20Oin/139t2ssc8YyvhVN/nxc6KZVX2zg+kJoz1AW/9GSw2Syp2LZg5tSo2ptZ4y6fO3gkmZsI86/VvsK8XkDZ/vVHfGH0DvECkz5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xBSZUZEsNbce5U+AdU2fg84edFd1WqiTQ/uQS+EZrGU=;
 b=vfr//lkIhsJIE+I3f5OTaV5OlJzFrDKMh4F/dTyVkQCKke6jzoJdFaGczk2B1ItzH2Od1+A8dTi9oEO7yF4Baj7a2yQOlXHocDKi8UKBjrbPT4xVc5ngUEOHmgQbrTiXztQJfcV+tkTi2/G8vriZk227ibE16xNP2Aott5fuY0k=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AS2PR08MB10053.eurprd08.prod.outlook.com (2603:10a6:20b:640::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.12; Mon, 16 Jan
 2023 08:41:52 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4718:6092:e763:4219]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4718:6092:e763:4219%2]) with mapi id 15.20.5986.022; Mon, 16 Jan 2023
 08:41:52 +0000
Message-ID: <7caeb07b-8465-6bdd-d90d-06a905b56f37@wolfvision.net>
Date: Mon, 16 Jan 2023 09:41:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] arm64: dts: rockchip: fix probe of analog sound card on
 rock-3a
Content-Language: en-US
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 frattaroli.nicolas@gmail.com
References: <20230115211553.445007-1-jonas@kwiboo.se>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20230115211553.445007-1-jonas@kwiboo.se>
X-ClientProxiedBy: VI1PR0602CA0018.eurprd06.prod.outlook.com
 (2603:10a6:800:bc::28) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AS2PR08MB10053:EE_
X-MS-Office365-Filtering-Correlation-Id: 47f42426-a782-4acd-64af-08daf79d8405
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	ZUsFZ1tlxLdmTgfLzzCC3CIPaoGOnWEJg8kli9MGFmmmPa2HreDJJvyvwDRWYRjdElU3EfTpHob+Q1ZUk68LbG/tVxrv2eUCyPhtCvodiMrG97o+/HwNpkypTkO/RYilPODuKD1M5O0wf3w2/CHZN7G93ax2rw4QCtTM4xcRbrZUh7jbCYDCO0e5cGXVE+0mgIJ44OeaiXUYQkqXZW4HxPare33eqrOpuiCdzK/DoLxqIdEU5Fwy6APAw6J0zhBKXePGRvUmuXsUv090FhiKHU/PRvsNi/hgwXw5d93GCWFMyxPHmpdnnqjKC86LH8pFCujStf135uSR13A42tKYbpQ4/36pqj/bhakvSJ2che/Bj+zMMkeEEaUIySYJ9c9qI+yRTIzBhJROVaVqB10sC3fv42l2K2w8BGL4LhBj/6UUO43y+kT+OO9z2Y8cn03zKQ3hJWUq2fehuBuWlRdkT+kgZCOozoJVkfi5aLqCZy3M8ogQKGK58s4phsjHz9+Dd4PeKDZ0HtxOkx/W6Pb0oJuhDyTYkpDjUFE5qYxr+3xBeYyzcskQ5W2qQjQeiJIq5SP5NzJVZmBnN/AMPnRu7yzVIT1LhYXEdL3M3L+La6rxw5mWELsutPdBdXbjIv3nrPoowSaUCaSY35YeWaT9a70TGF17l/9JwGAIXjgTo+rB+eNxm/jaV3oSY0DdG/9ABlLyQApXsSTFlbjA211uw+8cjWAOT3oXhHRJlMUCWXw83HTiGqHWGSYfHOpf5D8nWJ+eB8GEDkjXDGWKnnC9QpCk71QvuUKsW/E6KvGTnjY=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(136003)(39840400004)(396003)(366004)(451199015)(31686004)(6506007)(53546011)(38100700002)(38350700002)(2906002)(316002)(8936002)(110136005)(478600001)(54906003)(6486002)(966005)(26005)(4326008)(52116002)(186003)(8676002)(36916002)(44832011)(5660300002)(2616005)(83380400001)(66476007)(66946007)(86362001)(66556008)(31696002)(6512007)(41300700001)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?YTRtSFhJcDA1YUtXRzFEbkVwdW5HditXUHVVVW5UelJ4WS93OEg3V0NmeExZ?=
 =?utf-8?B?SWVaT0J3NmVWOXovbTNjV0FHRzZlSWVTaHhpeHNKZHpWVUxPYmMyakZTZlRO?=
 =?utf-8?B?WEt6WjJjZ3VsYTVhcmZvdExnS1lrOTFHZGZyS244aWZMQVNRcnUranZQaVJU?=
 =?utf-8?B?d2EreDlPT2dyWFRPbUpIVEx4ZDJIYUFXYzRValJwZnlCMk90MmhCQzBQTUFj?=
 =?utf-8?B?ajdJeFFVWElvNmNWT1hjdEZRVjVPMGtTaThlZjA4OTV3UmRoRWNWVmc5OVpx?=
 =?utf-8?B?ZjYra0ExQnQ0dkVYTm1RN3pNbjFFUnBFbkNUSmlYMEM3QnZwK3AxKzkyb3N4?=
 =?utf-8?B?T1ZqcHZwRVUyaGV5K2Zpd1gyaDlrUW1JbFN0TGdGa3lDNGdVcGlTUXhKbkJX?=
 =?utf-8?B?NzZwdFl1a1JrU1JaM29PelQ4TWJ6ZnMrNDJyRSthdHVGV2U5Z1NiajdrR2Fl?=
 =?utf-8?B?TkJwNnZzUUNQcmVaRzIvdU5nbGdPVDNwYzk2TjB4NE5Qc2Q4NS9lT25waGRw?=
 =?utf-8?B?by9sdnhXeWh2RXc4VDlWOGk5ekQwdCsxSHJSb09sM2o5dE9Kc2QwYWNWWVpN?=
 =?utf-8?B?bkpBVWpYY1lMcnczYk50a2svZ25SQkszQXUrcVg2UHRQTi84UVpRUWRzRnlL?=
 =?utf-8?B?cWpRcTFNd3JKZHpyczJuTjIzbkxNSGRuSXpmbDVBR3pVRTg0VzVNVTVFZlJ1?=
 =?utf-8?B?RTBmUlF4N1lGUjNVQllGS1dYdStaZGtTMzUyNzRpYzRjaWxUaDVUS0tnYkFn?=
 =?utf-8?B?bkMrOGZLTTFtdUdVWnI1bjRtU1ZZbDVxTmpKNGx2V1ROTzRWaHlnN2s2R3Fa?=
 =?utf-8?B?TTY4bkY5bHN6SktJZG00Qzl4QUc4MkNoa1NKTzlCdXJnVUhZdDFGU09lclNz?=
 =?utf-8?B?eFZWNm9jK0toSzVQSWlzMEdoS3kxRm52elFnVWZNcDBVNWFxcGI0MWtIQ1BE?=
 =?utf-8?B?KzNUOEhSS0hCOFZuNlUzWGpBQmtsSWV3YTRER1JlY2lycVQ3aVRTc3hKR1pX?=
 =?utf-8?B?NTVSZkwzUEhTQjhaeEpmM0R0MjZhM09hSXlMaFRHV0ZmbVR3WjVoU2pPVXl1?=
 =?utf-8?B?UnZQWW54UzZSR0FlYTh2cmtKb3ZScGdBSHdNQ09qQkRnQkYvREpHOFdKSWNo?=
 =?utf-8?B?SXVlenRka2hOdk1iTVZYTmpSVWJwZWgyZ3pJOW0vYzBYbGlyTkc0aFdHelda?=
 =?utf-8?B?Sy9KL2JQOUJ2NFVJU3NjNW4rRHdrdmUwUERFeFZKSThraVBHaHNLbTRZbGFa?=
 =?utf-8?B?SlY3TTNILzRWRnFRVCs1cnRZV0hIZXpBR2RXbHdSaHJzcVgxRmduWFlicmJY?=
 =?utf-8?B?Y2VLL0Zjb21IWWtXbC9JNndvZVY2VEpjRW1oTFBCeG1iV1R4M0xpbk9mR0wy?=
 =?utf-8?B?bFQ1aU8rRVUrTU9tNktOY2JwZkxvYnN6UWp5QkNjWXUzVlJPNW5LVDRQcnpL?=
 =?utf-8?B?T1BQejZ1L3MxVlY0NjNSdDJoN0xOa2xpaVdVZm9idERLWnZtU1JlNVdaUHlt?=
 =?utf-8?B?d2JJdEdoUEVBWW5MZ0hGajFMaWE2UEduZTdsaTJ2Qk1pK2FyU3k5eXJXSFQw?=
 =?utf-8?B?cW9USzIrTWsvS1pQZldVOURvczI1Q3RQYnhsUW5SRGd4UWxjOGt4VW5GeHBi?=
 =?utf-8?B?ZGg4NTNvbk1KMlNiaS91R0dIMFNoNXR4cFZueWJjZWlwS1E0eFVGbDFJNG9x?=
 =?utf-8?B?cjNLYVdLckVraitCaGpwcisyS01tYlRLYmVDZnpwSWJFZ1ZuS2t5R1hNQStX?=
 =?utf-8?B?WlZZRFB1c2lDMGNkdmVuOEJDR244cnRyR1IxNW5UM0NzaXlnVFN5SjBqajNy?=
 =?utf-8?B?YmpJZTluVGRZaUtuOXB5emJIOUVtQnYyOVJSbFlsUmVZajdWWlE3eDRQaERT?=
 =?utf-8?B?bG5memRuNzdhVHp3SmVpSHBhT2l2a3krcWx4UlpQUEtjMjlNcXdsOXhpMEc3?=
 =?utf-8?B?RHVjV29teFdEckRUbWkySjhiYnhaZ0psMW01NmpmTEorNk5ZQmpTc2Q0ZFFN?=
 =?utf-8?B?a1UxYWRBaktKWDdkbktvdk95Z3lVN0d6ZGhOUlpCb2lwbXgrUm1idHhLd3VC?=
 =?utf-8?B?dk53VmdjcU9rVkZZc0ZaR1BrSkFMeG1LUGdTdC93VXVicXNIa2dBT2F4ZU5o?=
 =?utf-8?B?bzFhcFVmejB3SkNiQzF3RHMxTWF4elZYSnZTODVLTmtoSWRDUGorTXBtYUkr?=
 =?utf-8?B?aEE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 47f42426-a782-4acd-64af-08daf79d8405
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2023 08:41:52.4625
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iFfeiol9bACkpJVlWFNZmtjf9UAN6NaqZBED3Ht4KgIQeLMgwMWOmVuAr4bUyQfoFSioM/2Vhfc0lFZMHVJHXhw3ZGNyoNE8Dr+tjtfq1YM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB10053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_004159_461637_05CB8D01 
X-CRM114-Status: GOOD (  17.48  )
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

Hi Jonas,

On 1/15/23 22:15, Jonas Karlman wrote:
> The following was observed on my Radxa ROCK 3 Model A board:
> 
>   rockchip-pinctrl pinctrl: pin gpio1-9 already requested by vcc-cam-regulator; cannot claim for fe410000.i2s
>   ...
>   platform rk809-sound: deferred probe pending
> 
> Fix this by supplying a board specific pinctrl with the i2s1 pins used
> by pmic codec according to the schematic [1].
> 
> [1] https://dl.radxa.com/rock3/docs/hw/3a/ROCK-3A-V1.3-SCH.pdf
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Makes sense to me, but...

> ---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index 00d873a03cfe..a149c8b83f94 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -573,6 +573,8 @@ &i2s0_8ch {
>  };
>  
>  &i2s1_8ch {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_lrcktx &i2s1m0_sdi0 &i2s1m0_sdo0>;

... shouldn't this include i2s1m0_mclk as well?

For some reason this has been omitted in the pinctrl defined in
rk356x.dtsi. But then rk356x.dtsi also claims
 - both i2s1m0_sdo1 and i2s1m0_sdi3
 - both i2s1m0_sdo2 and i2s1m0_sdi2
 - both i2s1m0_sdo3 and i2s1m0_sdi1
which are mapped to the same respective pins. Therefore it seems that
there might be something wrong with this pinctrl altogether.

Cc: Nicolas Frattaroli, maybe he can provide some clarification.

Best regards,
Michael

>  	rockchip,trcm-sync-tx-only;
>  	status = "okay";
>  };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
