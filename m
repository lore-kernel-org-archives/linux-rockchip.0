Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B9E6C43458
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Jun 2026 00:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oncVu2DIPfZlmNRm+Rjfy4sP39SPkR0upZQl/Wvjvuk=; b=jszxGQlAchaPTc
	o2Wq1P/THYoaVDJo7WzaIMqgv9f4n+HpGfhqQ4wk9avC+ujqcMekYZEZjnoO5SwhvkXynOkGhHZ3c
	WpIJV8VtOL51Ek8kGVbu95Fqtp3ISPCk7uhcKHZiy8oFhwDfQZHFviuXIDAATAqwpa0XmN0U/Z5gh
	P1dZWqr8r6LBgUwETewr+0kE6Fvwikxx7mIJuH/53qC1WsHpCWmTvxIq5dcja2sDKLrzXCCgZxXMu
	6XHIiK7EWhuMwfxdRqeWSU7fcXRDmXGtAV5LrcyLlpdG/y10NTRjPP8b37IA0rlV9dy8Bo3lPlsxm
	Q0HFxfl3OMhut9xXpdaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wddlO-0000000CqxU-3E4F;
	Sun, 28 Jun 2026 00:52:46 +0000
Received: from mail-westusazolkn19010019.outbound.protection.outlook.com ([52.103.2.19] helo=BYAPR05CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wddlL-0000000Cqx6-363K
	for linux-rockchip@lists.infradead.org;
	Sun, 28 Jun 2026 00:52:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B9GrqUdGaQuxF0qO+wBUqD8KDUA2DkrL6tmQ9h3lSQgIHivZ0aoZfd8Qau1YqseNmU5EAw1uuaVbz8yCo8lTvYqZvwoEops4GsMyyHR7EUYmzN+A6ZPCotFP385smem6HFkShJqdDFaum9Dw3Kz5BJxnMz/FJjRz8XbCv2x+Snl17HOdd1xW33Gu8dNOdKXFZvXGRf0sHbCvC2etNyii8JDAUHwsIXMrCrgFkVFqruGl0l/kPSuzl8liHA5i2f/mCWXqQetARWXI7JlwG1xvQIq1RNgbZgOcWgtzLQg4rDImGZngKMgQo/fNKC+zap9ZZIzp0Rz22SfM3NMDy5/YEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+e2HJi5Qcm6N/N+efpPjpyPT2ncxr1x2XL+IjyKraxI=;
 b=omgXWgUYba6Jr1pvfYowOPSZSWGCFRaeEVmn1MBzD9LhCqS0gj4tSrsw0ALkYcWUz7sVuTKr46ZuqloqW1XprCaog9UeeOgcIIvEBwkwSkVy29to9N4BGpHDjZ5N9GPPRaEfdiLOOzLoBh9PM7H+gFAASIX8S3xNoYrAoFrxRvY0cf/SjZ/Y6Hey6wsfjW86T1la8JC1URL2dWTE5MFBto7hBf2kwDKKuNZzUXJ7R+He/zUd/AuueTn/FZss1kq0FFehd+X3NshBO4LVrK3LgaQi8PMqD0etSkVc6xT0BGU3/7x6oCCdzceIUgZZNoHX/42Wz8nd5VydP/mzHeTA8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+e2HJi5Qcm6N/N+efpPjpyPT2ncxr1x2XL+IjyKraxI=;
 b=foDvZx6De+wxZONt98lBoPrYHjBtPvFfRoVK2UQsp4viZnyasJbyGNxqZ7YonUt7bzM3f7K6e2dsXUKPT9qwfd1la8NLIEq497MC9whmrws2M4OedZkUXXITubdeXfbCeJcQobtvEXs07FON6S9FxqMk0C+qNoONatOx4cX7UhZbC6gogLY+tBt2avL52X0v3l9DhrjnU89Ml0YrupiGegW+FOBMCPkCANZsb4jEzyfgWxX9vZInr54vBziu21Z8YNmnlFNP5G80pC1ZXuMiacGEu7MIxCeTB0iVSsuez+54t+sk3MTMvkPc4g+joOePu6h8hHMicpG7ZI14RNtojw==
Received: from SA0PR19MB4572.namprd19.prod.outlook.com (2603:10b6:806:b9::17)
 by SA1PR19MB4991.namprd19.prod.outlook.com (2603:10b6:806:1a4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.18; Sun, 28 Jun
 2026 00:52:37 +0000
Received: from SA0PR19MB4572.namprd19.prod.outlook.com
 ([fe80::2a3:704e:6f15:8bd4]) by SA0PR19MB4572.namprd19.prod.outlook.com
 ([fe80::2a3:704e:6f15:8bd4%6]) with mapi id 15.21.0159.016; Sun, 28 Jun 2026
 00:52:37 +0000
From: zhao xinchao <ChrisXinchao@outlook.com>
To: "heiko@sntech.de" <heiko@sntech.de>
CC: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: [PATCH] arm64: dts: rockchip: add Firefly AIO-3588L board
Thread-Topic: [PATCH] arm64: dts: rockchip: add Firefly AIO-3588L board
Thread-Index: AQHdBpg/i8I3D3IMOEWcrGsIgeX8Yw==
Date: Sun, 28 Jun 2026 00:52:37 +0000
Message-ID: <SA0PR19MB4572AB455CF87D8BB3CFEE6EC5E92@SA0PR19MB4572.namprd19.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA0PR19MB4572:EE_|SA1PR19MB4991:EE_
x-ms-office365-filtering-correlation-id: 99d97f3f-afae-4bfb-70b1-08ded4af8c8f
x-microsoft-antispam: BCL:0;ARA:14566002|4140399003|6140399003|20031999006|15030799006|15080799012|8062599012|19110799012|8060799015|41001999006|39105399006|24021099003|31061999003|3412199025|440099028|102099032|40105399003|3430499035;
x-microsoft-antispam-message-info: =?gb2312?B?ZW5qbS9XWmM5SGhBQjZoTllHNm9ud0JkbW5od1I1NmRyQWtHbkM1azB4RDJQ?=
 =?gb2312?B?Q1g4aFY0eDJ3LzBqNGtzOTlkVTFWMzI0Z3FDYThLaDBCNGZYeTB3eGFhYXlJ?=
 =?gb2312?B?YUx6bVpieFdYUTlad0NSQnlldDhNYndnYURMek44UXcwS2FZSTF4Qnd3UmxT?=
 =?gb2312?B?a3lwSndFY2FLaG0zdFNnRGJHdHlLVWhJb0NxU0xNMnZkU2hucHJsQTNyRXo0?=
 =?gb2312?B?OGhhUUs4bmxjUVZJTWRQNWtRVmJUdDVRRU16TTBvR2pacDB6RFhnSUsrUTJr?=
 =?gb2312?B?RHB5VWw2WFVVRXljcVpydzRVRlRNZ05GeW44QmZIWVBvT2JieXpQV0phUFJY?=
 =?gb2312?B?NHFsYmFmaCtkeWdrQXdxa21kZ2twMWsza2lMcjdLMGZUZml4dUdjSG1YT0RW?=
 =?gb2312?B?U1dnWWZxaE1NOGRXY0JQOXlrN3lZN2Q4R21yYXdkcU1DR2sxbHlyMFl5QTVq?=
 =?gb2312?B?R1FwUkdmREpWL0VTTWM2b1dtTmhORXRBbllNZUFDMjdEdzV1V2VPMkNySUpM?=
 =?gb2312?B?bFV6L3dXOWh1VEV6M0lwOWJpRGcyM2p0Vk44TklXZlBCb01rU3Q1VUxIcFJW?=
 =?gb2312?B?aU9Gd3JrZGp6VUNxd05Cd29tWVExZFhaVnRYTFpleVJQc2YveERVWW9OZ0s3?=
 =?gb2312?B?T0t1MG9rUEVHM0p1SmRNWWdERDFkMW1BL1pHS2xXcU9sdEhaNFpXMVZmYVlG?=
 =?gb2312?B?MWZjTnB0YkJEb0FxQzFHbElLRGJZMFZmMEd4eGFTTUFCKzQ0djhHWGo5US81?=
 =?gb2312?B?ZUlxejJqR1dQU2dWcjZWSi9qTlNDYW5id1RJTzNsclFBTGRJTzFBM0ZKRndq?=
 =?gb2312?B?QnYzY0dINCttVForSktTZTh1OURnbStKNHdGUG1zWmZvM1NOeVRHM0RSVllB?=
 =?gb2312?B?UStNWndlVFAyLytEb0JoNG1vS1k3Z0REa0JtL2xRQ2dBUG9IYVI5TmlsL1I4?=
 =?gb2312?B?U3RFVlRQSDhwQXFPbWpzdWs1dS9UcEJPQjJ5Q0VDR3lVRVg0Sm9UaXcrZWND?=
 =?gb2312?B?WnFkZXFFdHEvRlh2NXUzTk91dXc2UlNaRkd5c1psQ3VVbWM2MmhoZE02ZEdS?=
 =?gb2312?B?R2JrL1FiSEI5UkZBaU9iZDc1T3hDTnJBQ050TUthZTJkZEpsV3FtUXpmbjZs?=
 =?gb2312?B?R1BuQ3k4eWg4UXBnZCtWN1cyc0VOd2ZNWnMxck9jVXdxMERxQUdLU3l1d1k5?=
 =?gb2312?B?MlNIWmVKSUhDVWd1TmpydWMrUDRLZ0YxTUxpSENua0szR3lKYUxveGF4aEVZ?=
 =?gb2312?B?QWxETUZyRzhVQnlENXdvNDd3Mit3bE51YkttRE4xcWh5Y01xTHVFK0h6SlZz?=
 =?gb2312?B?SUZFdEdkR3VnZXNTZXZMNW1YVk1UdVlablFwWVRqaGtWQUZpdzRzQnM4eUEx?=
 =?gb2312?Q?/yQh3DYSy+5NbpF9boPAKyyn3LP63IqM=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?eWRzS3ZnZzUzZGxYVEJTcXFjN2FtV3ZJSHB6TmZWYnBjY3A0SWMvSG1qb04y?=
 =?gb2312?B?RmdFNHRXclJ5cjEwWVU5dEIxNDZ5VTBUejRuL3hNRmVxNS9TS0tlVmJFaCt4?=
 =?gb2312?B?R0V1T2J0b0xPM2lqV2ZHeXpINWV3K284TFJ2WC9ZVkZSVjBCUU5TWnlFR2Mv?=
 =?gb2312?B?UWs5SVI5R0ZQZ3g5TTJvdW40SmY0RDBIcndOaWQ0MXhycVZvMVFJWGp4enNU?=
 =?gb2312?B?L1VVaFdjU09KVlpiNlNORm1uTGY1cHNDM1htN1BxaW5QcHNvZVdPL2JBV0pB?=
 =?gb2312?B?VkkvdHBubFZqU3pOeXoyVE5EdjVYTTdWMXlncWE2elhJQ1Nub2NaSXEwSE9q?=
 =?gb2312?B?OUM0MHJJUWw0bm90dWE0amdWRUJ2MmYreG13bkVwMHFUYXI3MUJ1RnFvWXBW?=
 =?gb2312?B?T3JoQUZwVkxxTmV2K3gzYnZsdXR2S0U0cmZyQlh1a2Z5YmZjQjEvTnh2Qmxm?=
 =?gb2312?B?UklIZW14NSs4VXRZVXI0OE56Q05HWmJYYk5VbkRtRVNtOXU1TERIa0h3c0Vp?=
 =?gb2312?B?VUVkR0o4K2lwZTFTZ0Jib3lkaERhcDRTYkpldlo1eTVNb1V0YzZDenI4UjAy?=
 =?gb2312?B?ZWNlU09CMTg2NmdGUnZKQTRwV2xjUENBclRLa0NWdEVKWm9vckMzY1E0cHpk?=
 =?gb2312?B?dWExcUc3MkQxSk1WempwcGw0N05yVlphUW53RGtYWnNuNW1EM3BFMVFGeXBi?=
 =?gb2312?B?eVFtZ25WOVZzbXJaa0w1TGtIMkZXbmxHUTFPVkRkdTgrSDY2cWJCSG9pK25n?=
 =?gb2312?B?RFhLT2o4bEZGOU5LQTVsT3ZKS3hOUjgvMEdVWW5CTTJ5THZ1cjVqR1RZVHZK?=
 =?gb2312?B?STU0Q3duVytRMmlpd3VkekQxeVU0bXNwc2MvKzZUWVlZd2piQnFYdCtMU1Y3?=
 =?gb2312?B?Ky9sV0lMQjc0RndVQnV3ckwzZ3hVWnp0U21BUmtMSXZuMlhOaytoaTFoRFJm?=
 =?gb2312?B?TmdIK2pTK0NjN0UyZlFpTWJob2pZbXY2citFMlJuQjNCc2ZHWUQ1VVpnbndz?=
 =?gb2312?B?dFFTeDJ2bHlRWU53NVkyMnBHeHp3V0JPR3JjSUhRZTJLOFIzSHdTZUcvTGJB?=
 =?gb2312?B?MERLajZOQzFSWE8rN3UrZWxCYmJtUmYwTk5MS2NJQy9UcVI1MzVqMytaSVlH?=
 =?gb2312?B?TWRuUmtEY3RxSEs3aUQ2MDVWNnREWVdoM0dqRzRQQndsZ2poS005UVpJUDlW?=
 =?gb2312?B?Y2pjN0JhcmpiZlV2VkZ6SStOTGQxRmJadkhod1I0YTN2MkxMUWpkMGxEOFhQ?=
 =?gb2312?B?azZWSzU4eTNUSnhHV3ZCZmY2dndQUjMvZHUxd0V5VFZyUzZYdTY0a0VQeHp6?=
 =?gb2312?B?SHlMeEh2VlNYcEJ6em9PT1dHWWszZmp0YU8zTHFzS2FlYS9CSjVuU0RTcTcy?=
 =?gb2312?B?VitqdzI1TVFHSXh1QzFWQXF1dSt4TThKS3N2dTE3UEFrVk9OdDk5UjVVaXNa?=
 =?gb2312?B?bGJwR3RkcmtxR0FUeUtQaGtHd1NETitKKzNoZ1U5KzV4TWV4TFd3NmtycXZu?=
 =?gb2312?B?YUVMUGhXbzc0QmdMU2ljMTFmTFZ6djRzVkxadUJOZ1Rib0pIazBUeVRwYnJ1?=
 =?gb2312?B?UFhqY2d2UlFlMDZmTUpSOFdkMEx5V1NoTkxaL2RLOGZ2SWQra1B5UzNIREU0?=
 =?gb2312?B?SnNVaVFRK1g4UjNuYk9EZnJKZ1c0SnhheVVYaExNeWZsRzlNVHh3WWRraDVN?=
 =?gb2312?B?YUx4RVM3RUgxVkRSV3MxdFB0Zmk2MlZuY1g2Wk1od1J6U05rWWlzL29LVnNy?=
 =?gb2312?B?b2VtRW80YkJ4WkF4cEl2aTk0c3JnczVTSHNRZWxPdVcxZ01MV2U5R2JicFMy?=
 =?gb2312?B?SExMdzA2RmNZcVo0bmY1eVg2NTN4VmZ5bjBZWFF1MjlEQkxOa1BXUndhZFhF?=
 =?gb2312?Q?jVPT8EmPuid0U?=
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA0PR19MB4572.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 99d97f3f-afae-4bfb-70b1-08ded4af8c8f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2026 00:52:37.5211
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR19MB4991
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_175243_830045_C460A272 
X-CRM114-Status: UNSURE (   9.86  )
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

From: Chris Xin <chrisxinchao@outlook.com>
Date: Sun, 28 Jun 2026 00:00:00 +0800
Subject: [PATCH] arm64: dts: rockchip: add Firefly AIO-3588L board

Add device tree for the Firefly AIO-3588L board based on the Rockchip
RK3588 SoC. The board features:
- Dual HDMI output via DesignWare HDMI QP
- RTL8852BE WiFi on PCIe (rtw89 driver)
- RTL8211F Ethernet
- Single RK806 PMIC
- LPDDR4 RAM, eMMC storage, USB 3.0

The board DTS includes the common firefly-core-3588j.dtsi which provides
PMIC, eMMC, and other shared configurations for Firefly RK3588 boards.

Signed-off-by: Chris Xin <chrisxinchao@outlook.com>
---
 arch/arm64/boot/dts/rockchip/Makefile                      |   1 +
 .../boot/dts/rockchip/rk3588-firefly-aio-3588l.dts         | 718 +++++++++++++++
 .../boot/dts/rockchip/rk3588-firefly-core-3588j.dtsi       | 453 +++++++++
 3 files changed, 1172 insertions(+)

--- a/arch/arm64/boot/dts/rockchip/Makefile	2026-06-28 08:08:00.071682235 +0800
+++ --- a/arch/arm64/boot/dts/rockchip/Makefile	2026-06-28 08:08:11.319090249 +0800
@@ -182,6 +182,7 @@
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-coolpi-cm5-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-coolpi-cm5-genbook.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-firefly-aio-3588l.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6b-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-firefly-aio-3588l.dts b/arch/arm64/boot/dts/rockchip/rk3588-firefly-aio-3588l.dts
new file mode 100644
index 000000000000..000000000000
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-firefly-aio-3588l.dts
@@ -0,0 +1,718 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include <dt-bindings/usb/pd.h>
+#include "rk3588-firefly-core-3588j.dtsi"
+
+/ {
+	model = "Firefly AIO-3588L Board";
+	compatible = "firefly,aio-3588l", "rockchip,rk3588";
+
+	aliases {
+		ethernet0 = &gmac0;
+		mmc1 = &sdmmc;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+		bootargs = "earlycon console=ttyS2,1500000n8 root=/dev/mmcblk0p6 rootfstype=ext4 rootwait rw loglevel=3 video=HDMI-A-1:1920x1080@60 video=HDMI-A-2:1920x1080@60 fbcon=map:0";
+	};
+
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-recovery {
+			label = "Recovery";
+			linux,code = <KEY_F12>;
+			press-threshold-microvolt = <17000>;
+		};
+	};
+
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		#cooling-cells = <2>;
+		pwms = <&pwm15 0 50000 0>;
+		cooling-levels = <0 50 100 150 200 255>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&led_pins>;
+
+		led-0 {
+			gpios = <&gpio3 RK_PB2 GPIO_ACTIVE_HIGH>;
+			label = ":power";
+			default-state = "on";
+		};
+
+		led-1 {
+			gpios = <&gpio2 RK_PC3 GPIO_ACTIVE_HIGH>;
+			label = ":user";
+			default-state = "off";
+		};
+	};
+
+	/* ---- fixed regulators ---- */
+
+	vcc12v_dcin: regulator-vcc12v-dcin {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc5v0_sys: regulator-vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc5v0_usbdcin: regulator-vcc5v0-usbdcin {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usbdcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc5v0_usb: regulator-vcc5v0-usb {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_usbdcin>;
+	};
+
+	vcc_1v1_nldo_s3: regulator-vcc-1v1-nldo-s3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v1_nldo_s3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1100000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc3v3_sys: regulator-vcc3v3-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc_ext_12v_pwr: regulator-vcc-ext-12v-pwr {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_ext_12v_pwr";
+		regulator-boot-on;
+		regulator-always-on;
+		enable-active-high;
+		gpio = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
+	};
+
+	vcc3v3_sd: regulator-vcc3v3-sd {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sd";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc3v3_sd_en>;
+	};
+
+	vbus5v0_typec0: regulator-vbus5v0-typec0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vbus5v0_typec0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vbus5v0_typec0_en>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc5v0_usb30_host: regulator-vcc5v0-usb30-host {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb30_host";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc3v3_pcie20_1l0: regulator-vcc3v3-pcie20-1l0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie20_1l0";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&gpio0 RK_PB2 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	vcc3v3_sata0: regulator-vcc3v3-sata0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sata0";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc5v0_usb20_host: regulator-vcc5v0-usb20-host {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb20_host";
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb20_host_en>;
+		vin-supply = <&vcc5v0_usb>;
+	};
+
+	vcc5v0_usb20_host1: regulator-vcc5v0-usb20-host1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb20_host1";
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio3 RK_PA6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb20_host1_en>;
+		vin-supply = <&vcc5v0_usb>;
+	};
+
+	/* ---- HDMI connectors ---- */
+
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
+	hdmi1-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi1_con_in: endpoint {
+				remote-endpoint = <&hdmi1_out_con>;
+			};
+		};
+	};
+};
+
+/* ---- Ethernet ---- */
+
+&gmac0 {
+	status = "okay";
+	phy-mode = "rgmii-rxid";
+	clock_in_out = "output";
+	snps,reset-gpio = <&gpio3 RK_PC7 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 20000 100000>;
+	tx_delay = <0x39>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim
+		     &gmac0_tx_bus2
+		     &gmac0_rx_bus2
+		     &gmac0_rgmii_clk
+		     &gmac0_rgmii_bus>;
+	phy-handle = <&rgmii_phy0>;
+};
+
+&mdio0 {
+	rgmii_phy0: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x1>;
+	};
+};
+
+/* ---- HDMI display ---- */
+
+&hdmi0 {
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdmi1 {
+	status = "okay";
+};
+
+&hdmi1_in {
+	hdmi1_in_vp1: endpoint {
+		remote-endpoint = <&vp1_out_hdmi1>;
+	};
+};
+
+&hdmi1_out {
+	hdmi1_out_con: endpoint {
+		remote-endpoint = <&hdmi1_con_in>;
+	};
+};
+
+&hdptxphy0 {
+	status = "okay";
+};
+
+&hdptxphy1 {
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
+
+&vp1 {
+	vp1_out_hdmi1: endpoint@ROCKCHIP_VOP2_EP_HDMI1 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI1>;
+		remote-endpoint = <&hdmi1_in_vp1>;
+	};
+};
+
+/* DP disabled */
+/*
+&vp2 {
+	vp2_out_dp0: endpoint@ROCKCHIP_VOP2_EP_DP0 {
+		reg = <ROCKCHIP_VOP2_EP_DP0>;
+		remote-endpoint = <&dp0_in_vp2>;
+	};
+};
+*/
+
+/* ---- DP (via Type-C) ---- */
+
+/* DP disabled - causes DRM crash on 7.0 */
+/*
+&dp0 {
+	status = "okay";
+};
+
+&dp0_in {
+	dp0_in_vp2: endpoint {
+		remote-endpoint = <&vp2_out_dp0>;
+	};
+};
+*/
+
+/* ---- SD card ---- */
+
+&sdmmc {
+	status = "okay";
+	max-frequency = <150000000>;
+	no-sdio;
+	no-mmc;
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	sd-uhs-sdr104;
+	vqmmc-supply = <&vccio_sd_s0>;
+};
+
+/* ---- PCIe WiFi ---- */
+
+&combphy1_ps {
+	status = "okay";
+};
+
+&pcie2x1l0 {
+	status = "okay";
+	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie20_1l0>;
+};
+
+/* ---- SATA (M.2) ---- */
+
+&combphy0_ps {
+	status = "okay";
+};
+
+&sata0 {
+	status = "okay";
+	target-supply = <&vcc3v3_sata0>;
+};
+
+/* ---- USB ---- */
+
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	status = "okay";
+};
+
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	status = "okay";
+	phy-supply = <&vcc5v0_usb30_host>;
+};
+
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	status = "okay";
+	phy-supply = <&vcc5v0_usb20_host>;
+};
+
+&u2phy3 {
+	status = "okay";
+};
+
+&u2phy3_host {
+	status = "okay";
+	phy-supply = <&vcc5v0_usb20_host1>;
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	dr_mode = "otg";
+	usb-role-switch;
+	status = "okay";
+
+	port {
+		dwc3_0_role_switch: endpoint {
+			remote-endpoint = <&usbc0_role_sw>;
+		};
+	};
+};
+
+&usb_host1_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usb_host2_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&combphy2_psu {
+	status = "okay";
+};
+
+&usbdp_phy0 {
+	orientation-switch;
+	sbu1-dc-gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		usbdp_phy0_orientation_switch: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&usbc0_orien_sw>;
+		};
+
+		usbdp_phy0_dp_altmode_mux: endpoint@1 {
+			reg = <1>;
+			remote-endpoint = <&dp_altmode_mux>;
+		};
+	};
+};
+
+&usbdp_phy1 {
+	status = "okay";
+};
+
+/* ---- Type-C FUSB302 + RTC on I2C6 ---- */
+
+&i2c6 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c6m0_xfer>;
+
+	usbc0: usb-typec@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usbc0_int>;
+		vbus-supply = <&vbus5v0_typec0>;
+		status = "okay";
+
+		usb_con: connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			data-role = "dual";
+			power-role = "dual";
+			try-power-role = "sink";
+			op-sink-microwatt = <1000000>;
+			sink-pdos =
+				<PDO_FIXED(5000, 1000, PDO_FIXED_USB_COMM)>;
+			source-pdos =
+				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
+
+			altmodes {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				altmode@0 {
+					reg = <0>;
+					svid = <0xff01>;
+					vdo = <0xffffffff>;
+				};
+			};
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					usbc0_orien_sw: endpoint {
+						remote-endpoint = <&usbdp_phy0_orientation_switch>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					usbc0_role_sw: endpoint {
+						remote-endpoint = <&dwc3_0_role_switch>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+					dp_altmode_mux: endpoint {
+						remote-endpoint = <&usbdp_phy0_dp_altmode_mux>;
+					};
+				};
+			};
+		};
+	};
+
+	hym8563: rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "hym8563";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+		wakeup-source;
+	};
+};
+
+/* ---- Audio (ES8388) ---- */
+
+&i2c3 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c3m0_xfer>;
+
+	es8388: audio-codec@11 {
+		compatible = "everest,es8388", "everest,es8323";
+		reg = <0x11>;
+		clocks = <&cru I2S0_8CH_MCLKOUT>;
+		clock-names = "mclk";
+		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
+		assigned-clock-rates = <12288000>;
+		#sound-dai-cells = <0>;
+	};
+};
+
+&i2s0_8ch {
+	status = "okay";
+	pinctrl-0 = <&i2s0_lrck
+		     &i2s0_sclk
+		     &i2s0_sdi0
+		     &i2s0_sdo0>;
+};
+
+/* ---- UARTs ---- */
+
+&uart3 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart3m1_xfer>;
+};
+
+&uart6 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart6m1_xfer &uart6m1_ctsn &uart6m1_rtsn>;
+};
+
+&uart7 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart7m1_xfer>;
+};
+
+&uart8 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart8m1_xfer>;
+};
+
+/* ---- SPI1 ---- */
+
+&spi1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi1m2_cs0 &spi1m2_pins>;
+	num-cs = <1>;
+	max-freq = <50000000>;
+
+	spidev: spi@0 {
+		compatible = "rohm,dh2228fv";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+	};
+};
+
+/* ---- PWM, ADC, Thermal ---- */
+
+&pwm15 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm15m2_pins>;
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8_s0>;
+	status = "okay";
+};
+
+&tsadc {
+	status = "okay";
+};
+
+/* ---- Pinmux ---- */
+
+&pinctrl {
+	leds {
+		led_pins: led-pins {
+			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>,
+					<2 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sd-card {
+		vcc3v3_sd_en: vcc3v3-sd-en {
+			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	typec0 {
+		vbus5v0_typec0_en: vbus5v0-typec0-en {
+			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		usbc0_int: usbc0-int {
+			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	usb20-host0 {
+		vcc5v0_usb20_host_en: vcc5v0-usb20-host-en {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb20-host1 {
+		vcc5v0_usb20_host1_en: vcc5v0-usb20-host1-en {
+			rockchip,pins = <3 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	pmic {
+		pmic_pins: pmic-pins {
+			rockchip,pins = <0 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-firefly-core-3588j.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-firefly-core-3588j.dtsi
new file mode 100644
index 000000000000..000000000000
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-firefly-core-3588j.dtsi
@@ -0,0 +1,453 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+#include "rk3588.dtsi"
+
+/ {
+	compatible = "firefly,core-3588j", "rockchip,rk3588";
+
+	aliases {
+		mmc0 = &sdhci;
+	};
+};
+
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b2 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+};
+
+&cpu_b3 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+};
+
+&cpu_l0 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l1 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l2 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l3 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0m2_xfer>;
+	status = "okay";
+
+	vdd_cpu_big0_s0: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-name = "vdd_cpu_big0_s0";
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vdd_cpu_big1_s0: regulator@43 {
+		compatible = "rockchip,rk8603", "rockchip,rk8602";
+		reg = <0x43>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu_big1_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c1m2_xfer>;
+	status = "okay";
+
+	vdd_npu_s0: vdd_npu_mem_s0: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <950000>;
+		regulator-name = "vdd_npu_s0";
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	sram-supply = <&vdd_gpu_mem_s0>;
+	status = "okay";
+};
+
+&pd_gpu {
+	domain-supply = <&vdd_gpu_s0>;
+};
+
+&sdhci {
+	bus-width = <8>;
+	no-sdio;
+	no-sd;
+	non-removable;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	status = "okay";
+};
+
+&spi2 {
+	assigned-clocks = <&cru CLK_SPI2>;
+	assigned-clock-rates = <200000000>;
+	num-cs = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
+	status = "okay";
+
+	pmic@0 {
+		compatible = "rockchip,rk806";
+		reg = <0x0>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
+			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
+		spi-max-frequency = <1000000>;
+		system-power-controller;
+
+		vcc1-supply = <&vcc5v0_sys>;
+		vcc2-supply = <&vcc5v0_sys>;
+		vcc3-supply = <&vcc5v0_sys>;
+		vcc4-supply = <&vcc5v0_sys>;
+		vcc5-supply = <&vcc5v0_sys>;
+		vcc6-supply = <&vcc5v0_sys>;
+		vcc7-supply = <&vcc5v0_sys>;
+		vcc8-supply = <&vcc5v0_sys>;
+		vcc9-supply = <&vcc5v0_sys>;
+		vcc10-supply = <&vcc5v0_sys>;
+		vcc11-supply = <&vcc_2v0_pldo_s3>;
+		vcc12-supply = <&vcc5v0_sys>;
+		vcc13-supply = <&vcc_1v1_nldo_s3>;
+		vcc14-supply = <&vcc_1v1_nldo_s3>;
+		vcca-supply = <&vcc5v0_sys>;
+
+		rk806_dvs1_null: dvs1-null-pins {
+			pins = "gpio_pwrctrl1";
+			function = "pin_fun0";
+		};
+
+		rk806_dvs2_null: dvs2-null-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun0";
+		};
+
+		rk806_dvs3_null: dvs3-null-pins {
+			pins = "gpio_pwrctrl3";
+			function = "pin_fun0";
+		};
+
+		regulators {
+			vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+				regulator-name = "vdd_gpu_s0";
+				regulator-enable-ramp-delay = <400>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_cpu_lit_s0: vdd_cpu_lit_mem_s0: dcdc-reg2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+				regulator-name = "vdd_cpu_lit_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_log_s0: dcdc-reg3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <675000>;
+				regulator-max-microvolt = <750000>;
+				regulator-ramp-delay = <12500>;
+				regulator-name = "vdd_log_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <750000>;
+				};
+			};
+
+			vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+				regulator-name = "vdd_vdenc_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_ddr_s0: dcdc-reg5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <675000>;
+				regulator-max-microvolt = <900000>;
+				regulator-ramp-delay = <12500>;
+				regulator-name = "vdd_ddr_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <850000>;
+				};
+			};
+
+			vdd2_ddr_s3: dcdc-reg6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vdd2_ddr_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_2v0_pldo_s3: dcdc-reg7 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <2000000>;
+				regulator-max-microvolt = <2000000>;
+				regulator-name = "vdd_2v0_pldo_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <2000000>;
+				};
+			};
+
+			vcc_3v3_s3: dcdc-reg8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc_3v3_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vddq_ddr_s0: dcdc-reg9 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vddq_ddr_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8_s3: dcdc-reg10 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_1v8_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			avcc_1v8_s0: pldo-reg1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "avcc_1v8_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8_s0: pldo-reg2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc_1v8_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			avdd_1v2_s0: pldo-reg3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-name = "avdd_1v2_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			avcc_3v3_s0: pldo-reg4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "avcc_3v3_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd_s0: pldo-reg5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vccio_sd_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			pldo6_s3: pldo-reg6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "pldo6_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd_0v75_s3: nldo-reg1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+				regulator-name = "vdd_0v75_s3";
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
+				};
+			};
+
+			avdd_ddr_pll_s0: nldo-reg2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-name = "avdd_ddr_pll_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <850000>;
+				};
+			};
+
+			avdd_0v75_s0: nldo-reg3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+				regulator-name = "avdd_0v75_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			avdd_0v85_s0: nldo-reg4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+				regulator-name = "avdd_0v85_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_0v75_s0: nldo-reg5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+				regulator-name = "vdd_0v75_s0";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+/* rk3588 preferred debug out */
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
---
2.34.1
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
