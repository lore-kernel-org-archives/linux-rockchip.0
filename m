Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 845DAEB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 10:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WzJf+NtoSeSjWTPzBmYywsZiIc24iQumQS3h9dKMMw=; b=hyIj79reLnL/Gj
	g3L0vly3BA74r2lmvz4+lqHlWZIzmCvr2lvQyfXqRNluTA4MkhxNTp1W+nmt1TKO7vwUDv2HumldU
	9zV4OjRPq7DwGtM49NgiVL8o2jlRG+8NLpf3qsUS4sJka9mHkga703Q/AcsioCK8YbBMhCX5OH07E
	Hqp8KqaJN1++tK/RhdU9Daa6G9ztaJv/n32JO+6QGsceF8DWWNW6AyNYsGVG7vw3JKH80vaoNOIAB
	WTQAplEGcFO49OejMdp/hdriByXCAAI4bHYoEuknJvCYbqRkj+uQ1+O+R3XJV9ADfx+gCkQg5KW7H
	zpHNQ60ElJZaWgKD9u0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIngo-00B8yY-38;
	Mon, 10 Jul 2023 10:00:18 +0000
Received: from mail-psaapc01on2071a.outbound.protection.outlook.com ([2a01:111:f400:feae::71a] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIngk-00B8ug-1b;
	Mon, 10 Jul 2023 10:00:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XTUlB+KOaU6nAxL3Q7ST1tNsy6uQJ/eCBLlfwQdO6zFBpz/3PcOxgmQvKx8SCAN+X5WCZQXrYYqrXxA+xCRFsJTEOyZhCU5WJSRK/u9SDoxhsKVymxAPK25G87vdhunuh3Yvs8M6ReCu2f3f1DrMP83rd3Wau/mrF0LBWbHFCPUNVvYdUTxvIjrWuc6lLNvf2rCPmrinPXiFZEzi5HxoZnaKq6y9PZXRwYahtaXPweGJA3YmJFUTzwL9/t3EsrMj7ryOmdyjgGTe9CFEQy7UKFn5DqwUSLGcsbWhWb8JyD6UL+2NkQUMtqn5wNK4fJ/TsU+Biy79yR53eLX3B95CRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f/Y+IYV5b8ZmuaTorAO7hsd8tpWaVdkZ+BMEJ54HFrY=;
 b=YdewkdBVk9QI+bnQvStWkjUKsuwsmAYrFNqmKyQp6suaJxahVbV1G4bHRqDQr2nrXIkEMDQMYOUBGIb+65n4oncQDWD5K17ilxsdtpAWltcBy0mCPXeix+DI5yt+Rkz7apKXUVhrM24KrDH1fRZI67OyptoORjqQ28XYgp8xa7MbXuesj+LOfbD72d8066/e7EoDfO4WUebdHuYbiCLO78F9cUrqgRW5GThWrMK4KBNfDnh6y+pEcss34FJjSRHVUtG5lbXQmXUWdul86INFAR8h92faB0A0IreUYkM9/Aj3dCxM8sg+pp8Anrl9LzT+7jxEEfd+m9AtQgwJgqTrGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f/Y+IYV5b8ZmuaTorAO7hsd8tpWaVdkZ+BMEJ54HFrY=;
 b=KAowNc7ontg9jtKraywT4Qx8uL4vEscTt9WGtGs6eugThiV9EBESDLnqScbpi4Cy3kygGYdpc7U9TbGgWJ44cMlOdIvzLq01vzCMCao0miYkg4mc/oKt2A6C25mRyxlBacd3dc8bePxWpm/u5RpoCc9sDB43IpL4GvEtNbVWQpAlJV5LEqa4LC423ALhwbTbn36j/UzN0vtwt6Q4qoCW+uduenM0LyUCMgyRz/WyHs7yPLIWDbbrvLqR/j3mw2ibDNvLD2CkOZK7/rXVsDoSef5WZMk8cAYb5jptmemrXEw3OswFGuFYIjTl+kJRIQ+veqPPvybUJFIJJICCPJZTsQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by TYZPR06MB6096.apcprd06.prod.outlook.com (2603:1096:400:33e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Mon, 10 Jul
 2023 10:00:10 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c%5]) with mapi id 15.20.6565.028; Mon, 10 Jul 2023
 10:00:10 +0000
