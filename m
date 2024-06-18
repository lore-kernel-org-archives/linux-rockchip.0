Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F9C4C2BA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 16:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PQFE6gEO2WY+bsOaqCoA82M+oQ3t9XPd6rLki5bCE0o=; b=3KLEZ5oQzBeQO3UbEdm6AYv1qp
	SYiLy/Yke+li4bERzX4EL5/vCyJBPer7SNq97nZggBYA0zQmOKW1OC7x2LPTdyxOSIQe9ama4K+r9
	GTOkVnzygNyKuIu5HYr9zb0un5XCEwtUJpLlauI1a/z011NU04RCIfZ+cx8KLub5HhCfKptwlhxux
	/cTyn8i24oLSOZAZtn/LsABGr4dEArYh4HUphd1Yh3Mg4LuHCWhxOAykjTj/nRjFmHWJcFjxV1Zzy
	ZHqH4PRCerwoaS/H8H5LO+kBkYisean4Nhhm7Kl4Fl5e4UV0Ya5Y7POJN58fhj5OCoPzJ3tPAF1O7
	ldi1ncZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbPW-0000000Flay-0Mk2;
	Tue, 18 Jun 2024 16:10:19 +0000
Received: from mail-am6eur05on2072c.outbound.protection.outlook.com ([2a01:111:f403:2612::72c] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbPG-0000000FlMt-23bv;
	Tue, 18 Jun 2024 16:10:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ii7JEL3PIanxN70pTmzgiJid4mra4tA1a25NAgxmhtJ0hDAt3tHTwZxmEDxFNLHLJhqesit+EvkmW4O9ub3oWn/HjShajpxKhuw5CSpMohsU7zgXu0AwYVKE0g/RWSaCw6N1pPc0ILGGLTKH99tgkKR6M7nQMH6fRQMlPgcH8XtrGatHUW2WAuBn10uUnykdMr0dogCrO/F4xgKGG7cI404aDrRXhAodkXuwblpw1yn8S/I13BWjPPGp0EAgI5uFuZBnLRofMbVZItGCqloaN/joy0Q+wlww9q0yg8PtA+ErbuiTcYIVpDLwvlPzPHziehGe1T7qXHLm6DAGzkKA5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U48VhaRSJKHUsovJodHOiZjnFeQi2efRmK676Qk9A+A=;
 b=AU60FrT092ygGwnQrmMXD/xGXxIEmKPtTB2maK/ZN61Fvu70jlPNONvq/usPVSwhsGUitPLfTMcW1LMIOkJF23OfCItYCtNmXUKpmOlen8fned/uuziYSHojgxg+e3hxQ7YoyZG2vYB4H3Mmr3oPszQhTj5hc0BVwaBFSgfgTdk3rl7gZ7YSRg4Jk+iM3y16aaZbau7Eh8y1XF/H4gD5Z9Lk2ELANv6diEokgUwyzGJPiazdosP0o4bF3gG273bEUWDYx4EmKoN531aF3OxJPXtmhaNhJGTQ/ue4zR56Nfid3vFjKiuiXD/9rqIsx32QR/BY6Pwz+/R48ycWchtysQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U48VhaRSJKHUsovJodHOiZjnFeQi2efRmK676Qk9A+A=;
 b=bES4nJLtWz/C7igf/4IwqeT1cnj6fjH5ODsb+vM2zEkT81S1WT8X1znWjp1SdRSMX8OuqlbrLH4koHGH5owJIQJzo9d2ourC0tq45xU6q0CHIoqq/EJ/PBSWntB1mdz7Etf0KSfggpkaPytjMo6rr+LeckTPch88P1GwJbs5ofE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com (2603:10a6:803:122::31)
 by VI2PR04MB10642.eurprd04.prod.outlook.com (2603:10a6:800:27f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Tue, 18 Jun
 2024 16:09:50 +0000
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::2a24:328:711:5cd6]) by VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::2a24:328:711:5cd6%5]) with mapi id 15.20.7677.030; Tue, 18 Jun 2024
 16:09:50 +0000
