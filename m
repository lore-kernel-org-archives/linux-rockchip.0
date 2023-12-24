Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06539C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 09:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LaagBggkmd+xvImrS69TFvdNAsPXdXp//77LGuhp7So=; b=tdiW1LP5DKKsnp
	9VnvNIMGlcwDuJJeBUTsDFPDXChCt5Py49dtiYRQtKqHnAoorEDFQoBnkDFjvjZ9nTK3KnGqL3juV
	2bfxZVpfKuy58RAiIjdr77do8AUWGVEOH8ZTNDUHWD1F0nPICwjrDmp4SyX+uncBZsw6KMhpaeYE6
	MOZnOBMeq58EnXS1jqFAmyGwsG2LMvONod0kL0spabMrax1Ezy2neAHr3aqYc5Z8H2rR3rq4D6XVz
	BvyYziF+7BVBP1a5W/3leR0kcvdcqc1DQUWOHo1YHEY6xjKaxFddB2e6omxUbtW9xpsXtzdEdlZyQ
	1/FugVTeYBP2yz8rzAVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHKO2-0094ya-1S;
	Sun, 24 Dec 2023 09:03:06 +0000
Received: from mail-tycjpn01olkn20800.outbound.protection.outlook.com ([2a01:111:f403:2814::800] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHKNz-0094xQ-12
	for linux-rockchip@lists.infradead.org;
	Sun, 24 Dec 2023 09:03:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PqSCnRxkBZLblaHv/Rnom/pdyItD7E6dFlxIgjXynzDHdOdNODKLYyPP5xy/LTYLActF9qRaSrlWtMPli8DzwUj/3FV1zkZYlJonrWSFK+/uwTt9RmwXrAy4io9i8CSCOsGhSyKoccTzmglaW92Ouwok5fl1f3FMuSnV0UXxhSuKYRkVfHsE4tevgCmKgjywiuBc5f+vc1TT9++nS5n+XcIpAxdeB5H5TxTedP2ocvnxLF4c6jJbLHhtrjkg3nomttawNKJjOo2IcxJuH8/qt8vFQs3/vP3tyw7HwbEmCtkNQRr/bbVE85Z9eopiqTGkDnkonq4p8CZw4lnd7a3KLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lyhfteDBNUMz691G6zAvCFP4lArhQyPlaJLNK6cp6+s=;
 b=AEZ2Uwou7YTA7lHyoKENXKz7qw/btm7gbj6vog8XnrBEhvYUijMdhS/wuQm0AMyYltA4uN7YEZkyTNxFgfModqZdzBMkPBIIJjUA961ZlKP/sJKmRx7RYSu3tJSVT4dmWQSwpMZ4tJgaudMD2kVgZCRN/RvORV8zOknHbADba2CjIV359F1OI5XwePRu1stujtj5GnKArM4L/1uiCwsUkQPbYrtJf3dCWSdDkFGhHnQf1poQk+Dj8GQX6zm5QpwAvi44LF/ufrgxj9Ron9QCd4FF0XjoyrPxg6BWX+f4KXEWr2DG5aSlg6IRpllLe9Q+DJ5Kx9YRna8OybV1rM510g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lyhfteDBNUMz691G6zAvCFP4lArhQyPlaJLNK6cp6+s=;
 b=Dk7hR1WU2HN6C8j5OYGrmXTVvzkTToGdiAykUbgBokHiXL57NHj2L17/zxbDp92g2qmciC4ixApH2HFVkQY5QYEhRVqgQvtks8j6/r0/x6WkwzgZZoIn/j0HGEVu8jMP/Mw78wO2qIIfvvwb89s4Wu7hAlZnCgWa+8d4tK3rSccrVt0+QU5v8TSNTCnadAXXC61xvoYfbkVt5Q029ZbrHgckBwr62V2Gos4GkEO20W7zRhWjIvIFaWhosPnBePG4MKjPB2DsZLX2nHhmibIX1NJHbVPqcbhc2am5rnt2ivEy3UGwi+xe3YRFHpctiYH0VLd8Y97EOYPncur74XacYg==
Received: from OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:cb::10)
 by OS3P286MB1494.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:17b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.24; Sun, 24 Dec
 2023 09:02:44 +0000
