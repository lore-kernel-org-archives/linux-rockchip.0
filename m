Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32E40C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 07:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8RGLtJ/KjFJmL8oTaziRi6rXZB+JjgZvhVY5uKEjC1M=; b=zfkmgv6iM/sJrV
	qpsV3XN9qbBaWM6c22OIaxzbner62ysDwfmDOHkwsofDD84eJQZyu8Xl/+kFsP/37QECSBsWHu1J3
	WU+6UbWGm6s9SQl3da9zzCcH2xjzcRK2YnxaME49FAuWX55sdAqWBT6HNOPrBLoOqDm9o0zd9m3e8
	JiNB/zaoTcNcReOUffKyK1uuDcQat60WBA815haMuyGayjW1VoZBqMViN21z4pzfT7U4seqc0YLpN
	IUuTT4ha/sMs4r7qmguAjhCAnr63sahaZPhh9S3aOSwnT3wY5RSxlqcQtEnGpRTQ50hx5iQCgUs71
	2BZgHbORLRaNYbp999nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYKO9-0000000AEXT-17Ne;
	Mon, 29 Jul 2024 07:01:45 +0000
Received: from mail-sgaapc01on2070f.outbound.protection.outlook.com ([2a01:111:f400:feab::70f] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYKO6-0000000AEW4-0whX;
	Mon, 29 Jul 2024 07:01:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=udj7Jbo5qRdi4EmgeW/8qemG0DB/NtxInNf3uqRT/PrT/Py+iw0UWU7LAjnRYIYDH7e7rwXgUpzPDT6s6Oq3T8y96GqAVJio7AE954qMqgWvocul0xmVHNL3PdnnBc3fH6yj1GlMpNZOyDgnw99Uw+47rRD9oy8atrEqU5NEXsANyfK/IlxnauNuJi/zfXq9pCW/Pf3Zv1YobgHlgjWato8/B8ZuLZLP8ihAaIuyZ30sahDSuQd62zbJQCmKG83Q2cCfiep9n01xzTpjEortmJMnP0bhSGVivLvzpaQEwkrSvwyuKggJoaZEe1w+cRYbb0+4jCZbxmvryvfvGiOC2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5joZeAkWIRQ34gsuTda02RA7b0+WpONtmE7vZr9/GDI=;
 b=CW6GteTZ8lTu3Cs9wpDmKLwynG/tBVyKLV7mqZI43eEMoq9y0Ibhd8swG0EcU81/wXbqUwhHgcNKRJg1HSx92WGez+YRo6FQ8kQD7hI0QaXAnIJtgT1m+EhxR/qIPdl9IdTsrDXJZi1xMaFV387rm/pQXLabf/0vt556bSp5pPCH4imBRqmPKBAohy8NEtfpgm0s1FzWs4Uz9YnlH6naThPTbvcrAWR2/nt/M7HlqVXkaO9v/o7iQlK1MWOfxsEB4km7Ml0IoXYgjCaKguNE2wYcjpsaccsXlI9qZ+n0QqE3sEKHZFEYKU6gUNIRwRPuMQZkvcVK6Ing2GeoJ/6eyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by KL1PR03MB7870.apcprd03.prod.outlook.com (2603:1096:820:fa::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.26; Mon, 29 Jul
 2024 07:01:29 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7784.020; Mon, 29 Jul 2024
 07:01:29 +0000
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
Subject: [PATCH v4 0/5] Add AP6275P wireless support
Date: Mon, 29 Jul 2024 15:00:57 +0800
Message-Id: <20240729070102.3770318-1-jacobe.zang@wesion.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: TYCP301CA0045.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:400:380::18) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|KL1PR03MB7870:EE_
X-MS-Office365-Filtering-Correlation-Id: a9c86fb1-3cb6-49da-925a-08dcaf9c4537
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|52116014|366016|921020|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?IWXhb6rccKRr1rIiu3R0EA96hsvaOa12rABF0XwzOaW5R4dM+aq9aY90WkmD?=
 =?us-ascii?Q?Y5wXe+DG/K8UEedp5ePeazKmuOkZGLqe31Ldek6CPadSyu8wjSvKCcCay79Z?=
 =?us-ascii?Q?KDz5oOW+4dm/pmE+1vasU4X2YbRMv+5bK6i6wzSWcZSNsgM/azVX9MmNGAMe?=
 =?us-ascii?Q?nao0hl8q8DAEFxiVb6pMgSQYU59akX6wIPXkMOK8VqZVzThGEj3KjkrIZKDr?=
 =?us-ascii?Q?HxZnTBQtI3ytE6N86fBknCJmssMHC9zK1AkmZ1KbEBJUfDZQngYTkgCwb4vd?=
 =?us-ascii?Q?w8gGWn/mNyOrCOX7gz315BegUTX1ScwWiIfPzRmqErJnFMPp+d4dIh4FNlL9?=
 =?us-ascii?Q?M2OdnOOIUkgzkAdU/pqlYUYrUBiIctE2/4EfiVvSGv+Wc7bbqgNUjziJBU4H?=
 =?us-ascii?Q?DHbAfWCtA+BH5cWuCNZ0bWT5hqj/vjoavtbXcFLnh4JoSpmTIR212u8ETf0g?=
 =?us-ascii?Q?2mJZtlkgb07t+PWQRafgl+WBFSW0jN0YYp+LlFNXuBXgJmV+tHLE0obODlZO?=
 =?us-ascii?Q?+uDwH4LYSqO6GURgSmyunu4Nfi1G1jB8uVUdUnXDzByqeXCxeomQzIMDPIJM?=
 =?us-ascii?Q?a4I4OMxUPRr0a7N4FH6MMnoZ+5yVsEKwM/OVidwTXyMgU2k0IOQsBsxLU1DQ?=
 =?us-ascii?Q?mK/AUcvsePFf2Y9xPcJuKKY7dTzaPlNQteYpowLC3HekFXWsFmuSegCv2xkT?=
 =?us-ascii?Q?ZoQxtnwQz5329Q68FdpFKgA1+rzzzqWtSrkqJ9FQt9txVlFQ6+47ciHBqZiE?=
 =?us-ascii?Q?N64KZb+awPUdMumPO51cqm0AQ9cTulnBJeoqYFchp4lE2+dDXsKaxHjgkoSG?=
 =?us-ascii?Q?t9RSFWoUzCjdkGcWRInaQgT7b95tDrpmPCzDViU1LL9cYpthanmAvZT3dox4?=
 =?us-ascii?Q?Bqg0FCp7TJiCGYFbxUt2SRNLRRuEqASQy5o0NBViG3c1lDAFlrvaHuehMfNZ?=
 =?us-ascii?Q?Ow8tKFH+ma5Mihbe91yY9k7+2o0f1TYQUR/P182A90PvSHAH7ZtZmf+6iNFm?=
 =?us-ascii?Q?I8PEio2vAs0JSzTnGDD6ZJr0Wh/vwY4hx7P55rbHlVslcAey0v8rBmndq7C0?=
 =?us-ascii?Q?VtAjpaTzVSb8ADptbf2vF9jAYCinQh82fpHRHaqkx0VBs5GTVmIl02fEYhiO?=
 =?us-ascii?Q?cY6GE85IQvBCoMESdO3bbwUYCRTKiGMaRfwmVP0NxftEwDIH+Wx2/0/D5euK?=
 =?us-ascii?Q?SwTD4Ypp33k6p04cqYexP410dwNOQ7o+w98GAFT9qGP+so6Sjus4AiwGh73j?=
 =?us-ascii?Q?tUPbP1MRAwu0RpuUK1+8WxYdI2Kmp2WlXccbOw+rvMakMKXWGHx0g2qYGZxF?=
 =?us-ascii?Q?gJZShIIYUxYkClmw6feKU6xBlvqS/WN3ogphG0lpQeZLMnQcxUV9wBmwZ46l?=
 =?us-ascii?Q?wo1gPLY143F/zbjcktHNAv26QjZo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(52116014)(366016)(921020)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lXlqTnkIgeAXZipSoqFG/RV7gtxU4tFzJwUkeKv9esWJ/rq7aovwUSlqwm/q?=
 =?us-ascii?Q?eoJva6ZGpWJzEqpsWHOPhfEEzefAcz0ZANX5ErbDBbNHwxCpNCX8PB3bOJtZ?=
 =?us-ascii?Q?37EaZotTh7qZDZcB0eIv27nr3tY8WZK0FanTKTYXE5bpQqLhE50Ms8eLwBsI?=
 =?us-ascii?Q?ociwQSRok6MK9uh98Svzl8OPFskhL/qNOAcpZI40p3pVj135EXtepeLuwVQ4?=
 =?us-ascii?Q?9WJz2Juo1TqlVEt8YAfG9KCA0ABlCjNrLelyo6Evh41aSJ0itXmTYX3FDUcw?=
 =?us-ascii?Q?wLlxTRbJR/f4rIM3J5gVvKrWfwn9oa8PFaseTPuHi1zZYaXqB8YiMvh0lcFX?=
 =?us-ascii?Q?LlsOyi6BpfmaLVGof7u9DDGhPycwnU2A+hEABa6NZ1Slwm67TYO4SjhSUAe0?=
 =?us-ascii?Q?pfB9woKHSW8GBLOk6VBUzCzdJpZzs00K7guDqOH+1FPjhCbCkRnRE9vHJhYB?=
 =?us-ascii?Q?KSUOUXBgYKnxECCWmxGpHgfEM0OhlcqBh8xb2QFRS/WLX9DCXtMrMFjqjcZv?=
 =?us-ascii?Q?pUfsFtb/APo6NV3l0uWiLkKEtM74gr2qGS6D8fGoN9kIWo8L2HTLbwqyTZzh?=
 =?us-ascii?Q?QZMFrDt2HJUr+j3MHTTa3BlzzapK0iPZTU+M0rSz41AyBWV/zYiNzh4K8PZ6?=
 =?us-ascii?Q?I6RjZ+8JyEwAcrWb8OkvuouknL723L5XfvxapU+NepU44uGWzsSuh48T0nKt?=
 =?us-ascii?Q?vKh4/KF2sYMsrakt8AYAOgqpgNDcV1SoM5fXg/wCoSztRQy5X08Sod7CtJBa?=
 =?us-ascii?Q?Ac7ZRRrFeMvLuvSzM2beWwwYfObGuLN2EsyduADiQpru29v3Y+0sRfDqkQRB?=
 =?us-ascii?Q?5yADU6qQ+3+n8bkdDscrBNQK0fMCw10vxUWC2ENXoNgCqH02tKKNX/KPdEPW?=
 =?us-ascii?Q?HyElhd8iLH5hRu0a6Hw/0rwPCLgwT2l7wpFZa9laWXaHs5iEa5dbB4zkPgam?=
 =?us-ascii?Q?4+TTJqyCVO5QVyamq5lFJtS9KwrvIJ3lSFA4e9r2a3tlTSp7YPB6U2Kqwl/K?=
 =?us-ascii?Q?fusLt6ys4jFuf+4+z4P+SuTSqPaVsW6pv3m4M3foKY//EqFQLdZaCeIKTWPt?=
 =?us-ascii?Q?4FgRSEVKVpVUx1vRi6ONO15kdumuJFRv6f3u2Dr9m53QjOCmr0payGdmGJan?=
 =?us-ascii?Q?aL6DEEej2TCaXajZJFm5YGQpgmP7hpXlgPkvero3PwL38FFoYzb8yXAHCxJx?=
 =?us-ascii?Q?tUTFhTAo2TMATXV7eCpCeh16YNObDuW78+jG9pWXHQgQCSN7FPidUrRNshgU?=
 =?us-ascii?Q?sMxfQSL0XBpndhc8OmaV9xekKPbnPdCCMagZoTuvzAuFqF9Z8T56qwIN/JX/?=
 =?us-ascii?Q?zRm9sHV1Vh0URvoYv8CaaH8IFoiCfjCdPD9syrahBuwHFcS3ytuSqdlnsSWR?=
 =?us-ascii?Q?bHfqEI6BlQYpLIXTpvSinBdVOxeZ4VE+J8MmadJ4ojc02iJcGicwZf9Jssfu?=
 =?us-ascii?Q?7ey25panqfOZ2qipoHXrExD52IyybLJm/ZU2lqWxc5EsAePWABzkRoKaRPqt?=
 =?us-ascii?Q?IaDvZkWMgcSeGz/8j/n6oIon4B4htQo6aFzXLj9YqOlShHeP3WYmMqvAwGhd?=
 =?us-ascii?Q?rQNbXhotXSJlC/p5Lr9NCbEHetVmieWLXt0kACKJ?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9c86fb1-3cb6-49da-925a-08dcaf9c4537
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2024 07:01:29.2727
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c4B3e4eJGD21aKH2pXm8MPujw6YahgOlXVxV5epA2hvwftzfhmdRuACQMwYCPXaxdl3LXP6w1btPaZwVtffLWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB7870
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_000142_293518_A90AC409 
X-CRM114-Status: UNSURE (   9.68  )
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

These add AP6275P wireless support on Khadas Edge2. Enable 32k clock
for Wi-Fi module and extend the hardware IDs table in the brcmfmac
driver for it to attach.

Changes in v4:
 - Change clock description in dt-bindings
 - Move enable clk from pcie.c to of.c
 - Add compatible for wifi node in DTS
 - Add random seed flag for firmware download

 - Link to v3: https://lore.kernel.org/all/20240630073605.2164346-1-jacobe.zang@wesion.com/

Changes in v3:
 - Dropped redundant parts in dt-bindings.
 - Change driver patch title prefix as 'wifi: brcmfmac:'.
 - Change DTS Wi-Fi node clock-name as 'lpo'.
 
 - Link to v2: https://lore.kernel.org/all/20240624081906.1399447-1-jacobe.zang@wesion.com/

Changes in v2:
 - Add SoB tags for original developer.
 - Add dt-bindings for pci14e4,449d and clocks.
 - Replace dev_info to brcmf_dbg in pcie.c

 - Link to v1: https://lore.kernel.org/all/20240620020015.4021696-1-jacobe.zang@wesion.com/

Jacobe Zang (5):
  dt-bindings: net: wireless: brcm4329-fmac: add pci14e4,449d
  dt-bindings: net: wireless: brcm4329-fmac: add clock description for
    AP6275P Wi-Fi device
  arm64: dts: rockchip: Add AP6275P wireless support to Khadas Edge 2
  wifi: brcmfmac: Add optional lpo clock enable support
  wifi: brcmfmac: add flag for random seed during firmware download

 .../net/wireless/brcm,bcm4329-fmac.yaml       |  9 ++++
 .../dts/rockchip/rk3588s-khadas-edge2.dts     | 16 ++++++
 .../wireless/broadcom/brcm80211/brcmfmac/of.c |  9 ++++
 .../broadcom/brcm80211/brcmfmac/pcie.c        | 52 ++++++++++++++++---
 .../broadcom/brcm80211/include/brcm_hw_ids.h  |  2 +
 5 files changed, 80 insertions(+), 8 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
