Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33837C87FD3
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 10:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=At72+phgTykhOcRikya4qXfSPXplQZzeHKAUSIVVD/M=; b=DpdgcMkjDYt/3p
	llxZ79b1FBywjg84yG0hPYxGbepv6z3EBx6LA6aQEcpEtSqd/fDTWF1XV2TIXFdxn+yBpZKvF3HBY
	4earmkEhINBLTsH/58cIoGFZiL1WUHA0c1wXaoII5Jy7aVMFxIJrzaC6Tdmv7ZfbuDZleq20LDAKn
	wtZLICziuYi9eQ+wdD1ug6TjRYiRfh/9h6NGTIWfpjdciMAR/HDAcN5gwCia+12y7sXVer0oFV+Ei
	+2VmkNohFUxM/+8WWggOZBi+ESZ7Pe8UuW3lVy0DAAuHqyjTZCD4Gluf6AcPEPYBH75HeB/Bgy3tV
	MyEActDWNviWvC4v2OuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbc9-0000000EvjG-3DdB;
	Wed, 06 Aug 2025 10:43:21 +0000
Received: from mail-bjschn02on2105.outbound.protection.partner.outlook.cn ([139.219.17.105] helo=CHN02-BJS-obe.outbound.protection.partner.outlook.cn)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOvGO-00000006Kjg-25Z6;
	Tue, 10 Jun 2025 09:27:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hUMJrWeRklH17QPzDjOvxiAekNr6YgQlVDepiOfQwwnlz8azT32PDsv6VSpNytN7hY/WnmbMEQwxB/ds/GD91yJRarpmtcXNllUsH3PNXi7AVVLwuOTCHKmPTmz0YULbRHROmYw5zEJBso0e9WBI8mN1vQ7GSKdrmp+y5oDgicCW1psU1O36ge2mglrK3NzFkhGoOFyrrVulljqPHB/rmqGQTvbyNu8nDkUghnK9EcmDqFu+YHlBCEmZrUupRvF6dBj9tzREzGxcub+Kp9iUNIm2XvJ4sNAi7fht+VJoamWC0bacrDkkTSQScFEZaLkdmXKanJ0a0x+FqFBJjLxCqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=errlSDBlT7IJoXFJD0CVCYj+y6votvUITo4JMpmu83I=;
 b=Us4KvuGDS00+waDoe/uGd5do6TbQ6+vMUZYjG5G5SRUsJ470nJ7qtcJ2pIH0ReR5ZEM0mrxn4JIrGICJH5f7BTNYSBrykDFsm80OdPNdX2GgdE7Nx2LvpysrgDlAYLsVR8KTBSdd09k+zVaKlH82uXsVBrPp/5j9qVGVC0/iuTJC07/w6AJTB91M6Suw+noAWx5aybFQgOUsBPRRbW4gml1iMn/HVyUsCWoTku3PLtm/hNlhiFHOU7oBks8q9sUHWuLARu6q8e0BKvcISXmDPOF5ZwZ18XdpkWxdZ/n7C353h0Id6uTEZ9nD4FHODOcRu1KC8rhYjabI/7JzxsaUPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:1b::9) by ZQ0PR01MB0952.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:c::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.42; Tue, 10 Jun
 2025 08:51:30 +0000
Received: from ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn
 ([fe80::64c5:50d8:4f2c:59aa]) by
 ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn ([fe80::64c5:50d8:4f2c:59aa%7])
 with mapi id 15.20.8792.038; Tue, 10 Jun 2025 08:51:30 +0000
From: Changhuang Liang <changhuang.liang@starfivetech.com>
To: "shao.mingyin@zte.com.cn" <shao.mingyin@zte.com.cn>,
	"ulf.hansson@linaro.org" <ulf.hansson@linaro.org>