Received: from OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM
 ([fe80::3bc:35ff:e1d9:212f]) by OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM
 ([fe80::3bc:35ff:e1d9:212f%7]) with mapi id 15.20.7113.023; Sun, 24 Dec 2023
 09:02:44 +0000
Date: Sun, 24 Dec 2023 17:02:38 +0800
From: Zhang Ning <zhangn1985@outlook.com>
To: linux-rockchip@lists.infradead.org
Subject: Issue and question: anther pin config issue
Message-ID: <OS0P286MB06419C18DF7CA73B2E33A907CD9AA@OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM>
Content-Disposition: inline
X-TMN: [8myxmkJj+e+APUHoVBEj4kAqSLwdbpYKiE68Y7spc900kJFQ2opOk7RBKadIwe2W]
X-ClientProxiedBy: SI2PR02CA0004.apcprd02.prod.outlook.com
 (2603:1096:4:194::14) To OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:604:cb::10)
X-Microsoft-Original-Message-ID: <ZYfzrrcUbzbXwDTd@orangepipc>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS0P286MB0641:EE_|OS3P286MB1494:EE_
X-MS-Office365-Filtering-Correlation-Id: 895b3b76-e2f4-4839-cc98-08dc045f16e0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZUK+ADrLYg6qB8vy314b5qaU1G0+pJyLFAylgfO/kR0FSP9XW0m8C6HkgBR7tNZvyMBamA/g1fJxhUQwljgdgf7natRb7X9wXuG9IdlE6KNaKhwlM135thIZNCo5zSt0AkiK7PyHKPyUgR+XHQp6h4SZs81GqRyLsa9MIOopt5L1hTKM3/2xxxSpP9UdjfhujplVf5rFvJ8neVoVrBtHTAn/4oOB5YPJbM/MgLSFq59UtaEzLoaqjhngU86APAWXEZnGl3QI3poJu7nYBa32ckfIE1lZxp4zDky0IyqZHBGQMhmQC15/RrtkEnvYl0OjDxaitdLKtAZmXIVPlXic4JObulWVNZDqvgaOOJdIGHpnFff7qCBcJ0EZNJzW4F2LbIl3n4xxcrH0JnqooO65JMuqnlK/bYAVkGSsm/UMXaqz6kIoTIpncy08G0xH3a/Xa50WWEcACAlGYxtoRdeC8KnYmF437J/3tc+P/r5mYoadd8HJWJRbSKH2sj91ddgv8bu6r+BrY9RLAPhce5qHcX34kMWhEjevPAVcHy2P16T5AMudfxgM65priM3wDhAQuXUdfnXUrdGmXo2S/6AIYyKIq/ccSEOxTHV4FdymKBM=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUdiYUcyS3NCaG5tMm5PRHRjdGFMajFkQ3JSaWs5cm5pU0xUaEZVWUNDaTh1?=
 =?utf-8?B?Wkc4SEt4eEdvTlZLUW5xZzBETVR1cFh4Wlc5N3Q5VkhNU1c3QWY2QjQ0QmVt?=
 =?utf-8?B?UGJIdzFGNUFraGtQL1duM1BLRWVBQ3YzOFpDeEduQkV5THhsK2JlZms1ZHVL?=
 =?utf-8?B?TDVqbUZ5eTZNcXRXVk8wczREVnFDanBTOXdMMkRMa21jeUw1U2tzM296Sk93?=
 =?utf-8?B?ZTBNL0ovN2lZRjF0ZFJ3ZFY4ZmNRQ0thWVZJMzFKdjBkcTBpRzV1WXY4SEl2?=
 =?utf-8?B?MnpoRzRJRDQ2VUdTZzgyZ2pFRHFXdk95a3VIczl5SDU5Qm5Kb2hGWC9EZEYr?=
 =?utf-8?B?WFpPWW45QnhpL3VzSXRhLytuTmQ2MEsvTzFkUU1seFp5YVA5MDl3cEp6TzQ2?=
 =?utf-8?B?TERsM2s1TU93ZXJIbXdQaEozK2h3Y2lpbHhJdmd5YzhRYXdhTVMvd29MQjRh?=
 =?utf-8?B?Z05rWXdkRkg2OEg2RDI3TVlqWEc0dlhJb1BtZG9UMzI2K3ZJNjdCeDRyRFlH?=
 =?utf-8?B?bWJZaUMxVm5za1R4ZXpxdmtQRnN1Y2t0Z0E0M1NOY2VxYzhtVW9lMU5ZWXU5?=
 =?utf-8?B?aXVUckpoV0MzTWJuWCtMMGc3ajJKYyttbDZrWXJlYnFwUy9EZlB6cTI0QnAz?=
 =?utf-8?B?TDNuSmRiZXlIakFGa2drRUoxODhNbzI5bDhCai9GMEoyVGh4cDBvNmFPWUZ6?=
 =?utf-8?B?YW5IVGxkeC9VVjJxajVEVkZRNFhyVnYwemc3YmpXZUtnNWVOV3NaSE1xRks0?=
 =?utf-8?B?eGFPcm4reHdRaDdTVlRocXF4U01FalZrM1FXVENrYzNlSmdtcE1EL2RFbUxy?=
 =?utf-8?B?dXRic1Z0NUZVMDNqTTBObks3N2lJUkRrR21tbXZtUmJ3MHRZSTN3V3JDNXF4?=
 =?utf-8?B?MC9lVjlKVHBud0RpcklZdHQ4M2twa0dRSEhqdk0vREJDMGpwajVCZlVYcjAw?=
 =?utf-8?B?cituQXJObHI5bWlSNko5TFJ1a2JwUW50ZFArSi95am5GNkVxYk5NcXZ0WVd0?=
 =?utf-8?B?OE1HTnU4V3pBQVYxcFF6QlVLUzhGT2JsYTMzS3krbzF0REhkcW9OeXNnekw2?=
 =?utf-8?B?U3BGeiswYmhURDBjUW96czF4WWxJSGdObUZCNXc4OTFuWG9rWXR4RitqY05r?=
 =?utf-8?B?OGJCSThXL0JuTEYzcFN1OXhxai80Y3JYeGF0OVpEeW5OcHZub2FEQXIxemFw?=
 =?utf-8?B?MXRHOTdlUjUwc0lSYWlvclQrUzBJaXJaRkNxelAzL0xpd0FjbHNEOGFPOVhI?=
 =?utf-8?B?aXUxZHUwd2JpbmlCU0l2L3pGZFlLeWVoUUZNZS9OMkZ3a3o1OTFFa2lqNXJr?=
 =?utf-8?B?S0d4Z3E0ZmVLZWVPYzIyUnV0cHVqeTQyYjlJN2NiODRLTmg2NHd2a2xhUTRh?=
 =?utf-8?B?enlwcXZoNmxsMmtOYm5FK2F5Tk5PTWNaRDFOSjgwQ0tycVF0SytGTWxtSm5z?=
 =?utf-8?B?ZkpWdXUxSkgzeHFJSjNuQkJVZTZFYzFtWlNxZnhra2tiZHhiMEpSdUFCemFU?=
 =?utf-8?B?bk44UkU4dmN3bXNZdWhobkxKM21XOUFOVmhKTW5FU2xubmZNVnI3YnBRT2ZF?=
 =?utf-8?B?SENKWU9UQ3JjYWk3dEczRDFUSEN3S1VQRDh0SnV4UWp4N1prZ1hNNm50Z2Zh?=
 =?utf-8?B?ZVhZY2hvQUxQSjYyOUE2S1pXNlV4TVNjQkI1MDQvYWNIL3BhMmF6S2gyZlR1?=
 =?utf-8?B?TFRLWmpyREhlK2hJbFBVUkVzcmtmbzArOVQvRDcycWNZaFBPRkYyRXN4cVQ3?=
 =?utf-8?Q?Us6zlp4lTLxudcuYhU=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 895b3b76-e2f4-4839-cc98-08dc045f16e0
