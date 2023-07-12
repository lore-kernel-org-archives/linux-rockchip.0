Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2938DEB64DD
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jul 2023 08:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qcbqci0H4v/F2x4erw/kdkIsFozWX1PXRffgbtkGqRk=; b=UOE5kp3/JFLvqW
	qH7pLX5dJfuKAu+Lr6EEJThh4JQyixvQ8SeLkKM+kpoifNlEWSW1TktytjW9IFZcLFMbnn6ryD0cr
	5jX4/mWJo1yQOAYdWbz8j9YBQXdOTix/qxpd6sv84ezhH4qLgdQ/QC7AuPojp1bw5k1OXUbVw6wC9
	zhynYLr4Fogn/XOw4k3396hqyQp4Afu2n8dZQKnRRqw1xggkP6NR4x4AGqG/szS5AAkzjPs96HUet
	RLHZE5D92pGpQK+KR+IVRurMLuwsomln5jecdqwn6PWUFosMG+LzjdzE+yXXkAGRUIpR+RC+MR7TU
	+qk2bimbRTa+VPo+o2cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJUzM-00GsV1-13;
	Wed, 12 Jul 2023 08:14:20 +0000
Received: from mail-tyzapc01on20711.outbound.protection.outlook.com ([2a01:111:f403:704b::711] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJUzJ-00GsSx-1E;
	Wed, 12 Jul 2023 08:14:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lcr/rDLqf7rmEK+s/Tc+njcgDdxo5fay7IQdNLle1dkcgCi7qwRDg6L5CfdiBw3TZjbfsWy7//NmryqXRwfKPuPdvhv1sDj572nGSV25ThUJyC7MyBkGY1Ztnm8SgD+bnFMcc1BUUznN8wWQx/2mYe7nTMeO4i0j8w/ucGWnMBfv+D973TZ2/jGU694NDnfpU8YiEEY8MSk0wUWGkzV4YnwAZfONxWU/MbRTNG3JvI56ycKvQBs3c3gnfNbw9jjM3CIwtqPPCC8cv+JqArPD8Qs1WbdJUo/kTYCS7T4zpnS7EQyPrg00K7VKz8KPNUwWiGVFYadFnENGNb+s7b+wZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2trwrTRv81u40CbsVYU+78HZvkwkCI6xWFO9bsRms6A=;
 b=dqBKer728umChfdYYzd3WFndcX8l9L4S5tDfewlkzEtWekVsqvo8+IRYJ9LswlnNFGlqE7OkyD6Q2zzmo9E1Br7w2Mrw8Iynxif+bw5Q9Ywkhh8+pPhccbr02t9I5cYdGVXXZILsTwL8ezJz7+jgUI1pWW2Zhp7MIYEZpA+s/1N8CUVRDDN7biJKmu3bNzNKVtKon9yPv9n2EZGlCrsC2T4ApTWQW9R7Y2RaXn4QkrLDHTgS/SFDbaNIIfoKnazX8KF7CvelB/ui5fmM+b4wzJRHkQ1d/bKxtIqgSLlasARpQH/T0P+umZa+HnVL+yJS9NrkR09zosdD6fMP4l0L1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2trwrTRv81u40CbsVYU+78HZvkwkCI6xWFO9bsRms6A=;
 b=KukuO4Xmg1T7xRAShFokkMj0ulmfA/pfpEZ2UVLWlZ98G6cEeygmjVXE/CzCKxTh1UG1aB8MSTtBhZiomFk0qAB2mr4Q80x4Z06IA3DYtvqvg65AFOZHviqP7RSd6zdOrCoaytAETvzola2U+ll2MFohBt97CyX+Rqz2aTFDByz+UvJnqwVr3wyT5DddgJadpFP7OVfXGipckKKOqn0kORyC7+x9CLWsZnkdOC8PEftigtvdLWXdFuaFyL4UtXyhAO8O6rz+KFBw+8YZaEvSR0tvo6YLA8LKpKZOKVx7R5dIaMA4kyoWfqqvvBqj8hMK4wb1sjoYdtUajd9koFo9KQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by SG2PR06MB5382.apcprd06.prod.outlook.com (2603:1096:4:1d5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20; Wed, 12 Jul
 2023 08:14:08 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c%5]) with mapi id 15.20.6565.028; Wed, 12 Jul 2023
 08:14:08 +0000