CC: "geert+renesas@glider.be" <geert+renesas@glider.be>,
	"magnus.damm@gmail.com" <magnus.damm@gmail.com>, "heiko@sntech.de"
	<heiko@sntech.de>, "krzk@kernel.org" <krzk@kernel.org>,
	"alim.akhtar@samsung.com" <alim.akhtar@samsung.com>, Walker Chen
	<walker.chen@starfivetech.com>, "sebastian.reichel@collabora.com"
	<sebastian.reichel@collabora.com>, "detlev.casanova@collabora.com"
	<detlev.casanova@collabora.com>, "finley.xiao@rock-chips.com"
	<finley.xiao@rock-chips.com>, "shawn.lin@rock-chips.com"
	<shawn.lin@rock-chips.com>, "pgwipeout@gmail.com" <pgwipeout@gmail.com>,
	"qiu.yutan@zte.com.cn" <qiu.yutan@zte.com.cn>, "linux-pm@vger.kernel.org"
	<linux-pm@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org"
	<linux-renesas-soc@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-samsung-soc@vger.kernel.org"
	<linux-samsung-soc@vger.kernel.org>, "yang.yang29@zte.com.cn"
	<yang.yang29@zte.com.cn>, "xu.xin16@zte.com.cn" <xu.xin16@zte.com.cn>,
	"yang.tao172@zte.com.cn" <yang.tao172@zte.com.cn>, "ye.xingchen@zte.com.cn"
	<ye.xingchen@zte.com.cn>
Subject: =?utf-8?B?5Zue5aSNOiBwbWRvbWFpbjogVXNlIHN0cl9lbmFibGVfZGlzYWJsZS1saWtl?=
 =?utf-8?Q?_helpers?=
