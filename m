Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6D9CC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 02:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEQx8QbLsSdIUkl3dYwTwp7vEpQEiYg9gX5/TXMuvfg=; b=Xol35kOlX9iqEo
	fCHeT00aIhNip0VDTkrbENRFcL401stgfAKmrD8PlJvfqxkLMHriOXHIOyXk1gxr+NDgg5kslEy4g
	GkNamtHkZp5QpULqZMfrViFPQE7WFtJW3QGSHkZDGd+fY9g9s1cCd0IDTOGCENpHdiu25NalKmI3T
	jPuPst5TqM/iFjJLUWZ4jB9SMqi/xlnR5I9bdU7dGoHmw0eTms5OEUbfLEwymy360od/zwzrtBAbV
	FIqHnwHkw77OagY5I5TCaGDg9IEYe5kjMBxJrUpbZss0STviQiJCAtCCD8QRWmdGotsoLuP3OPOeh
	l9n0Qxft5H+iJL8R/4nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZiUl-00000007QRW-2VXR;
	Fri, 02 Aug 2024 02:58:19 +0000
Received: from mail-sgaapc01on20717.outbound.protection.outlook.com ([2a01:111:f400:feab::717] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZiUH-00000007QEu-0Y0C;
	Fri, 02 Aug 2024 02:57:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zx2x+S/4Swd/SwvKjwvIzDIg6hFLdwhmSerASxPOkr+0MOX1Rg7FOTXeRu1ax1UpqXPmv41GXV+de+D0JDCcYSzFl6jyKYjM4/I5DIxarsAbewmFUx5fXgCxv1ozKqavce8lJZdrmZkHmyis+gi+H7Bed9QYk/y4+YuUdO91GNXOy5ECcZtDOHuxfEwfeKCGfxNRusTutiwhWB4/13Bpb082yVjjGMqBwJgbF7887d2QL8SADugvKpnrTrtDUGYbJze8zQ63V1ypl5c91RnMMDwCTdv4yf2VheeWKD1xM6uRQ+D7dZFgrETrX2gJ+Tqj7pAMAAoW9LWRxM3b6VTtZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n3ZCKui3FOaZbR8MmUilWzOmfwqy4Ji7tdvVIJh0aaI=;
 b=hi3ZmfJ4xswtINYAJfMj4xRVamLGWR1lUZXJSxSoeIN3DNNT1buD7I3R0AegsulmQrMi8TJRxb7bWh13d4aoa2MA/51dRl45nuwnLkWVpuWGQE4pE72rWsA6BPmwm/9BopjitDJYOJQ1Icsskp2cmrfTECnBQDv7cUt14j6GfP2RAZTh2Hq9ACRJ8L9RfVrELFXmkpbigOJ2vzrldENOwZVGfLHHMFG77XEasTjbq2KCYyz7v5VQ50hvqYlBtZ/tFGknNjzb+1O5NaI9G1olRe3oERIJL9hc3Yjqi+sZA8M1RLG+Hnkt8M/eNZCvm3am0kADTTFIVkPSDiiSDzGwMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by SEYPR03MB7120.apcprd03.prod.outlook.com (2603:1096:101:d5::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23; Fri, 2 Aug
 2024 02:57:33 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7828.016; Fri, 2 Aug 2024
 02:57:33 +0000
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
Subject: [PATCH v7 1/5] dt-bindings: net: wireless: brcm4329-fmac: add pci14e4,449d
Date: Fri,  2 Aug 2024 10:57:11 +0800
Message-Id: <20240802025715.2360456-2-jacobe.zang@wesion.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240802025715.2360456-1-jacobe.zang@wesion.com>
References: <20240802025715.2360456-1-jacobe.zang@wesion.com>
X-ClientProxiedBy: SG2PR04CA0211.apcprd04.prod.outlook.com
 (2603:1096:4:187::19) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|SEYPR03MB7120:EE_
X-MS-Office365-Filtering-Correlation-Id: 6133089a-f584-4df3-e79b-08dcb29edafc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|52116014|1800799024|921020|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OwnDRzYd5e8E1jzv+vJX4sRadcZpZ2EhCpEd2R7quXBonWCYuRj73JziV7Ql?=
 =?us-ascii?Q?KrJXKnhL/MbTKvxii4vkBAZIqKGGnCY5WktXc8GPZSn+y/J6mPEgrXrMwHTy?=
 =?us-ascii?Q?JcayCV4Fm37gq01jDg/GUrML5CGWfZ58ZerCYmMvRC7zOSobWB9Nz7SGoDJ4?=
 =?us-ascii?Q?h5/qbhtFNlwUAdfC/95UCGt+lX+leRWtDfby7EvYSsr26j9s4YBYPdXPbt0i?=
 =?us-ascii?Q?KXHNcufxFNUsVtLqX6eXO5XMGLsSw2SP6juUnuTA4kY7TLgVnenAtmcyqpu+?=
 =?us-ascii?Q?0yZde8LmNm0kSbhClslxmx3R0/AJdL+eLiVucb+N4ckEB/+6ADT1vuhBAmjw?=
 =?us-ascii?Q?oOWwxZM3Nl34Kbsq+OEBSwB0xygbjk3R0xc3Oaslhz2ZO8e2hmkh2CsozRu9?=
 =?us-ascii?Q?u+prHEECtxNqfCac3isFmCIJ1A/GYCZDuh5gCXxR5ureqJtaF0mTxhJkdJ83?=
 =?us-ascii?Q?eEWb1I9oH87bdaOL1G37t3qRwG4wssIyMcSmKjEG39su9nn1mRiiRlpcSVRw?=
 =?us-ascii?Q?XVYuEXweithsMticTd7ZR6fLyph49Mdb4nKosS6GRiGDESasomqqhMD5NfBu?=
 =?us-ascii?Q?FLeiGKdJ05Eqmvxiu+OUyCzJq1AqsU/R9zu/RdhuO1OL6/ANfagUvlba43aj?=
 =?us-ascii?Q?ofdxq6UEe7hnyuII0LvBC3xSMlbN4XoupATJ30gvhHeob6sXlWggpAk0GhpX?=
 =?us-ascii?Q?rMEIzNkGHm+kSEb7Z/i/s5U39gXdnf505T7XIZJvn9WU6gaNSjs/m2QOJk0d?=
 =?us-ascii?Q?xmIaAHRuCt7GlGE1wxE3uGW3cNynukRnO2p+GrL7yxXz1ZV5NsFOfjF1myRN?=
 =?us-ascii?Q?SA33IHOQjUtOumK/VrBrQ4odwb60jeEhx1y6012RqI3CafvHpF0+t+8/EMBm?=
 =?us-ascii?Q?nmtH5+pDCv3IPbrFoZEEqL9pK6ozx1hqiMCO340SyOuIC4ZnF+wweNu+lKU0?=
 =?us-ascii?Q?6Pl9BG6offmXSzCWdxtDzJUe6ueSahVhnFhPgyhEALttW4QDqsa7zbqjWOrD?=
 =?us-ascii?Q?CoTptTrIN+GK+9SEtmEjh7RSYSKKJZ1RYd0pvAPOdL935VbidoYloiNGUuUY?=
 =?us-ascii?Q?ShOA/RJD6pEfc1Iyy/Ghe/22BVs6s5WX5goL6jZi4P5EK3fm9m7SjRwB3B/3?=
 =?us-ascii?Q?uLbN+LHGn1jqyPKDAQiwLraOHKWxjXpJNPiJoQcQLu26DFj3JPYnz7xirWu+?=
 =?us-ascii?Q?C4+fZ4UY3ddCf6B/N57EVSpfEpv/gqp86pECYi25uMpTnoU64a8ZGlunMz7a?=
 =?us-ascii?Q?2g3yP3jv9df6V36Ky6N/Q00I0kWQiAp0cooGmqz6S+ZrhUkARl0k7LjHuUbv?=
 =?us-ascii?Q?wVeyRsHvMKsDVAzNCXgMKkiJYcQGOBfhphkZf/hNDxReD2QXXc3MO4kHR/pN?=
 =?us-ascii?Q?IyaxPeGYH9T17iys9MOs+RMGStO4f/8LLku9Q8Ta4dfVHbn8mV85Dif8mO5l?=
 =?us-ascii?Q?5290M24EpkM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(52116014)(1800799024)(921020)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ikLvRhe2DULS5GpFTQwIhgE+kZ8ErfqFpAao140UOyVbxREMrGWQOQX+WWoY?=
 =?us-ascii?Q?caXuyZik7//W3ZdOIaxo8r4Na/hzjwbR1mG0Nn7m+CcEUkcq/2Gc0WLZBJfY?=
 =?us-ascii?Q?5SNWUQgEVddAvJ9TCc+Utdo04gPaNlOHMAtQ0/lGTi01/YZDO4uGB1k8uRgP?=
 =?us-ascii?Q?ZVX1xjMq9imVLjXSoQ6rXcwfnmpLbuR4dV80VpyQfJahj7Ya0hbTUJlqFc4l?=
 =?us-ascii?Q?ZcvcnN/RTFks416atPGUfBjNsRdgZE2KV7U8bjN7j4Qrvletw+KNpt1rlsy9?=
 =?us-ascii?Q?Aiyla46FjgZULmFbOMp99zO4auPlxewrDsJQhbB2HzY6CDnb1uiUVX588scD?=
 =?us-ascii?Q?HP55qpjvQzCdmH9ZdL3ezMqL2wwQBmCUTn1NlIBEPiVHipxqLq/1NB6hIsMa?=
 =?us-ascii?Q?3zCm2PbFKSMRWXJGDs28SZJT8H7mJa/1t5QCmZ/dwNgZ/zl8PAcwjSwxFmGU?=
 =?us-ascii?Q?UKlZ94alTJyfge6OL02cVkyTX5odVJjvJgpLGP9Ycw2wZa0yI4TzcbJ+GlIc?=
 =?us-ascii?Q?ezLaTtJ2ufUelShAcrbEIBY4a09iiSZqALHEJjsE7gUlLGdZjm7IjxedRY+y?=
 =?us-ascii?Q?yvK56fdbLV8P7VfqJUZILqLU7APHweZ45W9KsdKY4ld3CZoJ6heDJBg4vBtP?=
 =?us-ascii?Q?0ef6AXQGH3NvbPTKHqOtgNTercIrtlAs4dJSDwfPmgNoON02fXWwUPv0X3A6?=
 =?us-ascii?Q?eC2eGUrBwwi7XfebEWGm5N+XTq3ADzIi+va6C1KY2H7aSvY9y9bCGFP9ceIR?=
 =?us-ascii?Q?GoDZF+p71hY0L5Bk2HFO2Wp5Ev25axb4AmStToWF6EPbDanh6xFZZ/9mwzof?=
 =?us-ascii?Q?xvbRfPuUTbFmBfK3ZurozHWxYnbXfxce4crCxQEbEynyFx/vDRupiLQexaP2?=
 =?us-ascii?Q?pHet1RP4meVyDZTKcrktoAluM9z/nnrct+LEPCzXDdhk99Q+CipzspC5ssHa?=
 =?us-ascii?Q?D9hlPA5076SXXqYF+3jkSKcc5RgnT/1rgQ0YgS3c9WYVWb8EtwwQd9+tJCOq?=
 =?us-ascii?Q?N7yLoBf93YDWOeItnB8RkpjPW3l++21jrqUB80i8yO/BP3wbDOyZ52IJPdJG?=
 =?us-ascii?Q?ZQY7F9LUJDpePijewMjpxYNrh/X1A7GBaupQ5pQCzRPV1EwshFJ3Zcju5Om8?=
 =?us-ascii?Q?YG1ToaAHajFZrpVs6dGwNttOMr5IEPkDWQsuZoIl0kdoCVOQfnJo6jWVgfac?=
 =?us-ascii?Q?m6pNNY4rf8sBFY1Q8IQl2nqEE91tzLcOkE0qio4n4siO/eASVkrHlNjWhqgt?=
 =?us-ascii?Q?PGz6zRiQ4sW/s1EKoRIEgZl+MaKIjQ4QXi0uFB0kYhDbalNIvwh+mCJVx2tF?=
 =?us-ascii?Q?/L8BFIUbgbVCMKuR97BQvwZ4wVW8LIPfH3Km48aIkjLYOr+RXawJ+ky47U96?=
 =?us-ascii?Q?q6Ya4sXeo45Ci4le6kRR1VZMc0KmGou4cHpLstxM8Eux0DN/MRJHxRoB+tgd?=
 =?us-ascii?Q?d+iGApGsFFGlDHf6OXmSfmIczD8kpCefCoWEtXdL4kpDRmn4MEAG4JXRVC18?=
 =?us-ascii?Q?8kOwTR16YaxgK6NwmHdzNbsLLkR6DMvtRo8IERTsbLJmT0hrzhWv4XIw4XYu?=
 =?us-ascii?Q?pqUoWAf831yk16cyxXjfbgbT/PtZNxy/WfeTIR/m?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6133089a-f584-4df3-e79b-08dcb29edafc
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2024 02:57:33.0685
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +hAGvb8rHvLGLwznYa1DwVtymiKX4/EXJh5lrRc9U3fSEQZVXlUg/+VN0r2RBL38bFXOBu82/FOialC7jufilw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB7120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_195749_178352_462D8976 
X-CRM114-Status: UNSURE (   8.25  )
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
