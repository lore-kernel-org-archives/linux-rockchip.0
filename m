Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D2D3C46CD8
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 10:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SyjkZig7kVsB45qwlY9j9MD26zLRVaSnhv5Y6puxDo8=; b=ipmnNzUcFecbXw
	bsXpDOFiqZE7NrN3FQSam3w7HYewcczuWEjzBahv7N3+0V2NPtSzkP4xE2A9ppQcSWpqX2M3rVmiu
	MfR32eqMsHDnUhLg4a2MlnC5LuccVgMfKZKKm/7JOwWf28et1DRZZr+8IppcMs3ErmWjeHCYKFVwi
	mrrdwEaDt4DizmcyOHmHyDESF55k+2zjSrwAe5zYCtvdpbzVy+MhqvoNYLn9nIU06iVjAE4ac7D4M
	5r74u1GDc5qie5WOK+pAl9dvLzMqiaAZeu7VwN9IvqIfe2cfb4gcZuN1hwFahYCRKaf9/ULotF8DB
	zPQE/4D+AJz0xn0231qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGGao-002USN-2R;
	Thu, 21 Dec 2023 10:47:54 +0000
Received: from mail-tycjpn01olkn20801.outbound.protection.outlook.com ([2a01:111:f403:2814::801] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGGam-002UOg-0X
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Dec 2023 10:47:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nwT/R2FV6vUF4qdNyLOkH6f+PseI2W5LPln+i0XYLLzxZ+9IxEk6HAk/c+ejnmrHUZTj+don94OVFMwgQIwgaKVoCUdm0WGop26zBbN4FZW+S3kaNBuUazKKCMRoOecrhCGSp0gHTZ9s0aJQVagMy6lu2yIfBhWRkMn6QVgxapFKk40dVgzJyaPlg9oshUFjSEfG1c8PRQ3/+B7h4mVyil56/5KsUkoRhHIjJWuL+/SU/+/jy0DlbipUnfiNNZQp/MyPUEpIMXH/Gt+voTxz/FxngIO5OC0O9lXA9DcNPq3rHwY2LQlznMO1L014xa1D8/bfGk8TQ2MdMv0MY1WnGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XPvsQoGuNgS3q8a0QTBA9KTd6V5BFov99fsl+Leoahw=;
 b=JleSkNsntBk/S/b4t0d4C+2Zgc5BWCtejzmyDXpa7pG8tqrBYrfQe+jzdfepGt9FH0TPxd9QoXcl/59zS/4l27wi1BtlDNzRuDqF081RQKpPefij1heUHpyNkFy8zLwS/nM9GY6hlJ/DeFk7cJZIeJnzI0vPLYY81+9tYsulIwxi+JlHjBvbOQsgPFGAsN3t9nNGEgPuHAFiZYcOnYBuBrP5D5ueSO+BD+OS1Ul4B6VERfCR9afksRXWOi4VrubEh65HsE2KuHklxou1xkEtWbnxfatKYWvuvJzesCn3UJN3HkEluhPp+rMVJzt6NNw9GopjFe4bHGD8yZTHHPowHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XPvsQoGuNgS3q8a0QTBA9KTd6V5BFov99fsl+Leoahw=;
 b=X1pCkslaRImLA6PlKspE2XSKd1jKjil9lNprNKryAoB0v9TMqH3GkegZGBYx0fP/MymcDmdIt9DjfpQfHFhH+KhmCqkSFdlqMvN0JEJGFkT/9by590q+MxSWQn4Wp5wvw3xHq+w9gYinxhTgKgNt+pZXNSOZnuvfuPe5xG2dFRuaHVWonkxkzM2NrowKmoISdy9pAxo7mOU6lYEsPQxbtBXDznE0E++e8t1Zzn00ZaA4KLQPhIzfoa60vLD0mc0geEFUpDSVUdxy0N7c0elY7ttkGC5eQD0zHAFJSSrgPoZBUWDaQdTD76N9qWPmp4qx0pqz0hJUYazHbFmoE0SHXw==
Received: from OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:cb::10)
 by TY3P286MB3492.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:3b4::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.20; Thu, 21 Dec
 2023 10:47:36 +0000
Received: from OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM
 ([fe80::3bc:35ff:e1d9:212f]) by OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM
 ([fe80::3bc:35ff:e1d9:212f%7]) with mapi id 15.20.7113.019; Thu, 21 Dec 2023
 10:47:36 +0000
