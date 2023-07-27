Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3E43C04FE0
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jul 2023 07:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJZzTEEda2FZe0hWRouZyKMvHw+Sl+vJAIAGTieRWys=; b=1sZCkkQQ+FrR8N
	ncCKqn86fOmEwmTSt/1dXS6Cn+ehV4VHZGx3CdJKxfn5W9VMLWFSsDIBWh8Ayil/xVQhFyf4AsbTc
	ZksbLpz/mo8yFS44I6SgrHWJeWLzoi25UDJ+QRKtyYP1hVhNd6pDHLlGcw1vOdNgxzz/DIwWe+fXU
	SzipibSQfvABwG6EJFQZEbc2+0zHXa8DFtlcDlwiAZWrpi5+N/c8jMqF4mWh5M4ADnJ7flndW3nES
	rR1o0UTjLCQgPEeoCHki1pxiMWepNA/ZS1RC6zyKF3DyUlASjNUci3rRkh0CBFo02VHtzsI0Vz/lA
	NV0ztxWe+p91sd3X7IKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOv1t-00CPMU-0I;
	Thu, 27 Jul 2023 07:03:21 +0000
Received: from mail-sgaapc01on20704.outbound.protection.outlook.com ([2a01:111:f400:feab::704] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOv1K-00CP6A-1O;
	Thu, 27 Jul 2023 07:02:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DNkbUR3uw/2zGpNwd51ncm6P9uPRLCwOHPDWGN26V/CiEYjp01VV5qg4bt2uh91Jz2F5GXQ1Idx2X2o/ID0jKqcQQAvmDkslkBuMGTcpKT6jn5/XoNKPW2zhAmn8eblZMy6d8OFe8UoY+u7jMtGYMLwNJFI3hi5JgcipfOJHmIPbD0QC3Rkz6440agXiVa5r6hp9TvexsvERyR9fcoVCvQ8utK8caIM22Lr5hhhhmOUEOXjEClj9xKtsiGvyCZ26rv6pt5/QVT8CKkiXNuAdVQOxgZXcX86lotGX9qJVpLZ9bG7CCFj1YObUMgewLT9SU68qpaFhn7r8FmjA7doFPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iHKArmtjsh7/y1Aplpgib/ppYsMir3MLAx1CuQ9EKjQ=;
 b=mwJC9EWYS9DoS3f7h6J8kRSoplv9gjBtU/yVdgF0D/KpEnRpM0sWum0ENdStELoPlnLc3qsXEduOvN16Balz1ucLw+Z7fLTPctPDJdthxmbc3ypB/P8HQ4JgIefFJ2rIbSZXY9VYYJ10o1+4uiMeymvkALY4GRAPlbV/lOKVRYDRr6ViCU7fbBB8r+GIHyHhIYHSY/u8dOx+QtKm/kjddle+i23YLQeVOU+OnPRDv5Y59vf363/z056bQ5tcTzBPLb2TbFqAxbsugAqN4Ux7NarhsbJIU76j8cfBlPLtjYhnvV97MDbwUZ8PU5wjBLwK+MK7k6ErxBDpZtZ/GuoOIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iHKArmtjsh7/y1Aplpgib/ppYsMir3MLAx1CuQ9EKjQ=;
 b=I7+NvsVgIIfF0xhp3teWQOmx2AqrwEgMHt6jK5sXHMLqRh2O4nAARXqGy/yOi/ScmaFkjVJlk6AZaO4dHTySz4VWIikbdDaCue0qSSguWbpIvV22ePqbcOLCjjmUYu7p+oNSlFmxpUHuelUkDu66blBTsMcFxwUEP66DQSC+7V8L3upvhqu1YbMlcdAwfSRcCwRVELmhmtoBs0xlclC8E8DJsVHXOQSmfOZdqjQ62DKPwXpvjQ3f0y8W2csZMY4lD17ncTu+4l2bge2BUvSe54NLF6FD5CTjdG4sCc2V0JwJpgtVBGU/phWaWStQ8XRKp9Pc3xXt2YiQipr+FtD2yg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by KL1PR0601MB4276.apcprd06.prod.outlook.com (2603:1096:820:78::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Thu, 27 Jul
 2023 07:02:39 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::732f:ea1d:45a1:1e0b]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::732f:ea1d:45a1:1e0b%3]) with mapi id 15.20.6631.026; Thu, 27 Jul 2023
 07:02:39 +0000
