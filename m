Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36AA0C52D7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Aug 2024 08:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEQx8QbLsSdIUkl3dYwTwp7vEpQEiYg9gX5/TXMuvfg=; b=vYtWiCThK/C/Fk
	yRUG16YROws5cQGi0+mQE0L0duvkeKNfdKxCaJ2sQPEkz0rHPX+MSawLhyoqPy6HhhP+oK9C2uVe2
	PMCxE/MBIN8xd98atGXTKYCtmRkzpm+xg8FyP/6G/pHo9QUh05SQHBZ2vmW9sVOcZ70QJuc649oiV
	OYG0oCnoVpmFTmLpKL+8hN2aV3Rl7+s4ene6HvSr1rXt5u9ps08gSMeaKzjRPiH1r+mUJobAtxutp
	hl0XMZjoHfus6ca0lMrF6wzkjOZKHk5Fo/rf5tj8iZP3SwDagD3F38RAVkJobzJjubOM1n+SjqeqN
	+xZjzqoXhiAG+l/sfOew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdmmf-00000002s8v-2GAG;
	Tue, 13 Aug 2024 08:21:37 +0000
Received: from mail-sgaapc01on2072d.outbound.protection.outlook.com ([2a01:111:f400:feab::72d] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdmlc-00000002rlQ-2sl5;
	Tue, 13 Aug 2024 08:20:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X0QtBfz/XNR38dLpw1LsRbrRUbaGH/Cyvi7jJz5Lr5kODvBpG40HO4uWQpo/Wp+m4+Z4OAew9bAZqeNdEYQENYCERJMgLlU7DRCUgJB0HHYuROGJ4zOwxakB0FM8QC/KHEyTYBVi7V7P7Y3CScTJ+AjcWkXLzHfGVittPq8L4EXD6uGGbU2FehOFUA9j+toczzcItrYe8nzrEJ6SoI6cKI6cnWEfOkGlUzuaesoquMpPca8BmJqINqRyqNZoc3z7Qa5gqYS58beqbcBEHmrBNRcmKVMT26z5PIdpZ0osfzJx3sm8eFK8bPFC6Ur2vN5EK57XLTjzEG8nzmp6A5BP9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n3ZCKui3FOaZbR8MmUilWzOmfwqy4Ji7tdvVIJh0aaI=;
 b=kw3m3ShCOQw7JmvYl5t2cubJmtbPW4Vjoq5+3v+aKDF6Ih+UGBIoh5++v9K1fIb5nulkcHv4zy62+AbPddhFnHDF2ozOtQD0mwAuJV7nLu1kpNTGkaft9n8mXOLSrS4LN9G89cd4umNdyDljcC02yiT53isamhF6mELyOUSWIenx11RBdXqZokHhncWq1wFRm3cP+0ECXoO5HZxwnAT/AO5woJPg1p5rBaw8DeCNPCVVgW2DPvOBYj6+78dwu/DBJNxlUZXmrNe7rEJMaAOrF49AWtLC00JmTC12fE3P2qU2hnBxI9+ecdbbYLDfQDgPEFjnfTceVr17sDdAOQowOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by OSQPR03MB8748.apcprd03.prod.outlook.com (2603:1096:604:275::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.20; Tue, 13 Aug
 2024 08:20:22 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7849.019; Tue, 13 Aug 2024
 08:20:22 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	heiko@sntech.de,
	kvalo@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	conor+dt@kernel.org
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
	Arend van Spriel <arend.vanspriel@broadcom.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v10 1/5] dt-bindings: net: wireless: brcm4329-fmac: add pci14e4,449d
Date: Tue, 13 Aug 2024 16:20:03 +0800
Message-Id: <20240813082007.2625841-2-jacobe.zang@wesion.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240813082007.2625841-1-jacobe.zang@wesion.com>
References: <20240813082007.2625841-1-jacobe.zang@wesion.com>
X-ClientProxiedBy: TYCP286CA0309.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:38b::10) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|OSQPR03MB8748:EE_
X-MS-Office365-Filtering-Correlation-Id: 36688c96-0b44-4fe9-aaa8-08dcbb70c6ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|52116014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+WqCOXpOLH6ctJEqt4hNWgvjtwP23ivIH0K0Xl/YwFWmBrERAPo+BgpJgRan?=
 =?us-ascii?Q?nxlKkvWtb61Bqkram/fBGd7/6C8jyyQuUnJ1DCiQYniylsxel6Oq6L4XUWBe?=
 =?us-ascii?Q?j+8lH2BJYhrHK6dZncuJXAoHOzTH6x6LGJUosJvCtVoX8Fb8omaetlZ13869?=
 =?us-ascii?Q?+0RWNK+VNEdbB0Upjhl2nuRkBe8rvDoiYA8nR6Rm9FW2//r/CEAQ5glAp8Qd?=
 =?us-ascii?Q?qEo4qORqG9i4mdqc6EHzUzAPIZe958COdq9RD1sKZ249J2LoPSqLReqczRYS?=
 =?us-ascii?Q?7872MW7CkiaSr+fVVJibdv4t6vU8NYMORG3LmeQ9Ub1xQKS393ioUDCR4Mzr?=
 =?us-ascii?Q?X8HLsn0PFsX+dNCtY+U9sGA6Am4DQGEFZWKSU4XLOgkNblULCRzX6fG3cN/j?=
 =?us-ascii?Q?NRbmrZUK3cgxOMHZ+lgzCiu6Pt3eQRQSowDcR5VePz6pFhy5uT3G9kHq1AZ+?=
 =?us-ascii?Q?X0b4nRNHB7AsVsTZtkpp50kPb+5z7vMPDG2Twu6j30EUK8aIUYi2DKjAXngT?=
 =?us-ascii?Q?3Jg5nPqQrHZOxO5yRbcAgR4iTp8A+L7QLYzqNHDdtu51jPTo8JgvwgNTV6M4?=
 =?us-ascii?Q?mQHLYwXEl/I51FdjOayieKjRkpuJhwLKztc/lGeFzv0rXE9TqOy7V9q3U0xo?=
 =?us-ascii?Q?5zVOIpOLpsTvoJNgdUNUun/DyTaqkr+YjaEyaXLk5kVaUORKe6floMmCf4HS?=
 =?us-ascii?Q?pGkelpbTTr0b6FgQxyqcn+IG+lJRwH7MeeJU6n2Ri24/ms7FZfgFUvI+IOpp?=
 =?us-ascii?Q?e0uzdcMHCOa6MA4O9ZsjxebRYJfj8KI6KL2WnHaT0tPOTq1PoB9NO4GLpBDH?=
 =?us-ascii?Q?rfxIKc2g1K6y9g9IF6m4oxHwpKVRJijACaqor5b9qtg7C+bTB3RIIZK3XxWx?=
 =?us-ascii?Q?pbPk4dZ7Jy+EWN2xL2BXhdc/B8dCg6WDxnDvuuA/KxSXLBuHtymWuhBE+7Fs?=
 =?us-ascii?Q?Uh1oJiTlPWaeluqhbIduYNcnT2ShiJoTY7587gPdE+p13gQ8xSS4dX3uHYa+?=
 =?us-ascii?Q?7M+izvS1EVDR2c+0QVqPO/PlS+AC3aPsS+1sj9MUTj1m9yH1H6Aif6Kf00MQ?=
 =?us-ascii?Q?G3hBYR8VTD7UmezTxdSReN+Lr+sXol14GhGcMbVA1JHvZH8uCZaesYKOS7sH?=
 =?us-ascii?Q?NHL6SNLElVbt/Tyxim2kjeVCma3OpB72FbtZqR2G1/RA2bUjuVzv7HKR6Zzb?=
 =?us-ascii?Q?/qct/TjjiUgqCI3S0rSzvy/92QkSdeJUKnHHdh3FDs7FIxqORKWzTkIgYKUR?=
 =?us-ascii?Q?9n2a/FXEpWF4bS5t15KpUCnU+8wqKQN9wpaygOT9dIzqlc7xu5Mv4cgB3Sd8?=
 =?us-ascii?Q?5vsHGYs6dr/FzDNcGVAydS/mhPXtNa7Z3n1q3n/kS4quoCDORqS+qsyzlg9v?=
 =?us-ascii?Q?jLvlWQY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(52116014)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ku7pPsEc3eOqQvew0AVYZDpy2+959pkqSvugwRAgJuhhfnSHjD0dAmJauT2o?=
 =?us-ascii?Q?gX8ZsbyWRsWOXQRVMqgoZlWOCqcw/zTdCou9kjKZm1oI3u/lJ6wf4BxNiBzY?=
 =?us-ascii?Q?GXCsoDEr+np1JLw/XpXeIOG/3RIhBFY+OOQARjh+kbbZt5GVYhzBUuWZIP2j?=
 =?us-ascii?Q?MqNMXIIRmJ8+7hM6Jq85tu3dK2Z/MQFsPpbR0/++Qw50vxQPr2vWRLQSQQGJ?=
 =?us-ascii?Q?qkG9D962GJg3bTGAIj0UMbB/sw9EitwmXJTybBzRnXzTS/svnAcQ84EVT/lz?=
 =?us-ascii?Q?WrBvAfd5s8Z1qF0Oag8MGxArtGjHHXL59WYjUvoKRz+QAfFcl/dodNwhwjUz?=
 =?us-ascii?Q?cMNuhPf0pBNbP/nvIrB7WX8vYG2RnUSZ5P8fbZ2t+r74W8MuGCgA2V925zBe?=
 =?us-ascii?Q?aO9CDp2w1Pu/WRJs8XU5arqYRtNsU0mNgQupilSsKxnhz7nfaS5ZP+BHvZn7?=
 =?us-ascii?Q?JCjceR8GxbLHfb64bbiHlV1PX10Sk/SNqdGFjGsr2UwKvyR9UItAuPH4lpa8?=
 =?us-ascii?Q?JDns4i4p6+eBT0kgtLMNcvDvnzLDt2nOjt+cLITVsZKV0CYkOpK8L5Q1ghUb?=
 =?us-ascii?Q?A/bFJpzNB551tvy1d4vlpzob7Gm3XaGa13DIFoSzUQPirRBhkiDy4EXCoABr?=
 =?us-ascii?Q?95Cul/COv6UuRnq/o/i/nVxf0cVpGT/K5cY5qzZN6dfXNpeEyJ1N5lypmXZ2?=
 =?us-ascii?Q?lOz0TfSEvAW1RgTe5W+W8oNBVYC3r7GiTJEaXEixbX74kq4MJuTbcjQQPYqr?=
 =?us-ascii?Q?MXBZ9rm9yJHqCAQhXRqTz3InJfg7nDMDJahNAFOIanfHwveu6/yvH/Ks1A4K?=
 =?us-ascii?Q?pYlUHbbZVf4Hi1AW7+uq9crsx47LDrwzLyg+1bvGRT9fUa3XP26pxsgXt4G9?=
 =?us-ascii?Q?/+J8BwNluK4Ruiz/ZopkMVdzKgkw7Jgxnb0K3gLf27WROvljwvMt+yOmcYiB?=
 =?us-ascii?Q?cqlGvXFx8gWrlYUXb5HThoB8nmlE6jdx8RcEEp/QHqwfNhfQE7l7Mub2S8Pb?=
 =?us-ascii?Q?bfrZZzWi6LAz131/5PGXHbMSQomh4zEbpHygQlqLhmu2ozwP4Iy4jLCuYhwB?=
 =?us-ascii?Q?1tmFBo8ofzqVAmBP8Ol29GYNIsXGTuUdnYC5xLETSjaODNhPfeu7+5qzguEq?=
 =?us-ascii?Q?EU++mrrDNmemYzTg9vsjASwx0KJd1KJrOZHvW0XqUxnspPui0o9uftebDNUA?=
 =?us-ascii?Q?RrQWiXaCd8/Hyt09LPzG9DjZR58HEjBL9rIPuA44flA8Bo1sYoXBJ7CqR/dP?=
 =?us-ascii?Q?9pF6qHsEa//+wti6PcTF35KjCpV9tsj709mOAxPN8tMB8yLX/5ppPdRna9p4?=
 =?us-ascii?Q?zksNa8keIvT8IRPe5CqkehfDS4N2H3FLOcXyPv+15G5tLZ0M2lYRp3/nQusI?=
 =?us-ascii?Q?cfS9rbYN02hqNGsn5LnijWDxDcBUSINMLBJqQLx9tKBVSpX6Qdg/Cok62QU8?=
 =?us-ascii?Q?H9UZ/tnCstdUN4RP2xd+/h5+QlvBMooNZIQoMkXxuUjQqqNa5287q/oxMlZ5?=
 =?us-ascii?Q?6l7CCDyQGlFmT+tfQIOfXyphqvmCeO0mwyWn3aJNpSItEAZD+KvuM5TGfazE?=
 =?us-ascii?Q?m8DQtHgzeOOurcV5gL2ep0xdDsYSTImfSBoTFmWxeZ4IHhgO/lB+ZM/x7PT3?=
 =?us-ascii?Q?yw=3D=3D?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36688c96-0b44-4fe9-aaa8-08dcbb70c6ab
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2024 08:20:22.5438
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TK7wNwFVW+lgUUo3xmWOn7rBvCkcfrOw4GnMOU/Yi9hukQyO6P22LE9hRsmhX5v65l7ltbUxlugbCYBiheIOQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSQPR03MB8748
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_012032_740522_D507416D 
X-CRM114-Status: UNSURE (   8.01  )
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
