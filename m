Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 862E0C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 12:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2k3eqayvosSGIFFDg9De9PWi0W7I6aAUxzMkZzMH/gQ=; b=q+Whs3+Gy2bwvn
	+VWXUVhiaVB/9UefAim/x20bIssUbpSk/udWza4lP7UQwSo8hWg18A8CKIJuPTJYIXQygyBG/uAD5
	SNsJgBEfFFyYStZPTgAMzldJbexvb9gj5pgyQ3yg7wdcqDyOOhiuHT7j0NEaIjtf/LsSod3j/u5te
	3DIVS2EMq3bH8v55HJKVddLhrq0CkXjkp0ycEECjHiphprzFstCl4KP+sG0eFa+cPvohwlLU5J/K7
	Jcocu5A6uSsVOad1Jpe/qhvQV2D7zlippXFyIYh+k0ynrx5VeDLlYjMuon/WVEi/B7NzwcWUTo0bY
	dNuFyryyNwr0iCBrRtig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEq7t-000000066TG-0oBf;
	Wed, 05 Jun 2024 12:52:25 +0000
Received: from mail-japaneastazolkn190110001.outbound.protection.outlook.com ([2a01:111:f403:d405::1] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEq7q-000000066S1-1x0k
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jun 2024 12:52:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XMTYMrpWfTPOpEHON9YlRYly0+jm4eAAjkRTlI4L9uadfIKJS911NJvlkX8VJXycpvjv6L60yOj8HnE2pSFy7Ubj31V+NDmnSqIYXVtur1N/6ZNbinpL5x7KZRILhjlqGKGpu/GLjez5+4W6m4Sx5qO/eZhrvVN/FOXP+kD0wrHwqq5pz/ht95XPWvJ9Dntg0HrQw3IgJyMxcZ61BGFsAhH3EtiavTz7ikle3RH0IFBJ2DbSz/Crsq1LUYgVMsRkGycOd8qinsLe2OKSZ0HBza+5eunROs89vsTxsdgSGdWN+ID1298UjTQZWQVoGS7qoSSIv6+AdY1LpRdqmw8+4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZT/adbxqZ0bga7+SWfDOwU8wzEAu+u7fR5jywk9kWa0=;
 b=LKO+ye/w8V6d99V03SNxMoso5gkeLuO8pTm+/7RJD8/QJEc0Tu7kWtger+Ft81UQAsrjnGkmq0haDe4I5N6AzJj/0Zqs7Nm+9lDx20sAAm0+CQiIn8rhl0b+jF1yF7k1TPQs88IiZPi6JGU06GMeln2jCBxGKt0l6uLZAMRoe2fj+k2WyVcBVxBai5zs9z3JXEQEBB/ynkEXYv1VxvT9ygljJ3WSQ4qcMk7NftQZjzJo5MUpBXu89pufp6MeP2KHuK8dynsb8J5nva+YN/77FNZREu3pdL2YNQQA0jhIAYGT8x03QTn4/gJNK7HzUMnTDbM/dLmIqNbe8hKU02VfQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZT/adbxqZ0bga7+SWfDOwU8wzEAu+u7fR5jywk9kWa0=;
 b=AkXQGdtJGitAHK/YRrpqFmVOg+v4uA7s/fo+7y2d2+SsyT9cSbNDXA49v8tnHvsATNlGrzoB8EckESMFbeH7O320OdIgKPy0YXb1Fh9u9QkHSggKW7yPD8TguZg/Tr1uTRoRobcpj7CFncZhh9kCpj6u6LKHyzdafud8fVKopsSJGB38y6u1/1tgqUVdvfXlgH1CACkQQqbnJ50DP6KRujwFYpmWD25PGX/xNYE/j+uFUgfsGBI/6WyKwqmbSSlmRSj/M3hKooxcrQ/JwbS7nblvjSq0kacFrwF8lIxZFiG6KoD8d/cnbMqBlTXFd7vXroc2R1zxI2FPT8E44XN52Q==
Received: from OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:cb::10)
 by TYWP286MB2650.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:24d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.31; Wed, 5 Jun
 2024 12:52:15 +0000
