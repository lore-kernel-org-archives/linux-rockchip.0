Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FA24CEB2C2
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 22:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PFeg90XEhm6NYeB/cnE4yzWV+9m4icQrGECv71uO7Ko=; b=154GObgoVUqrqy
	D0wVdnmN1/Fmb5QRLdka9oUKlLlaMl59noCLYCqYx4t3L1mt8Q1DEFkIb2os+KbezEjn+RiKdJ2nd
	bIDJbXgZDUI6w8Au9vF2gbA+GjSXhTc2aP6VvljD7hFqJn4zVRJD9MZZOSe3HwXzg5qXpw5Fzp/3i
	oZgZhW88+DjlAOgugfNQ0vblndA2j/gzm+WF2R/yLNE2YZklHyOR8Myft3L/5LHoMYnD0VH6ukngm
	KA0G68UsvxiTJiT9oaLxfG25Tf7QHUK+LxVx24sykjnNjRrBAvQTXhPJYxzkI59kQkhp1iYf93HhV
	EfTQT9o8nffzHmd2qF6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svOag-00000000zPn-1O1e;
	Mon, 30 Sep 2024 22:10:02 +0000
Received: from mail-bn8nam04olkn2081c.outbound.protection.outlook.com ([2a01:111:f403:2c08::81c] helo=NAM04-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svOZy-00000000zNp-2qUh;
	Mon, 30 Sep 2024 22:09:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L9Ax6iCqmP2MOmc+8Ymkt3ccI1LaD0eHGuYZcHYN0m7NaTIz47NlXxZS58bj1BEXn/lLMo0t1fw3nMPhqUdZQ2ibdbkVKyCKRdd3fr6oI2U/pd8GJYTnov5ipPS2FGwmSs5RPiUE5k5mhhsv5hbjpUJCPJJ5CzUXHANr7Px7V5BCbVTw6/niaejuiHUYaQ10dn//QPTJkDb4eqpj9CQqCgirCCxE8yYbGuAkIX2XlrzKWZKl6fqbDy9V5WgoLgd408ya7T26tvTojO8dX5oZoLUtKn7ZDGan8NxDfGekCu1+hnpmtaPwT22V0jWX/BYY3kcD15ydGBS5QEjOA6B6ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Io1REjvJLQzyjmmfprvrGaMlwvITzMrSEu+NmIQVABU=;
 b=ELbJSNDuvnjY84ZWe7z5aobPtZq9p0HT0eLoNebnu54RkMgHKYUSbc3drM2gVTguhR4U4oAzJHAoJzTgwSHe9PqqFgAVX1eGz3OK2IVn4LX7FY6NucSyMAyUTPUgCYCkTXTb98WsvYnAuFnB8xAsbrv8ETmtgQNbyd0GoXYn3PqRI6CeJG+qYTGs1LoTjHVtUr5hatAixB+5GgvCrdJtgWzQ5R2qiT3gJknVZ4DMsLWFfK3AxqFYyw8FBjv+75DqcbSPmkmZcPI64L9+vewctoB2IcGKWOj7jbui6I1KJSc1CkKWli8tHItduy7Bc45mFIYGdwl4rhdYPTb+7OSjyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Io1REjvJLQzyjmmfprvrGaMlwvITzMrSEu+NmIQVABU=;
 b=nVHf8m4EcBDeBO2q9zPSfczq7vv2/LFqLfInFDSLxGYd1h7eZdyspwqRhNEDQmicW55RAPCaQnSJE8Pfkwfoo/yumt2M/p47LpJq2Hx59wzeQKGxtbbuFaKz+gI+EdQsbOdsbOSfkHnaRU3S8MSjZOG8CalAg68auSxBpcaiWmpGcFjHqn/xe2xt6D9K35z/CbsICIA5z8gixzl2WeMC4jo0nGZDFqi7f6f1cYDDQDUe9UhBEPul/5rw6Z39xMQY2kxi8LBFGUDh2H8lGAhmxfIdMyi879gD7NWjBJBkHjIg3sG6W3ZTtSkTV5trt+kLS3zhhnKyE7mnihHLqtkHYQ==
Received: from MN2PR16MB2941.namprd16.prod.outlook.com (2603:10b6:208:e1::15)
 by DM8PR16MB4328.namprd16.prod.outlook.com (2603:10b6:8:23::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8005.26; Mon, 30 Sep 2024 22:09:13 +0000
Received: from MN2PR16MB2941.namprd16.prod.outlook.com
 ([fe80::9d62:95ae:c373:c490]) by MN2PR16MB2941.namprd16.prod.outlook.com
 ([fe80::9d62:95ae:c373:c490%5]) with mapi id 15.20.8005.024; Mon, 30 Sep 2024
 22:09:13 +0000
Date: Mon, 30 Sep 2024 17:09:10 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/8] arm64: dts: rockchip: fix i2c2 pinctrl-names
 property on anbernic-rg353v
Message-ID: <MN2PR16MB2941658254EED6C7D05C8563A5762@MN2PR16MB2941.namprd16.prod.outlook.com>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-3-heiko@sntech.de>
Content-Disposition: inline
In-Reply-To: <20240930210112.1993625-3-heiko@sntech.de>
X-ClientProxiedBy: SN6PR16CA0069.namprd16.prod.outlook.com
 (2603:10b6:805:ca::46) To MN2PR16MB2941.namprd16.prod.outlook.com
 (2603:10b6:208:e1::15)
X-Microsoft-Original-Message-ID: <ZvshhqdzxMAChe0g@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR16MB2941:EE_|DM8PR16MB4328:EE_
X-MS-Office365-Filtering-Correlation-Id: 7400caf9-62e7-45cf-ce07-08dce19c841c
X-Microsoft-Antispam: BCL:0;ARA:14566002|15080799006|7092599003|461199028|5072599009|8060799006|19110799003|6090799003|440099028|3412199025;
X-Microsoft-Antispam-Message-Info: sT1d4jGVrZXcjfmOzwk8fwDppNfavqyGWoEJwglMPauaZaQ2V7NIS6QXWfkDzU/0Rs6TFJZ8G0a/SzX2m42Hog4ynYxxJT5DzkkiSZBKXKED+xCPc3QvXdR+wFfVHrP4GsxgYBktErTsOrSFMwCq27pCZ5D0+Wq0IiKTL0BbpRv8r4aaONM8yrxZqJYwcb1pjIlbdpzPGtgWDPDshNtGq3iTp3LqVV0vs5qtFkB2b17QmaXQDuT1oAQouT1MhOCOKXyzH6TwL5ilW95sdQo45QNYyeobDczGKbaL4R83C4T4ugBAJaZ8Ab8RM8+Eyd5o0FaP2mqiDXsxmPaI4LiYukppMLuAoSUmWHvxHVRDKnbC1NFKCuBoacAEFGE9Pr00cq6suH9QJWJ5/8tLhOhlpGKdDQyVYHArQWR4TP7BuxK3FSSQ5ZyxVsh4NAIsM21pPbsQFIcOff4B+069FIw68Cn3EJv73+/VAXBtUZQogilwyKhLHAgxSwvqRDHwVi2W9Uh1Zaduu+8HheDQLm6wfuKj1nQBJvoHjNWV8vRFrwH5LpJSy5l9K8PNwvHhKWKQ5NQ4V9JNi559A7km5RJASOm06HiTTKXrWjEJJvjxKacZO54M8PVHjTQhOuFwFil71RpYoQl61S0P8t/4sqQ0YWC6FY2a8YKZpkJNt+9z4D6AyqhGGq6IkrhL4kUJwtVdp5Fbt5u5AJ7uUpP+z54j5KpbtJ+aX8BEneHSEVWui53h2I/MX865jEUbY7XoUQcuuQkCh0oJ377ktoqCm8JfFg==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EtKdXDLARpBKyDdbriC8+WBT+ZuqOii40+fTv8jd8AT8RFWHjEvM68+54HRt?=
 =?us-ascii?Q?lSplUKCJwZkTJjEEjJL2AARv9UPmwQdSqAOiJCDlRrtKxwxLPR/q7m/I6tSi?=
 =?us-ascii?Q?zviTMYOStma+GgRqsbK6w5+kupFcIp/O8mPTswhqYK884q8n/CkstmPr25Dp?=
 =?us-ascii?Q?BhmH1aGKzUfAWVRiaiTFVadin73B1cVKTDnOiwjM8b61Ji2Gb2X78DufjBo7?=
 =?us-ascii?Q?RK2gRVh5J6yKTiYIT+aVcRd+3iFxhVJVYRU7x2zo0UpT1TUSGsaWO999QTeC?=
 =?us-ascii?Q?Z61o1nhz2ZU59FStxvB12sSVov5pe4tyHdclS+kI3ljyQnVCrmlXTejmUAkF?=
 =?us-ascii?Q?0s0HYCLMBRFmhDM7kLs9UbgnwHzZt0Z/9j5R6gYoz+oopdMWE1GF+VxdsqIe?=
 =?us-ascii?Q?D+I2tXd0Zlw9aBNCbSxxMVU8GUUkHu8b0AvldHBh+WaQeo96JzsWOmurgs6S?=
 =?us-ascii?Q?YD1DBhVB6zjbAZbjvscZF8XKUr/JRg4dvrECgPLcWlmxCM9nDSuUh3QhpO0d?=
 =?us-ascii?Q?x2IB4awFEkF8b8gMnNagOWFDt9osEN5TzYrh0n5noNsV+Y68U3mTKNrz/1tz?=
 =?us-ascii?Q?iGySm+4JZbE5jsCS/SikDo5FCJWN8z8kr/8uA3V9foA040w9JWTXLa/n2jdl?=
 =?us-ascii?Q?FaHo3HIE2/aYqrxeriRaD/qbrWnTsW/Wkm+rw8++2TSTovc2XRYPQrhqRzQE?=
 =?us-ascii?Q?YjeSmKNaOG7JoCk42JaO+5jq3yTZYf9svBmQZOTr6rJX2wgHn5DnyNygHT2R?=
 =?us-ascii?Q?0L8wSjMG9uCY8z0F5VDpQcW71bIKrx/P/bVMiym4e1D+XqUoQOnQ14LA4Egx?=
 =?us-ascii?Q?XXGdb2xzxsaiokmwndVQvzwlZPAm5jFqHaU6Ry+EEWTOjCqHmGDyAJgGitgt?=
 =?us-ascii?Q?2E8/ge1KrobSIcq4/pk+kdwijErh/etzRaLqdaufKWZGGAE5VralrkJo+nr7?=
 =?us-ascii?Q?M6NzkppQFIONq/cwY6ya14CuQfC9RS07bSfmth/T5OXw0SdotOqdiXBKvhQI?=
 =?us-ascii?Q?Wv+ietqRWKw+rCRZp+NknfLmBntI3F2esxt1iF5Pmy215agi1dDzEuWzj5oF?=
 =?us-ascii?Q?08yN6GQqcOnCT/hCe9fJEmql1npiC4DsV2tfytvmNmMLiah+BIJmDF72+OHr?=
 =?us-ascii?Q?PL/fh0AHDci5MTbwDwk8V7X4PxK7CnVpz36fqV1KuIfUqUES2XEGfrEN+QCd?=
 =?us-ascii?Q?rzPpF9t19zTJjsvuAXYNwbtxueDwmidEm8B09xdCISxLixSxIF/uT0vweyjl?=
 =?us-ascii?Q?ATtduvEfeB99BAwc5nwjOwc7Pmt48blNNGyfbzoF0w=3D=3D?=
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-559fc.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 7400caf9-62e7-45cf-ce07-08dce19c841c
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB2941.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2024 22:09:12.9926
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR16MB4328
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_150918_742612_5D3A289C 
X-CRM114-Status: GOOD (  17.13  )
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

On Mon, Sep 30, 2024 at 11:01:06PM +0200, Heiko Stuebner wrote:
> We want to control pins, not beer mugs, so rename pintctrl-names to the
> expected inctrl-names.
> 
> This was not affecting functionality, because the i2c2 controller
> already had a set of pinctrl properties.

Acked-by: Chris Morgan <macromorgan@hotmail.com>

> 
> Fixes: 1e141cf12726 ("arm64: dts: rockchip: add Anbernic RG353V and RG353VS")
> Cc: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> index e9954a33e8cd..a79a5614bcc8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> @@ -79,7 +79,7 @@ button-r2 {
>  };
>  
>  &i2c2 {
> -	pintctrl-names = "default";
> +	pinctrl-names = "default";
>  	pinctrl-0 = <&i2c2m1_xfer>;
>  	status = "okay";
>  
> -- 
> 2.43.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
