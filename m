Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A23CFC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 07:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNUjd7SVgRCu0/CW1WXZWkzoV+YA78W4qzdx8Q1xDKU=; b=TTTSQ4drfiMVgd
	m0r94VdXvweEbPkWAxyPGMY5CVuozsYVvkhcSASkXBqinRsoJ4HQKaZc3UwftUFrQBgKbMKKgzsme
	RvG3RMNyS/uyVyc51mycgiMJwYqjhiTvzx+VheCXvsb/hAJEu1t0m/n+asBZMXMHWB/JFPq69oPsi
	XYmIkpvSVFSVcP9EyvzVHWO0Hjm60+kOdE3P66J0pD3lN6Ae9IYUuZ6vAN5FesKSzq4s03kZkAiD8
	4WcTboe9QngF7VDxFW4qIXr2jCFZtm1F/SKUIS4UBTlUjMW5h4fwjlNaTXNbnzcYToEmedfkJ8OUq
	dvWD2hrNvIw0UjXUSBtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYKPk-0000000AFD9-3TLd;
	Mon, 29 Jul 2024 07:03:24 +0000
Received: from mail-psaapc01on20710.outbound.protection.outlook.com ([2a01:111:f400:feae::710] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYKOD-0000000AEZW-3y6D;
	Mon, 29 Jul 2024 07:01:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eVVeg96k9o5VF9+PZDfyYi68Sp46EoLqxtk0U5+NC48OdUZ3PwBm82FDF2oOO9aOyH5ZaQpNeoT19aTIDWxcjohjQC1It6Tg1KY/4oZxZgWEhBz7kxqhK17BhIDVexfnsdksmQu/zRIgMEXKlFYLGXOfZh7P8yvcaq45xZiqCkfG6hyESIrkpSZgAgJ+d6JnzwSGxeEH1Z00PfCGIxiPB60CM4oAG8j/xfj7Y1xV0xX0qYEeh4E1hM5p/d3jWUTLzxXl0XdYOFW1MGFx2/Rm5qxDEj7eOyojyj9uIAd1Z+NeTNFsnUoAgvoZWilVl9GTtwGLpgL2iiJjVMtot8hKYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MYKJs4frLMyY/hHebaJZVjY+NW1dFhFvHLypRIA/l2U=;
 b=iTSO1mS6kISU5RDTw0tnkDYSZBNGflamOQx84wbxWYRiNqXWRtlw9VOosmLJREm8usrO8oooBNkI4FeKZ2V+fAEU8GquG0zs0ST1/C9RM0e2gsOItdqDQtROKHaFEIw9YLOr91YRJ6zRhHnxCxbpBUa0sYPHDh0dqzXIpDoxVNO6tpd1ZjIrYjVGsOGm+2AdjNwEd1J5ypSQfLRjWk0Kdfryweqm0/in9xQn+eIWBkRe0OV+tGVBunf7c+ct1JX5R862KyB2xXeHWswRPyksqWomgyqdy5UUN/n7QNsG17h6iJU7asB9/WmgReJCcKYmv/SbOBASbVgD4nI0PhOhsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by TY0PR03MB6881.apcprd03.prod.outlook.com (2603:1096:400:264::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Mon, 29 Jul
 2024 07:01:41 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7784.020; Mon, 29 Jul 2024
 07:01:41 +0000
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
	Jacobe Zang <jacobe.zang@wesion.com>
Subject: [PATCH v4 4/5] wifi: brcmfmac: Add optional lpo clock enable support
Date: Mon, 29 Jul 2024 15:01:01 +0800
Message-Id: <20240729070102.3770318-5-jacobe.zang@wesion.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240729070102.3770318-1-jacobe.zang@wesion.com>
References: <20240729070102.3770318-1-jacobe.zang@wesion.com>
X-ClientProxiedBy: TYCP301CA0045.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:400:380::18) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|TY0PR03MB6881:EE_
X-MS-Office365-Filtering-Correlation-Id: 998c9d03-e556-4e1f-7a48-08dcaf9c4c8d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|52116014|7416014|376014|921020|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?O0+qyjkQkBylSilyjGcy0dagB5lyFs3sU+qjJfu3eOg7+4Fz4MmME9S7GKtm?=
 =?us-ascii?Q?2Vcs9uc1bdme7UX1+HARLD/H26U2+p0cGVlqZq0sCY//XAmpOtazPK2m7GX2?=
 =?us-ascii?Q?xfLHjP2c3d5g1e3D/LedYfqDe/gSr96Q5A5epb7nzX2pklJ3msGnAOrXWUYC?=
 =?us-ascii?Q?sxu38L+eMXF+W1b+PaFHT+5dhQ+Jhx8UJiTKqK89HcxiynF8p8H7/2u0e+jM?=
 =?us-ascii?Q?EfxqTzgsZmHIRBn6OXGnTpkJ/gD1F2fhWR/b7fZrA3TrJU6IDEbm4iMhycfi?=
 =?us-ascii?Q?N3pdMQ5sa0VS9sfdQmPnpp7U1PqvH8B97t1FPDIATVjb5Y5Y3y28zmWV/N5b?=
 =?us-ascii?Q?i9vsSACfYN75J84tqoohssI4zU2TlD1knUpecdcdsW+xsWYa8W5ia62uVjWk?=
 =?us-ascii?Q?lT+3eZtvKfTU7AycxhHyh+DVtebriGFCyDX/ECcSKgo9n7EBH2Ob2v7+Aans?=
 =?us-ascii?Q?aCVn4AnTjqcd6QzXjXsKC5J6RxvLC4tt7QHJhStOMrgNjFULO/ukhibEXNkk?=
 =?us-ascii?Q?/tjRDk1SLCZluntfcQrdKGfYdp4i+789P0NpNLAlNhFjnh4mgczRn8HWeCuw?=
 =?us-ascii?Q?+yvRV2gW2F1HsYd1CcoE6F1XSUcbGduqeD/y9VCZ0Oh4AOgaQLpVWOdyiE+C?=
 =?us-ascii?Q?uS+RjNt+rUr70PxCRJVwB789OrK2Bp81iCHKTX0iNciehgZa5pN+sEbXGgBi?=
 =?us-ascii?Q?/7LuIFghI0OSYfWU0HfgWtZI7P6IQqIXKhQ4OQXy8doOzUJSdPOtGu0iSbvA?=
 =?us-ascii?Q?UY8fOHP52R19UrugYWkqNb5L60zsvZKG2FQh1YraHwMCGrvoioxWyvNn1aL1?=
 =?us-ascii?Q?4KMoIDvqvJR5jj7k5pKgAIQ/29uhuE5BaYkch9sW85688YVxTvldCTe+IbzU?=
 =?us-ascii?Q?GT14zDKfCk4YwW3ANxpEt5xzi32j+QnaJu9ZgOu3mvwTMnDVJe2RdnF3dXur?=
 =?us-ascii?Q?Z1q9d62eaWxvKbJtzD4voI052hlhMRra8/PlScOOQLQRBivgNu7xdCZiXK88?=
 =?us-ascii?Q?kfucroicSKvQU3aMnG33Gb1H4m23/pj6X7tFxPiIr6BwORgy9QrJ53/kmq8x?=
 =?us-ascii?Q?SfHA+rdoNMbMlcbByxhPrJ2MFtYTNvyStngudLCRTkKJlW3aVwj72GlXO3AV?=
 =?us-ascii?Q?SIYEv1k/1MqAB9ZbLoYtTNTSMFvHCKN3lJqazXiLzwEdWy8HSImZmhlhJJqk?=
 =?us-ascii?Q?QIoNH9w39HepLfIGVKdTYiktg3a4kjSSQ2jmgnGNkPIVKlnifL5F+iisT99n?=
 =?us-ascii?Q?lGc1i0vuw5CUOyknnEgknvqlTPh03wtP0ynmLIoAYVX114vi+8j3bLTz5/LB?=
 =?us-ascii?Q?XucTaqpqWdwK420oI/YHUUw0+KXT4e9BfbXASRJTbncZDFCVbKA7G/LDGD/V?=
 =?us-ascii?Q?O5Fkc8nLU5JZxO0M/LIlvWr5d3elL02zRIL5/tdmmdeeSTytGbdGVpFCWx8N?=
 =?us-ascii?Q?afCEi4tQL5o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(52116014)(7416014)(376014)(921020)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NKbVvkpj42oYOm+R9e65BfOOJo0puAb+ScO1WDAsJFlGRn6ztrQCmQJ6XKaM?=
 =?us-ascii?Q?n3BXZthyfXwsEPgieoO7rTR5ZhDYAaVfIeA8n8eZf896srejOm3wSI9gKo58?=
 =?us-ascii?Q?Bn6F1MXxwXREAALFtyhQAC2S2gZifXRhs1krISGEmNbMaErmVfAZWiRtZaRs?=
 =?us-ascii?Q?YeQ7keD7ZK/w2K3ZrOWkGjDpOAxe1boU8CbD/PVZPVPUrKQnZ9wIv9sxaS/g?=
 =?us-ascii?Q?HQDugUmB3BTiJ5cDYajk0VLdNPLVW2vLEoJSbqZtXNKZdUpT7+pBu1DmIH9w?=
 =?us-ascii?Q?7x9yDak1twuQ5xs+zCgtGyD2dGcydzK82g3eUZ94IO2Z7wqrPJmjtCg3GUgt?=
 =?us-ascii?Q?es+mJnzxUyYbR6dpfPQIZT/KwWu/xWXkjWuu4fOAKNQdOHuMilDi6zlhiQ6c?=
 =?us-ascii?Q?mnv42EuC758EkwF5zSpNCFDcWiAewBvEH22BLA7023zniovYx8SZ2wW3ebDN?=
 =?us-ascii?Q?QcS68RZgGl0PTc0jD0sk8B1nWDEYdkrg4jJX+cmA3ZXA4xUl4HNzIp+8/YD/?=
 =?us-ascii?Q?4fHZZb+Hakgxp6YHmxYWx8r60K2pixpEF/KmVHF6NpE1m+ARr0rtbry1Dpij?=
 =?us-ascii?Q?HDrdDXCQzSiCaIIQgg91CVzFZtHjMaMLK6W1tSUzbbu6po1KfZ1vWaBmQ9NC?=
 =?us-ascii?Q?InnFSx821ioArg0fLmd9p2BQ1vF/UQ/7QTHibmM6iJku1Ek54R1vVj/i/vnj?=
 =?us-ascii?Q?OYj8GvUjJhSuIOJKHEFuHtTgQu7tXYw05l3kOtdosMx7VzCcFara6LhC24yY?=
 =?us-ascii?Q?+sf0FT+FKGKP8/hbMad/teoVgbP+ArzGxTMVbe6LCv/1bXc7iEsrJ6unWBV3?=
 =?us-ascii?Q?GA6bY0Vqz82D5dUy9PbMiVlK2sCixJIBeBDoj2LCEaicHTPxlzqWnCQDH5mn?=
 =?us-ascii?Q?sl3qxtxP+SrkIiuWh3uXNMOVrpxOUAk6h5ov+U/4WkFdEQP0r02j740VybaC?=
 =?us-ascii?Q?XeNH8Zd3EE+aApgmt/wmYdMLuAr7Fg6bZlvK5d79/5LGeFFRZp2GPlcGm9FC?=
 =?us-ascii?Q?ye3hpBM/GIUPhSphK2vB46x7VGmlsfTucWTT7fIUGeFN59B5u0RbNNwEJQ1g?=
 =?us-ascii?Q?8VaebtCJ58CpeOMTL4M2wv55cQ4fGvScqn9neDzkDhykcsvuSwUJeIQRLTFv?=
 =?us-ascii?Q?fg0apbJmISikDq96a37BBOVyw5EDaqH4ArR3hQ/Xv1UK4vlHJPs3q4lYOwkH?=
 =?us-ascii?Q?trW4VRIaHbRsQCShEgyMihl0kba0uSyiezVFsHehbi5RGIjptYskzlSqh7nC?=
 =?us-ascii?Q?G0tyDPTtZcl85u8Z9auXE0A5bWHA0t+UZZwn+HgoR//LGdoUPGoQjfZVxw7G?=
 =?us-ascii?Q?sj1MfaE3zwzdG7ebtFyxAITqKKBTI99cRh4e+QkNzG+NPt0V6kEVTxGUbBP8?=
 =?us-ascii?Q?l2dur0h05JN9d2JjHaJurpmH/rHorqK2CTwjeg64HNRjIcxmW8g74O66N0BI?=
 =?us-ascii?Q?JJCo9BPVjrmc+1dmkiRZP4zunhGXpr6LTnbGlwzPkAGacxIdAfvtReYKXSd0?=
 =?us-ascii?Q?MTyZMShNCBR2jd4hoA3kmNd8rheNt8gL/bt5SsH/XHYvWeaFbhYzSKXUE/7k?=
 =?us-ascii?Q?TkzYFPMHEMxrkXAy3j1ttl67WjXw/VfpSgKt28ih?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 998c9d03-e556-4e1f-7a48-08dcaf9c4c8d
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2024 07:01:41.5545
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HuO/4+HoiNfJv7yNSLNrQZRUZBLnu9NH1s9ZIe15iWo1Co4wL+rLMeRmV6eEcoGO9ZHLOabrvCyuu+J5oScMBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR03MB6881
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_000150_012632_606F798D 
X-CRM114-Status: UNSURE (   9.82  )
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

WiFi modules often require 32kHz clock to function. Add support to
enable the clock to PCIe driver.

Co-developed-by: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
---
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
index e406e11481a62..4db188a41fd52 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
@@ -6,6 +6,7 @@
 #include <linux/of.h>
 #include <linux/of_irq.h>
 #include <linux/of_net.h>
+#include <linux/clk.h>
 
 #include <defs.h>
 #include "debug.h"
@@ -70,6 +71,7 @@ void brcmf_of_probe(struct device *dev, enum brcmf_bus_type bus_type,
 {
 	struct brcmfmac_sdio_pd *sdio = &settings->bus.sdio;
 	struct device_node *root, *np = dev->of_node;
+	struct clk *clk;
 	const char *prop;
 	int irq;
 	int err;
@@ -113,6 +115,13 @@ void brcmf_of_probe(struct device *dev, enum brcmf_bus_type bus_type,
 		of_node_put(root);
 	}
 
+	clk = devm_clk_get_optional_enabled(dev, "lpo");
+	if (IS_ERR(clk))
+	if (clk) {
+		brcmf_dbg(INFO, "enabling 32kHz clock\n");
+		clk_set_rate(clk, 32768);
+	}
+
 	if (!np || !of_device_is_compatible(np, "brcm,bcm4329-fmac"))
 		return;
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
