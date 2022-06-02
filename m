Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 571F6C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jun 2022 13:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Vi4aBsiMsseVfYTVhsBXiJK4SpHn4s3qLIx7pawups8=; b=26USg+W07+qeTHgCsi/a44VB2h
	yxc40eITR4YYr52hSAxVyfjOPxgcPchOirub1Dd2Rma6waJsPo09A/vNVTPeJkU1yVM5Qk3j3vBoV
	HwZrrxSenmfZNbWFpQFHL9E5ba6JqMdAsZiwAPSWIIwatE1ph2GhZGwtgqGDwUFLvi4pu1pwtmX1/
	YNY/fO9XO1wKsCEe7WBKAD3e1jd0s1DM1P7qsBhChOEkTIP8Ik7IWrR2Z1lL99/Ze/kUEAyVoWSFM
	HRhFaNBADIvrA0WK6/P25rIoKTFhL7IASdohMHdqM2E73i5UxUHpf5SNMrjgLe5GXt2TnT6+sVxon
	7s2yp6JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwkQc-003Id3-LG; Thu, 02 Jun 2022 12:59:54 +0000
Received: from mail-db5eur01on0603.outbound.protection.outlook.com ([2a01:111:f400:fe02::603] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwkQZ-003IcB-9o
	for linux-rockchip@lists.infradead.org; Thu, 02 Jun 2022 12:59:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=og4uog/NxY0nduwN4ahlNyGMHmeR1euP7LkoC8C0LUMeL5LUM/k89Z71ATkaeAr0FeEOHz341CwYD21mCFZnf83VsW8RrtzpWaefKG4BHwYfC46gFGNPhxvgxzYjiA+/SkIRb8M45XpcmdtfaTOvDPbmjKOvFdGS4M+cDKqTR+zvX+uGupT3cqkF2VmGL8iarPDQnvL/dBCgX2/2DsYve6V6Ihd+cbvlcFm44vmR22eC9dAyswEEYIqNi5I9odnY1/wA1t+kNoy4kjE/SnMJuENqKGoYuBxFclktyJHxKOhNvXVyqQ+t/F+4/oCRLe+uMafrgz9mv/qVq4Fe3tKX4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q5+Erxc5tFBGCNJqLaj5GkDLuIJLKNLqB6RHDJe4pIY=;
 b=lg1T8lg10iDm+6uTOi4fhQ9kQeOMPt2kUxcQCi3PnvLqxA7eZWUKWQcX5qt6UpwqLoG1R3Rx6TuUFnj67EiTfkJlubjIPtG7R/2dzE8LtB2ZvlHuE3dx9nmb0CRqA6YaVy3TzE4xca/t/aruVO2Q5j+9PgdRCd5VM9xPAGhg3ruKalUX2YGgdRufFJ8rFjs4NJTkBsdMNZt0SR7+AeAwpnNUnu+k33eGL0d09Uc9tPed0m4gdwFd68rNZF97xCdPhMYPuXE4jgaWgvhX7lp66tfah0kswwI/I2vSlQOY+oD8WguJ4ey/ARxPevbjUSfeBdFBNXeZmgxKB1aAc/zP6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q5+Erxc5tFBGCNJqLaj5GkDLuIJLKNLqB6RHDJe4pIY=;
 b=rARcCapYJD2EtExxphyfrQHyLJIsIFV6GxqurYj4HpaozAtOVn/uls6fDVd3OvfeCvY8HD19Rg/a78Tu8LYb/JMZFKY+BUclKlVTwtlS98CHjEMS4q9OT2BuZ0CNVoze9jsmmyYvoqMo9UQVN8hAfxygQ7a/GQEO2ePLxYAhwc4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22) by AM6PR08MB4834.eurprd08.prod.outlook.com
 (2603:10a6:20b:c9::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.12; Thu, 2 Jun
 2022 12:59:46 +0000
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::248c:2539:5ba5:74f2]) by AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::248c:2539:5ba5:74f2%3]) with mapi id 15.20.5314.013; Thu, 2 Jun 2022
 12:59:46 +0000