From: Yangtao Li <frank.li@vivo.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Yangtao Li <frank.li@vivo.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Jonathan Cameron <Jonathan.Cameron@Huawei.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 12/21] thermal/drivers/rockchip: convert to use devm_request*_irq_probe()
Date: Mon, 10 Jul 2023 17:59:16 +0800
Message-Id: <20230710095926.15614-12-frank.li@vivo.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230710095926.15614-1-frank.li@vivo.com>
References: <20230710095926.15614-1-frank.li@vivo.com>
X-ClientProxiedBy: SG2PR01CA0167.apcprd01.prod.exchangelabs.com
 (2603:1096:4:28::23) To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|TYZPR06MB6096:EE_
X-MS-Office365-Filtering-Correlation-Id: 633470ad-3920-4b21-3d2d-08db812c7249
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AxE+qo6Fg3zfBmsOnSXDefqXP//DrHiHSMXN+jUtncgcpYK+QXi9nZAyPhlY/5/SnxsYF6g4GspaA2iqccN8hczagfx/J3OtZzUs4nZeRTYHTmbE75VvGd54axDHLjgyrj0/9M0JaOZ/3U/5RtDd6ZQv1MrJo7HEha/mPwXLdjNtWLjIS9+wPNBgHXKF0quN300KWdC0ugpYQnIMG2tZM3SsDAp6T7Zq6TOaMAfgtbl5YOqa00zHPvKrdzksfGLm18v333+B0hMU3vonm9uF8q8O4VClc+gvncffO3al5aUrKB/4hb5BoxCJw6aVwiGOuKe18dj8l5bOTZNogo8vRjCH44LDpbuEbORZ/ZS0rCS5u+Sm8MWgtfkTq7i/KGnzDJwUKN9k2ae1OAAAeEMjsO38z3GxgyWIVYkhy+4oj5qHNir3mCO56/hOBt0dr/BL8cqmhOG+GTV4Q/Uk6XwiYnSq8UcQG7bea+7MYWiuK/BoPpB3GJYIGTSQLtgmS9gqz/9CLF8rpeuqRO27x0t74j3dnqq7XYAQJvbt20rYHXBmHksKYjrN6plUMMlMr/v+3aSSE0x2uvtMLZMXnQ2OUzarfKASf+l5xfiMc1APNEKtJ9KBv9b7HoWk9iTz1AXe
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5269.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(39850400004)(366004)(136003)(346002)(396003)(451199021)(186003)(6506007)(1076003)(2616005)(6512007)(26005)(66574015)(83380400001)(41300700001)(4326008)(66476007)(2906002)(66556008)(316002)(7416002)(5660300002)(8936002)(8676002)(478600001)(66946007)(6486002)(52116002)(110136005)(54906003)(36756003)(38350700002)(38100700002)(86362001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NjJmY1kyaTZqVGpTMjZGQWliWWowV00vYTJMMVhDK21XMTVaMlR6Q0FmMEx5?=
 =?utf-8?B?MnFWcElsUThjNStxSlRkSG5hRmFWTm9PN3A5aU1vbXo2NTlvb2d0Zkx1aTlO?=
 =?utf-8?B?WTM1dnYrZUM3bXVLdTBoNEloT2tHQU5pZG9IK001N0NibnlUT0lhVUgwb01N?=
 =?utf-8?B?cjA5VlpZZHpuaXNDR3Vyc21leHZyRUJhdkE5cVErMDRRUGFWRXlISjYwZWhR?=
 =?utf-8?B?VzZ4dC9qTk9jU1RYVnBBQlFHdDVVUlQ0a1N4QUVYMitMU2Zid0V6Tlc0MDNh?=
 =?utf-8?B?UmRNWm54UlpMUmJDcFlQaWw3REM3YW9CSEVtaEVqckdGa0dEeDVnZW16bkxm?=
 =?utf-8?B?dmFxZ012S3VFUnB4L1V2VzFORlVqWTh0RUp4akp0UGR2Yld5NnI0d3BmOEdX?=
 =?utf-8?B?TVJ3c0I3U2pCSUZSVjF2SFlVaks0RGhxRDJ5WFFiRnVqVGRSNGlxYmlnOEZo?=
 =?utf-8?B?S3FMSmVZNDFuN0lPZ0xZLzFhMktiVW52NkcraFB3SkptRy9QQXNUQVhFUURI?=
 =?utf-8?B?YlRqSWpGV0YzUVZJaWJPbnlnbFhyWUthVXNCd1ZEVmowNkQ0REdtZ3NkWGFO?=
 =?utf-8?B?eVhsSDNJUTllU3dtQjJZd3F5MmNaaGRwc01LaEZiSnN1Z1RLVkxTTXpXcUoy?=
 =?utf-8?B?cXlWQnJldzkyZXVsY0JZb3oxRkVFZFppSnQyZnI2YzM0NCtRdndGUEptNU12?=
 =?utf-8?B?b0RzTFFMbEhtMzJaNlFJMFZHd012RmVZL0FSYmErUFBKeHpOUWNiMEl0WSsw?=
 =?utf-8?B?b0c3UitMSGQ5SGdxbUZwZUJPRmhPbWx3Y3RxRXltQzUvVFk1T3ZBMStnMkhD?=
 =?utf-8?B?cXdPanhNV0RNWHkwY3RhNFpjalJlLzczcUpVWU9PZkQ2d2QxUUdHTERXNEhT?=
 =?utf-8?B?T25FbTUybGNlcFZzY0Fnck9jM08xdjF4YnRHSytHL216YmVoOWdzc2lyQi9w?=
 =?utf-8?B?VU5BTTl5Vzc3RHB4UFpYQXZEN084T3Zydy9NR2thZ3ZSQUpQZzYyd3ZkRU9n?=
 =?utf-8?B?aUpHdnBFdmZlM2hGRFZZUXA1Q3JWcWQzWU5MSWVYWldaV2wyTHNDekx1Yi9D?=
 =?utf-8?B?SEVzeWdMcWhVeFFLRmZQUDRFbnJTYmNHdUQyVlc0VG5jTlVWeDRyd2t5d1Ju?=
 =?utf-8?B?SG5aSEhJdHVvRHdOT0xNdGROMHZ6bWFXK1ZXanhDMVk5NEtIcVNFNEZpVzZL?=
 =?utf-8?B?SkFUYjJ3dmNGTUlRRm9FMUZhSHB1K2toN3VtVVBxU1FHanJvTjdjTjNZbWll?=
 =?utf-8?B?UmZUWjdEZWtsTmM2QnRBbFlVZEd5N3YvRzczUUZGdHFwQVh2MEZzMVVHMytR?=
 =?utf-8?B?dVF1T2hCZzhaV3hwUmFlVFdqTkIzdTAyQ0o2azBCdDVmUXdTb2F6RXJtdVN1?=
 =?utf-8?B?QzBLUFk5d0VCNDlZdENSTS9RbklLZys1SUJQcXkza2FLK1FTbUc2bGU5dlk0?=
 =?utf-8?B?dS9rc1ltS291dHgrQ29JckdMMW1zcUY2dEg5b2tieUZzb1Y4L1ppVlJVd3NE?=
 =?utf-8?B?Z1ZSSHMyNHVZbXBWbkJmLzF1NmlxblE3QUp6L2hNVkNKbHlGYVMyNEhCV2Iv?=
 =?utf-8?B?djZPaGFZcEhJVE0raVp6UlJtaEtRNkI5S1dCRFlPMHZNYjZMeWZ0MjlnUUd3?=
 =?utf-8?B?OUdVZ1dkUmpOTVBHb2pUcm1mV1IweFFYV29mN3QvVXc3cGtQTkJlRmFFT0Uy?=
 =?utf-8?B?VUkzVzAySmE3NlFUdGhvb3Z0eVBXZlRGOS9tRC81UHlaZDVsdmorUEd0d3Zm?=
 =?utf-8?B?NzlGNHI0WXcvTjNRWmZ0OGRjSk9neHpUWXBtOFgwTHhXZGFuOFlYK0d4Y0I4?=
 =?utf-8?B?aW9lUWxFQkp0S2FENXl3Q01jWjlLaDczb3JwcCtGU2IvN1BMcUhBa0VsSlNN?=
 =?utf-8?B?c1MxeXErOGNWME5kTFBrUE1xalNub255UEVSUWlsSlhvYmQ0SzhYS29keXJQ?=
 =?utf-8?B?MnpCcDBrblplaFowbjFoQjFsanpGNzBpTHhUYjlkbU1BaWJkaVNiZnhoTU1q?=
 =?utf-8?B?TDczSEFteHdSUGhwU3dWSHU3dUltUjRCQ3Ftb0pCTFgreHhEN3Zoc2pZK1NV?=
 =?utf-8?B?d1pFb1NKUE5hV2YySm15UFhGeXM3c1ljQmtUelVmMjNMMm1Tb205d1Uxek5Q?=
 =?utf-8?Q?MzMwG1f+9IGQdZlw9lSz/Uvjk?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 633470ad-3920-4b21-3d2d-08db812c7249
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 10:00:10.0319
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WAmOEJ3SLbBPjUXaxIe+KT7JjVT73TctnaZE0BVZMhnWt/zXYGNzx01cyrsLANTyPQshsirp1CPCBdxuUUvBBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB6096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_030014_536451_123ECBC0 
X-CRM114-Status: GOOD (  17.23  )
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

VGhlcmUgYXJlIG1vcmUgdGhhbiA3MDAgY2FsbHMgdG8gZGV2bV9yZXF1ZXN0X3RocmVhZGVkX2ly
cSBtZXRob2QgYW5kCm1vcmUgdGhhbiAxMDAwIGNhbGxzIHRvIGRldm1fcmVxdWVzdF9pcnEgbWV0
aG9kLiBNb3N0IGRyaXZlcnMgb25seQpyZXF1ZXN0IG9uZSBpbnRlcnJ1cHQgcmVzb3VyY2UsIGFu
ZCB0aGVzZSBlcnJvciBtZXNzYWdlcyBhcmUgYmFzaWNhbGx5CnRoZSBzYW1lLiBJZiBlcnJvciBt
ZXNzYWdlcyBhcmUgcHJpbnRlZCBldmVyeXdoZXJlLCBtb3JlIHRoYW4gMjAwMCBsaW5lcwpvZiBj
b2RlIGNhbiBiZSBzYXZlZCBieSByZW1vdmluZyB0aGUgbXNnIGluIHRoZSBkcml2ZXIuCgpBbmQg
dGdseCBwb2ludCBvdXQgdGhhdDoKCiAgSWYgd2UgYWN0dWFsbHkgbG9vayBhdCB0aGUgY2FsbCBz
aXRlcyBvZgogIGRldm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoKSB0aGVuIHRoZSB2YXN0IG1ham9y
aXR5IG9mIHRoZW0gcHJpbnQgbW9yZSBvcgogIGxlc3MgbG91c3kgZXJyb3IgbWVzc2FnZXMuIEEg
cXVpY2sgZ3JlcC9zZWQvYXdrL3NvcnQvdW5pcSByZXZlYWxlZAoKICAgICA1MTkgbWVzc2FnZXMg
dG90YWwgKHRoZXJlIGFyZSBwcm9iYWJseSBtb3JlKQoKICAgICAzNTIgdW5pcXVlIG1lc3NhZ2Vz
CgogICAgIDMyMyB1bmlxdWUgbWVzc2FnZXMgYWZ0ZXIgbG93ZXIgY2FzaW5nCgogICAgICAgICBU
aG9zZSAzMjMgYXJlIG1vc3RseSBqdXN0IHZhcmlhbnRzIG9mIHRoZSBzYW1lIHBhdHRlcm5zIHdp
dGgKICAgICAgICAgc2xpZ2h0IG1vZGlmaWNhdGlvbnMgaW4gZm9ybWF0dGluZyBhbmQgaW5mb3Jt
YXRpb24gcHJvdmlkZWQuCgogICAgIDE4NiBvZiB0aGVzZSBtZXNzYWdlcyBkbyBub3QgZGVsaXZl
ciBhbnkgdXNlZnVsIGluZm9ybWF0aW9uLAogICAgICAgICBlLmcuICJubyBpcnEiLCAiCgogICAg
IFRoZSBtb3N0IHVzZWZ1bCBvbmUgb2YgYWxsIGlzOiAiY291bGQgcmVxdWVzdCB3YWtldXAgaXJx
OiAlZCIKCiAgU28gdGhlcmUgaXMgY2VydGFpbmx5IGFuIGFyZ3VtZW50IHRvIGJlIG1hZGUgdGhh
dCB0aGlzIHBhcnRpY3VsYXIKICBmdW5jdGlvbiBzaG91bGQgcHJpbnQgYSB3ZWxsIGZvcm1hdHRl
ZCBhbmQgaW5mb3JtYXRpdmUgZXJyb3IgbWVzc2FnZS4KCiAgSXQncyBub3QgYSBnZW5lcmFsIGFs
bG9jYXRvciBsaWtlIGttYWxsb2MoKS4gSXQncyBzcGVjaWFsaXplZCBhbmQgaW4gdGhlCiAgdmFz
dCBtYWpvcml0eSBvZiBjYXNlcyBmYWlsaW5nIHRvIHJlcXVlc3QgdGhlIGludGVycnVwdCBjYXVz
ZXMgdGhlCiAgZGV2aWNlIHByb2JlIHRvIGZhaWwuIFNvIGhhdmluZyBwcm9wZXIgYW5kIGNvbnNp
c3RlbnQgaW5mb3JtYXRpb24gd2h5CiAgdGhlIGRldmljZSBjYW5ub3QgYmUgdXNlZCBfaXNfIHVz
ZWZ1bC4KClNvIGNvbnZlcnQgdG8gdXNlIGRldm1fcmVxdWVzdCpfaXJxX3Byb2JlKCkgQVBJLCB3
aGljaCBlbnN1cmUgdGhhdCBhbGwKZXJyb3IgaGFuZGxpbmcgYnJhbmNoZXMgcHJpbnQgZXJyb3Ig
aW5mb3JtYXRpb24uCgpJbiB0aGlzIHdheSwgd2hlbiB0aGlzIGZ1bmN0aW9uIGZhaWxzLCB0aGUg
dXBwZXItbGF5ZXIgZnVuY3Rpb25zIGNhbgpkaXJlY3RseSByZXR1cm4gYW4gZXJyb3IgY29kZSB3
aXRob3V0IG1pc3NpbmcgZGVidWdnaW5nIGluZm9ybWF0aW9uLgpPdGhlcndpc2UsIHRoZSBlcnJv
ciBtZXNzYWdlIHdpbGwgYmUgcHJpbnRlZCByZWR1bmRhbnRseSBvciBtaXNzaW5nLgoKQ2M6IFRo
b21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgpDYzogS3J6eXN6dG9mIEtvemxvd3Nr
aSA8a3J6a0BrZXJuZWwub3JnPgpDYzogIlV3ZSBLbGVpbmUtS8O2bmlnIiA8dS5rbGVpbmUta29l
bmlnQHBlbmd1dHJvbml4LmRlPgpDYzogSm9uYXRoYW4gQ2FtZXJvbiA8Sm9uYXRoYW4uQ2FtZXJv
bkBIdWF3ZWkuY29tPgpDYzogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gIDxhbmdlbG9naW9h
Y2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+ClNpZ25lZC1vZmYtYnk6IFlhbmd0YW8gTGkg
PGZyYW5rLmxpQHZpdm8uY29tPgotLS0KIGRyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFs
LmMgfCAxMSArKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1h
bC5jIGIvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYwppbmRleCA3NzIzMWE5ZDI4
ZmYuLjExMDYxZjZlZjMyMyAxMDA2NDQKLS0tIGEvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3Ro
ZXJtYWwuYworKysgYi9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCkBAIC0xNTc3
LDEzICsxNTc3LDEyIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdGhlcm1hbF9wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQkJCSJmYWlsZWQgdG8gcmVnaXN0ZXIgc2Vuc29yWyVk
XS5cbiIsIGkpOwogCX0KIAotCWVycm9yID0gZGV2bV9yZXF1ZXN0X3RocmVhZGVkX2lycSgmcGRl
di0+ZGV2LCBpcnEsIE5VTEwsCi0JCQkJCSAgJnJvY2tjaGlwX3RoZXJtYWxfYWxhcm1faXJxX3Ro
cmVhZCwKLQkJCQkJICBJUlFGX09ORVNIT1QsCi0JCQkJCSAgInJvY2tjaGlwX3RoZXJtYWwiLCB0
aGVybWFsKTsKKwllcnJvciA9IGRldm1fcmVxdWVzdF90aHJlYWRlZF9pcnFfcHJvYmUoJnBkZXYt
PmRldiwgaXJxLCBOVUxMLAorCQkJCQkJJnJvY2tjaGlwX3RoZXJtYWxfYWxhcm1faXJxX3RocmVh
ZCwKKwkJCQkJCUlSUUZfT05FU0hPVCwKKwkJCQkJCSJyb2NrY2hpcF90aGVybWFsIiwgdGhlcm1h
bCwgInRzYWRjIik7CiAJaWYgKGVycm9yKQotCQlyZXR1cm4gZGV2X2Vycl9wcm9iZSgmcGRldi0+
ZGV2LCBlcnJvciwKLQkJCQkgICAgICJmYWlsZWQgdG8gcmVxdWVzdCB0c2FkYyBpcnEuXG4iKTsK
KwkJcmV0dXJuIGVycm9yOwogCiAJdGhlcm1hbC0+Y2hpcC0+Y29udHJvbCh0aGVybWFsLT5yZWdz
LCB0cnVlKTsKIAotLSAKMi4zOS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