Received: from OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM
 ([fe80::6d82:db5b:7d4a:e241]) by OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM
 ([fe80::6d82:db5b:7d4a:e241%4]) with mapi id 15.20.7633.033; Wed, 5 Jun 2024
 12:52:14 +0000
Date: Wed, 5 Jun 2024 20:52:08 +0800
From: Zhang Ning <zhangn1985@outlook.com>
To: linux-rockchip@lists.infradead.org
Subject: Help: try to set uart3 as uboot console, but fail
Message-ID: <OS0P286MB0641F06A210E69535C495395CDF92@OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM>
Content-Disposition: inline
X-TMN: [drJOvVy2SJaJ/6WjcOnSoLcBo31rz9yT9UcJv3ngAD+4cundurhgmMtWcfxth5xU]
X-ClientProxiedBy: SI1PR02CA0040.apcprd02.prod.outlook.com
 (2603:1096:4:1f6::7) To OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:604:cb::10)
X-Microsoft-Original-Message-ID: <ZmBfeJ3pBvF-_XTp@orangepipc>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS0P286MB0641:EE_|TYWP286MB2650:EE_
X-MS-Office365-Filtering-Correlation-Id: f0fedcc4-7096-4a17-2af9-08dc855e523d
X-Microsoft-Antispam: BCL:0;ARA:14566002|461199019|440099019|3412199016;
X-Microsoft-Antispam-Message-Info: 3OnSImg1rcorjP+xIxuifJd1BvpA3SRKMHwxmKXorI7PjxgNcdRlyW2H1JJ/5hRKrvBcCc0+cOYD25NnYT1d/iaHRRIb0PFd0rv4nQXYFJ9kliu7ZHyoCh5Ru4+bAFlHwbtENai8Xd328J8TgB4Rf4bTlYXwGUt7uYORqUZxQPpLqvSZes4sKXyi1QIB56YfI1YtbY9tZnduC/IQnIDenJKoBUhYCwgsk/GlWddrLuAY+w6KSNy2toWAbbEAYUfrCJQ+S4SUqbVaRx9aYtK8dHHu/aIdKDn5iLMS1Y5ljiG/CnEysLzVNiJS0vKYk5KIjZskI0F7oqRDmc0/eCtyOUH68C3JjMTG/+n9FBHYZbt3vX+umAN0cxCd6pVMpfS1ZpBhHe0bL4ENyg5OSSsqcv4aZy5VZaJRCzS0PXbBjf8164JmH3lOAvZbV46YxkkusBpJ1gQlo5wA7pbianijI0TSO7fnMEULU7LC5we7A+wq+UVWYRubRHbYduVLWKyrQgx0aOTYe89yI6zDqhzl4fqpgaQr9Gm9nlD4ziFrRaEmmT/AHJh0QkxaMtHISDIt
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WTJzMjUxdFdmc1JORDkyRlR5RDlrdEQ3UEtVTzlSb3ZJQTNXeklOaFk3elU4?=
 =?utf-8?B?MXN0YlFodFd4NCt3S2lURFpETVdxNzFSTzVVTjhlS1RsbnlULzNMNDlldUJr?=
 =?utf-8?B?Y0dXOFV2WlQ5M1NsNmF1b2JNeW9FWUVpNVNXWU0wOS9ZRktTYmhpTkRMaHJI?=
 =?utf-8?B?aWxlaFZhUHRMTHorTFQ1VGsyMXhlc1Iwb2Fhc1QzbERvNVNQSVhOR2RkZmw5?=
 =?utf-8?B?SFVLWXVPbHZPdVdSbUJPY0dNMEFrU0JZY0dGQ2JJdlc5M3BoV0k1TS9HSTFw?=
 =?utf-8?B?Z0RoQSt2anFoWnRCdTBXOGh0c3FFVnJDM2h5MmhqY0hhak95UElLWmd6Ukh1?=
 =?utf-8?B?bWViQWplTzZLdlZ6ZVVhbUU5MHhyUUlyVTVhM1Qxb3R6dU9GY1VpREZMQ2pl?=
 =?utf-8?B?QWZkTDJWQkhBNEFmWmlBWjROZFFtQzl0SVpJa0pBeVd6cXFEcVZpcDNLREFh?=
 =?utf-8?B?YnhIVjNGaW53QWlQYnplZDRrV05KMWZmOE5ES21hWi9ndkhGVnB1bFZMb0lx?=
 =?utf-8?B?aW9DSVJDNG1ESTJpMllDcVg1RHdkWFVETUhPc2JxNkUwcXZEVHZ5LyswOFFr?=
 =?utf-8?B?cld6NmZOdUZ6SFBPalAxM0s1S0dQTHd3THhZM2RORHk2RlNVaDJSemIxYi9D?=
 =?utf-8?B?dnh3M1F2cXBoK1FVWDZrYXFVSzFndi9zMUhMbi81ZUxRNExYN01GdHB3azZC?=
 =?utf-8?B?YjErc1UvZnJSZnI2M1RDMVRFTVZRbVVVUFVkdU0raVNPUDZjMlQ2Zm1sK0Mx?=
 =?utf-8?B?T1o4N1lpcXduN29udy9OdE1LRHM3ZERaZWFNeGZWNGZlc1FXZnJSQk5IUmZS?=
 =?utf-8?B?STkrejVtNWExbWxjQzlzWGwvc2xXNWNmNjZTWGorWDU3WXVRSW5xZG9QTWJn?=
 =?utf-8?B?eFVTMnI1a3QwOENnUUFmcWx0NjhXZGI0Tmx6R0ZrM2RhRnhXZnZsN2xUL3Fm?=
 =?utf-8?B?MTV6bUZGTU9NUzRGeHo1OG5BYm94dFhTZ25hR2lzdkxZUGZ6ZEVoYlM4U0xC?=
 =?utf-8?B?ekYzSlY4ZG5aQVhLUzFuRW5tTStJRnB4a0pwZTZmNmVpVU1mMGVtVUpVZENW?=
 =?utf-8?B?dW9sQUZiVmZwdlUxMVUzeGRFUUFidzdFRkx4MTlsbElYdTFib0VyeDVPSHVv?=
 =?utf-8?B?VCtaNlIzVmRTWHNwdlc3eHY0ZktGeGhmU1I2OVkxdWM0VUpuUkZuWEUwaFRN?=
 =?utf-8?B?NjR1WDNwZTZjZ2xwWDFBMzlSNnp3WGw5Y3pVV2Q3V2VKYmdXK3hKSnN3aTFH?=
 =?utf-8?B?cDI1eEc2Vll5Q1ErTHY2MFJ0NDZwU1VqRnpMVHp1Y2cxRTBjYktPa2lSWGY4?=
 =?utf-8?B?UjFmOEozV2tDc2U1aHVkd090QUllbm1UVVdJMUFvUWd0c1E3MlBWZmo0QWRC?=
 =?utf-8?B?VEgya0xpV3lkYjIyN3UwaW1tM2dsNmpZZEQ0alhWMHVhWUEvNEpoSE01TEts?=
 =?utf-8?B?WUwycEdETVJuTjJrNkZWc1ZWdWZoaXRIdTB2cFlJZVFObS9KQzJ6eCtHTXk2?=
 =?utf-8?B?dEFGUThBQUVrb0thbTVobmRtM3BQMjlBZ3lBQnhWYm4xRkVMWnFmb2x0ZGhR?=
 =?utf-8?B?b3Rvc2ZaWThZMldtd3cyOUNOcmluVlpQa3dwK0tWQjlRYTZGWDJGSy9YVENG?=
 =?utf-8?B?eUJwUXRBYzJYM2l3bEYzWGVicnd6cmFodFpUMmVkKy94bnNCaWJOZ2RrVjl1?=
 =?utf-8?B?R3Bpd2w3UHRTUGFNa1NNcEdZSGFxSXZDNmR5aFhFLzZ2ZEZGSFF0Q0JUOGx0?=
 =?utf-8?Q?icdcXuPVIRonWR84Z4=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0fedcc4-7096-4a17-2af9-08dc855e523d