Message-ID: <0b775c98-86af-4ddf-7056-7f2b3b131352@wolfvision.net>
Date: Thu, 2 Jun 2022 14:59:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: rk3568-pinctrl for LCD RGB666/RGB656
Content-Language: en-US
To: Andy Yan <andy.yan@rock-chips.com>, Liang Chen <cl@rock-chips.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jens Bauer <Jens.Bauer@wolfvision.net>
References: <3e9619d3-2a59-80eb-b701-90328c6943e6@wolfvision.net>
 <55089a25-67db-45bb-c61b-241ee836f025@rock-chips.com>
 <f33a0488-528c-99de-3279-3c0346a03fd6@wolfvision.net>
 <e7a89f56-d57d-4986-7849-b083b0244baf@rock-chips.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <e7a89f56-d57d-4986-7849-b083b0244baf@rock-chips.com>
X-ClientProxiedBy: ZRAP278CA0005.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::15) To AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 23b30dc9-280c-4928-9b4b-08da4497c4c7
X-MS-TrafficTypeDiagnostic: AM6PR08MB4834:EE_
X-Microsoft-Antispam-PRVS: 	<AM6PR08MB4834898A96E6300CC79370D6F2DE9@AM6PR08MB4834.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	iBCXIZ6cb7sbSglldLjPE9n6oF6hUEAczyi1Et9fuSx1LaR0Xdi/U8o7CigYlgp6mm612OHZUvxqIG7Jb8RvqvpPaQcRPwxyTSbW3Ktd8xt7Xk7aoMxSnr3HSBc6QvuA4N60Ryw9x92whoUFPgBjWkYmbiRMfdjAQH61oOrnAa6HU/RTA2D9vdrqvA7KMXbQxBGTMt8jmgxhx9sJ22CHdbXj+euHOrsssXxfOJsGMVHGHgvNsfvhpUzJrEKxVrO3/I57/5YWOIdkuQrq9SqhBhAr1FoZU11xHf/cUJxHivkWqiNUUU7/hPsHxcaZ4/OmHJIgTxMpjhaCiZQ+qXgEL2zx5514JKP9iGK2teI+dzjcmyTR2jaB2HRMKMPYJRnTh4AgXvzxAJWj0QTUnLA0o0qTs4/1668yFl0aryVWCenvqzOqm7ccwRHryhoecvh5KX92BUY+6VQEqT1qrpNEgcm/p/N/tX8ziYSyvifgA+JsqgYRxOIJSqCqQe3UGqOu7heGA5qtlHPGHJrvIwEAu9HvoGrUCOrdJySkutiQCVA6gW4cTiQ7HvxPRnkCz7KScVxQFxKKdqv6A67a+s4IHh3uCNucZktQT73rUIBhYHU2wmytkx+8BkpamggCYMkoDuh5nMFjccHCWKK9j3YLiUJpetRcSB66XZBBgP64Gkkd05XKQI0C44zAYoEdWwDpoXe0dq5pfiGIYnoJ9QTRbXIUgdr7qbHdlB8gr0WpAes=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4PR0802MB2131.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(136003)(366004)(396003)(376002)(346002)(39850400004)(54906003)(36756003)(31696002)(6486002)(53546011)(52116002)(86362001)(6506007)(8936002)(107886003)(110136005)(2906002)(316002)(38100700002)(66946007)(66556008)(66476007)(4326008)(31686004)(8676002)(44832011)(186003)(6512007)(2616005)(41300700001)(5660300002)(508600001)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?Mmk4RFFEbnJHNk5Ta0NFemlTcmNlSldNRkYzZDFCTHRONHhOQVYxMGlIQi9y?=
 =?utf-8?B?QWVjNFFCRm5aNDFYb0N6b3Z2bURxcWhIRWxOZVFUMmhrZlg1QU9uRWg0NzNj?=
 =?utf-8?B?RTI4emVmdmErY1V0VnBXRWhIU2d5SzZwdm50cm9TMlZwM3J6UUVoOWo1cGtX?=
 =?utf-8?B?ZmZJV2xDelRIalNHVEpjNFhqdTloa2poYWp2ODdtV0hBanBaY2ZYUVJESjRi?=
 =?utf-8?B?NGtwRnpGYmJKakE4VjllR2RtU2lmR2ZWZEJEWERKbEw1NVB6Vzl0QVhQN242?=
 =?utf-8?B?ODM0eWFlSzFRZlB1eTFnUHE1SUpZZ2RoK0dRVnIrYzB1Rnk4d3RzR0VDWFBL?=
 =?utf-8?B?eVpmVTRzWGxLellaakd6YUFmS2gwcFdkNlZYODY0NU9wbmN3OElRR3JiQnBw?=
 =?utf-8?B?THdVVHlqVC9reCtsODg4RkVrdW9RcU1JeFhOTU93SjhWZ0o3Z05BRHBSSFhP?=
 =?utf-8?B?aVZyNzBycHlvbzVNVGl2VWFVTlRZRHp4cGQzTHdWNmtBczZLbllzYUhra3VY?=
 =?utf-8?B?UXhveGkwOG1zWnRsSkNTU2tDbWVMQWpoT0h4OXlhckkxbERxbytFTHVVek1y?=
 =?utf-8?B?L09Oc2swRExPMHQ1cW4zMVFoakpCR3MxUkF4em03TG1pQkNSbXIxTlV3TVVa?=
 =?utf-8?B?QXlLL3VvdWZLV3dEaEpKTEJJK1lCSytHeGt3b2daUi9qdUxCWW9FdTl6dEV0?=
 =?utf-8?B?bmJ5TDhzS3JYbVU0WCt6aEFCZXBzSWszUHhZWCsxbFc5OE91aEdKbWVZbzdK?=
 =?utf-8?B?dkZpL21ocWtETk8xdGd4QVlLWE1BOEJOMWY3QXhHNjFId1NBdU1WUEZrR1pE?=
 =?utf-8?B?V01kS3V3Q2RnN0JPcnJrVnNwMVlSblhFTURrQy9xZ0htbFAwcnVlOEFCQ1Bj?=
 =?utf-8?B?dGpJU0NzNmJ3NzdzT2ErLzREaDhPSHFxUW1NMmZKZUt1M1JZOUNKcFFsRnh2?=
 =?utf-8?B?MGRVMjVrZk9YNHMwY3hIR2xCYXJSNVlkcUhpeG11UngyK3JCQk1acFMrU3VD?=
 =?utf-8?B?ZWJvZlVjWkU0bWhlTlNyaFhxRDZVRUVZZU5kZ1dFNFhCaFNSZkhTT1JtdXRW?=
 =?utf-8?B?VmY4ZmNpbSt5Z1lkQW1lQVJZV1JQUXd2cTNUZkJVbDB5N2VGTEQ4M254Q2t3?=
 =?utf-8?B?ejh6WXRUVmlRMFJPYUdycDlkZ1YxK0FnYm9ucVRiRkovVVZUMERMV0dneDJH?=
 =?utf-8?B?dncyWXFGZmkrQWQyNzVqbHFNeTYxaHBxVkRYRkdQOGFxb2V2Wmo1Y2tnbCsz?=
 =?utf-8?B?MUJkb1N6ZEFnVElmZmV5a0VoMVY3aHFLRHc0dHppdUtHMnY5bmJXY2wwMm1R?=
 =?utf-8?B?N0RPcG15NFZkajcxNTFDcHYwcFFWbWFYZCtJZHl4ejJDV29Tdis0Wm5qaEhX?=
 =?utf-8?B?cVprSE8vd1BoQTAxckJDbmFYSWJzN2taZ2RRcHVic3QwWWVtUDhzRVZraklq?=
 =?utf-8?B?STRGSHlOOVQ4WENkSlo3VnlhUlFMVWVXZzhRWS9aZnlKSExobWFxeEFLd3FL?=
 =?utf-8?B?N1p0NnluWmlmckdRZWduV2lCVXpBZ1lLWHNkY1BxNDhRMDhTc2hra2FLRHo4?=
 =?utf-8?B?eWtiVzN5MW94d1k0REtNM1UyWXN0aTRqbWw0RlR3Y1dtVXVqUHZnLzhIbXlY?=
 =?utf-8?B?aWhGdUpHSmhqMkRwakFJVWtyZzJId1loN2svT0U1VTFtdWRQeGdBTmNEck0v?=
 =?utf-8?B?L3M3UzExRWY4czZMUklkVitWQk1QUjV2YzY5Ui9lRXNjakRraUJWdkNHMmg0?=
 =?utf-8?B?NERDT3c3ZEJ6R3EyRGhuajNQRmlOLzlHajVuMzNuVmx1WDFzZ3MzWjhsYUdT?=
 =?utf-8?B?TzlPTG5hdWRwK1BKSDkyUXBSblRaZU9HbUNoalNkRU04SjBZODB3a1BFQS9S?=
 =?utf-8?B?V0Y3SUp0SDNCSjd3WnFESzdoZFZKYUJ5dC9SMkRqNC9lKzNsMTlBTGxOcmYy?=
 =?utf-8?B?M29Mb2Fta1ZlaVZnVWFtKzE5SFhrS2VQQmlUV28vdzNTSkdrN3daOVZyYkZF?=
 =?utf-8?B?YjV6U25DZVoybGMxejZpUnhHMU9kemQ0TldqSk83US9Xd2RaWTU3SzBLTHZL?=
 =?utf-8?B?TnIranh0MFZTd3liUXVZK0tXOE9ORTJNZWtxaCtmT0dTVENqMDIzWUgwdUUr?=
 =?utf-8?B?cTdMVzd6OFBQZVJMVWd2VHA3amRpeFhmRmZNQlVIdkhSakRnWC8ycjJkcGFM?=
 =?utf-8?B?WW9QREVYWFRlQzBhenRUbkNZcVFkSXF2Q1J6bk0zVW1jbG15Mzl1Q21mRnJB?=
 =?utf-8?B?WFUyYXRERVdXL25yc1g3dGVCQmVVM3NZUkNSVmJoeHJNcnlLTGxGR1JRbVFk?=
 =?utf-8?B?RUhtdG1DM1UrSFczN3JGMEVtOXJUNlF4ek5Ha1BiU2xEa3FLYjJ6NUVtNkxP?=
 =?utf-8?Q?WMJ3liKeva9ZN6a+GyMeTmStXwG+cjWxY8EWRSTRxqHKQ?=
