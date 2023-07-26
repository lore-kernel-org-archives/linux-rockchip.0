Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B05FC001DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jul 2023 04:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJZzTEEda2FZe0hWRouZyKMvHw+Sl+vJAIAGTieRWys=; b=DWMOziLlH89AFl
	cI3AHcF+ionpk0R2ws8B8FQM4ZbKjYpYqbPK/uuGmSTG4KZe6iTXRmwoCLl4ZMIWZSJrLgxIavyR1
	QGB6Gl5y+TWlOC+rYDGnzthOf1UpRgx6HJpCsjlnMfGb3k5n/zdQx0DXEJIEEq7CDNwKVHpE0xn6s
	ZLx/GXekQKfncsDC4j/i5Jg5imQru5FNL8ZbeufKokdev/iNxOQ/Fr01DXavtiwIHi/GCWmGQTBY3
	Z5FOUoo7TZvMDMyY6cerPbrK+i2jfJJC/ungdPPbSkliF5R8rZK+1aD7RAYvP44JXSpO6AS6Y6OIU
	OaDOXYyqot8fSqOpHdWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOVk2-0094mw-0H;
	Wed, 26 Jul 2023 04:03:14 +0000
Received: from mail-sgaapc01on2070a.outbound.protection.outlook.com ([2a01:111:f400:feab::70a] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOVjU-0094Tm-2M;
	Wed, 26 Jul 2023 04:02:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eTBet43sGs4UslfTD9yGSHwVGbVEBqP5zOQSUw9Q2UHPIsG2TKt0LVIH05ycSYUKBdybLqBIcqLTQU7EAgVYBHYjPESQnBI6R15mbQph9MozOXeif9h9g/82CprtlulpWdAKfiv/F/a85yRtRMuUgkJ9KEMY45EOhlGpYsoK9Q92TB7o6fYr5y2b5AUmyaoAEdCHmVIMVVl6S7QHLeAyo8muQjFmYgfHNeiiOz+4YrLzLCA9uigsAmy57i5OI3W+KWH4Vw3xrOTu47tdwE6lh4G7O1rEyyHYhu6JZLs1dAQb96XEOs6v/oSg84oskY+tZyVlezMCjEb18dU3KU5Nyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iHKArmtjsh7/y1Aplpgib/ppYsMir3MLAx1CuQ9EKjQ=;
 b=JfcwhU3rGz5syUzfnIVdY1Qfx/CkIz5GCjuLzfwDVapFS1TZ8sItuLF1NWDXsPBWe+WrkxiuVHbE2342bH3/f1C+dNLrdC7UVe9DJBtuVfFAFd1UbQjSNid3KnX8jhphwbSWMJKXAQzUWuPpsybwUNvJWtHt5zrbGA/mEFKWlUgJOUjU60R5cqWrzJikuajO3TOnFulmHYmnzOda8qw/4WjjzAP0KD35mMfsnthTSlECy7tjvYmLNBOvIocaURPAAdvfxC4aIXVpqB8EuD/bsSbcSOjE7DjISRkYKRrJc86KAPOpn+I7QT6Y7VAc90/JRnBvftWHdrO//+iZqFUs7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iHKArmtjsh7/y1Aplpgib/ppYsMir3MLAx1CuQ9EKjQ=;
 b=jsu2PTDJnzhnmNnQcYjypHsA2sSS7++l5g/xucfs3HzR1+oxrexxPJNE7jeK2/gqC/C0TZY+nKS1lGijYrj2N2DevBrYY7Rnv4KgdgsFKDVNbqLhYLAK4JuLXyWeYxiWChNE6rtO9YxxHiY0Y8tqjquKy2sJQpVbE8BR7D+sP1L1hDGGltE4e1QwTp6HLOfLwC8OvX8rcrqczif4SFisV+wq/O3JHEjrGl1/eSOYOdSbQVebz+L3NH/pfkFejZOEMu/Kd9GoM72yOlKDAerHfer168oMi8e8Vd2ty9gVI6lPtjOYXlf+mgkQulb7AuNGgjSR9OBls1L37V+U0Jn0aA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by SI2PR06MB5139.apcprd06.prod.outlook.com (2603:1096:4:1ae::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Wed, 26 Jul
 2023 04:02:28 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::732f:ea1d:45a1:1e0b]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::732f:ea1d:45a1:1e0b%3]) with mapi id 15.20.6631.026; Wed, 26 Jul 2023
 04:02:28 +0000
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
Subject: [PATCH v2 42/61] mmc: dw_mmc: rockchip: Convert to platform remove callback returning void
Date: Wed, 26 Jul 2023 12:00:22 +0800
Message-Id: <20230726040041.26267-42-frank.li@vivo.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230726040041.26267-1-frank.li@vivo.com>
References: <20230726040041.26267-1-frank.li@vivo.com>
X-ClientProxiedBy: SG2PR02CA0093.apcprd02.prod.outlook.com
 (2603:1096:4:90::33) To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|SI2PR06MB5139:EE_
