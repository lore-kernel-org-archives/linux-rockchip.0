Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D06C3ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Sep 2022 06:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLqTmcwntToVAH9WTJULS3zWlh8MpH0WB2khoPRS5k8=; b=S2FA7O1V+x67/t
	w6D1mO4XuGG3ToYf1vW7OrqGYm2GFlVT7gyKg9wiQvlVE7K73nv0aUthWdq/JHH23YFWjmHFumgVI
	U/IgbY3r/YhMqflrVWL417UEAC39fQR3eqox97j0OX8ojU4lsMYnRaPGEizqfLSOSFT3AjWjEJ6Jq
	sWk8iWxCcyo69LuIHYAFuZjyz7jBb6/GErFMHjM6fYJ3UCHyU3D/v3f/k6dvpmjpCnZxqdjTfD8Qr
	L34abxq0uhhTQsHsmZD/k8dSSMrCU1jA0yHifQgGkwJrAhELnkDiOwLg/fFrjovZZ+yoX4qC2dWAM
	oSxmdjId33AsdKOuPeuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV64a-00ClNE-Nw; Mon, 05 Sep 2022 06:59:08 +0000
Received: from mail-eopbgr150080.outbound.protection.outlook.com ([40.107.15.80] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV5q4-00CUw1-Vn; Mon, 05 Sep 2022 06:44:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=daincA22ytZLO9mmbSYbqnWGBJWoqC53UxrVOLDMwGsxPSTRxSBdTirZdpK6R+huay30PghvMxOHpTd8uyYkikAtnKVcqhgow195KCG8IF58a2AhkiL8kCA7smw/Qddp+fXQ/IoJFhLhVKCFNFFhGSGNrebaWJBzum2o6RWISsqS+IRorEbSwnc4rVFU9N63LoZq1BnZYUmVOYjAOWCTXHndLOEKG82GBdb7fO254ID4w9abDiij8rJ7OUJMkFXhFMaXGSbjA//BNhRKNzNWT+J1qPeFyxGXnDYXql0/IodIONaUwe44Y+u+TawrqT3diAhu8LRMdWW4XCWqXzvuwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iG4/6iogEdo2FmtMhdmfxUynAS2x86NGHP6OfhyaXdA=;
 b=dQCSRYE4+mfVMBp1UHslbOpihcksMQGkaZao2SS4pyViq3yij2Edz95QIhCfqH6i1Dgs0Pr9t33BQhv1xg4RFtDwWcEbgDGe2XKvvVgfH5ET/Zxwp6zB0AlAx09tjwDGcxvb4QWoIMHTFwdc926kgv7RMfDDR6+UOPIDyc76lBlveizRPNvzpbebuOw+lY3HL7kf4QVzazToYBKStnbB3rNjzxJ52YU8dXmJWO+VnxA05YVz2F6YcZYSSu2cZ6zY1hsFJAXs0iHiegqSjP8pmvUJJms8wmcTmABiWytoB16oFur9PnTZGLvn7+1HfzT1+f1MZwy0ybUwyWsTXuuz2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iG4/6iogEdo2FmtMhdmfxUynAS2x86NGHP6OfhyaXdA=;
 b=fU6QQRrroDR33VWMUWamhA0pPyYNn9FCKEpHt9IRxYCNo02ABW3HnJwh+cLxOUeKGJeGdF2rZJNknAexNSrtz8w5tuq9tFROKYv/Hj9ceXxjY+ajBGVwU7TPrf9am74U4yf7sKXUory6sIffCqPPU74HfIVPVLZ8Fjz80BabBao=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV1PR08MB8009.eurprd08.prod.outlook.com (2603:10a6:150:9b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.14; Mon, 5 Sep
 2022 06:43:48 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::f1b2:3979:a31a:c30d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::f1b2:3979:a31a:c30d%9]) with mapi id 15.20.5588.011; Mon, 5 Sep 2022
 06:43:48 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: [PATCH 2/2] arm64: dts: rockchip: fix property for usb2 phy supply on rk3568-evb1-v10
