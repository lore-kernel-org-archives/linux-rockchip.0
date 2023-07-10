Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7182EEB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 03:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8v4WshrGMC25d+J48IOe6QW/UmJoqFxtlP/kXYZb2Q=; b=adzNNqZYpxTeio
	M4aQqUSGrtf2opweZNBX9WQVghK6Yz7L6nS9nyzFUgd+nWWNpZ8dKv9rdwYad3I2bAnikh0KQIO7X
	uX3tENAG+XcSes3rwT2StVh0P+WytR5HiXxiHeu9t8a/+on8B4yyFWtvcX9DHXjYAg5mQm2KT5g2W
	DYvkXo+gKNeezFawOAWDUOeDeV5oTOKK5mLyRCfexNe28OLM2Ku31xaMIF5NGcQLdGS6n7fVQBecf
	cfnVClaykIDESo0T0ybt/hbG1wWgVu9Y8J57+vqyDr3RiWry8ygu81ttb6854TbIC/uCQEh1Nzx2u
	iv7Od+4X1GJU2iM/46GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIhWB-00AHKx-1W;
	Mon, 10 Jul 2023 03:24:55 +0000
Received: from mail-tyzapc01on20720.outbound.protection.outlook.com ([2a01:111:f403:704b::720] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIhW7-00AHEG-0z;
	Mon, 10 Jul 2023 03:24:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B+NzCP0bnE8n0PaBsz1q+DSQ69RF1eFQ97XTrrtY7G5yzTvJaPL9nfwH0NdR7BC7NsusDNQeA4ZqF6+YwVuWli7Or+GdVOSe1Oi13K5r1VAKvNdG2Xop8K8yWauIEzfLVxizz4vf0qDu/tDbKsmt/V1SWCkxP5ZjjOD+LE0QibpNsY21aZpPvkpez6Gv+3i/1tzjechiA6N2JEUTV/S8jswm3jsjpup1zErwpluHlbxz7rvDeYjlHpQtgFNLvsf0VZOnUZ+C85y/xgtgteeiV/s7E+hiE+I/DR2AQaV1ryCt5XtClKgPkpPw4t90b5hgWONqCoh/sPDwZYPmf+nXdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S52aLvA9c+8fTPEUxbLQzNSXjy5oQ4nntTQZ5ZpRTG0=;
 b=gfZaRTJ1VX8MDGScO2nDaTS87842zALi3pXUK+7aTEtSPRLB5CNthZ4SyJVEe0M0SDU5L/NqSW3syEncmmNGLdpP7HIhjLWwmia+/yK2hlNXmQIyN3VKUIcnuM/PnJfIhVxU2P9rzpAxKeW5Q2Ht/LtRSd59PFdGldwZggKaPELR62r54kzOZlX2Hrv7Q1Za2z0AFynS55MeJU0jPCVJui0g4PV5+WQhf4hws5kXjLyCxcsoj/ibiKMa/l8aMjw4gj2l7PaOD/TZroSo6MOGQH+gs5nnVa0e7gXa841BpSmH55Us7/WFKT1VssgqajqvMoE06vVqI49Psk2AvHuUsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S52aLvA9c+8fTPEUxbLQzNSXjy5oQ4nntTQZ5ZpRTG0=;
 b=YqJ9OJdbB6V0dRwuQzoPxXHMig10wKRxlDDxRV3k79GnkXyveeuZ+WUwKyFG/CNPtspNe//Hz6xHCsWVY5fTI5I9O0SGGAbXvuJPCToEVXwRngCzyfXuJ8uqaK4O/OtrBdRn5Y68SXGwWFl0imtINqydopfsHFuI5W46jWzJndjvMb1Mgup4E6GWhm+4au2Wnw/eFePwjbR7uDIbJmRcfj3+o6YgIgT8my2IYPANwhI/2QcFzOE7fUJJFwKltH2dkPL8tD9P8at82Atpqms0kTySyawrxfisncGPDng4ULfLUMctXhga2s2j4MKIgSudKO5YdhF9YVY2RtqKvDkULw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by SEYPR06MB5376.apcprd06.prod.outlook.com (2603:1096:101:8f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.29; Mon, 10 Jul
 2023 03:24:49 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c%5]) with mapi id 15.20.6565.028; Mon, 10 Jul 2023
 03:24:49 +0000
