Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42561C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 07:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEQx8QbLsSdIUkl3dYwTwp7vEpQEiYg9gX5/TXMuvfg=; b=rz4i9m1wIhgNll
	qA8j1mPTbZznwZpVdvuE/ku4hAiESzfCKy5l10t9nB3uBnElzk582+3sCoJfJoAusD/ZNNFSM4cdq
	VBbGtxfMSa2UPKwtxiXB9ACnxT98RkNJ0dRIHUH7NOYhPDT0fNDGnio9adbM3XtTIaNmvSKBP0SGm
	gO2QFKRBuDHsg/rJFVrjB5V2ivczU+EkPRS4ve8NpSDAh13m80w+Acw69MfvlTg5f9jDGxTaarNRE
	1IffefGV2FBnkNjkQGRtnH2c+vr+WIxwDiCCiGNeWWI9xCwhGixDYoH1zAd06hp3JXJFRzeb2mirN
	3xV4o6L+Ine4+Xbz9DQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sasFe-0000000ExLH-2rq9;
	Mon, 05 Aug 2024 07:35:30 +0000
Received: from mail-sgaapc01on2070c.outbound.protection.outlook.com ([2a01:111:f400:feab::70c] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sasF9-0000000Ex98-0Qr3;
	Mon, 05 Aug 2024 07:35:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cN3ZFHzdsgx9HFW3bGBecRW+0866MfYfhcPLSV//96lArVxCJnHm2+HyVk8gu8byQUyIXy3v4rgPXPa/jt6dBFxnTGyvLU8B2yTiMg7L7fMNmadnA/QQ3P3cBmROb7UJ70uVm1B9JJAy0mK+mc8VcR+rS9c2lg14icA3AETycl8iF7jQZJ46UzRricV2z4gZkr9EY7MSrNT0U8CXwPMKeH4krGEh0ZOLvT7OeWABV3aSfiSF0Ef16UFfDAoJ+ka1NxrHkRGZF2m6OavE/wVdWFyRjxSuxPJCY+AkJxz9jf97KQMrYtFPEFxhu4nao8B5A4q0qqnQ1xwhM6mSiA2IIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n3ZCKui3FOaZbR8MmUilWzOmfwqy4Ji7tdvVIJh0aaI=;
 b=okC1YdrKWHLwxl/sPQjCrGjFqYrAccZvBaLWWB0ZISaRnK2hUq/h+Ei5obOPaXG9ANqmcMa8y0DWxGzYRyhse4VTMHWFfu1d8ROk5Jt2hTwWvw8eEMnR0dXzPJFjkyCCpTCwumNB2pkeo5a3BYA9/PDNnHyXZFJvl6lmdLIh77bz8mhKwb7RAWZmTbEvgaCVFOFvlHiOMpfbz6O57ovf1JfVCgeUcelrgiQua0Q2u7AXtHobVVEXBojwrgcK8SJ/LJNA1zgRDQVdEfeBgjWh9A8H3hQ0c/M3DCUtgn8Aw2qmXrTBoDsdZtDJJJbo3csrcD+T5k5uAmLlkzKluvGpww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by JH0PR03MB8052.apcprd03.prod.outlook.com (2603:1096:990:37::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.25; Mon, 5 Aug
 2024 07:34:42 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7828.024; Mon, 5 Aug 2024
 07:34:42 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	heiko@sntech.de,
	kvalo@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	conor+dt@kernel.org,
	arend.vanspriel@broadcom.com
Cc: efectn@protonmail.com,
	dsimic@manjaro.org,
	jagan@edgeble.ai,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	arend@broadcom.com,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	megi@xff.cz,
	duoming@zju.edu.cn,
	bhelgaas@google.com,
	minipli@grsecurity.net,
	brcm80211@lists.linux.dev,
	brcm80211-dev-list.pdl@broadcom.com,
	nick@khadas.com,
	Jacobe Zang <jacobe.zang@wesion.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 1/5] dt-bindings: net: wireless: brcm4329-fmac: add pci14e4,449d
Date: Mon,  5 Aug 2024 15:34:21 +0800
Message-Id: <20240805073425.3492078-2-jacobe.zang@wesion.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240805073425.3492078-1-jacobe.zang@wesion.com>
References: <20240805073425.3492078-1-jacobe.zang@wesion.com>
X-ClientProxiedBy: SGXP274CA0010.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::22)
 To TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|JH0PR03MB8052:EE_