X-MS-Exchange-CrossTenant-AuthSource: OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2024 12:52:14.8506
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWP286MB2650
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_055222_544914_571B5EAD 
X-CRM114-Status: UNSURE (   5.79  )
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

Hi,

I try to set uart3 as uboot's console, but fail.
below is my patch, could you help to check where is missing?



----

diff --git a/arch/arm/mach-rockchip/rk3288/rk3288.c b/arch/arm/mach-rockchip/rk3288/rk3288.c
index 70cf5002..19d33196 100644
--- a/arch/arm/mach-rockchip/rk3288/rk3288.c
+++ b/arch/arm/mach-rockchip/rk3288/rk3288.c
@@ -100,10 +100,11 @@ void board_debug_uart_init(void)
 	/* Enable early UART on the RK3288 */
 	struct rk3288_grf * const grf = (void *)GRF_BASE;
 
-	rk_clrsetreg(&grf->gpio7ch_iomux, GPIO7C7_MASK << GPIO7C7_SHIFT |
-		     GPIO7C6_MASK << GPIO7C6_SHIFT,
-		     GPIO7C7_UART2DBG_SOUT << GPIO7C7_SHIFT |
-		     GPIO7C6_UART2DBG_SIN << GPIO7C6_SHIFT);
+	rk_clrsetreg(&grf->gpio7a_iomux, GPIO7A7_MASK << GPIO7A7_SHIFT,
+	                                 GPIO7A7_UART3GPS_SIN << GPIO7A7_SHIFT);
+
+	rk_clrsetreg(&grf->gpio7b_iomux, GPIO7B0_MASK << GPIO7B0_SHIFT,
+	                                 GPIO7B0_UART3GPS_SOUT << GPIO7B0_SHIFT);
 }
 #endif
 