X-MS-Exchange-AntiSpam-MessageData-1: 	YBBkDT7t1gBbubmM1sZ1VhG+5/1EbeJ+7UX4EtJbpCEmg7kOnfaZoHTs
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 23b30dc9-280c-4928-9b4b-08da4497c4c7
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0802MB2131.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2022 12:59:46.2106
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8qOqN9Tk9L/OBRj3Tt7RJNmOl27XmgR3dE5bpTPEcmxMkDGkFd3vEwRlEzJNnXb1keHVnTyA6pcD4nqnOcYfvDrCIpJhEcOrXLkkvCumZ8Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4834
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_055951_579948_748D17B0 
X-CRM114-Status: GOOD (  11.10  )
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

Hi Andy,

On 6/2/22 12:53, Andy Yan wrote:
> [...]
>>>> According to the RK3568 TRM the Video Output Processor (VOP2) is
>>>> able to
>>>> emit parallel RGB data to LCDs in 24-bit (888), 18-bit (666) and 16-bit
>>>> (565) format. Based on this I would have expected that
>>>> rk3568-pinctrl.dtsi specifies one group of control pins (clock, hsync,
>>>> vsync, data enable) and three groups of data pins (with 24, 18, 16
>>>> pins,
>>>> respectively). Does this sound reasonable?
>> Just for clarification: Can the data pins which are not used by the LCD
>> in the respective operating mode be configured independently to their
>> alternative function? For example, can the pins D16 and D17 be used as
>> GPIOs or UART4_{TX,RX} in RGB666 mode?
>>
>> If yes, it would probably make sense to reflect this in the
>> rk3568-pinctrl.dtsi by adding different groups of data pins.
> 
> 
> Yes, it is possible, you can do that.

Thanks for the clarification. I'll spin a patch some time after the
merge window.

Thanks and regards,
Michael

> [...]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