X-MS-Office365-Filtering-Correlation-Id: f8935d96-f9ce-4187-9e2b-08dcb5211205
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|52116014|366016|7416014|376014|1800799024|38350700014|921020;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5N2S968RvyMnOH4+9cubPipH9jis1X6pCrb7wT0ZTUVYKner/DzQ4pZv/Jig?=
 =?us-ascii?Q?5sMhwERbQzZFrIRWAsk5LheiSg9ny3Dpz5/Qj6nUjPz2hy+34OStYGRVEurv?=
 =?us-ascii?Q?jlWAk9COsQAKd6sQhbyHjLXSDTMwO2IE//yIzNrPgMSbXT0yL07VV5aYk1aV?=
 =?us-ascii?Q?aTMdcFnio0GSxDrout3k6NJ8ZelecF/f9lK3J+JMC2sul/9+98UuCtgbfFlX?=
 =?us-ascii?Q?hIhc/hQCkIMZQ5XXpKIRsGv5NMM+LY4APvVNV3BxudteTFEaHpByekSgKTbZ?=
 =?us-ascii?Q?B8WVTZmLuRvmaWToLTXymOnz/5K6/yOa/L4JaUOR6AgNnW2JFjtaj1Xt3SoS?=
 =?us-ascii?Q?xM9sC0/UQ+g5p78jLi3zfjQfhJiHE/wpbzZ+WJJ6hfaVjPTpmeetICOuukF0?=
 =?us-ascii?Q?fL++NVjsIM3c40FHRL5njZOXLNt6wUZ/BPiN17arZxFw6ObNJxAT2EorSq84?=
 =?us-ascii?Q?PrPc2D7xu7a1F2W67Sr53i/rPHti98i6ozvKNMCasfP8zZ/y5BVbz8o75Za+?=
 =?us-ascii?Q?ZVbYdAxwzr6PIxyLVEi46aF+SQMdYfIzCkIGxkrXBiaL2gi6GVkA/G0lhPEp?=
 =?us-ascii?Q?og4a6SCpmJ73eAtVo863eNQjZy0xCglLerApTq5WQmVEaaxJE1AMIZyXeIbu?=
 =?us-ascii?Q?6YHq58VYp1Lip0Q6d+99O6Ryeo1YfyNnJog82HheCT/UQ9a0BZPe5ZHJMOR0?=
 =?us-ascii?Q?Dbb2AIDHMXrqUWPeAWGu5EEbDYkLMvmHm+ZfyqM2u76UY9v1rYWl75FBPLC9?=
 =?us-ascii?Q?LmwmFmc2o24KWBaI8nLxWeyz9AJc6+ALBKzEROke2DySPsrQzH8nCOK0Ve7k?=
 =?us-ascii?Q?pdWiwHeYWV+0uvoSgv6LQ6RWb5ci5cSM/2RV1tqMercZWx9tIhnu49Bxb0ym?=
 =?us-ascii?Q?vu0NtoJaDUTxNU+hoI31J4cNoPsXLrQmcpPWgYSJTbxImVxBcXtrnQPuWHGf?=
 =?us-ascii?Q?Pq20+yZh0doajM72XMq7gTkniJ7BXvBKep96tdVdOfvCSUD54hVSglPZjzGZ?=
 =?us-ascii?Q?Y5OmfNjSsSQwGiVJUc1ZHL609rJ6hJ2vFBHj6SgnKDh38yOX1xacaq5nMFAu?=
 =?us-ascii?Q?IcZZ1G0C6kn7ZAXtoROACJzMnTHp7UH2YERH6ogUIZN2/3HDU/v8PkOa6l5g?=
 =?us-ascii?Q?RQdUkZee3IB1jQC2yJ7Co8z/ZftXD4NEC+kbOQAico2+dhuV5dCdp0WUcit4?=
 =?us-ascii?Q?MugPwhgKUQWY/PZJAbq0B1Vc2+mv70bIqehcPcZzaPunHdzxrzD8DneOTsKz?=
 =?us-ascii?Q?c8WkO3NizGimj6XKbqCfi7OE+vmV5CHNrLaEEJySl0lnCDGYrhqCSXxTDdlC?=
 =?us-ascii?Q?NzyQA7c9OQpNA7iDXQmmxXHrZ2CqLYRPm16PGj+Em2kfEzvWFUrFJ12mVtyS?=
 =?us-ascii?Q?V1U8+5ccNWagiIrdqqYetrJWl+NW6WssxLyezZfucC/dIxVnQqTHhfWgz3co?=
 =?us-ascii?Q?2wltiAku1a4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(366016)(7416014)(376014)(1800799024)(38350700014)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oh80dL0QzFEX089mx0/znWXGXPdIyCkTXxhy4/vT64x2pzGcnM4+He5Rxzy+?=
 =?us-ascii?Q?mcU4K9dcO0CJQ2KVMBXAw1FZKVfL+zaJc5qHCFok2+aYh46bqBDIz1SwsW9+?=
 =?us-ascii?Q?8QHa2m7nCtEWhRO2J9n8fht0PEGvQjBqMpmPICN/MKBrQdOtO/J/WOV/IXuU?=
 =?us-ascii?Q?CgTLs3n01alWn0KkD6XeazXkWbpmfLbIMC+BqfNsQr2uTQt62vpu9TTRoXlO?=
 =?us-ascii?Q?zX9N+QHVpTNlVCkh6m6aMUoL13b3yD5zFbmga6sDj3R7GxtJjAU1UvOhpPXd?=
 =?us-ascii?Q?pNEoBqvaqSKLk9rL+EENUpVNCb1t3At4KEHsvMaDTa9xXx0NX7nmsRmJiI76?=
 =?us-ascii?Q?Nz3apG0KLYxwtw5Sm5wqrKOrEWfg6DlEEIaFEC3OXo6zcBpJEKVDYjdxBNVs?=
 =?us-ascii?Q?7wGEYI4f9xv8dUV9yo3qo6EsGTZOCKwMCmeGwUNrbAhEMUA866NsCAauLaQC?=
 =?us-ascii?Q?jiI0+/13x/C4DZnDoG2JGCapk/HwaVb0uYnb7Be/PhxDhyqxWbVJ5g8h7+Z1?=
 =?us-ascii?Q?J5E5eHFIFEl2RBGnl6lj6GRxEndRopwwapUdlVgLzhNhAYl5rB7OXul2QDmQ?=
 =?us-ascii?Q?lpB7gfxrTFbZkZrahCSe4+YGs58OxZTY3WE2eVOvQTocym+8N3dNKng1PPqR?=
 =?us-ascii?Q?lHlEThdLW3dDypmF22cmEyLz8uXGHjdc3IMG17DbTHbwmfUmuAedURNx3+bn?=
 =?us-ascii?Q?YtYYOquobIQCtNMfJRqLONi+1dW8lyjJqOskpIaKxmzgRr8tkxwLcswuPsU+?=
 =?us-ascii?Q?5tQtZIuYUKlrpURDIkPqN4Vt54gfF1i4Un0P/W+RMpXzuCixs8mVOKOrK7Td?=
 =?us-ascii?Q?bktzO1oeG9otHMeT6QpEoi45bm9KbalV+EpjsEkecwJtY0oZ97OdpL0bCXJn?=
 =?us-ascii?Q?wvBJ8MdYzR6PXtngi+zvNzHp8Vm6597gBlqRdUY2K++KnMBABcMg6wWUe9EL?=
 =?us-ascii?Q?GCu99wkT08m01B/ecAFauov1X/guWtlLcoxxXtweSrjTO3Cmd8ydH1xiH3la?=
 =?us-ascii?Q?P69g6Z8xvTq11vysA+AKQe8He2slylen8LEDpB+xrploaHWwe6jgqUC6qR9A?=
 =?us-ascii?Q?WapulDMv0tAI4XYJS2sGetOvcHAINHYXO7UebR+TN7WzrIJ/2BsYSPfOUoL6?=
 =?us-ascii?Q?+tVJ9NI/OxHw16GUAml0a3lpOMjGCdvvCnFc8K1nLjiL3es1gSDgw/q/xGEn?=
 =?us-ascii?Q?A2hLlbV6If1Qhkf/z/xEj8Ya8Z7BV8UA/EjDLG7/Ili96RUfedf9mS2csXVK?=
 =?us-ascii?Q?Z8jEtrXoPHghde/pOZLXejqS8yBCgMWxPO66UsS7CJjLMYunYETiro4o8pOC?=
 =?us-ascii?Q?H9saguamB6umZRogH2W3IxkrYj8Jbu4JYP51Y54kf2G0uEKXjTE+A8TMZvEC?=
 =?us-ascii?Q?MpZolahnvak1rUAzNdiNR70SArwcR8AOYvdm5P95lztjtGBhFFKjWRZl1tNH?=
 =?us-ascii?Q?FOD63Op756ErH/+pXHkGCSxjtZ2YI2mXG8vexoxdyy51fCFzReQ6g2K/S+0W?=
 =?us-ascii?Q?hSXd3Gx4gw95OJaNDWfCpdcrc4doUPOWGu2PTtfKG6DpTms0U26xGRRSlZtd?=
 =?us-ascii?Q?nUATwprpk7bVAnBj9rmcO5EBqVQSkQUp5cR2gJjv?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8935d96-f9ce-4187-9e2b-08dcb5211205
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2024 07:34:42.2819
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rm60PySdrLAXG+eNHsyzEtL2Txk/bI2vKRszfK9fmcjtofDhext7P/FYpcCfOnI2yH+U61IGtFaq/IPzLy8Wpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR03MB8052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_003459_154907_C7A47386 
X-CRM114-Status: UNSURE (   7.89  )
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

It's the device id used by AP6275P which is the Wi-Fi module
used by Rockchip's RK3588 evaluation board and also used in
some other RK3588 boards.

Acked-by: Arend van Spriel <arend.vanspriel@broadcom.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
---
 .../devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
index e564f20d8f415..2c2093c77ec9a 100644
--- a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
@@ -53,6 +53,7 @@ properties:
           - pci14e4,4488  # BCM4377
           - pci14e4,4425  # BCM4378
           - pci14e4,4433  # BCM4387
+          - pci14e4,449d  # BCM43752
 
   reg:
     description: SDIO function number for the device (for most cases
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