Date: Thu, 21 Dec 2023 18:47:31 +0800
From: Zhang Ning <zhangn1985@outlook.com>
To: linux-rockchip@lists.infradead.org
Subject: [Issue] rk3566-lubancat-1.dts mismatched GPIO config for leds
Message-ID: <OS0P286MB06412D049D8BF7B063D41350CD95A@OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM>
Content-Disposition: inline
X-TMN: [EG6rVo2DpsvHt3wdyoaMSBiMQpE7i/zkjLfrIHspaddU/BCaOS19uY6t9+vMzq6j]
X-ClientProxiedBy: SG2P153CA0020.APCP153.PROD.OUTLOOK.COM (2603:1096:4:c7::7)
 To OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:cb::10)
X-Microsoft-Original-Message-ID: <ZYQXwxg6bd5g-XW4@orangepipc>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS0P286MB0641:EE_|TY3P286MB3492:EE_
X-MS-Office365-Filtering-Correlation-Id: 92e3775f-3171-4dcd-0797-08dc02123e8f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CluC05YIeQju0CFNFhKiAVsYZ01Pd+nRp1kxvttC0A5jOynWHpqlZRGjThBAOZT10OrJIf7meO9ELIuZE+hs4hIdyqSLzJXGWIlTTO52f2oLovwaUfYsWE8WO3HspNwLZ6T2tU38qmyMvG4AyD9dUZ9zF3Q6lqbMvHPO2WexZpBL9g0CebbVZeiLSVgVX1UABEObP5mNRR+EUUEpQDekgdpBj8vyntLUoEtgN1w9sooc/2LBuL/IOFVaOAcQJ9qdF/7VHfzxtO1YsNbVVddg+wziwRPf7WrTzQ1MwMYFnd89oLoWOHvsGVoMugJxPt5N8qeOjJJ+eWDVPHDvDakVGTIRHZXeTYAPrxDswDOYYjuY9ITTgx3I36Dy9SsfHzCi2NgzOMa4ZNsBS3G5+KLz6fUaHkDYcPNqKUg0E3sC8zWDeHFPnvIZESwAawjPJehr5ZZ8UOZZQBB1ia5R+nlH14DsyVg9mKRVFmUR31mR3D1sNjU6b4gBbRsY0Splh07Rs9NIQf8QI1+aLyMPfbqHn41c8e9oRu+bON2EYNvY8t01AZoR85d4/SqaB2q63FaF
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UGwrZ05PaFgyOHoxeDR0K1FLdTVVYWdiTGIzNTB3b09BWG9IemRMZlhZUWRK?=
 =?utf-8?B?V2tldEY1TjN3MGRPU3d6K0g4dGlqRW9jQ2FIU2dCMUY2S2ZORGduMnArTmps?=
 =?utf-8?B?NHpOWU54WTlyck9xSlJPSHdOK2xuUjl4ZlJ6K3dBazZKcW52NVRCTVorUEpK?=
 =?utf-8?B?eWpwT1JVc3dwd2M5RVk3R1VyZ0ZzMFZ3QlIyQkFNajZmVDdQVTNyak5md2FT?=
 =?utf-8?B?czNWWHJSWE9jMjZYWWdRamNBZWtQNklIdk4yek9KOW5LM2VuaDllcFlOelh6?=
 =?utf-8?B?SDJsMGhvWXF6czFYZUV4b2xUR3pZVGkxTzRobVoyRThEQnUvNWZKUVUrYjBi?=
 =?utf-8?B?enlqNHZxSzFQb1ZUU3ZrRXhTUERuNGdXQTZzZVR0a21xUEovV1pWY1krdjI4?=
 =?utf-8?B?d1NIZXhkaHlpK1NZeko1YjBFY1NLaVE1MmxaR3h4T2JZYkJFbGVmbGJ0UlJU?=
 =?utf-8?B?S0c4d2I2VXR1QTNOQ0hCTC9heVRUajFyMWcxWUFDdXdPaUxqa0h0UTlYWSta?=
 =?utf-8?B?VWd2MTJkZlppazZpV0NnSzIvYmJGcjRzd0tlek9mYVhPbmJoZUZ5b2VNNVNK?=
 =?utf-8?B?d0VUVGFtKytUdFhYTThMVDNnbzFzbExkSnZRTkRJQXpVQzRORFNscWMyTUxH?=
 =?utf-8?B?NHNoN01xdlpWMkZqWEczTHJXWE04YWY3WWNkakYwdzJ1UDNqNzhiNXdkRmUr?=
 =?utf-8?B?MlVlS3FReWZ1QTl2aXJwMk1VQ3J3bmx5Z040bHM2d3R0YzdmNm5mRERuQi8r?=
 =?utf-8?B?c1JhOTZpbkMyUmhxRkN1TGhsYjdOc2h3NmdxS1J0a0VvYnNvbDk4Mk10ZjZ0?=
 =?utf-8?B?T0FGU1M1dXlXdHVuV3lDVEx1Uk1Wa1NEVTVPZVNMbjF4SFlzWnpMYklEd3FT?=
 =?utf-8?B?S0JuMTRvVXJjeUVqeENpQksrQkVDd1c3Q1ozeTk1NEFrZTZwY3J6NXpDSUJv?=
 =?utf-8?B?VlBpSytRcGpOVUxydjc5U09ScDlFeUdXdmFpWEU0bmh3RDB1SjIyV2Ficlhn?=
 =?utf-8?B?L3pZMEY2TDMvWUhJMzVCTkVjOVVGWEU4VzEwbEJlNlVKMU44WVg3a1N5emZF?=
 =?utf-8?B?SUsxcnhoRkJPN0FqemoyRDkzZkVVL0RPblh6YVdLNU5GaVQrWktEeHlORXV3?=
 =?utf-8?B?a2RKSitReEswaVNiRkRWZjBrWWtDUjlWUzBjS2ZYMGp2MHcwT0kycEVNbmlM?=
 =?utf-8?B?M3BuNWdvRlMxUlpnWFIzUFZRczFGYlRLMGc5cEt1elp2NUkxemxSQ1NpN1ZG?=
 =?utf-8?B?SnQ2VTBXSWV4NWVqWVRPeEwxQzNWcTVaMVV5NmhDV0xsY3cyUDZIRUhzWHJ4?=
 =?utf-8?B?VlZzeW5ZU2o2VjZPMmM2QkVUcDdmbTdWTHJqaDlaaXR2d3VoKzVydDJXMkZq?=
 =?utf-8?B?dmJmT0RxT2RFQVpPd3o5VzNscHlvVUxUakp3RVhPeTFXbWVveDFzQjR5eXM1?=
 =?utf-8?B?T1hrcDFsa1A1Sm51cGp6QlFaaU9iWGJ2VWtkTzFCWTFZZEhLdzNvVUFEQWdU?=
 =?utf-8?B?M2JSaVQwbkFZS2Mxanh1Zms3Vld3MUlJQkMxWmVzbU55YmtVQXZzenNJRm5F?=
 =?utf-8?B?RlhhZTh5SUhCK3RHS0ZWZGVONitkR0Y2ZzJuRXlUeXZoTDlpVDhTWG0zVTcx?=
 =?utf-8?B?Y2xJZ1J1YktIUG5jN3VFSVBISGdXNG53enRZeG40ZE5tdlhjRFEvUkpmdVY3?=
 =?utf-8?B?bEMxZVZ2QXJXUGJVV24wU1RIek9xOVRQSkxxRFJtWGtzVXFXZE5qYzN2ZzNl?=
 =?utf-8?Q?32K/1CihBNfdzoCVtE=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92e3775f-3171-4dcd-0797-08dc02123e8f
X-MS-Exchange-CrossTenant-AuthSource: OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2023 10:47:36.5288
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY3P286MB3492
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_024752_241167_3EAD796E 
X-CRM114-Status: UNSURE (   2.70  )
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

Hi, Developers

I found mismatched gpio config for rk3566-lubancat-1.dts leds

	gpio-leds {
		compatible = "gpio-leds";

		sys_led: sys-led {
			label = "sys_led";
			linux,default-trigger = "heartbeat";
			default-state = "on";
			gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_LOW>;
			pinctrl-names = "default";
			pinctrl-0 = <&sys_led_pin>;
		};
	};


        leds {
                sys_led_pin: sys-status-led-pin {
                        rockchip,pins = <0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
                };
        };

I don't have schematic for this device, thus don't know how to fix it.

BR.
Ning

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
