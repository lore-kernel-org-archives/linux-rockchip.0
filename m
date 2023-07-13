Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 589E0C001DC
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jul 2023 08:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJZzTEEda2FZe0hWRouZyKMvHw+Sl+vJAIAGTieRWys=; b=1yMUsVXfRwCr9H
	PTcTSULCqEHK2niR60tMd4VnlcJO5bKHXjDcUXeyVc0ln7HTA+QAJ0eFx/ZH5NZMDzYxtO3nNfE2w
	p4vTyg4eG0fVhyWukjZagas861ERYA0QS7evP4eyZr7wkeZdX3tVI47Y5Toj/Uck1UT7dcVHpmuuP
	yvVXKvk2oaIuN+6MjNCA1AyQ124cDLcrNj2THFTBFV2v/XN5QApLDZy5xU5Z/RqFYlAYau4HkyKOm
	nY83OgtFAHePTq/DXfUsnLI4QtfdqAWE2dRJPZteuRCA7CYTSNw7S3nTFfbULx3xOH0b7aSsZrx5j
	KcIqN98U51OIXZu1Iiew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJrOw-002O8M-16;
	Thu, 13 Jul 2023 08:10:14 +0000
Received: from mail-psaapc01on20703.outbound.protection.outlook.com ([2a01:111:f400:feae::703] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJrOp-002O1V-2W;
	Thu, 13 Jul 2023 08:10:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hTUbUiVDjfZdOcXaVRu/p0N6vHQA5JA2/ECziUbeEHEqErDPiPVbp+/OdwgGHorWBTjc7eNELMHUfKpoKvVEZcn6GcEoPoLI15BAbeyq0zV1+B0YvsCamUHjXFp58t3knXpBvLrC6uSvFBAif52H0BqRKyJz7d9sfwiiK9LixI2TvZygHzojX9DYLOPrVfpzTFQ9UVui4Dj9MqYVyTTj9x0WjRF3BTES3dIqI+5X9YlnWMYQNhVwa/F7U79msGqekljBzh4Swa5TjI0hlXLkiKCiiAnBw7Gj2rRWaKAxrMP3mzjAGxi8c1EKi5m+8IsbGZ2VDpy0QRw8IooyGPaUDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iHKArmtjsh7/y1Aplpgib/ppYsMir3MLAx1CuQ9EKjQ=;
 b=PO7qjlb2ETwxoA6GsYJt8UH1sBFIoZNuQyQDwitOxvDnoFgrV+dttWgGs2TFUP7A6KKhwjV/LjFf44nffgTEO/PHPJouz0JBtn6NgrR5SQiI6jh8p4qpOgIznUq8PsNAnGGnjO0DqxrDPL7IzyaV9Tho/AbugJd1Ftupy/S+ULN2qqRvYrnjvzePFm1LEwyrLdw/rcc0EylqDpSItoezrVZkfLxp9BzsF78R3VVwLAnLZaH6kWvi78oQCpwxRSuEpgJj/ELScoOBfYCQNr9QXj33kMnvNHtN9VtXEYCzV3ZaipeUUF+k+gfFqFBRHTDldfeKOhF8cOBemKWDFlNmpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iHKArmtjsh7/y1Aplpgib/ppYsMir3MLAx1CuQ9EKjQ=;
 b=hoCB/9b83bukOsm8nihD6dKhcasQrUnfxS6UZgutGtntF3HYC79UKPXBqNSJz3IHMJ1x8C9PQeiodhJneed2A7gefRwK0/kmTcZnbs9s2UAxpqLva9JsIModSr9O87wKt6eqD1k2FCPwftYlOgDQAhKPIKAS6WRJG0cw+YmEL7V9vwiPeN6uCWzXNdCesSHqN9wBMjknT8UB7pkix/PqFcyR8i5IB9+G+bH21ZvDPqXwL90oqPIfJ0ZB4xT8m2bz5+6iOMxC5rxY3mpwgzzSkAdHTOOP/WkOwUA1NECjIHT0GrNTtdumeX4BJo1c4mIg3g/9cV23MRiH71zyUZF5bQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by PUZPR06MB5984.apcprd06.prod.outlook.com (2603:1096:301:118::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.22; Thu, 13 Jul
 2023 08:09:59 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c%5]) with mapi id 15.20.6565.028; Thu, 13 Jul 2023
 08:09:59 +0000
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
Subject: [PATCH 42/58] mmc: dw_mmc: rockchip: Convert to platform remove callback returning void
Date: Thu, 13 Jul 2023 16:07:51 +0800
Message-Id: <20230713080807.69999-42-frank.li@vivo.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230713080807.69999-1-frank.li@vivo.com>
References: <20230713080807.69999-1-frank.li@vivo.com>
X-ClientProxiedBy: SG2PR02CA0091.apcprd02.prod.outlook.com
 (2603:1096:4:90::31) To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|PUZPR06MB5984:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e30de44-7a3b-4cba-ab6e-08db83787ee5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bmGr9M3IOCAVX8UgHFFMApI5ddUQePQs27B8Yk2fsvj+kleKSuG+pXFRPKHOlm43AhFlQ0lgna8BYPoto33LmeRToP6rkjEFY2SgpFLWMPxCEo9p4oFstf29UD9j8aurYBHzwmZFgKRvpGaSEHor62YAJHUtxOGcb6iB8fo3r1g+yaG5IKC9NntpuIwgXl0CMLreL6z0pbKADdq/KqI71jVYcq5z77ILiYT8RdOTn8JiEV48nrobVqer0YQ4zlzFq/Wt0YYnYozhvobYfJqEvloKi0tQ/QYs3mhX3bD6aRVEG9WwwBUXlGVxnE/oZ4K5Z3lPP8cfZrC1sevVExISSZBGTZSxasUOqwQXjeK84uuaS5tXBfdfhWIQzuo1wFraicLnd5lkkc5w7B+tN2vblzSUHMIEWP/w1mEtrw/dAl3R9e6JdfhUvwb5i4W4cOHtlyvXSgWMvOX16YLoYWlczN6wxL1+7qOeMfGqo7X5JF0RY4HxlPQxTpE/8rnkmmqy+ljPPrs373uz9VOJ1QcMgp51p1chXvqrJwHSq+k8uF1lHKBx1NmhiOtn9PlzxGKFNCqcFeiCg2+oJpEoO5t0tEJKnEgeYu4UOXunLrmP+nJJfLy73np5iMgPYCwhmdMv
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5269.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(346002)(376002)(396003)(39860400002)(366004)(451199021)(478600001)(6666004)(110136005)(54906003)(52116002)(66476007)(66946007)(66556008)(6486002)(4326008)(316002)(41300700001)(2616005)(186003)(2906002)(8936002)(8676002)(38100700002)(6506007)(1076003)(36756003)(26005)(5660300002)(6512007)(86362001)(38350700002)(83380400001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RGlreFZjR0JqSmdUYndzcTljbWE4OFRiMVAycmtjcDlGcjFYMU5SSC9KS0s2?=
 =?utf-8?B?MVRkeXpPTllRMy9hUUE3QkQxM3pLTUZzK3BUTTFac25lZmF0Q0dweXAzV0hL?=
 =?utf-8?B?TVlMSk9EcklHTHRkLzAxY1ZtRXdHaSs2bFJZTjU1UVUwYkYxaTlrcW9HZTU4?=
 =?utf-8?B?L0lnZFFZbkVVMmwxcElVRHNIZTk0ejNTVGQ1Q1c1TUtubjNaQzM2bU5EVDJo?=
 =?utf-8?B?RmVwVVRrZE5KK3J3dVUrNWlNUHlPZlZkTVplMUZOMHh5bDhrQmJSYUNvZFBu?=
 =?utf-8?B?cGxXZ0hncDZxMnJhNkd1ZWpJRFhpbW9lTHZzbHU3WW92c1oxeGRQSGIzcFJu?=
 =?utf-8?B?N2M4MEViT01NelpHUXNNNjB0RkFCOFZ6Q2U1bkpkNzNBSzVOMElQOGEzLy8y?=
 =?utf-8?B?WjlXZkJIODdSOXRzWVlUcmo0Q0x0QXAwZHJURFJDYTV5Q2YvenR4dnJVTHY5?=
 =?utf-8?B?TGFpd25ja0N6eFczTy9Ib3FqeVltU2dqRmdvM1Rta09JRjQvalM1MmlOT3Rn?=
 =?utf-8?B?VVJ3a3UrYnBnZEQwSDhwTTRNMzkrOHJBUUpQUytnc0c5T25WdHVjOWJlcVky?=
 =?utf-8?B?K1hFVkxoV1VqVFlOeU5DV0tvRU9mMFVFbEZ3U1N4eUc3OER4RHBzQU1PMHFV?=
 =?utf-8?B?aVV6UTN0TjdSdFM0amVUaHBtbTd4Rnk4Nng3V1hpNFJSeWVxTE1zYlQ0Z2tV?=
 =?utf-8?B?RjRQdVpQOGdjaFhHM21JbjFRTGFEKzdTem9WY0tkTmpteWZzM0hNL0pvUjhm?=
 =?utf-8?B?bjk5WDh5Vm8yRThJVC9ucS9kSERoazlsTTA2M0QxaDMzRVVaOWxLcWFIQy85?=
 =?utf-8?B?VlpTVzFVcUE5WVRzKzZnT1A5Zys3TEZMNnc4WTJTRXVjb3p5dFBtZ1UzV2lV?=
 =?utf-8?B?bHhPRWxjVy84VTg2bysrbDZKUW5FdElRaFJkU0NVUWNUeFAyelFxcjlvMFFq?=
 =?utf-8?B?MEpkSVY4UUdqYXFVVGczM3g0am5CaGUySEdaaDFoSXU0emVmb250WFVHYk5i?=
 =?utf-8?B?cDNWcUs2Q1pmM3lLWHNhb0UwRWZGMHFmSGErQ3A2bmN4azNNUndJU1Z3bDQ2?=
 =?utf-8?B?WDdJaCs0eWtpRXB2MFB2SHd0djFKbVRJU09CUkhHdUJPREFWZjAzZ2tQS05L?=
 =?utf-8?B?UGYzM1kweHZkQVU0WmVybGRrM2F3cDlhQldiNXV3S1BIbDJTR0JRK2Z5eU9l?=
 =?utf-8?B?TjIzdzJKeHd1anBnaUx5QU04c29WQ1MzbStEWmgyUHZOdjhRYmNNY2Q1ODJt?=
 =?utf-8?B?RmNubWlzZzVIOGdMZGVpajRZWVVRTDk4T1FVU2VMU1h0OU8zQ0lGbVdVS2pW?=
 =?utf-8?B?ckpIUlM1cjhsdXhWMGRvM1UwY0xBd0VDOTNRRUFSV1J4UlVsWjFybHByYXlk?=
 =?utf-8?B?OXBoWWRWTmRTZEpzbHVCWnZFbElKeFUvbTVNK1BGSDB2S2IvL3JjVkZXTnN4?=
 =?utf-8?B?cGlieXdVczM0RXgwZE84bHlXR0ZRVE1qRm4zQ1dRQkxYQTJKRzVia1VTUGdm?=
 =?utf-8?B?VmFFa1VzODBkU3pjaEhmZzRoU1RObVZremM2QmpkODNna2FOam1oTllaeGlp?=
 =?utf-8?B?MHcyUGt6WWdZb1UrUlNSemowZlJScVZubWdVc3BMZjZycHVRUEFQaEhqbExJ?=
 =?utf-8?B?c285VU1ldVZtdi9LRWFTS3hpV2duTXF6QmJoRFh0dUtzOFNGUHRHaGpqbkpL?=
 =?utf-8?B?MU41cDVQT2lyWVhIOGo3Qy9mRmpXWnFidDJMYXJNODNadmM1cHhtTmxpNXZ3?=
 =?utf-8?B?L3ZuenZ0YXZLcUFNRXM3OTlQSjRIMWM5Y20zSlpJKzUyLy84cmlIODJyUnFX?=
 =?utf-8?B?bXZqVXRmZWl4RXBYbU0xQXhDckNNOEt6VG5Qb1Q5bTRCMWRWYStLOG1KbHRh?=
 =?utf-8?B?UmgxOFVVOVc5OUZmYnVLWTFJQXpqN25Pby9tSDU1KyttQ2dPVXN4Q3FqdUFv?=
 =?utf-8?B?WjlCcU9wWDVvWjdpNmZudzhTOWFjSFNuSVdiRml0WGFjNURrT2lORDlkaHQ4?=
 =?utf-8?B?cElDVHlQeUtPZ2JnVnVuYXdYWktyUkw3eDNMTWpRUHJyTDZwbGRrUy9Ta1Q0?=
 =?utf-8?B?ZHJBT1o4eDY0V09vUGR1QkpzOFMzQTZDK2NGd0RReXpkT2kxVWpnaW1WK0M3?=
 =?utf-8?Q?UNvhC4Op+krFrkEJqbUfRiqAE?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e30de44-7a3b-4cba-ab6e-08db83787ee5
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2023 08:09:35.2673
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sHsObpeO0K3sjY/clh6lllkMVflWjT1m/CsRKPqg1LK/tEdnRsbB65ABlgufvV4QO+26zs3fK9OWTOzXUPBBQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PUZPR06MB5984
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_011007_829606_0DEB90C0 
X-CRM114-Status: GOOD (  15.93  )
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