From: Yangtao Li <frank.li@vivo.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Yangtao Li <frank.li@vivo.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 17/19] drm/rockchip: vop: Use devm_platform_get_and_ioremap_resource()
Date: Mon, 10 Jul 2023 11:23:53 +0800
Message-Id: <20230710032355.72914-17-frank.li@vivo.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230710032355.72914-1-frank.li@vivo.com>
References: <20230710032355.72914-1-frank.li@vivo.com>
X-ClientProxiedBy: SGXP274CA0020.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::32)
 To SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|SEYPR06MB5376:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e345589-dd43-469f-8102-08db80f53771
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XaF0cTgydX/SxdovBwfb7iShSrsFD+YNm8NNRj5l2umwgO7fl85NSrzqTOF3R3TLSTl6SM3Uad2C06WpCfXCd0+wmEgqb1FLM+lYZhCFnB7BoAjXCxQ8ped2yOuj2ykMhGfPpjrtpq7avQkfCeMw0R3lFiKeQA7H2hIL0ltQQ7fohYra5uxSKCvhWVWoMMSuYhwIBMSBj5sGVZ6xcxpzEOYBw9xHKxV78cJor0uOyNkosnp/i8aunmh22Ive35yEQnJSsQuj7hw1lOC6tS1PjHMH3RrDc+85t0rO+KiRSFqf4bQJQ3p2rtub0CLSC7WLL0tbVFHSo/bCKF17iZWHFLYrXPs3DbMLt8SDiFNPoXvVlug7tWE0Wjy1UNYMsuFH5G6r/BoNSGAIuLt/qL9C/9mOdxNgPUmXpa4s+CZCZT1UEFNfTbnVBd8YpYK/afWx4nIAZLdkpHfhXojAoylROS6x4NYm6H+lDtD7CyjQMKyPy/fjATBA1Cq+N3eN0mCceKzRsP4LxX4sgR3GK0+0kmemQdVU7YOqVjdtC5w7hxoudpIi6wINpnvqJ14ZawvhdOqWcVObCyeALttBoUs96Kj2s5eILrIoNlyAintmjMB45K6TR+wAx7qTMUMjgcJj
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5269.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(346002)(39860400002)(376002)(366004)(136003)(451199021)(6506007)(1076003)(5660300002)(26005)(478600001)(6512007)(4744005)(2906002)(110136005)(186003)(83380400001)(2616005)(41300700001)(86362001)(316002)(38100700002)(8676002)(38350700002)(8936002)(52116002)(6666004)(36756003)(66946007)(66476007)(4326008)(6486002)(66556008);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NgDvtuJlcVvgFZLaSGK13v1UG7/7HyED7wPWQYSy+4qQ2TP1yyzQ8PM5WB+Q?=
 =?us-ascii?Q?W6g+VQz7/NQYOoivqhhTs2l4DIZqU3m6/gJzSDYjqYe8c7ZmRzi2YtSdCA5P?=
 =?us-ascii?Q?KmB2B1T340fljyIhEgroD0awWQYOoPxH4+n0u0WLbzjJadL1g3b/lAdnZN+z?=
 =?us-ascii?Q?vi8uDIFid6CDKDNlfumWOCUZ3JUIz+9NO+5m92Ymu/jhOCgcWJqf4qwZ+nfE?=
 =?us-ascii?Q?LhczC80XBacIzArFnkoDLj1ktUHBAKHYpWbGNFrXARIHzPBLBP7+yKcRYEWF?=
 =?us-ascii?Q?TSjoaKILz4n2weitqNCVgFT+QJKccTKqY2HQdIIt5pekKUVtGE31xTONM75P?=
 =?us-ascii?Q?ECm52ifUlLneP/+V2r5hQZD95ESF+Tb6lCbtHbbohBjtzoeReWxN6HGzCgRS?=
 =?us-ascii?Q?BaM5tK9nrJeqO6540T2chUSLSTwK9gqjeKb2K0/Y1uHEs+Bf3Za51slkv26K?=
 =?us-ascii?Q?43kr3MwZT1puJEnCTV3eUd/DuQfxtvuSaVa0eLYRn9WLK7zrdbVaH7SJqpMg?=
 =?us-ascii?Q?txjx8V1vloRoejmTzi8jhmviBq9ER1py2heACNH1Fhcd6M4atwSQsOxvskzA?=
 =?us-ascii?Q?mQavoqVxtGTs3TfWSANAEOYAW45tSKz91wwpqnty3ZzETuJKGwTvHahoy9D1?=
 =?us-ascii?Q?knJ5moIHj0BjXjBt55koD2fXTFaNjYWNAq+IVfMPCJSZ4QWJVaF8NNp7idHk?=
 =?us-ascii?Q?sdhEcDXkHKc5eqXOzNaExjvDgisY8mtC9imfD/ubvOcO/J0E+4NrR9yIYMrw?=
 =?us-ascii?Q?IVsiOmeRTC72Bn53pbg4ZLzxlnv02PHaisJ4PAVqVIJqpZGlFFgT91dGEMgX?=
 =?us-ascii?Q?FEogpXCOBQmp4u/zpdStT71NjV7zIBQlYbz9yWdUGiELbpHHZcZtQCGiutV7?=
 =?us-ascii?Q?TtdDCPUNLlN3xgCHIlopnW/DEtzVB4QHOIaqEVLIEUjM30LTZ4FVQcG0T5kL?=
 =?us-ascii?Q?98iZ0aqAF9ksRETTh8xJ3pfVi6HgHZxXPkhHlS9ewHJv9VyJgMLX7FieWRT1?=
 =?us-ascii?Q?Gis18XMktMOkFMlN9MHsLOSvt4OzhcvgnrWFS+gJiC7LTrS5QiMFTcyIeunu?=
 =?us-ascii?Q?9d0uJ9NWtp9dW4sRxBChCAWb5Jt8v8QaDu0Q0GO4w/CoM006CE46IHUIPvxg?=
 =?us-ascii?Q?Z5BY0BOfZSD8DWDKEiLhnsz/7S47CfufzMES68B0lyvJnOn8P/2LwoOyOkSE?=
 =?us-ascii?Q?83HDhEhEK87QDy1Fj9uqQwUGwCbnfv8iRTdM/O5MCsF3ErY+OYob/lHqePuy?=
 =?us-ascii?Q?bUz+ij0/G02W4YMMBWKc0PKC1Clenvbay7fFsB3+5BBhi+kThKwM1SuArl/x?=
 =?us-ascii?Q?S7Pprn9BHDTTM0H1JfoG+UYlqn88kTfPl6guYcIi6tqFgSBpBV+NSY1/K2k3?=
 =?us-ascii?Q?zSg7joGyN6rm2h6hXCGOzb+grdt0XWiNCWQhzY4o3uT2209LaXlN3rEU1Oaf?=
 =?us-ascii?Q?C4NIq8xyfd7Od2b2K4Mk7dxz3ZclxueqbC2E3djFgaajuNara2nn9Rr1qoBf?=
 =?us-ascii?Q?gJYUhFRzXKH5JrI5vmIYXjaNS18CqP9BU7qKiuR3kNXLE/p1zkIuSvDKg5Uz?=
 =?us-ascii?Q?rwWqFyOtLzLO8GePANvjrdtIElcPRB/fmNmKpNYI?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e345589-dd43-469f-8102-08db80f53771
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 03:24:49.0627
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FI8Q0KDacdkxzw9V49j7dWzGtjVjGbGP8brWZEq0SwztNw9Rj2zUMMnL97HlEjcUEBDVQF13uGJroolBuLM78g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR06MB5376
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230709_202451_375271_D639AB0F 
X-CRM114-Status: GOOD (  10.18  )
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

Convert platform_get_resource(), devm_ioremap_resource() to a single
call to devm_platform_get_and_ioremap_resource(), as this is exactly
what this function does.

Signed-off-by: Yangtao Li <frank.li@vivo.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index a530ecc4d207..e95d94ce1869 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -2179,8 +2179,7 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
 
 	vop_win_init(vop);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	vop->regs = devm_ioremap_resource(dev, res);
+	vop->regs = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
 	if (IS_ERR(vop->regs))
 		return PTR_ERR(vop->regs);
 	vop->len = resource_size(res);
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