diff --git a/configs/tinker-rk3288_defconfig b/configs/tinker-rk3288_defconfig
index 855cf414..234e2812 100644
--- a/configs/tinker-rk3288_defconfig
+++ b/configs/tinker-rk3288_defconfig
@@ -20,7 +20,7 @@ CONFIG_SPL_STACK=0xff718000
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x2000
 CONFIG_SPL_SIZE_LIMIT=0x4b000
-CONFIG_DEBUG_UART_BASE=0xff690000
+CONFIG_DEBUG_UART_BASE=0xff1b0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SYS_LOAD_ADDR=0x800800
 CONFIG_DEBUG_UART=y
@@ -82,7 +82,7 @@ CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
 CONFIG_RAM=y
 CONFIG_SPL_RAM=y
-CONFIG_DEBUG_UART_SHIFT=2
+CONFIG_DEBUG_UART_SHIFT=3
 CONFIG_SYS_NS16550_MEM32=y
 CONFIG_SYSRESET=y
 CONFIG_USB=y
diff --git a/dts/upstream/src/arm/rockchip/rk3288-tinker.dtsi b/dts/upstream/src/arm/rockchip/rk3288-tinker.dtsi
index 09618bb7..6e65e782 100644
--- a/dts/upstream/src/arm/rockchip/rk3288-tinker.dtsi
+++ b/dts/upstream/src/arm/rockchip/rk3288-tinker.dtsi
@@ -9,7 +9,7 @@
 
 / {
 	chosen {
-		stdout-path = "serial2:115200n8";
+		stdout-path = "serial3:115200n8";
 	};
 
 	memory {
@@ -60,6 +60,14 @@
 		};
 	};
 
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		cooling-levels = <0 150 200 255>;
+		#cooling-cells = <2>;
+		pwms = <&pwm2 0 25000 0>;
+		fan-supply = <&vcc_sys>;
+	};
+
 	sdio_pwrseq: sdio-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		clocks = <&rk808 RK808_CLKOUT1>;
@@ -122,6 +130,34 @@
 	};
 };
 
+&cpu_thermal {
+	trips {
+		cpu_warm: cpu_warm {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		cpu_hot: cpu_hot {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map2 {
+			trip = <&cpu_warm>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map3 {
+			trip = <&cpu_hot>;
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &gmac {
 	assigned-clocks = <&cru SCLK_MAC>;
 	assigned-clock-parents = <&ext_gmac>;
@@ -447,6 +483,10 @@
 	status = "okay";
 };
 
+&pwm2 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcc18_ldo1>;
 	status = "okay";
@@ -497,10 +537,6 @@
 	status = "okay";
 };
 
-&uart2 {
-	status = "okay";
-};
-
 &uart3 {
 	status = "okay";
 };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