X-MS-Exchange-CrossTenant-AuthSource: OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2023 09:02:43.4523
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3P286MB1494
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_010303_388229_EE7875AB 
X-CRM114-Status: UNSURE (   4.12  )
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

I want to report another pin config issue for rk3566-roc-pc


        bluetooth {
                compatible = "brcm,bcm43438-bt";
                clocks = <&rk809 1>;
                clock-names = "lpo";
                device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
                host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
                shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
                pinctrl-names = "default";
                pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
                vbat-supply = <&vcc3v3_sys>;
                vddio-supply = <&vcca1v8_pmu>;
        };

        bt {
                bt_enable_h: bt-enable-h {
                        rockchip,pins = <0 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
                };

                bt_host_wake_l: bt-host-wake-l {
                        rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_down>;
                };

                bt_wake_l: bt-wake-l {
                        rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
                };
        };

I think pin configs are wrong. same as previous report, I don't have
schemetics, thus not able to write a patch.

meanwhile, I want to ask a question about enable same bluetooth chip on
another RK3566 board for mainline kernel.

in its vendor OS, dtb dump shows:
        wireless-bluetooth {
                pinctrl-names = "default\0rts_gpio";
                pinctrl-0 = <0x13c>;
                clock-names = "ext_clock";
                clocks = <0x138 0x01>;
                BT,wake_gpio = <0x13a 0x11 0x00>;
                BT,reset_gpio = <0x13a 0x0f 0x00>;
                uart_rts_gpios = <0x13a 0x0d 0x01>;
                compatible = "bluetooth-platdata";
                BT,wake_host_irq = <0x13a 0x10 0x00>;
                pinctrl-1 = <0x13d>;
                status = "okay";
                phandle = <0x1e7>;
        };