Thread-Topic: pmdomain: Use str_enable_disable-like helpers
Thread-Index: AQHb2eK4wQmwS1os/UmiAkf/peV4eLP8FIYw
Date: Tue, 10 Jun 2025 08:51:30 +0000
Message-ID: <ZQ0PR01MB130295B1CB3568C596B12F2FF26A2@ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn>
References: <202506101634190538mcMSzfKfxQTy4LgbSpOy@zte.com.cn>
In-Reply-To: <202506101634190538mcMSzfKfxQTy4LgbSpOy@zte.com.cn>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: ZQ0PR01MB1302:EE_|ZQ0PR01MB0952:EE_
x-ms-office365-filtering-correlation-id: ce05f971-3b40-4379-f1e2-08dda7fbfe8d
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|366016|41320700013|1800799024|7416014|38070700018;
x-microsoft-antispam-message-info: /CBW8qUlCxuuxT6wEADWmekhpnF9mvFGSQa9SyaP1/f0EKf3vCcMYCz0X3FYJuu2R5CJY3eX6vu6tKS0Pwb67iZXKZaML0BTJCAhlSzw7nuienHmDO+52RNtaXq9qdURtTqx9v5KEM4LDWqT8RF+Y0/dSwsUjQ7n/X+tQcXq+utU8vs96sq/UJJTBSfsTBnT9m9J1xg7IKUaUNvw3T18Du5ZFWTk3ae5Uf6X5Pn2CpGwbF617SyHFLT+B90kpqqVMSxfFb5R27ybQC3MT1f9kYZnHTOG4jwG9Wjze16t3NJa5ETvobuY0+eCHss+N5jscmTthB/0BuVz5fpYGR5BdXB8Zsej1Qj2ZK06miZuciB45/Su2uamQexy5wo7W5vt6nHieUd9FWb0tquVM+4/BJV0562pcVEYldREF7mjNi0PaA/Bu2jRfUIamLpsw/rx7PScbY2/g/SaqxGJsEbmBTne0bsM6pQjGl/2K5fTsmy+FTiFxJPIwBvd355Ppnq5j7vGc7avouKu0q79Dh71SFbljZYczr2iZWx9NFTLdvmtDuzITnRo54ffJyvIdL098Uky28w8gsWoi5VXpJByTtOlvxbrdLtWLiEO5Bd1tmI=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(1800799024)(7416014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cjNkWEthL3EvYWZKRFNtRnd2SGdsNm1aR1JkSHhWTGRRaStZMzJrZFJyRGta?=
 =?utf-8?B?blBWV3p3T3JlYmpCQmFDNkFXRFFYdHNEWjhvR1ZEc0xNTHgxNXBiNDkxYlF5?=
 =?utf-8?B?ZzBMeHpkZU0wWUNRQ0E3MG1RQWVIajVIdVhzNjhiZkNBNDZram5YTVU5RHI2?=
 =?utf-8?B?WWRybXJrZWQzUGVtSjVFTjg3eDJ6cERWcGJOMlVGN2JRb2J5ZkZuSFJLQ2F4?=
 =?utf-8?B?bnBTbUR2dmRBdnlON1dqNGJJc0RsVUV0czNnRWVjeUY1Q2FXRG1LU05oenB1?=
 =?utf-8?B?dUpobGY3K3lnU0EvaDFGNXNtaHE1QlpHd3VzMUlKNDhtZVd4UHdCQ2o3NExN?=
 =?utf-8?B?ZEVHeTFHRXdqcnlMMVljemtKbVpkVW1DNG9PRHFqUlg5UmlMZ0tHSXdhb3ho?=
 =?utf-8?B?RXlaMWVxcSs3NE9CcUtDd3lrVzd4TGxMM25oN2Y4bVJHQWcraTFxL3hVUEJU?=
 =?utf-8?B?bkJ0VHRRMW43b2tSTGc5Ly8yOWVWU3ZheEpmVXY2eWhDRUw1bFJMMmZQVUk2?=
 =?utf-8?B?T2JJemluY1Fhb3dlREFjQ0RNS0tRemdnM0NYK2JpRUtBMHZWOER6ZVhhVjhr?=
 =?utf-8?B?REFrMEJNczVhSTNIcStKNHJSZUV1UXF1Q05lWjRqN3czR00wYi9YUWdpUzkv?=
 =?utf-8?B?Z0MyTmlXeDRqdGRXcW1WdXE4aDJqN05lQmRoM294WXA2b2ZxVmR4bHFKb0xj?=
 =?utf-8?B?MGtzeU0rRmdZZ3Z5eGhIWkdSOG5ycENwU2E0VWRDTkt3VytLbk9iSjcwRUQy?=
 =?utf-8?B?NWRlVVJxNC9kSnc1Wm5NK3V6QUxMT2VDR0JPcmFZZU8ySElnS1d2NFlPcWRI?=
 =?utf-8?B?d29XQjk3bzlpY3VrRmtvNzZJQXBiQjRKYjFQYnFyVEJ6enRCR0NuRHFYOHM3?=
 =?utf-8?B?K1BEbTBxRnpiNWMwQnR1K29qTGgwbEMvVTExR0FGQ3NDS2U2RDFqc3RKR2M5?=
 =?utf-8?B?VUx1dG5pYkZyYWcrOG9hZlFuaERBSTk5WlhvSlZROHRkWGxIaFFmclZ0RTM5?=
 =?utf-8?B?V2gxVi9hUFkzZ0MxM0tUc3JnM1Y0V2F1Y2U4S3lmaE9FRHo1WXcyY0d0VVY1?=
 =?utf-8?B?QWs3YVVRZXg3Z1N6N2l1dEg4ZVA5NzdtYXlwWHZta0FnTWhXRVdLU2I1NWwz?=
 =?utf-8?B?WEtIcDlEbWdobmNqTnpRREV4R1ZianFXYjJvTDgrWXJGd1BNcnBZejlucThy?=
 =?utf-8?B?Nyt0RnF3RjRXbTFYbTJrWFdObjNGOHZLclhWeDF2bW9WN0FLNDJsSE8xNGFV?=
 =?utf-8?B?RjhzbG9yaG1uTDlnUUd3eEUyWGVkUTRvZHZMOUw4eE0wT2oxeTlhS0hYT0Np?=
 =?utf-8?B?bk9IZnUrb0JBMFFWcWRHajkwSFJqNjFKMjI1ZWV5amdheHVlNUM0bHdZNE0x?=
 =?utf-8?B?OFdod1ZZRmhzZmpINmQ0VWhYbTAvZ1M2TVpaN0s1Zy80dDZQQTRGVWJVZW40?=
 =?utf-8?B?QVA5Z0VEVkhrdno0UnIraUh1akgwYm1PODZXdVZWWUNnL0FRUTRGYkdyU2RU?=
 =?utf-8?B?ZjFHb29TSEsyWTZMWWRobWUyb1BIM3ZqejAzQkthL01va3k1K1lDK1NGQXha?=
 =?utf-8?B?SlBCL2l5Z3FNaWtCZ04vVDc2NWxqcmZ2TWdOQlFQd01iRWQrVG5qdjRXZmFV?=
 =?utf-8?B?V2lGQTBBZEJjUHFhaFVaRFZWZTVGaEVXN2dma1I2UDhCUDJuM1NhNkVXdGc5?=
 =?utf-8?B?NkpsQ3FYUTJXL3RsNXY5ZEdQT1RpMFYxU2lDRHdkME4wanRIaGV0TjUyTTd3?=
 =?utf-8?B?QVhIdC9pL0JxbzNUdS9hWXlHZW05czg2MVd4L2RxLzM4Q3hKVEhKK1MvbzAw?=
 =?utf-8?B?ZzR0dGVDbS9JbWFrS0VaTm1RTXk4a2E1dEJMNjhJWGtYY1pLSFlRcmZHSEhm?=
 =?utf-8?B?UC8vdkNxcUJnMUJqZlhHM3JRNUd1dWdPTm9QY2t2T3N4Q1ZDd1FNYzk3U2tE?=
 =?utf-8?B?Y1hhQ292VkUyYkwvN0tabzIySFhBMUdwb0hTLy9qTy9VWGloaTRNTzhMTXNn?=
 =?utf-8?B?Tm5Wb1Rmd0s2cSt5SVdOcDY5c29TTTM1V3RZdmJmVzBtNHJRay9Ka0o4VUR5?=
 =?utf-8?B?SjBXN1k3aDZ1Tk5DbnczZmxkbDRhWjlHOVRiNnJiLzlobk5ORU0xcEd6NS9O?=
 =?utf-8?B?V0ZlcWZLcXF3Si91VUpMSU9WaWVIZWZpSUJ1SGhPNXpZY2xObm51L2V1Zk1Q?=
 =?utf-8?Q?wr5W6BFJeyJG8YFaiN+KfGg=3D?=
MIME-Version: 1.0
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZQ0PR01MB1302.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: ce05f971-3b40-4379-f1e2-08dda7fbfe8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 08:51:30.5745
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cFbq4yGYQtrNjitaxnAzOx+EEuzYGMyccxOERShYYiRyaKRqVyXqdl7oIbO/P/cZtf+g7/H2UwHNhGss9ojLZaYnxvYS1huze6lrE8cm0k0rG9hy9SqQXO8Z3KViNPqN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZQ0PR01MB0952
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_022724_529163_70A4AACE 
X-CRM114-Status: GOOD (  13.76  )
X-Mailman-Approved-At: Wed, 06 Aug 2025 03:42:49 -0700
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

Hi, Mingyin

Thanks for your patch.

> From: Shao Mingyin <shao.mingyin@zte.com.cn>
> 
> Replace ternary (condition ? "enable" : "disable") syntax and ternary
> (condition ? "on" : "off") syntax with helpers from string_choices.h because:
> 1. Simple function call with one argument is easier to read.  Ternary
>    operator has three arguments and with wrapping might lead to quite
>    long code.
> 2. Is slightly shorter thus also easier to read.
> 3. It brings uniformity in the text - same string.
> 4. Allows deduping by the linker, which results in a smaller binary
>    file.
> 
> Signed-off-by: Shao Mingyin <shao.mingyin@zte.com.cn>

[...]

> diff --git a/drivers/pmdomain/starfive/jh71xx-pmu.c
> b/drivers/pmdomain/starfive/jh71xx-pmu.c
> index 74720c09a6e3..0e8fca4e2de9 100644
> --- a/drivers/pmdomain/starfive/jh71xx-pmu.c
> +++ b/drivers/pmdomain/starfive/jh71xx-pmu.c
> @@ -12,6 +12,7 @@
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_domain.h>
> +#include <linux/string_choices.h>
>  #include <dt-bindings/power/starfive,jh7110-pmu.h>
> 
>  /* register offset */
> @@ -155,7 +156,7 @@ static int jh7110_pmu_set_state(struct
> jh71xx_pmu_dev *pmd, u32 mask, bool on)
> 
>         if (ret) {
>                 dev_err(pmu->dev, "%s: failed to power %s\n",
> -                       pmd->genpd.name, on ? "on" : "off");
> +                       pmd->genpd.name, str_on_off(on));
>                 return -ETIMEDOUT;
>         }
> 
> @@ -198,7 +199,7 @@ static int jh71xx_pmu_set_state(struct
> jh71xx_pmu_dev *pmd, u32 mask, bool on)
> 
>         if (is_on == on) {
>                 dev_dbg(pmu->dev, "pm domain [%s] is already %sable
> status.\n",

%sable ==> %s

> -                       pmd->genpd.name, on ? "en" : "dis");
> +                       pmd->genpd.name, str_enable_disable(on));
>                 return 0;
>         }
> 

Best Regards,
Changhuang

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
