Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C347C001B0
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jul 2023 07:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8v4WshrGMC25d+J48IOe6QW/UmJoqFxtlP/kXYZb2Q=; b=dPDG7XOK8HgJzY
	qw0HWiB7ZBkVCs+7i68f+jrRq2b0eR9ExKbX8iwpqCTYfC5rYYhDxdFHdkyyYfMxZ75orhQF1kInZ
	naaixuc1VnZ5PPnXbXpbabs/taJy1Ja1DSGHb2vz+Aer8YurRzbxWpT/Ba1HduawYUsQNK8zGPk6n
	V8yRNXCli2AUlMMajOTSiyqWv6MHLZ/vTOmWtjEkbOJkyfBxKfI16+citgXpeSuXMLyjpJrNwiFWT
	ON93qLiv1ENrG9fdzzTxKPjjG9F3R4HZU4M8lnkDAA0qMLdAC5qaRdFsHxRTlgTJod+fATfo0/2IF
	wWwTd4Li0f+HwBowUpzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHfmj-003rIT-2r;
	Fri, 07 Jul 2023 07:21:45 +0000
Received: from mail-psaapc01on2070a.outbound.protection.outlook.com ([2a01:111:f400:feae::70a] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHfmh-003rGm-1g;
	Fri, 07 Jul 2023 07:21:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O41ekPv5gYaBybsIrK19cy4Q2n0i3poPjT+v0Yq6lq0f2SXIJIoJ2Fka+PHuOTzecKA1V6B016tuwFFdlDnAWuaP/fQJrh2X7Iw235PlXkVOONVl5iT6rymqIk5NSsPqJFC1bHTKx6s+o121diL6PUWRse1/73V9iTK2oTEJesky1SfeElLRQFibIRlTG9mJAJSgsLU083VwNKQcSZ0lMw/yGVtvp95JN1N1MhvYbe2IZRjs6tEIYE5+gcMIhPZ1rkjJ9eknHdnmjaIxgMqUMBbUl1V4J+0DKhMqj28Z5KJIbQS6tQ15WjiDWqQcwzj05IdVPAR5MnKzUEPpcJRpww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S52aLvA9c+8fTPEUxbLQzNSXjy5oQ4nntTQZ5ZpRTG0=;
 b=Ebc08o0/o61jP2j1bLmBGLPhZBhZxYKxwsE4hraeJrQlnHJ5scN6esY0adcNegUB/+ulP0i2jXepAXpK35PI5TFtM4GGsqpO7sCN4m1Og9/8y+gJ0t5XJojRQ6MkX53eph+O93lnAhuX7HrWayyiTLgj1kSvKfx62uQivgEZ8Tajm14UVaiMNQBTUorOlFAbhJt4m/ShuOOFvSrQl6rkz58qSLn4LNGJa19RqeBwfteRfk6YKK2gy0nFOSfN4C6xRbWar+xHdV9+EraCd0g4GkFHBZOpTu7BF+ADKFKE858zUr0Pc4dlMEm4xQVbliDlDOoGGgRmBAvbN8iGGn4bnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S52aLvA9c+8fTPEUxbLQzNSXjy5oQ4nntTQZ5ZpRTG0=;
 b=PU3AIPVycqc6QK0em2JCfI/UpR4zNS1tsvJpFizKCYKy+qtO2210GhKXeYUvOfx+G6fDUx81QuB31/HDOsh7EcE90KrZMtqPH0Uz33VM80NMgagRgR7jOLwYKWxTYbG+isupbmp19kbO2NzpXr7JkU67WcmX0qvug3sb0+e6Sq1PctkfvYCCmiKg8+eLbTt48tMDFRVMrgA0L/cYwNt89yfwEWUu5+B/Onokiwgw/K6P0DxANLquwxVTc50b81D1gksbkgWSGJwpnrIAuaF60shwpNb4pb6qtexOTgH/L1vErlez+pn+nPT0k7DAkIJM3EKnWbEo8hvrmOdvzxwnFA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by KL1PR0601MB3954.apcprd06.prod.outlook.com (2603:1096:820:2d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.25; Fri, 7 Jul
 2023 07:21:38 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c%5]) with mapi id 15.20.6565.025; Fri, 7 Jul 2023
 07:21:38 +0000
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
Subject: [PATCH 16/18] drm/rockchip: vop: Use devm_platform_get_and_ioremap_resource()
Date: Fri,  7 Jul 2023 15:20:32 +0800
Message-Id: <20230707072034.48977-16-frank.li@vivo.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230707072034.48977-1-frank.li@vivo.com>
References: <20230707072034.48977-1-frank.li@vivo.com>
X-ClientProxiedBy: SG2PR01CA0129.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::33) To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|KL1PR0601MB3954:EE_
X-MS-Office365-Filtering-Correlation-Id: 36f4f6b9-c1b0-486f-4177-08db7ebacd5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BNVXHi5cduDW79aOljdeH5wQsXE//YVaQ+rQOlbazF/PU/TsRrhLnF2/HtJJcTNK66AI8tyNOoaj1fTD7IG8EPtQ5fDvvXRge2mWpA7GWXmSXspaZAkGSeRHuSazfhBaX4cNqZ1huulegfWxsb6voRp7oKFLwBeXuUwzubnGpzrvNODFuaGv38gF77Qw0HjoSaf+0UgBRPy80wJ7gq5ITynrX19jjGZDT5AlC1me/gU+yi/Jc1Lh2bvceltj8w4x7GY6QZ1zXa1w6jSGPNuDs7Nfb1k7EIBHrupsfcnlJRjBKeY48JQM9N/L/JqUUV99x6QXc9+DDRXEwOzN1Men4h+n+KTcSDk/XtYghx/87k7fbNPn1yeiSvCLZLdp5hY9/e1JuMuWQEWFCu6JJ/xwb2AjOaunyT0mEflCtf3bqRkhhj7cWjQQJybaAB4EZ76r61mjJHYL4K38YH5P/ijtWdKDL/+zsJzNYFAfNqGBKMuZ75nGf8rQZcr3+3j9JZzca5UyAbtZiudK5XEabetqNyqQXcl7HqWRVxG052/qz7KS1qofnPMzEuOcJ7SUNYA/mHDnbp6bKn10BIzLr1PHbVyunoE9APnpQ89cM1O2MprGBXtsK4C5QII2rLw1U6Zp
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5269.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(39860400002)(396003)(346002)(376002)(136003)(451199021)(4326008)(478600001)(316002)(38100700002)(38350700002)(36756003)(83380400001)(110136005)(66946007)(66476007)(66556008)(2616005)(6666004)(8676002)(8936002)(6506007)(186003)(86362001)(4744005)(26005)(1076003)(5660300002)(6486002)(52116002)(2906002)(41300700001)(6512007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WD0+mZ2Pk+UyIePG7LOy2lhQzgGPSN/YYj7EVsAilGGqLCV0g/WR7KHvl2Bn?=
 =?us-ascii?Q?9LrxSj1NMl9cefHW0SSfYqy+2hjn/2Vk68tDo8eNI40+5ns6XHpNzQJCzWOh?=
 =?us-ascii?Q?c1BDosroV7PM6pdcKefOYPU1B5TWOQhiijSdrMXLxhQuvhefsIY1YxLxo46v?=
 =?us-ascii?Q?8ou0IT/b51TkhOHtTRC7559AtmCmqaN82n5BPhSLRGrHsgu5hEtk54tmpEjv?=
 =?us-ascii?Q?aIp/hsH8pv9BB3baJ9zRNhVSUWN1dsv48iK7d61fRAr2ReZS4tSM59OS9f6f?=
 =?us-ascii?Q?8fFvsj3xBFTT3E/UGCJwtpa6mk9g+9Eb5eoESXPScbBOAzQU9PsSpHgM3AGM?=
 =?us-ascii?Q?C943uqiFUiEvy4u9LVZrNCzbBG9qplJQXhFNTNZdn/eNodbNviEzN4nbJCzm?=
 =?us-ascii?Q?ikLGcR4GHDdWrDczCuiLQJNr9FaElKKXPKxv0r6/tSnurufwIssOgPo37ttt?=
 =?us-ascii?Q?c7QW6u1Y9bWueCU4S6TdQJY+Q7eCcr5Bdooxt1k3mBNbMaNzVYF3YgSe4zgX?=
 =?us-ascii?Q?lN4O0m5w1LJG2wIuvoPYLCMMthXXUEjDw4RTFEouSOEkM091+9S4eTxZk3jO?=
 =?us-ascii?Q?o4VFmva47XWlFzViDX+qjRsNiS3VuAMEufqvexuI4SVNrOa3Koh2RrTkmy65?=
 =?us-ascii?Q?vIPi1gat8o75w68b2WmoCMtrAtiXnuT9zYT8UBsjoua6zHTZmT1hsMFa5Nrf?=
 =?us-ascii?Q?5PQpKSQ+sZhC5E7fd4YD2lxrygAAYZqTylCoVZeKfvHGtuOetF1r4EKCf4A8?=
 =?us-ascii?Q?1osoXm4YNIbuaZ9lhk/YiXF1WuO9lh/wsLFSWsVYEiUFKkODaq2ZwkdM0KXd?=
 =?us-ascii?Q?wovqFp4Dt7QsZX5sFVKiffG26Io+UNHq9k+0v4DEIystFsvVuqdmlsaTXdhd?=
 =?us-ascii?Q?QZoU06rCswyDG65jcii/uccaHgVlCv1NOVyyE5jg9+r7mG6/DaOdKNGUhbnd?=
 =?us-ascii?Q?t+AmgCIMqyzRFyHIU/1gKGAeGlQ2Y8wApu6J4GZz3g8MVrDVd5Lb7T/O0qaW?=
 =?us-ascii?Q?nkbNf4fLLeBhY2hdP/mtkUx8lWuPx9Vs8fd/j+yiLVjzrVWR9y43e1RU0MJL?=
 =?us-ascii?Q?r0rq8dVRZB2ig7kFk9YrR0YzhKLxAj92/D8flB+L3PtzaPXX8jn35s4ITz1k?=
 =?us-ascii?Q?Kp7z/v395MPoYeU2Ut25RPn6/YvZhbC4m2ZlQdhhpHlznIIf0Du/nUrhNDx5?=
 =?us-ascii?Q?BGb61LkSk8eccSxebbI04v+7o+0eogzAVLgfNinmDNKsLmy+GljsHdY02B2l?=
 =?us-ascii?Q?vmFeQTVbPtBVaeZcUYgwJncfLSZY4CFxUMQ9wbNRJjmt3FwVxXg8NjGkWzte?=
 =?us-ascii?Q?zhZ+TENeGXAbKm5MPUVjs6/gd/4obwqf+18FkB5hLwgTm7KNy+SC9m1EVRFr?=
 =?us-ascii?Q?GCG6+ZkeUO/MOSkp3ZCiaWt293xKEupYbwvAWhDdghJUQswoL+1e1TU6ZuXp?=
 =?us-ascii?Q?clJeQXLy5l9z9RQKJBiEmnl5ZxbwjTV6eq4JNFVUACB9X5/ggyHJIx3y+71N?=
 =?us-ascii?Q?hteOpwMvM0tPYdRNEfpQi+jx58q8Gps7rdnvnRYD/n3jVxv/QSlQx1ayvejB?=
 =?us-ascii?Q?s76wIWq3sAQRZwRRidkwXd5JuNyvDitIAtmwSLmo?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36f4f6b9-c1b0-486f-4177-08db7ebacd5f
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2023 07:21:37.9712
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W4aX+8CUHD+0bPDoIWuGPhc1dVRUXoefo5AxmZFKjOOXA1RUK0kZhBANIKRfmAhtFfYPtEi0i3uTEYwnQIvA0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR0601MB3954
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230707_002143_568443_E2FBAF46 
X-CRM114-Status: GOOD (  10.15  )
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