From: Yangtao Li <frank.li@vivo.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Yangtao Li <frank.li@vivo.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 10/27] thermal/drivers/rockchip: Convert to platform remove callback returning void
Date: Wed, 12 Jul 2023 16:12:41 +0800
Message-Id: <20230712081258.29254-10-frank.li@vivo.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230712081258.29254-1-frank.li@vivo.com>
References: <20230712081258.29254-1-frank.li@vivo.com>
X-ClientProxiedBy: SG2PR04CA0208.apcprd04.prod.outlook.com
 (2603:1096:4:187::10) To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|SG2PR06MB5382:EE_
X-MS-Office365-Filtering-Correlation-Id: bbdec929-d002-4e3f-23f7-08db82aff75e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KmYmhvHbe1SXevXcR43uQCv7b0KOFuWHZAvARsYkm1IjuzsSH3+uFxUr90d9JzgDiWpf379xp03Dbi11X/S6GhLRKe3AUy5UXSPCipi7OTNApMnoYMvHzL0nVVNMDIiUc+48TSe4nTg431/d+/lJQqji60z7ye+vXBvXSW6yHla8YgrOlfhWGkCc9KhBYsWHKatjLUtG/4YYm5xoNauhzVABBXkqmr0vAiKKTT73yiHKJikgmp1bDSbsAxDLJ2sRu87R/oNcJN2h63iHLCT3BCYy8WMWM0ScMDTRiYJcsa+YS+cjRbqpliSJsWC1rzNEmTrgjJwKKqHdhYRaMDzSRPSHQM9ntKoyO+OrlfKuIwfV+t/5upUjZ3OzDudmZNHZeqG90agzoYh0NCTSaCQ47TO/X46DvTTKdKTBiQrrnDYVGR3yIN5EUqxLx7vwGfoWTFy92AddvjXFaN6cyq5ZNE2R4Huczcjv3seviSTh4PmFxI6+XM4W/lTRSXnKUwxjesITo7ZybkHIwPGqmkG7q16gXUZEii7Xm+dOt8VZTl2dR7GfA8FvJFkzq8V6RnMewvIjiBBmBt6zQknKr6gR/Dq4yvGIisTO7b6gL28P9zB0JV3pe5mBzalFs+y0pWe7
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5269.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(451199021)(6666004)(52116002)(6486002)(478600001)(54906003)(110136005)(6506007)(1076003)(26005)(186003)(6512007)(2906002)(66946007)(41300700001)(66476007)(316002)(8936002)(66556008)(7416002)(4326008)(5660300002)(38100700002)(38350700002)(8676002)(86362001)(36756003)(2616005)(83380400001)(66574015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1hkRDVFdHJYL2doOHVMeU5xYWF1d2E0Nnd1SEFiTFlOd2R6bEE2WCtONnJC?=
 =?utf-8?B?K0l6RG9NbEQzMVhpUnFudjJ6SjdacWVEV1BoL2VEek5NZHdDU3lqT0lTWDBu?=
 =?utf-8?B?ckowVk5OSUIzeVQ0c1dDbkN3UzNYWTlaZFN2ak82cm9EbFJEWE4zOU1mdnlw?=
 =?utf-8?B?SFdmM0N3SnJidG8yOGcwU2VnSlJRbUtZSmQxdndSVFFxYllNZVd6TEtmTmNr?=
 =?utf-8?B?cmF4MXlkYTZ3WVR3aGxENFExdnFUV0FsMlh5Z3RXcmo2SllOR3VjYjBZMWN1?=
 =?utf-8?B?RDhrWDZ6L3RtbVkwYXZRSzNQMy82dmRCRjMyNkpDWWdTK3JQVUI4TWoxNTJJ?=
 =?utf-8?B?SmNndTR2b1JOc25jRGNWZEpsMlpUZXIwT0FGRm9GVWdHUU01R3BPeGtqVyto?=
 =?utf-8?B?SS9aMzVidmVFNXpoZXFoKzNMRG96U2hzd3VFTXFPZjdDREV1NERHN2dXaTdM?=
 =?utf-8?B?aWhib0hkeWRXcjA4UXlYenA5QVdwNUpxMHlrd2VkRnlMZVdwMUkxSi9GekdQ?=
 =?utf-8?B?OU9DTUlkQ1hHMlVZMytMWEtuOWlrRWo5ZzFkQzUxZjI1NS9iWXVJVHFpNThO?=
 =?utf-8?B?Y1F0YzR2aXAxcHovN09sS0MyaUVwVUNOa1dsa1RLaEpNMTIyODk1ZGJPZnVv?=
 =?utf-8?B?TkF0R0RrUWRVSlI0dkczSDBTWnRLWDlwOFVnNDNqdGlkY3JZa0hBL21aalRT?=
 =?utf-8?B?K3c2VkkxT2U5UUVURnBiNmNUZ3JDT3hGZ0dQK0RoU2o4NjJ1Y1poakZSNW9F?=
 =?utf-8?B?RDBGTnlPUmNlZ0pKS2NtaUFkRlVBdCtUU0ZpK2tISGJoTGMwcDlKai8vcW9i?=
 =?utf-8?B?c0oyK1pJZVJvTzF1VFptUUZ1Z2NuME4raTVuaVZBSnUreXkrZVpPVGtSeTNl?=
 =?utf-8?B?L3dFbXZkbkZObEdVRUM1d3FnT3o1Z05qT0xsa1llamlYQVJLaVI4WHlmeWpM?=
 =?utf-8?B?b1F4T04xRkJ3VlliVFFsdklMSy9lZFRnZTFBeEIxWnczamtVcTJ4aEZFcU4x?=
 =?utf-8?B?M2JkazF3VS8wQ0pPUy9XcmxoMjI2Zld2eGM2VWM0dm5QZy90a2o4aElna2Vx?=
 =?utf-8?B?UXk4V1pQTFVWakhOampaWmE0clZJckg3MmFRU1A0SUpNTzlyVkxkamp3UElG?=
 =?utf-8?B?MjV4U0VTeGZCa29oZTBHSFhSVGtsczJoSnN0YkQrd05FWi8wc0o3T0oxbi9J?=
 =?utf-8?B?b0Q0NUJUN3NqK2RGcUZMa1hoTDdkUDlyZVM3ZkFsNXJiT0JNeEpuTUxzZkJp?=
 =?utf-8?B?THBhYkx2aVpDWE53UXI4S0lxT2tWdFEzNWtKcHRRTUJ3U1F5TlJRckRkYS8r?=
 =?utf-8?B?MDdLU0lZUGluYmNVN25tdUNBM0RnQndiSWRoWHBRQXgwRXRHbjNIRTRsbHM4?=
 =?utf-8?B?bGZzbEx5WWVZb0UzRXV3TzdCVXJPUkVFQTI5MTZ5cnBtazVCTnI3c3VUTWVw?=
 =?utf-8?B?YlY3MmI2WGJEaUdhd3JYMVFvWU41UjhhWW9wQmZmTHgxc1ZlTXNSNW9MWWxU?=
 =?utf-8?B?TG10cEwzSUo5Y3c2enVOeE5PNkJrQ3pqU091cnIwRnRSdVhCRGRhdTdDSmls?=
 =?utf-8?B?emhXOGE2bTM3Y2tXZGhIWUtBYmtkWk4vbUpTVkI4UkpQMDkrTTNaZFdnMUtS?=
 =?utf-8?B?SnNYMllOeXcwYnppRWJMV1FFN0xIbEdNVHladmRKa2hTaFN4T2lnakFtV0w4?=
 =?utf-8?B?ZHhoQjNGeGtnWUVMczdNRkVGWWJVUUo2andtVXRDQm1oQklQMEVEbzI0ZDhR?=
 =?utf-8?B?K0dXb2tCSFpVV2pyS0tJMkRkNWNNTDVjc3B1SVJlSkJFNi96c2R4S1RBVVMr?=
 =?utf-8?B?SHVZak54NzZCTlk5NVFITnpnVG5iN0Z0Y1FuUExKMzh4eHNUSFNwZm9KR3I2?=
 =?utf-8?B?ZXFNUjF0UnFNdlBDN2taZUJOQ2kwQ1JuZjFRNmNMY2pXVXI5QXp2elRjY0J6?=
 =?utf-8?B?Z25sWUJpbkdjMEM4TWVBZlJVNVpMdE5JVCtHRUJ5Mk02VlFUeGlsVkhqVWFX?=
 =?utf-8?B?TlFINlhKODcxTExwVEZIWHZQYWluVkZPMVIyeGZUWGdWbzFVSTRVb01zUU1U?=
 =?utf-8?B?b3VYMEVabVk5bDIyZEdBbGJHRzJGaVh0aUc5THVJUFd4ZFdxSEk5OXJseTFR?=
 =?utf-8?Q?K2shvYP5hDIjjECzDwmRWkQaA?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbdec929-d002-4e3f-23f7-08db82aff75e
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2023 08:14:08.5523
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KI6sgDu/AUHlZNaEERcUO7k/3ZXdrTo0bJALVdLQSiKs0T7wyPZmi5MmrLA4dzHKyRx6JhHFBHt28JVSUGosIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR06MB5382
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_011417_429903_4EDBDB4B 
X-CRM114-Status: GOOD (  14.82  )
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
dGFvIExpIDxmcmFuay5saUB2aXZvLmNvbT4KLS0tCiBkcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBf
dGhlcm1hbC5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJt
YWwuYyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKaW5kZXggNzcyMzFhOWQy
OGZmLi4wODZlZDQyZGQxNmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90
aGVybWFsLmMKKysrIGIvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYwpAQCAtMTYw
MSw3ICsxNjAxLDcgQEAgc3RhdGljIGludCByb2NrY2hpcF90aGVybWFsX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyBpbnQgcm9ja2No
aXBfdGhlcm1hbF9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKK3N0YXRpYyB2
b2lkIHJvY2tjaGlwX3RoZXJtYWxfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
CiB7CiAJc3RydWN0IHJvY2tjaGlwX3RoZXJtYWxfZGF0YSAqdGhlcm1hbCA9IHBsYXRmb3JtX2dl
dF9kcnZkYXRhKHBkZXYpOwogCWludCBpOwpAQCAtMTYxNCw4ICsxNjE0LDYgQEAgc3RhdGljIGlu
dCByb2NrY2hpcF90aGVybWFsX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQog
CX0KIAogCXRoZXJtYWwtPmNoaXAtPmNvbnRyb2wodGhlcm1hbC0+cmVncywgZmFsc2UpOwotCi0J
cmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgcm9ja2NoaXBfdGhlcm1h
bF9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKQEAgLTE2OTEsNyArMTY4OSw3IEBAIHN0YXRp
YyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHJvY2tjaGlwX3RoZXJtYWxfZHJpdmVyID0gewogCQku
b2ZfbWF0Y2hfdGFibGUgPSBvZl9yb2NrY2hpcF90aGVybWFsX21hdGNoLAogCX0sCiAJLnByb2Jl
ID0gcm9ja2NoaXBfdGhlcm1hbF9wcm9iZSwKLQkucmVtb3ZlID0gcm9ja2NoaXBfdGhlcm1hbF9y
ZW1vdmUsCisJLnJlbW92ZV9uZXcgPSByb2NrY2hpcF90aGVybWFsX3JlbW92ZSwKIH07CiAKIG1v
ZHVsZV9wbGF0Zm9ybV9kcml2ZXIocm9ja2NoaXBfdGhlcm1hbF9kcml2ZXIpOwotLSAKMi4zOS4w
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
