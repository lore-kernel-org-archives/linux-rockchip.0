Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D48DEC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jan 2024 07:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/+uLShWiVerDcE5fVbPFtCR93ShvlPVui9B4W5MA28g=; b=Alx2ULe6WwrN5q
	5klyewWhnX6WoC0ndQ6PB2AA1vPN9IDfvL3jVZTfhT0nwduiy78PurXRq8k/vtyMAPKpf/vZ6gREl
	vr21DoO9OIEldo1Mx+QKrK8+Od73RuQvW07XQn7vpMp3S8T+YT22N/M0q5rqIlIC/QwFHAOxc0Xh5
	Rr9/SfL+szWJ+lzspieQr81eC1X192qs7JhjEUdHLDU8kzYlrPnVMllOLnSOhpegS81GGFmWI0K9g
	GffTjJ/2ufFpOBF7pK1FpKjqqpwVzKsJz87mPOF4MtH9C9icuq26IwzKe5+Ki2i0bAT6LvwSLoath
	Hx1/c1LQNTkDwX54kAmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKw4w-00A1YE-2L;
	Wed, 03 Jan 2024 07:54:18 +0000
Received: from mail-vi1eur02on20619.outbound.protection.outlook.com ([2a01:111:f400:fe16::619] helo=EUR02-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKw4t-00A1Vn-1p;
	Wed, 03 Jan 2024 07:54:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oghgw8gOj6CfgxgwEet2leN3cDhx7/4EnUk+dyJ7sKNPi5Gkwl39G3PBWE4gRBbcUHn1cGSQdIhflqsz29PoXzENnVEpNZfC/w+pZux55c3MVu1hytf4Mp+3qr2WkHPZEtooHk+W/lHbBDHvosoQ1lEDYIV34AvLldhIE88tWTwlLioW3JS5gYkcO6DOVLdx5V8mnGfB2a7XpJD+V8imqHaodR40omv9EWi9+MwnaGJUciD6uFxmX1gTV7/rBsGe7w9QMDw8y+GWOHX5H+5q3NL4bCl8lg60H0Om+DtqZjAVQDiGG9/3lnKXViN34I38NqOmpOeCc0HGGAsqHOG/bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=99I0Vif/lKja3UIosHBYTgLnuGDSXzAlAADMMVcEdjE=;
 b=jmrfbMRnEZeYUuy8RdMWKKKXhRp6IeEuKern4uGELSPDHlLroF2+DslGpn9h3GwOQfg/WfhWETugb8mQjaXPu1bCC/uzPKW1ICewsplgnPzyeGQYpnt5uBSScAYSG/vELA9pVKobdEzN98mKDk4zUM2Y4wpIVR5i52DSNaQhIF0b6R9cX+jYvW4kxeAntKTSfHIQHx9B+QjqV22WxEsQI/JB/E10le1xX8eKgsFSsLF48tGN5lf2+tJrq4d0QsMeiNMFTich4d4q9Npc0k8EfTu3yycH8UFRHx/BlwxBxXPRSobRD/e8Rse4kJ52aludBaduKfJQ0c8DUqXFf9zJBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=99I0Vif/lKja3UIosHBYTgLnuGDSXzAlAADMMVcEdjE=;
 b=Z7P3vMIXMc9VyvORZPGcuirGuKguVXFawRWNpInBgNjPS7Kkpbc04x7lURzoukMGHEo3Nago9mU8r4uw6+1+FHrlqXzaYm1ujje4pf4k/0PIKd5Ri5x7JgBn/2/Y+kdZmX1vqfVQWhgvnlo0kgZxpV8BDXoGhCfc7fHgmCvhEJFaarDPeAWStOaFc19SVJaZvnqIrHcXAe5syCQh8jETeGyFvxAAoAxpcWIFe+auIr4Tq2omBIi4f3am4ExRSBaJz6cQYE4CHWHZy0HLQDcB7waeUYWSPI7c0DZOrrnmVYeBVP7SyrKe+y+CP/x/mc+8VhTA4+mI6OUF1XgPcpwaqA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from VI1PR04MB6013.eurprd04.prod.outlook.com (2603:10a6:803:cb::15)
 by DUZPR04MB9946.eurprd04.prod.outlook.com (2603:10a6:10:4db::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.13; Wed, 3 Jan
 2024 07:54:01 +0000
Received: from VI1PR04MB6013.eurprd04.prod.outlook.com
 ([fe80::cc4a:6b4:812d:7c8a]) by VI1PR04MB6013.eurprd04.prod.outlook.com
 ([fe80::cc4a:6b4:812d:7c8a%5]) with mapi id 15.20.7159.013; Wed, 3 Jan 2024
 07:54:01 +0000
From: Iskander Amara <iskander.amara@theobroma-systems.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: quentin.schulz@theobroma-systems.com,
	Iskander Amara <iskander.amara@theobroma-systems.com>
Subject: [PATCH] arm64: dts: rockchip: add missing definition of pmu io domains 1 and 2 on ringneck
Date: Wed,  3 Jan 2024 08:53:52 +0100
Message-Id: <20240103075352.1009393-1-iskander.amara@theobroma-systems.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: VI1PR07CA0136.eurprd07.prod.outlook.com
 (2603:10a6:802:16::23) To VI1PR04MB6013.eurprd04.prod.outlook.com
 (2603:10a6:803:cb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB6013:EE_|DUZPR04MB9946:EE_
X-MS-Office365-Filtering-Correlation-Id: d0369bea-7df6-438c-4c58-08dc0c3125fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1le8VZEWeqmQx7+4VB4Gp3krl47OkLqn3mpK/PwuEK3Yj+3/BJYfjL3aorAB7dIptGxk3fkPgb0xXK7pEj24zRb3baOOWM5pKpNkkBLHrz4ZIypfzXtRemB78F4WZ7a0ADA4Cpy2X6dKaaApiy8PVO1jk9vAgdbbtDKYTxCqTPUlEnkZ1/rgZLJrxSQgUfDqhi8wXfLgi/FuGC6hNmyth/6hmD2wQDIC54VkjhnlXAz7fyTjmnDTbsGenqTXrHFHrE2VQvuqgTDadezUpd8/bKG7gcr1LE6gFEP++6KHOheyW+fVi6woI9fJo4w5rakrOsYTWABBfdU3V8f0Rzw53LCl7rGD8dq6UNAqEs673mBnxYRkzCfzaxi+Vs/KhVC7CQgmyOmFPO9bgSFskDa+G3rdDw65CjhT575OElCXlNCeeemOBN/7zCeZWEe4gnQZw9HVhuYltp9fnB1xv/WENq1RaP0RXTCOAK+mPoWSRCLT1Yd2YGgWaP0O33HAdqoYCQqTL63nh+i8PaDf/hTTMCeo9pGPylh88T17Y7tObXlbsi3Sj4D/cnqsvQFssSdX1BWLA4s6JyCGNQJ4279+xddxwJCWvE3cchprih0K3w5jy267b7XsaCCfIofrcdO1
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB6013.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(396003)(346002)(136003)(366004)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(5660300002)(4744005)(2906002)(38350700005)(41300700001)(44832011)(26005)(1076003)(107886003)(52116002)(6512007)(6666004)(6506007)(478600001)(2616005)(86362001)(38100700002)(316002)(4326008)(66946007)(66476007)(36756003)(66556008)(6486002)(8936002)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4nXPnj2WHzUVAycEL3+WEwgYYEZl8AIyEB6DvJUr4uZZkqpivvmoHpWOr9jv?=
 =?us-ascii?Q?4KqqO8L6fN9RQzmHKIL37ObC4FiZLtWTNkMNFcQOvD8KDHj6q+Mj6zC74P80?=
 =?us-ascii?Q?H6OVizK0DndWRZEYcOYdxc/pk2zOmv7dLT4v/X8cseDA+dBs/8TrBxgAye7G?=
 =?us-ascii?Q?+5zS2Dhw85QIDSsbaEJs8NLgegiBdXHPSTSb15/KUOR0B7o0Xt1bkPmk/vKl?=
 =?us-ascii?Q?B24ZExtiWs6LkllSUKvN4FgmxGwt2g1aFTa+WvSpmVP9GuaqLPwaAFH48Ye4?=
 =?us-ascii?Q?1WEUppuqmdiAhW493aDRnC91dT1uUrv5ex/T3BFiQM08YH5yzzEsKhSDpbrm?=
 =?us-ascii?Q?OaeyIJqzDvCkz6rNV5EBiyLUqbBS55stOR8/4FwOJJAjTku63XXX0PNSVZGS?=
 =?us-ascii?Q?WN/9tmehn+kZIOg6i8ExDX5xBCYV8LaOUjab6ga+UCPcxaeaZlifr7m0UURx?=
 =?us-ascii?Q?dxQRhU+2EvitBJgrKJPl65HSkvQP1oWRwVIwcmKPJ8+iFgJewBkUUUFeJdnk?=
 =?us-ascii?Q?QL6oD9TvsWidtMAlmnJdnZ4aDtChZc+yr34b2Cu9jCKu/SWNWwXKVlkRDrH9?=
 =?us-ascii?Q?wr9/szUTTSOA7zRLIYDuT6iWbaRrcGrPgCy4WhuXGTdXIUFsx/lO0oOifQ5r?=
 =?us-ascii?Q?UJAEqYLIIM0zAPbR0Q+mkuMnlYu90JZIzAm58RV5t2SUZpJrMmzLACfbIZrF?=
 =?us-ascii?Q?y2ThXcn4w8SUT51Nr33Al6xs180aiZkJ54+UCry8+eqmu2HrZ1w7haI3SbVs?=
 =?us-ascii?Q?JR+5wB7MNedLGJxWhsPOb8hz7AyS2u2kENLSyETdnWI4EeOyS1WEDEFyoT/C?=
 =?us-ascii?Q?1kzLj4X/eIpULDECF/u/fiU0wAUE/KVy1Z58HWgrCQo6CRPqaknWMO/BiF6U?=
 =?us-ascii?Q?1wXmB3ELeU/4ahsKgbn77wgN7S7qMzyhq4H3XtFb60pbu/3+GPSFz0bCMmiv?=
 =?us-ascii?Q?4bj3rBJiNExSnTH8N4LBBZB0ohV6NFxudavxeSlucozmMGI/j0G8lchUXtsj?=
 =?us-ascii?Q?CKgvzjitp5Mx8hoRk8dkhabjgWfLvmS9hod1QN74Y6kKMlIpljJ6YfPJoxjj?=
 =?us-ascii?Q?wslU4shyb6GhoFEMEo0oFJ3HA+kSgwVSckw26DIdcaMEUXrG++SDqjePsqyG?=
 =?us-ascii?Q?c3zlryJauSGcoXMeXz9wL4wrVn5zzOO7miP/td4D90/X4qdad5LNqN202nbC?=
 =?us-ascii?Q?erUWuOYv5po3litr6y/HH4ck42KjUzxSBhQk/vilZXQuKpXGhW1j3ZS7n4cL?=
 =?us-ascii?Q?jJtJ5tM1foiuwYgm1bXSojNVFlZaEd60MuIzsDWd/bpoUOp18KR87mCcXsWv?=
 =?us-ascii?Q?HBlxPQwIsPh1uwsb28H6kY0VNXnISwTb7Zxz7RnX7PWwV796NLCWY1dbAJIm?=
 =?us-ascii?Q?aqImAK/kTyVuqQCYZLZ5sf51HzouIIgLfCRucK0f2MSkjOrDyKmDomRT3o6e?=
 =?us-ascii?Q?cSEwqtRHwWK3jduf34PSAe+xkELt+CwVwCCLeTNl/ms4x9I6QS5836l/lYOQ?=
 =?us-ascii?Q?2l5cTOVPAceHeAu/op2v/4T6nxHmFFziUGCUz8y7rfVuiTsZLn/2JQnuFpoo?=
 =?us-ascii?Q?pH0RDgods3a74rGci7iQ+0d5VjHB50jVNDviMdo1vgOM16oAO+7mzdzQMMaR?=
 =?us-ascii?Q?QvWH9EOQKqaYAcIBm10+8/g=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0369bea-7df6-438c-4c58-08dc0c3125fb
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB6013.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2024 07:54:01.1204
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ouSwGu+5YKmhggKFFu4P2Tv2uWjXYTRlgeqbIRfuHCTFj+BK+J8z2d/AgoGtT/WXuWmjdfAAsm9HLVYvvOoEuVXeXq52HoWV0hvtVmagIwj2aAvakQ+osLKeykEPfKIY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DUZPR04MB9946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_235415_657242_DADC1A9D 
X-CRM114-Status: UNSURE (   9.45  )
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

Two pmuio domains on ringneck are not defined:
	1- PMUIO1: supplied by vcc_3v3 regulator(PMIC RK809)
	2- PMUIO2: supplied by vcc_3v3 regulator(PMIC RK809)

The reason why no functional effect was observed is because of that
the above mentionned PMUIO domains were supplied by a regulator
which is always on.

So let's add their definition in the dtsi.

Signed-off-by: Iskander Amara <iskander.amara@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
index 12397755830b..821824a6668e 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
@@ -347,6 +347,12 @@ pmic_int: pmic-int {
 	};
 };
 
+&pmu_io_domains {
+		pmuio1-supply = <&vcc_3v3>;
+		pmuio2-supply = <&vcc_3v3>;
+		status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcc_1v8>;
 	status = "okay";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