From: Yangtao Li <frank.li@vivo.com>
To: Jaehoon Chung <jh80.chung@samsung.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Yangtao Li <frank.li@vivo.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-mmc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 41/62] mmc: dw_mmc: rockchip: Convert to platform remove callback returning void
Date: Thu, 27 Jul 2023 15:00:30 +0800
Message-Id: <20230727070051.17778-41-frank.li@vivo.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230727070051.17778-1-frank.li@vivo.com>
References: <20230727070051.17778-1-frank.li@vivo.com>
X-ClientProxiedBy: SI2P153CA0017.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:140::10) To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|KL1PR0601MB4276:EE_
X-MS-Office365-Filtering-Correlation-Id: e8723842-9120-46da-fb2b-08db8e6f66b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wLinV5srOpqqZU33Ugr6J3sfa0fs1o06ehwMPHlAs5KMFkFQH4OenGd2Eno2hj44vcQq72vg8xYGHPdiAAGxeub2nXkeILYNr/ARg0k7LkBs9zEBN2mIIzCJlsdH5lm+l8uhosnkZwoRQRw9P51DW1CQMvSK5hi0W7jeFp2pQNRuUJQ5Jp9VOeXaORUn/jG6nernblykjHPZdK7YD4E3pYV25wK0rNl/7d8HtZVBNQycaL532Q56uWj2L0nEl2RaWTZ/Ob5/lshd8A4md9Jk7WMg38Dk69yqyb9IX3Hv5OPsYy0CZ06f5JrWbVq098c8YTIGC0+Vz0Kff6hEkwXCOysZjo3v6KDTv5II4q4a8D9vxHPt83ar7gBZs0/5B545p4mVe96ti7T1AEXSmsXKPea8j2nrAMYH4uUj4eSFp9dZSS0xFFQK8YX5ik9vjxHJmo6ErrIAqyH2hnVMFQlsGyfi+/zaTlHYaSLlE5o3D3Wf1z09PO6HLNDS82z/a/1xPoD91H7T/XTnD0HQ+/2VpMNixNeGpAAYWgUu+AI2eXeVwef+HdCVMon5bbQz6HC2PFaHNelDSRrgFYgsb5mjF1dFGD5fkmtFkHPbMjL8crR9fJVGOtzZUIwhMFPKMq7x
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5269.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(136003)(366004)(376002)(396003)(346002)(451199021)(6512007)(6666004)(6486002)(52116002)(66946007)(66556008)(4326008)(316002)(54906003)(66476007)(110136005)(478600001)(38100700002)(83380400001)(38350700002)(26005)(186003)(6506007)(1076003)(2616005)(36756003)(2906002)(8936002)(8676002)(5660300002)(86362001)(41300700001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q3k0UGZKRHN1QXk1SVB4V1YzNENNbTE2MWZmZDg1U3ByN0RnMjloN1czWTgr?=
 =?utf-8?B?ejl5cUV0ZzlJK0piZmczVVZBdC9XWW5SWkd3amNJaUE0SEdIWWd6NFkxR21x?=
 =?utf-8?B?V0pCV3AwUGpTSXpDd0lLb3JTMVlJcFpIYTdCMUJDalg1bCtiL3c3NlpYMStw?=
 =?utf-8?B?WFk0VVdReWdVb1BJY2QxUGVzV0xXbEpRMXFFR2pEU25BTGtzOGwwbTF5S2Z6?=
 =?utf-8?B?Y25Qa3ZhVVNJaUhqOFB5bFlhMi95ZGxtaHRpSVlrRnlBelFQM1g1eUI1S1Ro?=
 =?utf-8?B?MUE0NEFDOXBtVGc1OUlscWdhMVM0eDArZWlyQytuaFRlOGRWUXZXRTk1WXg5?=
 =?utf-8?B?WXFmUzFVbXB3NUZHajFtS2Y2Mm16Q2twcFhGeXFkRXhwcjN6eElIcGRab3VI?=
 =?utf-8?B?U3JTVURXcm5DbERGcVltZENjcC9zSHNYTm45aE5QaGJBcEZqcHZLYXBYV21u?=
 =?utf-8?B?M0w4Y1V0a05ObXlIbmZNYy9kcGJSSzladHEzMmkyYXkxOVVoODdRR1ZXNW5L?=
 =?utf-8?B?QVZacjNUK0ZxeTJMaDB2cXpwdEFUeUJ2bUQvd21aQUVNVlM5ZkFvREo4Rno0?=
 =?utf-8?B?NDM3T2thaHk4TUpEY1dManlOSGx5ckdvNlJ4YWFOUWU0MnBPV2Q0Qi9oMUln?=
 =?utf-8?B?Z0VRT0ZvOVRxeGpxakl4cmxEeW9MbTVhd1NiVE1qaDg3LzMxSUxYMkdzQzJT?=
 =?utf-8?B?S1NlWFIzUkhwaDlKRzZDcEl4U2hhVHY1WEJNRVJUM0JxVGY1U3Z5SzkxVklB?=
 =?utf-8?B?TGNrcWxhVWtMcnZMQU9RTEhjUW9pN3pZRU8yMzhUSFlnRGRTVW1UV3JrOVN6?=
 =?utf-8?B?R01WVVpmR05FSWNwdzhDVFJRWm44WDB2UGV3M1R3K0szTjJDNXNxOGVqUXpT?=
 =?utf-8?B?TkVVNTlFTVpiWlVyZU1ST0IxckdKVUMzYnFCNG1Xc216WEhsV2JnQmUzRXZk?=
 =?utf-8?B?Z0cvdWNLcG9lVDdWVVd0RVhtUU1hNFl2dVlJaTFnOGpMUjlEM1RrcnB4UTVI?=
 =?utf-8?B?VWlHeldlbCt1b2ZjUnZpR1FBdXJOOWlQWHZBcVByK0trblV3Q0NYUTlYS0Fq?=
 =?utf-8?B?ZHRsOTF0Y25YT1Yyb0xpbE1pOUVPYjg1TEVJd0tmY1Z3OGFwaEVlYko2dkpP?=
 =?utf-8?B?NEw0R1doclZ4RVVZVm0xdTVVREZrQjEzVCtQZWNWcDhZa3lsVUZaM21POWcw?=
 =?utf-8?B?cGdtd3JyMXRJOWZsTXVYRG9ublhxMGtsNUFzcWlwQ1J4QTZpLzRaWnNHU3VX?=
 =?utf-8?B?cFl3TnB0S1VrRW5lM3hzMENIV292MU1YeGF0YytSMjNSL29vdUs4MEVaQkpa?=
 =?utf-8?B?anEzT216cDZRRkxsUytoTGNlL3Z2YWhTNVFyR09NZFdiZ1k5WWd1dURIL2Y0?=
 =?utf-8?B?WGUzelRoN1A5aVBHbzJyakhWdjlpb3BxemZpYm9WaHF1c1FEVzd2RExkNDlT?=
 =?utf-8?B?d2dUV1lEZU5zQmd1ZFBrQWpVY3E2UmZFYjF6b29YYkJkUzZJSWU2WTVKUURr?=
 =?utf-8?B?TWkwSTZmeXloWXE2aG8wOHhNM0lqZEozQUlaMitMYVJjU2cvbXhmUW50UjZa?=
 =?utf-8?B?VVlRa2lrN3YrcFA1ckRTc0lKRklrd1U5czloQWJzQndQaVRFY1JXM3ZiNHho?=
 =?utf-8?B?elE2QW9uQ0tvQUlOYWYwZkEzVjRhckRCRnB2MytSSHZvNlIzZnprY1RhWHNw?=
 =?utf-8?B?bmRHd0ZsNlBmY3FnVitSdS9VaFpDdjZHeUoxUkY2M0hIOTNGc0JjSFNsaVZ5?=
 =?utf-8?B?c3FFSnZESjRhVXJWRXE5aXFZdkRXTUZxTHNSRHF2MCs3QU5EbExxdCtHcm1Z?=
 =?utf-8?B?bklJcDFCTU9tK3RMMWlRaHBqeEMwelgwQk9mYS9PdmVUK3llVkNrb0Q4M0Fq?=
 =?utf-8?B?WmlwTU9zVC8xVFhLOTNHVnNmbkJJTnRnWVlZYzNKTmRIU0xKSldGeHVMUm9L?=
 =?utf-8?B?dW1LbmhjVWIyU1FTUU91dWhXZ1ptR25tWjl0OUErYVE4SGNZREQvV2s1ZW1V?=
 =?utf-8?B?QXNCaG93eDJsdXFJb0NjbW1EU0l1b2phd2dDMWJZcjhwazJUSStHTHRmcDJu?=
 =?utf-8?B?Z3JrZjBQUDBSbkU1RkZnd05vVXFQSE1MalJZYTU0UzN1ZFJITTV5VFp1aHdn?=
 =?utf-8?Q?J37OBfLnOrhDfFlDK4FIcunQ1?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8723842-9120-46da-fb2b-08db8e6f66b6
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2023 07:02:12.0229
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 26g4anAd+SAAekuvTVHAtv4vm6BwI9JrDj2W2abY28EzKuQARV81fVAcfI01Kr+rVSk5NeqWGRsZ0Pj7vSarQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR0601MB4276
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230727_000246_488509_3B2FD05A 
X-CRM114-Status: GOOD (  16.20  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIC5yZW1vdmUoKSBjYWxsYmFjayBmb3IgYSBwbGF0Zm9ybSBkcml2ZXIgcmV0dXJucyBhbiBp
bnQgd2hpY2ggbWFrZXMKbWFueSBkcml2ZXIgYXV0aG9ycyB3cm9uZ2x5IGFzc3VtZSBpdCdzIHBv
c3NpYmxlIHRvIGRvIGVycm9yIGhhbmRsaW5nIGJ5CnJldHVybmluZyBhbiBlcnJvciBjb2RlLiBI
b3dldmVyIHRoZSB2YWx1ZSByZXR1cm5lZCBpcyAobW9zdGx5KSBpZ25vcmVkCmFuZCB0aGlzIHR5
cGljYWxseSByZXN1bHRzIGluIHJlc291cmNlIGxlYWtzLiBUbyBpbXByb3ZlIGhlcmUgdGhlcmUg
aXMgYQpxdWVzdCB0byBtYWtlIHRoZSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuIHZvaWQuIEluIHRo
ZSBmaXJzdCBzdGVwIG9mIHRoaXMKcXVlc3QgYWxsIGRyaXZlcnMgYXJlIGNvbnZlcnRlZCB0byAu
cmVtb3ZlX25ldygpIHdoaWNoIGFscmVhZHkgcmV0dXJucwp2b2lkLgoKVHJpdmlhbGx5IGNvbnZl
cnQgdGhpcyBkcml2ZXIgZnJvbSBhbHdheXMgcmV0dXJuaW5nIHplcm8gaW4gdGhlIHJlbW92ZQpj
YWxsYmFjayB0byB0aGUgdm9pZCByZXR1cm5pbmcgdmFyaWFudC4KCkNjOiBVd2UgS2xlaW5lLUvD
tm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpTaWduZWQtb2ZmLWJ5OiBZYW5n
dGFvIExpIDxmcmFuay5saUB2aXZvLmNvbT4KLS0tCiBkcml2ZXJzL21tYy9ob3N0L2R3X21tYy1y
b2NrY2hpcC5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9ja2No
aXAuYyBiL2RyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMKaW5kZXggMmE5OWYxNWY1
MjdmLi5iMDcxOTBiYTRiN2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJv
Y2tjaGlwLmMKKysrIGIvZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9ja2NoaXAuYwpAQCAtMzcx
LDE1ICszNzEsMTMgQEAgc3RhdGljIGludCBkd19tY2lfcm9ja2NoaXBfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIGludCBkd19tY2lf
cm9ja2NoaXBfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCitzdGF0aWMgdm9p
ZCBkd19tY2lfcm9ja2NoaXBfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7
CiAJcG1fcnVudGltZV9nZXRfc3luYygmcGRldi0+ZGV2KTsKIAlwbV9ydW50aW1lX2Rpc2FibGUo
JnBkZXYtPmRldik7CiAJcG1fcnVudGltZV9wdXRfbm9pZGxlKCZwZGV2LT5kZXYpOwogCiAJZHdf
bWNpX3BsdGZtX3JlbW92ZShwZGV2KTsKLQotCXJldHVybiAwOwogfQogCiBzdGF0aWMgY29uc3Qg
c3RydWN0IGRldl9wbV9vcHMgZHdfbWNpX3JvY2tjaGlwX2Rldl9wbV9vcHMgPSB7CkBAIC0zOTIs
NyArMzkwLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIGR3X21jaV9yb2NrY2hp
cF9kZXZfcG1fb3BzID0gewogCiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBkd19tY2lf
cm9ja2NoaXBfcGx0Zm1fZHJpdmVyID0gewogCS5wcm9iZQkJPSBkd19tY2lfcm9ja2NoaXBfcHJv
YmUsCi0JLnJlbW92ZQkJPSBkd19tY2lfcm9ja2NoaXBfcmVtb3ZlLAorCS5yZW1vdmVfbmV3CT0g
ZHdfbWNpX3JvY2tjaGlwX3JlbW92ZSwKIAkuZHJpdmVyCQk9IHsKIAkJLm5hbWUJCT0gImR3bW1j
X3JvY2tjaGlwIiwKIAkJLnByb2JlX3R5cGUJPSBQUk9CRV9QUkVGRVJfQVNZTkNIUk9OT1VTLAot
LSAKMi4zOS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