phandle 0x13a is gpio2. phandle 0x138 is rk809 pmic.
pinctrl-0, pinctrl-1 and uart_rts_gpio are decription for gpio2 RK_PB5, which should be uart1 rtsn pin.

thus I write my dts for bluetooth:

&uart1 {
	pinctrl-names = "default";
	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
	status = "okay";
	uart-has-rtscts;

	bluetooth {
		compatible = "brcm,bcm43438-bt";
		clocks = <&rk809 1>;
		clock-names = "lpo";
		device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
		host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
		pinctrl-names = "default";
		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
		vbat-supply = <&vcc3v3_sys>;
		vddio-supply = <&vcca1v8_pmu>;
	};
};

but kernel log:
[   14.433949] Bluetooth: hci0: command 0xfc18 tx timeout
[   22.498017] Bluetooth: hci0: BCM: failed to write update baudrate (-110)
[   22.498690] Bluetooth: hci0: Failed to set baudrate
[   24.514009] Bluetooth: hci0: command 0x0c03 tx timeout
[   32.737999] Bluetooth: hci0: BCM: Reset failed (-110)

I don't where I'm wrong, don't know how to do next step.
thus ask commuinte, could you give me some advices, let me know how to
debug or fix it.

BR.
Ning.

full dtb dump from vendor os:
https://forum.armbian.com/applications/core/interface/file/attachment.php?id=11326&key=a140f008da42b8d80b750f09306c3d73
full dts for mainline:
https://github.com/zhangn1985/linux-stable/tree/jianpian/arch/arm64/boot/dts/rockchip/rk3566-jianpian.dts

BR.
Ning.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
