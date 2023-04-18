Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23467C77B71
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 09:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:To:Subject:Date:Message-ID:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dBuycUUYmkjjIVjVfYaJdUmXdvV7YDETpPE05/qbtMo=; b=qy1lmqsC0BuEPDzFBDEt8abklc
	xl2IAoPf6H6mwYgHeo8MClQS/mZshQLU8wjo/7R12CahUgbLKFI//EGZOh2heYuk7b9YTNSz4onvG
	xvEh2ZIhrvd50DHYIVe3TbSI6JgCGAKX0dc0AGsv5SyRkfXvlxsCVSiUZnbF7MFJK0yODv+oDT2NE
	0vk90gXegOk8JrE9jHTuNHRpILQdoSs89SyO0NYkTDagS2/tc+f2LMRUoVDvf1dbleG1fEsTNvSUx
	7zaqu4PXMIQN/i8Fu51vfQItV0st2cx7sa9LuRwxQRu2T1anGgvBd8hOsUNx0JmOX5F/YThoEyKcp
	Hmbl/4Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pohXi-001Rr4-32;
	Tue, 18 Apr 2023 09:22:30 +0000
Received: from mail-db8eur05on20604.outbound.protection.outlook.com ([2a01:111:f400:7e1a::604] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pohXg-001Rpe-13
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Apr 2023 09:22:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q8cpT1P+EHwDmRynCgQNsa8bhN91QOrmjqr/BowPj0SYPR1hUmUtJmMwqHZm3DFbdF11LpdI1WMpsvBZx9rN2MA366E0+a8q0Bz1DHm3rMWWe57YpaMLaz2VKnCAU9WSObvnkpDm/DB8lplc1nMiVeOpDah6QeX5IfUn35lNp1dgApftGlUPOPL3vAS51pNaSWxSO0BDSgfcvScoBYxTNF3abwqbiJgqiUZPOYsRL8m6xKMw7ynyA5n0mUCyzSMZKFizr/nvAT3WY34y54bu8nyzn8s1A8StbN/WGz6H/DK3aLlabG8D3Kir1VbjN1rLP+2ImVw+1wwK58qHhs8F4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Mc/5XOb8ThkfI/ll0L08vjmX8siBqwx8D2LC6qVDuo=;
 b=giooHGdMUDsXEhoatJDIE82VQzjb6ywS30k8DxTmG4TMcHuAtqEsnC2qd3sGdhv5TvbUMauLDUItdGl1Z+eprw+yDFH5bmrCUvuYcIZNCPsrA0zbR5+55pmZNef/V6QC56bA2g1oz96uwUDFjoSs/HG2h3yPt0CXaj843/1AEfjjgxUWPaO875rX6vCdTCwd+80NyngnTkjqblM7zTDVIcOlHl6HJJgWPtC0ftSxOg4/PI1uvktl8JcGrt9WeBmmw8G297NkV8ELypiZlJZzBSE0/+jyVew3Gy+N9bPZybjOOQsvjzuE0qe46Erh228/pdEoivD3ecwy5Syh8Ka5eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Mc/5XOb8ThkfI/ll0L08vjmX8siBqwx8D2LC6qVDuo=;
 b=IvKA3CEPPuACweuRuSYgYBhqv6N2YiB3k6p7U0Q8+0Zld+zd2ye9P5Im7+Q+DPnXT3MB232cQpg643sHb6pForzItfoCN9S+Ar6DSgR734xwHi2YDQVckK2YIWqlVqOr2iKjLyqf/x40TLIwx9Sd+IzDF42QCXqCUdVg189Z7S4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AM0PR08MB5314.eurprd08.prod.outlook.com (2603:10a6:208:184::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 09:22:22 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::77dd:14e4:a772:d85f]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::77dd:14e4:a772:d85f%4]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 09:22:22 +0000