From: Farouk Bouabid <farouk.bouabid@cherry.de>
Date: Tue, 18 Jun 2024 18:06:48 +0200
Subject: [PATCH v4 6/9] arm64: dts: rockchip: add mule mfd (0x18) on
 rk3588-jaguar
Message-Id: <20240618-dev-mule-i2c-mux-v4-6-5462d28354c8@cherry.de>
References: <20240618-dev-mule-i2c-mux-v4-0-5462d28354c8@cherry.de>
In-Reply-To: <20240618-dev-mule-i2c-mux-v4-0-5462d28354c8@cherry.de>
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Farouk Bouabid <farouk.bouabid@cherry.de>, 
 Quentin Schulz <quentin.schulz@cherry.de>, Peter Rosin <peda@axentia.se>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.0
X-ClientProxiedBy: VI1PR07CA0286.eurprd07.prod.outlook.com
 (2603:10a6:800:130::14) To VE1PR04MB6382.eurprd04.prod.outlook.com
 (2603:10a6:803:122::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VE1PR04MB6382:EE_|VI2PR04MB10642:EE_
X-MS-Office365-Filtering-Correlation-Id: fafd6182-fcd2-4ed9-e51c-08dc8fb114c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|52116011|7416011|376011|366013|1800799021|38350700011|921017;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NEQwZTFyTW00aWZCd2k3UTJSekR6QXFzc3EyY0liMmNtRTFieitMeXB1S2ln?=
 =?utf-8?B?TysraGZZR1kzRk1xR3YrNUtUZDlCY1NpWlhvdXVtWWFxcS9DVHFTUkczejlX?=
 =?utf-8?B?cDQyVVkwSVNndTdhWE9ML3RCaURNMzVUdFdLSUZ6SGdrc1lqVVFxVExFUlVF?=
 =?utf-8?B?RVhuckdFUVlqQk9EM0FIS09ONG9BeHpSc2ZITWp0Ukxzb3RjTjFQMEFjOWo5?=
 =?utf-8?B?bGtEK1hmQ245NzUrc09wNkJmc05NYm9mQndvRUtCdXVpUnlrTjREY1dJN0RY?=
 =?utf-8?B?TDdwS1M1U29rdFFtWnM5SDYrQWZQYmM4S1ZxcXRzaGZZSWdCZ0dXUm5OMUkx?=
 =?utf-8?B?ckZUZ2J3NUphbjNNY1UxSTZtaENERElndXA0QTlYMmtnZ2lPVSs2VFdpeDU0?=
 =?utf-8?B?UDdwc3dGMmtYQ2dSU2ZwdEtLV1E2MWRYU0tSQ0hNdkV3VUY1Q01neDVMaDRL?=
 =?utf-8?B?d2d0MGl6bjUyTW1LMlM0eGc1YWxaWk1HZHJwWEg4cFBiQWtRN2FnRytMWGhL?=
 =?utf-8?B?ZzZ6TlVkRUhINlFhQVk0WTduUzZaVWFGRUpmNDE3bmtYdDIzRU84cnNPVkxy?=
 =?utf-8?B?ZnM3NUlLemliRzBycUtzd3J5dW9FK0Eyd0hZaXk0eUxKYm1DaVlxaE42UHVa?=
 =?utf-8?B?VFJ2Y2dLTm5tRGdPZzFKbHp1anFuSzRybjltdUVQOWdidTBBbnd0NTFna2Nq?=
 =?utf-8?B?RjNYWXl6Wmt6TEdXRGI0cGdLZXYySmIzd2t4eGd2ZlhISHJ3Kzl0M295UFFC?=
 =?utf-8?B?ZUlFYkN6SHcrU3BJZy8vckVoTmVOVlFpbWtPYWh6TERaODMyT0N0dkpBWGRh?=
 =?utf-8?B?bmlvcldKNEhxM3lGbW54OWNIMksrYWp5dGNhSC9HRzdpRmlWNDNtM2JaZjd0?=
 =?utf-8?B?Q1VUQmpuTEJrckdKNXJjT1EyVUN2dklHVDFOc2lmL2t5OGVSd2hYT2FtSCts?=
 =?utf-8?B?UVprS2dweHprNmJ5ZGhuL0tIWTFKY09GRUd2RkxHeGYxcytEczNmRXdQd1p1?=
 =?utf-8?B?RDdVNkxJK1p1ZGVmcmsyb21VZ0Q1TWxIci9oL1BaUmZHQ21JTldDanRQWFVK?=
 =?utf-8?B?WjVRejRydTYwUkJWU2hGZXBxaTUvbmd5SzBGUm5IMm1LL09vaG4zT1p6NUlP?=
 =?utf-8?B?MVFRNTZ2TzRyUVIwbmdzMlc1ejY0WHpJVWE4bVpHT25SdzcvTldqMS8yTlgz?=
 =?utf-8?B?Z1grbitxaWdpZWQ5Zy9wVDNoNXVOSW5zN25CdkZ3c2JlRnRmTmZYTG5CSzVz?=
 =?utf-8?B?akYrdC9OTlQ5VjZJNDVuN3lZK0FOYUxuWHVabWN1c2s2TWljV0E1Y0dEQ1lM?=
 =?utf-8?B?T3VPZWU1N1RTd1NCYmJrTXhMeDh0NUVjanpRWW9xSFdsTE8xZXRhVzNmSG9N?=
 =?utf-8?B?RXZYLytNSjNKaUQrN2haZEdKTkJUQTc4cStCall2bWJjN0dmS0Y1Wjk0eWdJ?=
 =?utf-8?B?T2NNSHFyb05tTU45MW14UWZKdWtHN0NXNW1XV0FZVDRVTFF2ZUtudU1pR0lB?=
 =?utf-8?B?V2IyTmhzQkhxQkNrWWh4SndXSDl1OTF6Mnpiaml0bVBvWjZ6MGJsaSs1cmJo?=
 =?utf-8?B?ZU9YdlF2UFpMU2duQkNiMzJ4cE9nTzlaODY5ODRHZm9YTXVBSkZZWVMrS3hH?=
 =?utf-8?B?K0xOOEx5M0xhY1RTVTRSOWNlYnZxMUsvSDZVcnBGYjJxYm9Qb3dnTFBRc0Fi?=
 =?utf-8?B?dDZDVUFab25QeXZ4RU1LTGlzSkx5amVHcmhTTG5ndnoxOVRoeGJSbUxYWDRz?=
 =?utf-8?B?QXdsZFJtdGpMYVhEZjZMSVRuU0EwNlRxS0RkMTlUQnNQNlFUNllxMlBXN3o1?=
 =?utf-8?B?cll2VG11bnR0S1orRkZlWjlNaEx3ZDQrZ0FDS1IvVzB3aXYwZllZV0JEbHhW?=
 =?utf-8?Q?wWN7d5NotB97r?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6382.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(52116011)(7416011)(376011)(366013)(1800799021)(38350700011)(921017);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWZqVWQ4SGc2YkFjRndtQTNTNG9vRFlOTUVZSGJ3OGdNSDdwSmx4SVFqUnNM?=
 =?utf-8?B?SmwxZk9aaFFwQVN2Y2twVUZpMFoxdXlOUTZna1RCMW9PcGM3NTQ2aGFlcWZz?=
 =?utf-8?B?ZDkxWU9pVlRiMktHelRVK2hQWmhwcU9hbmlvbEJ2S3hqMjl2aUpvU1ZtS2RM?=
 =?utf-8?B?UEtRTUxhU0d6N2Y0VWJoNzcrWWZORHB2Ynp2TXVxbWJyS3V0NWRIV0d5dVFh?=
 =?utf-8?B?R3I4TFJJcHZFUm1nZkI4dU81WVVkZGVuTVdibnd4RHBNRStDdUxCSll3bjdw?=
 =?utf-8?B?OStNMlJCZVBkLzVwWTBJMUVOOVlqcVE3WGNybDFFN3c2VGhndFMrWm1kUEhK?=
 =?utf-8?B?ZGRiMWdtVVgwYlplMXRjL0E4RUpkOEc2T3N2ZHByenJVaHliUmJ4TkU5WUl1?=
 =?utf-8?B?elU3OUhvcFg4aTd3T0FSWXVmeUY0M0xtVEozYXozcnpWZngrdy9PMncxYXBE?=
 =?utf-8?B?cUlzYjZZcEkvVHdEaW5pb0J5NzNDZ0M0amJBQllzZWlLNThUeDlCMDUxaDJu?=
 =?utf-8?B?QW5zVmdwSGVJbmkrVkJjcGFrZ25yMnROZTdzcjJrMWV4TGRicGtBVDhMczNu?=
 =?utf-8?B?cWs3UkVWU01hUnQwU3ovQjlKb1hSYXBmZkVIMW1xVTQ1WjFoQklhb3lqTDdF?=
 =?utf-8?B?K1ZzTDk5aHhOak9WRk54TGs0MnpvcGxyZlF5UTVnRUNVM3QxbzNwVjJiaXFV?=
 =?utf-8?B?cmJ2aWlpSE11UU9KZHFwNzhxU29BaElJTEhuaEUzVktZVmtmYWcvRmRESkNW?=
 =?utf-8?B?bklmeThXcksyV2d6dEtHdmIvaTlWeitjUEdSQjRHZmZLRVBlT2VSNDdNV1RU?=
 =?utf-8?B?eWtTeGhPbElwanNIdDZLN21KcW5iN0duK1FkZUpBVU9pNGNEQU9wcnJsUU5F?=
 =?utf-8?B?TUdrR1I5eUNRZXlBMldTSEJKVWRWd1BqRkZoYUU0WGxuelVaWEk3Q1JyUWdH?=
 =?utf-8?B?U2xGNU9DZHhHR0hhMzd4Z2s2QTkxZTBDZnY0VWZtaURYK25kazBIU0pjTlNH?=
 =?utf-8?B?d2dQVy9oenM5Zk9DY1hhRzhjSGo0bTA3eTNXelB3SzdZUW5ibnpnOWlqMXE2?=
 =?utf-8?B?d1R3QVB3Q1k2UC8ySkU0NndMb0xNYk9sQitna05CUi9EY1BFaGZHMmpwVjZQ?=
 =?utf-8?B?TDJ5Z1FhNGdFT2t4Y016RWhxYzVQV2JxcCtmM0l3YzBtTEttZmFydWg4RlBL?=
 =?utf-8?B?VS9aRmpJRnJsazVId1l4TFVJNEVENGVsTlozYlBxcG9XMVprQzhxcExMYmRH?=
 =?utf-8?B?a1N3bXErWlRXK1BMSXBtcU9kTlN0OEcwN3BtYXFlQVRhV0RZRE1vdUUxaWNQ?=
 =?utf-8?B?dDhVUG81RWxnbjNFcGVsY2NwUnAxU0dOVnhNU0RyanFiR2JUS2czSFh4VVJq?=
 =?utf-8?B?bG5PbEFmUE1qTjUxcjZqR3Focy83SkE1RlFlWXpIZ1lpSE92WmRQTHAvZ284?=
 =?utf-8?B?ZXJmbHIxZzNEb09SRDNid0Y1T1VyMlZiQnBleURkL1lzbXgzc0FYWkwweThl?=
 =?utf-8?B?VE5hcjJoWndjeFMxMWFsaHZveGF3RlVRNjFNUEQ1VzY4cU5JdWtpajhmTHpF?=
 =?utf-8?B?dTZKaTlyZG9CdWZBekVPNVRlYlJjK1BXQmZXRlprOW0yVUpHT29NOXhVY1U5?=
 =?utf-8?B?dWM5ekduVHlqOVl1QituZFJJMEUvVUVXVTBvZm9NZzVvT2xhUkYrRnA5QjFi?=
 =?utf-8?B?Mm5mQ0pDeXVYRzA0VHZRb2t0ZFhoTThGdU51dGZ1cDNmclFJMktnMzFwampr?=
 =?utf-8?B?a0s0TW8vVGNXODJGMlB6SkNRQUJGT0hXZExsSXg2Ry9ML2Z4c2RhS1JnL1RC?=
 =?utf-8?B?QUwzNS9RNUlyTVE4cllWZlErT2N5WkNyTmNFcDBOQ3FSMjkwa3YyYW9sWkRT?=
 =?utf-8?B?SFlGTGxwWm1rdHZuajZXQ2E2WkVHWm1jd3BhT2szbGJwYWtveTdsaEVnWjgy?=
 =?utf-8?B?UWhnOU11ZUpiNGRWSjl2elk0KzMrY3BQZFlCbTZZcmVCVmM4UktGbU1LNjNa?=
 =?utf-8?B?UnYzNncxdktMZTB2U3c1T1djczF0WW9jeDF2ZlIxNlFNR0tiRmxreit0ZFhi?=
 =?utf-8?B?QVdnK09mOHJKMVU0QjZSdnhUVmFHUkRqUG00c0ZyTlRCcVFQNTNvbCt4Zyts?=
 =?utf-8?B?R1RzQ0NWVk9EaTMwTU4xU1Q0TDY0bFB3VlBwNytTK3FreEtmQ2llWjhmZ1BS?=
 =?utf-8?B?Zmc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: fafd6182-fcd2-4ed9-e51c-08dc8fb114c1
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6382.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2024 16:09:50.3127
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dyvPXUV2ZaWX4xdaLCEUwf7TH1kONlCRtXE9p6Fq0lZDVw+tjHly9BAqi08F115cZ64h8nZIEg2sz9j02PfRzNRlppVrQPB6edI0hGIjUd4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10642
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_091002_707339_642EB11C 
X-CRM114-Status: UNSURE (   9.83  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Mule emulates amc6821 and an I2C mux (mfd:0x18). The isl1208 is exposed
behind this mux.

Add the mux node and isl1208 as a default device.

Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts | 34 ++++++++++++++++++++------
 1 file changed, 27 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index 31d2f8994f85..9c296d2116d4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -32,6 +32,7 @@ button-bios-disable {
 
 	aliases {
 		ethernet0 = &gmac0;
+		i2c10 = &i2c10;
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 		rtc0 = &rtc_twi;
@@ -275,9 +276,33 @@ &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	status = "okay";
 
-	fan@18 {
-		compatible = "ti,amc6821";
+	mule@18 {
+		compatible = "tsd,mule";
 		reg = <0x18>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan: fan@18 {
+			compatible = "ti,amc6821";
+			reg = <0x18>;
+		};
+
+		i2c-mux {
+			compatible = "tsd,mule-i2c-mux";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2c10: i2c@0 {
+				reg = <0x0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				rtc_twi: rtc@6f {
+					compatible = "isil,isl1208";
+					reg = <0x6f>;
+				};
+			};
+		};
 	};
 
 	vdd_npu_s0: regulator@42 {
@@ -313,11 +338,6 @@ regulator-state-mem {
 			regulator-off-in-suspend;
 		};
 	};
-
-	rtc_twi: rtc@6f {
-		compatible = "isil,isl1208";
-		reg = <0x6f>;
-	};
 };
 
 &i2c1 {

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