Date: Mon,  5 Sep 2022 08:43:35 +0200
Message-Id: <20220905064335.104650-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905064335.104650-1-michael.riesch@wolfvision.net>
References: <20220905064335.104650-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR2P278CA0017.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:46::11) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 11a5e81f-dedf-4526-a170-08da8f09fc9d
X-MS-TrafficTypeDiagnostic: GV1PR08MB8009:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	7nX4THaHOY1EXYTZPlrf28aY/fTLV0ndsCOAqj0sOfY1fvwihsGd/Q5KUd5TzmHfanlsPYVqLGhPGXE17Z7VKnaLo3FSRlBvxo7iH0EAmS4lkbpR6jzLxjUsdnBC57+eBMwOMn5GPaDpFF/3Jg8UYJAJzTLzsT88Ez7U2uO8YiGqFsDZCoBtlVvMoKfR78r6SySD0+GxVPiJUJwslGnopccWfZIcR5csWHYe0zZBUCQJG7D6wRqLsr0jJxDWofFUEBEMD1jgt1BQ6QKdPCvEaYA6+wf/VRvcHPydVWRL2ueidlnYxRXjKRS+Zoa+DqCjTmdV9sD3BKdpzo9hXMyy2HSx87a5zkxbJxiDPBx4EZ9znYpPFTgJTAe4tYCqrM+AKrzy6kbVv0wOdxT5PVP2ZH5JyeDDbESflFTc9rnJNH8PdEdXy8x1ohWtRQ/nci9TAql3n2Ak0jPI3NeoVrnqETw3R0lLl1ouDKawsyI+9ft8ThYDDImX7xu+SAgpnBKInH3DFJ9bBVbKO3iWRkmF3nClg6IxQ9xtxFzVsTTicoiBcZs5tLSjB8A4BEnNVq0eWKAzfkJNIL5AmHxeBXioPX4a4YQW0fR5AAzAfUtbGf6lLaBEMXO6zKoT6GSIRR0ZX/FiX/2pQK4TCgc0OiwkxPaaYUcjEa/u+ycRRDGMARvTkujw/tzktkFztRuxKpH0gL8wMgae+/IrymJgnW2zXw==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(346002)(39840400004)(136003)(376002)(366004)(86362001)(5660300002)(2906002)(38100700002)(8936002)(4744005)(6486002)(2616005)(478600001)(54906003)(4326008)(66946007)(8676002)(44832011)(66556008)(66476007)(83380400001)(1076003)(186003)(316002)(6506007)(52116002)(107886003)(41300700001)(6666004)(6512007)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?xqMoqdWRWQzm+GbST8RM5PRJQTo7a8FGQOXXRr2HVe2AQTOKkthCLvYa/Cux?=
 =?us-ascii?Q?NEuH4TK/HG85Yrmp8Y+Pz4DHpYMsPLjHYjSEcPOcoHTedM2mNc437B7evJmy?=
 =?us-ascii?Q?0oJnX5NzN+AV+mkxbjvVDaTnHsR3V4wn5vz2jkg3JtEsdj9eNnKFj9V5hSPU?=
 =?us-ascii?Q?39pmwK0AJ1JnL0EC0v1SZ59tQEppkht+cbro8ft0Q/x/64Ldu3DbKTBEkm4N?=
 =?us-ascii?Q?XwYGDRn8HpZeCDCbaycLFAwpYgU42jcNbawzpAYE8SGrknF/0qo6XylteRb2?=
 =?us-ascii?Q?eXY1hKnUtlvkuwaq/TeajQ6IN4yNW1BG/mD2H2fO+4sxTgl0UgfG3GcV9UFe?=
 =?us-ascii?Q?8+NjiN5wk7786MPCWZVNS//dm4xfFqIM3czYHmz6gXKsEXK4nSZwbfx/fXU/?=
 =?us-ascii?Q?S8tREaOlE+XBZoJEonzR2YV/zYC+nmUYO7fuV64SQ6hgMy/eaeVaPPtZVK64?=
 =?us-ascii?Q?MyUzGAfETb9bSCp6hzpl+M+XCQ52faIZuFnUK0aqJQNXdFH9LC4QomVpZXJR?=
 =?us-ascii?Q?vcwx/CDmYZvGGfy6ew9it9Tvvsr91Iy815TJtRLGEWYFABtJl6OAdxcF/9A+?=
 =?us-ascii?Q?7A2GYQ2/7ry2a8xlJAJPuLwGD79MNkcCh48iJOYSZcAcN8vikKsm5C6TLfFv?=
 =?us-ascii?Q?vk9CiaULeZsEYNF3KTngAPku51r8rZKQ4osJVUdyx+NiaY0b21PO2U47ZSql?=
 =?us-ascii?Q?2oeK+8lntp3D4rP52nTmI+u7MBRtZrP9ile3+4XiCzo+qXheGfSCrVPul+cw?=
 =?us-ascii?Q?xjtNki94M1IQYpj+g2S9s8ZVTUzJHjbEE0qQJ965QAYICLZHiN1wvqWy2sbK?=
 =?us-ascii?Q?mIDL1cLehXjjZK1G7yH4vqDbya0tNKx32GXVoGKYDgV2kPJ4vVAGy4Aq5ACI?=
 =?us-ascii?Q?DJGxVzwwf9Qv8c38wOScCBloH/NZ36GUOU4rtnBnWzLGIOe9ZctGTLR4Y3Xf?=
 =?us-ascii?Q?GO3ywzJJLTSxoMYNCX5JbDatEmS+XPE/yjq2CIOIDBK52SBOmsLXCiTQ6iKP?=
 =?us-ascii?Q?3HFHGr33Yh4Ne/111bjZtMMg+rhnhmNLBU0JS29EAiGtWvC0wF2zma7DlbrU?=
 =?us-ascii?Q?AygNTw7iOVvOe5Nw+VSGvqIGgwzbudFA9NpxWle4S2qw7Kwz6Juqw1eJMRrz?=
 =?us-ascii?Q?4vdFd+iGlWiAqduKcpo/nJlxe9YI/xjajN4oEn/z22CdIA/33wsD6zkUv8wS?=
 =?us-ascii?Q?DktzH9F/C+AAy22SNOJqDBjuX1TWAZ8WMOhYEvodW25a1sWuqGGFfgRDJMV4?=
 =?us-ascii?Q?6wz2d7/xfhoTFcekph74gHLAtKxWoHREbguIKsAhoAQfhNtE5oL7r/gqKVK1?=
 =?us-ascii?Q?9B3Cd0rW86JV5mGrBGJvvnQzB5C8AAlMSDM4/dxB2yLOnxop++TB4iyFOis1?=
 =?us-ascii?Q?hBNF77LJWhs/2a25BFcJmBowE5Lqqe14VyzOfxiJ0VPKq0Dj0ME6VxwD1F3O?=
 =?us-ascii?Q?A7eMNrVXHUXOzsck9glKjf3zK2+HsvhRe/kMGu6d0bq+h9ytES84RUcDj/Ku?=
 =?us-ascii?Q?S9xXXFcK3w08fBSkV5wx69ROZjr5iyauGPDuL9Zi9fKrGHQWl3O/izL22Nfk?=
 =?us-ascii?Q?IV948xZU5has7gCqLXzBIJ81OJPrYUDJNRX7ZwGZB5oNXsq+B7r/Y8tFKpFH?=
 =?us-ascii?Q?GqXZkvdv6dxvwqjOsCUHtjzEVVQwOUJa+8BIsaSrT9JekXAkmjX6ZDUyQ3ac?=
 =?us-ascii?Q?4HgsC5Zt9yLAvXsVL/6NABHrvVk=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 11a5e81f-dedf-4526-a170-08da8f09fc9d
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2022 06:43:48.3419
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dj7G06tvZiBU7XON9c7N0QVD4HUKULcaGEL3ADtmApfMhoVE2o8iJfn1RfDyEbVhipBRMFKXFq2TuxCfdLe4Up1HNBvZgL5/6HQK/khFPKM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8009
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_234409_091263_87CDE304 
X-CRM114-Status: GOOD (  11.97  )
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

The property "vbus-supply" was copied from the vendor kernel but is not
available in mainstream. Use correct property "phy-supply".

Fixes: d6cfb110b0fd ("arm64: dts: rockchip: add usb3 support to rk3568-evb1-v10")
Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index 6ff89ff95ad1..674792567fa6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -656,7 +656,7 @@ &usb2phy0_host {
 };
 
 &usb2phy0_otg {
-	vbus-supply = <&vcc5v0_usb_otg>;
+	phy-supply = <&vcc5v0_usb_otg>;
 	status = "okay";
 };
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