Message-ID: <9c8e6503-632c-b5f7-1e3c-620cbab7b220@wolfvision.net>
Date: Tue, 18 Apr 2023 11:22:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: PCIe problem on RK3568 EVB
Content-Language: en-US
To: linux-rockchip@lists.infradead.org
References: <CAG0V13RUkKn1TPfa3DSeXDeBfJrYVXaouP2WMKrCdX-h0Xqrog@mail.gmail.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <CAG0V13RUkKn1TPfa3DSeXDeBfJrYVXaouP2WMKrCdX-h0Xqrog@mail.gmail.com>
X-ClientProxiedBy: ZR2P278CA0030.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:46::20) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AM0PR08MB5314:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c909b96-1995-4bf3-1da0-08db3fee6a42
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	BDP9GDqWv7aNn0CkKEUA6WYTNrNwfAZ0K/nowx4X6FR03MZ5PnragUAJpKIraxxRIG7pIWnjA7jGZburzkZJJl5xZkZXEkh+TtPIxupOSsjuW8U2taE77pr3DxntRebOxoKqkaOfJzC30IB+9iSFAvCQYxV1PdhW+mFixyo0975zeQcKVIPcE0nWBmlkO3K0dDEQI5oEmo9SZdjWCqdxFE5kXyNmdgYv3mHiAuP7HATIN5SZsH/gAduaVCPbIwcr6tqC+jep7GFTKI+OUAgDjK4DY8KGDY44L7esFFzdxcdE3ogTWPkkIf8d9VDaTcnWObD32AetUlilmng0XWf4RDYzi9X0iffz7IL1Qcq4oR/6NdIHoBYmCYi3bZH6iWWheDG2LnxPITVoI3SbwuKtQALbUC3OZG/WSA1AtrZYvt1SYQukjqItqw9nvsr6VeTlrNoL/4L5Or4WW9ivVmGRROo8lZLhFuvPlL9+fjZudan0kLo7/I2nt/JqkzE12bxGNYuKBwCK4SI2PgD4T3hHmbxKuxy+YelP0/f0OXBA0YlHGmYFX8Gn4NVcQEUfigrRNSEg3X9pH8Xlu2+QgqL4651AZTAv3o5NADtLERqAo0rNbDBsFKdamPY2goMeJjTrpbx+AKLmU7+IGpBgcZfzUA==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(136003)(366004)(376002)(396003)(39850400004)(451199021)(36756003)(38100700002)(8936002)(8676002)(44832011)(5660300002)(2906002)(86362001)(31696002)(478600001)(6486002)(31686004)(186003)(2616005)(966005)(6512007)(66946007)(53546011)(6506007)(66476007)(41300700001)(316002)(83380400001)(6916009)(66556008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?VkNleTBsZVAyUjRYdUwvbk13ZUpqbnN1OVc1M0ZtbmFFRUFqem1sM0tBRHhn?=
 =?utf-8?B?eE15UWpZRFdVVFVGQzNqb1lBQzdaSkRHcHdZQkVaSVZtWVVEazBpcEJaejZH?=
 =?utf-8?B?S1JEZWFyN2w2QWpZVnhMaDQ4amY4SDcrTm9kK05xYTNOQ09iNkxNY3lQbEo3?=
 =?utf-8?B?RExOSTVzMHZ5NTVIWHlnT3JZdUtJSVg5cVRUQmpJUmpxOW0vRlhzYUIxVmJL?=
 =?utf-8?B?UHFPRC9COGpQU3NaWUZVRmMzeHZJeGtOVW5WV0phdC82dnVYV1dhcXJGaFdZ?=
 =?utf-8?B?L09GTFpLMGg1ckFZMFE4TXNQUGNYSnhDR0E1akM0YWJ2djZpc0ozU2VRbUxU?=
 =?utf-8?B?ZXYwRHkyTDlFU3M4MHUxelRpYWxyMkR2eDJDb05oS3JEdWdjQklpa2hZcGhU?=
 =?utf-8?B?TVdNSVFoTWxIbEFYRHczWkVNQUFHUmJiNVlHTzlKa3poZUZmMTVQZ3pSRzVz?=
 =?utf-8?B?UzJVSXFCK3VqTmRXV1BLM2ZPMm4rek44QmhCUW5YRURaL0VsNVRFektVb3A3?=
 =?utf-8?B?SUNNK3N1WFNWYnJ0eWZvNlVXM3RMVENaUk1CbXdwMEVmRXlrUlQyMzhZN3ov?=
 =?utf-8?B?Nll0VDgydE5PWUthZTFLcWRMcFpHKzFMK0tyOEFoVEpkaUFUaXlRUnQwcGRN?=
 =?utf-8?B?UnlQQ1JjNy94U2FMZjh6YUkvR0VScUprUWhDZGV4Zml0S29GenV4VlhteDVC?=
 =?utf-8?B?Z2wrVkcvMkUzZUgwQlhJc3dOYXZWTGZvNkVkWVVicWltVklMeTEzVHgxaVdG?=
 =?utf-8?B?ZkY3eGQ1RXc4a29uN1loN0IrUm9sRjZvSFI2VEZiUWhmMjkrVExQMHpwa1RM?=
 =?utf-8?B?blh6TXJ5UllpNGY2VGdpR3lFek5kVTNMbDhwOExFQ1JmdjdNUEcyL2JzUElu?=
 =?utf-8?B?WG4zRXZiREE5eWxOV2lJUlduMGZXRlN2WmM2QXhXRFJwb05pajFLUkgwcGJt?=
 =?utf-8?B?bTQyWFk1eTNROVFxQ3g1YmorWVJVMHh4WEx5cEpHQ0ExSFV4VmJxZjRCeEFG?=
 =?utf-8?B?YUV5WmhuNVVnTWRkS2pkQm42NkZuNnpmS2lMNjZFS0JrdUQ5NjNsZko4bDd6?=
 =?utf-8?B?QzJuWGE5SVowVlIrQWVjWEVINDFyUUc2Uk1IMWd2a1RKVlM2ZEsyOVZxeDBy?=
 =?utf-8?B?WTF5ZEFWeHBWTDNOTU8wajJoUHJWaW51OFg1T1Z6WitVbW96VS9pV0ppYktp?=
 =?utf-8?B?TDl4TWRib2ZrNGNFOUZXOWNwOEhyeDNtWGUxTVA2Z2RvZFJKbDRYV2U5M3VE?=
 =?utf-8?B?VzlBNjdoK2l5Rm9uTDNxdTR1dnprM1NXQzFidWE0bkk4T2sxT2dGRlQxNUtB?=
 =?utf-8?B?eU5rdjFkUkNudDkxRGd6cmpKQ3ZYNm0rTW5YeXJKMVNDVkNTQzV1STcxRldQ?=
 =?utf-8?B?MzJIWWhxdmgvRm9DRE9makpOQ2w5VmQ5cWZQK0xibGRLc0dpR2U4Tm42RDhw?=
 =?utf-8?B?QXRFYUdzZzlqT0QrSFFTL1F1UUxaR0FNajU0eTFlVlFjYnluZ25kaVEyQjdr?=
 =?utf-8?B?S0lyTUY1SzJXZlhlanVhMlpkUWxWZ1N0bFZ0Qnh0Z3IrZnBLUm5qOWVqWWRk?=
 =?utf-8?B?Wm02TEV6NGNqR0tJWGZRSlVCSGQ2L3orRlB5a0pLRWJIdW5kdlVmSHprZXlt?=
 =?utf-8?B?SGtwbXB1aGFBcjFyQnZhOWZnZWJPMmFpVHdSYnBETEJobDUzVXVmQUY2dGxy?=
 =?utf-8?B?aVp5czJKRDJ1MzBLT2VJSVA1MHRkdHNIQXh2cUw0SzROMjdlb1NOTmxyZHov?=
 =?utf-8?B?TytQS3FlcUJVb3dXQVVoMmxBalF5QVQ4NFZJMC95S3pQUm85cWpqV1dZcjdM?=
 =?utf-8?B?VEFYT0REb2dQZXFqbjZKTmhVK0hrVnVvQ3pRS2tnakZPWnV0emM5TWxZYUoy?=
 =?utf-8?B?cUpwU3pmK1BvSlkrSXd1NU1JanA0ZVZxUVBGdWFJK3E4bnhUOHdCWXFuWlVp?=
 =?utf-8?B?WjA5Uy9DNG93WDIxYWd2d1ZkdXV6Y0l0VE00Skp2UVNwc1FrdkwxUjJUaGps?=
 =?utf-8?B?dDdjSFkxOFdpRTJ3Z1hxK1BiTDRWbDQrWFBmTDI4QTR0S0M5OVk0Zkg1dW5k?=
 =?utf-8?B?QmdDVGF2eUhhR2RSb1hlY3QrbWdxQ3NHdllVVFVBb2VibEd5UHFuK2RXU0Zr?=
 =?utf-8?B?blJBT1psNXlTNzc3Y3NIWXoyVVcvMENKcUpFN2JjNnVuQVEzNG0zVDdRWDg4?=
 =?utf-8?B?bkllYnVtdWp0OVJEY3hqelJORVBReXBraVhGYWJiVFoxeG5qMDM5R1g3ZW5V?=
 =?utf-8?B?akpyNENWcktxeDllcnVnaXplT3d3PT0=?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c909b96-1995-4bf3-1da0-08db3fee6a42
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2023 09:22:22.2124
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zsQGUd5Alf3Lypr8RvsgGCOkPRV6hwBqoTdAlo1pxo9+s2pgNbd1wwKoPQdxvs9bUnNAhlXGF2awa80sZ6ri5QXbx9acrcSgkAS4oWuUkSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB5314
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_022228_427142_7CB9F1AA 
X-CRM114-Status: GOOD (  12.72  )
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

Hi Doug,

On 4/18/23 04:19, Doug Brewer wrote:
> Hello,
> 
> I added the following lines in rk3568-evb1-v10.dts:
> 
> pcie30_avdd0v9: pcie30-avdd0v9 {
>        compatible = "regulator-fixed";
>        regulator-name = "pcie30_avdd0v9";
>        regulator-always-on;
>        regulator-boot-on;
>        regulator-min-microvolt = <900000>;
>        regulator-max-microvolt = <900000>;
>        vin-supply = <&vcc3v3_sys>;
> };
> 
> pcie30_avdd1v8: pcie30-avdd1v8 {
>        compatible = "regulator-fixed";
>        regulator-name = "pcie30_avdd1v8";
>        regulator-always-on;
>        regulator-boot-on;
>        regulator-min-microvolt = <1800000>;
>        regulator-max-microvolt = <1800000>;
>        vin-supply = <&vcc3v3_sys>;
> };
> 
> vcc3v3_pcie: gpio-regulator {
>        compatible = "regulator-fixed";
>        regulator-name = "vcc3v3_pcie";
>        regulator-min-microvolt = <3300000>;
>        regulator-max-microvolt = <3300000>;
>        enable-active-high;
>        gpio = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
>        startup-delay-us = <5000>;
>        vin-supply = <&dc_12v>;
> };
> 
> &pcie30phy {
>        status = "okay";
> };
> 
> &pcie3x2 {
>        reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;

Shouldn't there be a pinctrl? It seems the pcie3x2 has to possible pinouts?!

>        vpcie3v3-supply = <&vcc3v3_pcie>;
>        status = "okay";
> };
> 
Maybe you can take the Radxa ROCK3 Model A as mainline reference solution.

> lspci produces no output (literally nothing), even with -vvvv.
> Any idea how to debug this?  Thanks.

Again, please show us the full dmesg log and your current .config.
Additionally, the output of

  cat /sys/kernel/debug/devices_deferred

may be helpful to find any devices that could not be probed due to
missing dependencies.

Best regards,
Michael

> 
> - Doug
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