X-MS-Office365-Filtering-Correlation-Id: f2b143fe-1a52-45d9-84e0-08db8d8d16dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iZsqgPvWHHA7TbxIb75YKDzCfyYBsWZkfPLcq0Oo/m5vV9kdW0yOhofFT4PM4krxKjvb4034H5kv6MSwICzjMTUo/crSHLMOZgJ7mfU9nlHaYQQdSIIvbXJu/ZSZeZfdQar61aAOsK6WGdB7fbFS/ACJgMZ4e9tRtPx3Lwc96PdDkCVM2yQFwvj3xbqSR17vNJNjeSLIoP0Lj6Z1OgX/bRs7bbYo85TLhIBmCkMwYrkcmUNRsjRZX1CrYx99DYC1ehpbBwb8PjQ1ygn1zuCEacimaK3kQ9KhkUEgxmsCONoXpd1+ZekuiHaN2iuW9t+0hBjfV83XLBmabgy4nBwv1pUbXMSXYgl0Zq1F37F6hH1FtAcMFXh3RUBq5E02oi5RMhwXAiMljPSlgT17edsp+eEAUHieMR+awPtQqtPc7PjJNyPxofhyoK2+t1lUEA/icoCwm0AhoVGzbkx+ETNrcoTe8qEhMcYTpvor4mUmh3eLTxahTJsy6Dw+SsHbof4bjYcQ6+oPXkrQ4dRhb0sJOVJ1nnyqqxicxnWZsw8wUO/Un5eVS4nevq3LHVKZhjTat6EmvqLLat54oUBaV2A9eWxjFu5yJZwvkKLSB0GIM4yOv5Uend9CT1JBORA0p8Pe
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5269.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(39860400002)(346002)(366004)(376002)(136003)(451199021)(110136005)(54906003)(38350700002)(6512007)(38100700002)(52116002)(6486002)(6666004)(478600001)(41300700001)(5660300002)(2616005)(8936002)(8676002)(66556008)(4326008)(66476007)(66946007)(316002)(186003)(83380400001)(6506007)(26005)(1076003)(86362001)(2906002)(36756003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGNJdlNNemRxNS9xNjBlczBvRGlwNzNadGxLa1o1LytKTFVXQ0R3WUduZ00r?=
 =?utf-8?B?aWx3TUQ3YmdQTHZlSGN6Smk4UjByZS81clBpU29hTnN5dFhPNkYzTnI0UDRY?=
 =?utf-8?B?eW1rempNNWthQlBDY1oxcFNnb3lZWjJ0a2dWa0JUM2w1ZEFtcVkxYzZrWWkx?=
 =?utf-8?B?R0hhOWxtWENOTW9rcHRyamlPa1o1T0ZNaHo1dDVjY3BiZWtoVmFCbkxsOVkx?=
 =?utf-8?B?UmxZRTRPNEVhblZMUUlOaXRFVmlzeHpKTkl0RCtpZmNRRlRJV3dzWVR1dlFR?=
 =?utf-8?B?N202bFgvRXhpdzU2SGdybVVKT1BGVE91RW54MVppM0dOZXowZk5MRENSMXl3?=
 =?utf-8?B?Zk9ObHRzMXJoZmdVOERzVEJFTFRud21MamFTYys0UmZjMEtkcjJ5ZDNkQTli?=
 =?utf-8?B?TDIrZ2crK2NyMHRCVWZZLzRkOU13ZCttK09LK294QnNOQ3cyaEtEWE12L3J2?=
 =?utf-8?B?cS9zWHpNajRicTFkSVYyNmZkUjFESXRsbUMyWHhmUUU3d1ZGdlJwRE5KcEpH?=
 =?utf-8?B?MjFPMlJkZVBVR1pyUkxJNU9KdkhtYzdHMFcrdnlQajRpNlhnSVd0Q0kzNG8z?=
 =?utf-8?B?SXVHRFF0WEVZUWR0aGt5VmhqYS9EdlJIYS9Mcmh6NzRmendNMWNxT3hHY285?=
 =?utf-8?B?ek1KYkVEYXFBb2RubjRoU09PZ0FScDJ2ekdaKzdMUy9IQ2U1SlRDdGxTQzNz?=
 =?utf-8?B?M1lrUERLN0J0YUJ5ejRGUXl3ZUliYlMrQkg2eTlSWFEzVHEzemJZTldtZkg5?=
 =?utf-8?B?eVNVU2prVmNQakFacC8rQlJGWEVOZGw0VmhQUGlhVDJIQmxVUGlhZGN5WEo3?=
 =?utf-8?B?WXhQWkZkY0cycnRRT2NJQTV6a0ZXOTU5Y3B6MTZDYWhlUDU5bmVaUDlGVzRl?=
 =?utf-8?B?OTJrUnhlZ1o3SG8vNUY2Sk1XdDRWOTJ0b0NibGJkeFFxM1J4blNyTFJ5WjVw?=
 =?utf-8?B?UHFCOENoM3hoNUpsRExZaEl4cloyYmxjWXNPZ3p0SkdSeFhwU1BNMmFlV3FZ?=
 =?utf-8?B?NHA2OGZYSXhCTE5IVk10azJoa1ZlV0RvaDBlaXlhNHBocnhxV09vWVRQQjVx?=
 =?utf-8?B?d1dtYUpJOHpvYVJ4SWdxSE5WUzVNc2YwUUh4U043RktVU0pvbkJCNll4eVNH?=
 =?utf-8?B?aDFTYlBhZjYyN3lJcTZsREQ5Zlc5cHQxL3Jqam4vOUtzWmpzdDlrOGVvTjNx?=
 =?utf-8?B?YkRBUTZSYTZob2NiUlBwaVgrdHBkZzdZSHVkTkdjU2ZKRTNnZGoyMFFLaHRh?=
 =?utf-8?B?VkJVdHAxbU9PQTA3VytiY2I2Yks5TmdVSWw2RlJRMDNhOU9aU2hOcWtZd29x?=
 =?utf-8?B?SDdsY21uU1B0M213MkNlbitmS2ZrRHpldHlQaGlqa3hjeWdmSnFCTysrL2pk?=
 =?utf-8?B?M01CY0FRMDEzQlR5VnAvV2RDNGFMK2pod245K2IxdUh4NVgxL2xaOGdPV0xI?=
 =?utf-8?B?eU5LZ0JvenBMVVIzMlZHRkpoRkFkVzZ6SE42R281V3lsRVF1UWNZaUcwSkI3?=
 =?utf-8?B?Q2dIOVR5bXhlY0I5MisvdlQ1RGE4MFpmRFo4YXpSZEpOUnh3R28vS0I1QkhS?=
 =?utf-8?B?MUhkcWppZFgyeHM2ekxUYnV6ZTd4VHhyTzBBZjd0NnJBdkpYVkdGYlNOS3RH?=
 =?utf-8?B?aW1uM2NBeitKcGU4ODBXVFNjVFA4UmlOWXV2SlR3amlKQjZQNDhnYmJ5TnFi?=
 =?utf-8?B?MkVnUTRyVUYybSttT2MxSEFoRjkvLzBHMnk1eWI1SEdDeGtDQWZibDlma1Jp?=
 =?utf-8?B?dXhFU2g0VTRYK2d1aU9GdmRveElYTU5MNHFaekJqb0tvelFFaUlCM2FISCtW?=
 =?utf-8?B?OXNaMUVEQ0NDV1ZLd1VRdkczVWFrWk1kWTVQK0JpT3VrVjJzbXpmQnRPQjZT?=
 =?utf-8?B?eDFsRTJMdDRnNlcxTm5JVHlkWnY3c2pXOUsvMFNZQ0tMRUdyTXNDbjdGOVgw?=
 =?utf-8?B?QWFIQzZ3NitvYUU5dnZHQzRRdmlTdEdJN2llQ0cvcjhMUHpNenFJdm1Gc1Nl?=
 =?utf-8?B?K0c0dERGVWVwaUhoUS9iWWlKcWl1N1lydWk4NlVJREdTTGlrTWxpejYvZEUx?=
 =?utf-8?B?TWJpMzdDbDdFQ0xZWHdxeWhCQUpwMjIyOFV1RDc0a1RoL1Q3RW5KTUFhelNt?=
 =?utf-8?Q?9G0MGTia2APSDp6CIUtdjYtOb?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2b143fe-1a52-45d9-84e0-08db8d8d16dd
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2023 04:02:11.7833
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tSgCGb4HmaZ4XgsTvTg3NFgNfbSazPb6G9Q1Nw7ZcKUxm+DfoTUL8yKaTwcTthBSUahP9ryGtkMo1yv9KUOVrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR06MB5139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_210240_781661_CDA8CE0B 
X-CRM114-Status: GOOD (  16.85  )
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
