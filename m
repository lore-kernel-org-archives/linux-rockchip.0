Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F07CDCD5BDE
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 May 2026 07:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=29852CI5hZN5qs4FsIsfRm2SDYjdWincoSserWnPTfc=; b=Xzxj9i79T7pQmg
	FSEbyJUBbzluNe+ORfoyJTYaG4vnDN3ykd9JSCV63WHtynPRG03OMyuhHnbkSgL4LjF75wwZqUrVS
	IgPnYCMupe4CuH4/qwQXBQhqvDcQT032RPLJHbMTPAWOhb+VzJUwuGjNl3U5LoO2+8t9Uf0YsKEij
	mgnyem3fQ+I2seDgQ7C4B1m7spcIlts/c+aTDpdYGdMw2+MBgVn+YpQYaSM7hYGEsa3keE5xelOUN
	lnLdk+ut/1pt0Y262IKLWzI7IrMpYIjBh6r5bqc55uoQqPZCpnv6tpfVVVWOow5+z7Q2Z+8pitS8C
	KtiqkAojMvZkcEg4vKWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS94b-00000003Uer-43lW;
	Wed, 27 May 2026 07:53:05 +0000
Received: from mail-westeuropeazolkn19010001.outbound.protection.outlook.com ([52.103.33.1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS94Z-00000003Udw-1Dfa
	for linux-rockchip@lists.infradead.org;
	Wed, 27 May 2026 07:53:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bV/mzHcACyeNkW72GYRad9JUW6xl0FkPbz0wHPMvyLXjxQXOBLpbp4onL50Qq7EuoqeskcO9djQZmsk489r0SV5euFxcfFi0ki4DDB/flh1BcAMAtzxg8hPNXDz0R2cjHHUoN/xfGFmriUkrqe4EJXbV6y7yIAV7/NBTM82Hw50sVMOPSx36nRYRuUflirRANg7tzYf7Fr0WiMFmc7EhcEWP2TWctiRJBeArYiFkArpmW2CbE/bLXcOVkogAsrZkwph0zRzVSPVuoBGsAEzwxKYA1wDt6zt5uvtZ+pAPP/7asvg9CJh6BH+HJf2ndoPi8+0TuIt6Bx0ncWiGYyeckw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w2pjDY+AUD3o6qOChIOYn3d7MREUa3tjW5DjaH7kMhI=;
 b=nDCqKr1CA3F2WFYfJ18hhdJymiDmCZgIEpNDHjW8PYzkyHNW+slM2gwrHmxUrjDwgHhbgoBul+bbk43kvnmwPJnubjHFEMBO5ZdWs7pHy3n8tMt+p/yyILdN3On+rwe72Sj8K595ilmLtjtwOluwGEk6/BhMOxMQRjdAniA8hIUPwdyrWIDnwPeDq0fWxD3pv41f8lJPjCQOPCzNcfFbrCjuK5VSQWqo2wyE8mx6tGDPifVjaN6HOnfybleppkCN7q0i+Mk4FrQVM+fwMkYC4LlUSVyytzINyfwCkolHk/Mrqih/1Rgwa0xT6V1f/tDJyZA/jT6n6bILafmIunHjaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w2pjDY+AUD3o6qOChIOYn3d7MREUa3tjW5DjaH7kMhI=;
 b=EJpzzXhDxb57nX6AlzF8/zoUOZtas740K5cP/wP3yEFr54avSrWod5fdKqmiQKVv/DaWW4Sf6SEqJ6D1Nc3fq3TC9/jDmuy2QtjseAP3elojjH7rWzwMEM94Bm+bEgwPCx1fcrb/ndM/kNhh2QQ9IKQjld3tObiLghvpz+v8e16VAMZdvBB/Xe0YoMFaPviBrun/qOolpmPKdKWFToiBPOJvAhfK1Hdzep6BDG02u3s+jmIiIp+pzJpVyr21Y9kshth1FVtwkD0IRmHgAVnaB8y/bfMxmnYqivF8X9AWA/HRfOuC4PsOpGgFbn6rAklnBYO2voRTDq8wF7X1Z2WPpQ==
Received: from DU0P190MB2385.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:59d::5) by
 PA2P190MB2129.EURP190.PROD.OUTLOOK.COM (2603:10a6:102:423::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.71.12; Wed, 27 May 2026 07:52:57 +0000
Received: from DU0P190MB2385.EURP190.PROD.OUTLOOK.COM
 ([fe80::337b:45a5:3b14:332f]) by DU0P190MB2385.EURP190.PROD.OUTLOOK.COM
 ([fe80::337b:45a5:3b14:332f%3]) with mapi id 15.21.0071.010; Wed, 27 May 2026
 07:52:57 +0000
From: hu hu <huhuvmb88@outlook.com>
To: "jack@armsom.org" <jack@armsom.org>
CC: "xikan@armsom.org" <xikan@armsom.org>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
	"kever.yang@rock-chips.com" <kever.yang@rock-chips.com>,
	"huhuvmb88@gmail.com" <huhuvmb88@gmail.com>
Subject: [U-Boot] ArmSoM CM5-IO (RK3576): U-Boot overlay + defconfig for
 review
Thread-Topic: [U-Boot] ArmSoM CM5-IO (RK3576): U-Boot overlay + defconfig for
 review
Thread-Index: AQHc7a0+SjDpm7T4ok+5sLX41qV5FQ==
Date: Wed, 27 May 2026 07:52:57 +0000
Message-ID: <DU0P190MB238576C5671F1582239BDD25A5082@DU0P190MB2385.EURP190.PROD.OUTLOOK.COM>
Accept-Language: zh-MO, zh-HK, en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0P190MB2385:EE_|PA2P190MB2129:EE_
x-ms-office365-filtering-correlation-id: b390d7ff-5940-40d9-d1da-08debbc4f782
x-microsoft-antispam: BCL:0;ARA:14566002|5062599005|8062599012|8060799015|39105399006|24021099003|15030799006|19110799012|41001999006|31061999003|15080799012|12121999013|22141099003|10035399007|440099028|3412199025|12091999003|102099032|26104999009|40105399003;
x-microsoft-antispam-message-info: =?big5?B?bUtJNDdJaXB1aE9pUXFWUGMzdHQraEFnWnV0SlB1cFlyOENPRlU1eHBKM3lNa0pE?=
 =?big5?B?cWJZdDNUTUZjK0NHRmJPUU9CSDMwN1AzRTNDblg4M0h0MGlmUERDdmFsK1VlY043?=
 =?big5?B?MnVuMnJuc2NMaW51cVFVTVh1UE9BMVBVZXZOdnRmbkd1UEtIaWQxOFV6Mi9uNlFv?=
 =?big5?B?WHdveXFlenJ4K1gwMlBXR01UbXpncHFVQ1JjT0h2L3VwTjJiV2lrWFBTV1FxNkNy?=
 =?big5?B?WkdwYlVPakVJSzZ6c3RiQmhKUjYyRlNpSjVzRFBQeVZHQW5LN3lXZGdiR3FkNjY3?=
 =?big5?B?RXgxSlJuUzZaSXlhdXQ4azV0UFhkZU10SmhjNVJKUnNjbWx4QmQ2TEhDYVRReGJO?=
 =?big5?B?c3JEVmVpVmcyQlZmODBiNkEweXRQSjU4SXRRMkIrTzVNV0tDTWhCSWNQNjQ2U0ZC?=
 =?big5?B?SXk5dXNGTUNSaXVaZ3ZlRWlDOGpuMGlQNzU1TGFpTjJGVnNLZGZQU3VEQkRZMUJY?=
 =?big5?B?bHRWYm5xVVM5QS9mTitpbDdtd3ovNytrZmpqZVlIaytReTN4NnNocE1NcWtRRHFo?=
 =?big5?B?VjY2d1d1N29Mb3phdC9adUZwQ3FiYlVKM0kweGpyMUcvalRhV25weDU5SVMwbUNP?=
 =?big5?B?VXpxK1BTY2ZhRDJyTlIyQyt1eDFTVVJrVmpkOXRjbTk0N041bHBlTDMyQzBvNGpy?=
 =?big5?B?RTZ1dERNWmltT2RaV0hHc2k3WExUQk9TT1dXR3Zia0tYTTFIbWxWN0lkOXVYTWRU?=
 =?big5?B?SmZJc0V2MTJYQmd2eG81MXQvaWhsVTkwYlRYMFdnTnlVdFd6cm94R3FQQ1I0TzNX?=
 =?big5?B?TzFQQlRZb3pIekM3Z2RHNjc5aXBSVC9hN0tOMy80aVI4REp4UlBLSElNbjB4bHpQ?=
 =?big5?B?WVpGMWQycnA5UzRSN2UvNElDVzhWWDJrWU40RWF2L3RMdlpuZzExS0Q3UHlZWFR6?=
 =?big5?B?NlFXV0l5b016M0NhMWJ1QjZQTnVMY1RoM1RJMUdoamRodllEMVE3c0NLbDFqQ0dq?=
 =?big5?B?eFJBSUVYb3lpc25EMHhhQkxMU1FzcEVvQ0pEVmc5R0ZOOC9oZ2owVm1jQTQva214?=
 =?big5?B?QVUyeFhBeUt5K3k3MnBKbGIyRkFuY084VnNCYmJRYXlvaXduMUExTDVSVUxmR2Nn?=
 =?big5?B?WnpEekhuQUh4ODM0MzRHYmpBRXc4Z25tY2s4U1ZpY0pUZzIrSzhwSk4rWE9zSzNT?=
 =?big5?B?ZHlsTmZIcE1zeXJ2UEFodUJ0L295ang2WGlna2s0WHVHSG4ybyszSDl6djhMc3hn?=
 =?big5?B?M0ZIbUtwa3FhMzUvNXg4VlFlVTFSanJ4UW8rMnc2MTB2ME52MTdKRWNLSDZsZy82?=
 =?big5?B?Y3IwK1JsWndrR2c2MUJTY3p2ekdnMVNRZTJidjI2NTNMNndJVlY3OEc1TDVNcm85?=
 =?big5?B?WTd0bFlKTkFsMFM1ak96bUdSb3YxQ0doTFlmbUd5UXVFbTJXdjhVcHlRS0VCd0R1?=
 =?big5?B?V21BWVpocGFkd3VpOFQ0TjhDUU14ejJocWtBdDFIMTNyREtHSTRZdERCazlLcENM?=
 =?big5?Q?YGgPm0KddYG++ORqujTzCXgEip/LWbzGIQKjwYDwBsE=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?big5?B?YzRmam9YZTNlU2QvYVNtNTNidzBuMjM1MGlxSms3UVh3YS85M2lMRlE2bm1qK1hz?=
 =?big5?B?Z3lmb0FrOUNFRWlOdmEyVVJ0a1dJdXZhRXFtazV4N2s4c0pSVHVUZWdIM1ZDR1hz?=
 =?big5?B?Y3NPNDMyTTlHOWszMUxocGtTWHhRaGRnakxHd0lmcXB2UFl3eTRpTnhQQzFSRDl2?=
 =?big5?B?REpqeDIybDh2amg5ZldqbUJleDZaSWJwaFRkWm9zQ3c2Mnp3bVl0SU9meDRpeFd3?=
 =?big5?B?U3VqN3VBYXpBUHFQUkw3ejZoN2szTjlxUUxBVWdaTmZPV2x4WXJFTDZ5QmZucy9V?=
 =?big5?B?SVJsaEdid2lNUUNxV3ZUaVhWd0VzRFI5cDlFOERaeXFqOVBBb1lBU0hvNkQ1V1Zh?=
 =?big5?B?SVRLTUU4Vk9iSGtkbUU4RjhTaTQxa1pCNTI0NDFIS2twS3M0UW1FL1pRdHpmOFhm?=
 =?big5?B?WWllSElwaHFIb2FlQTVrdjJGYkhXVWg0ckMwOHZNZTBoNVFaL3BqTEZyK1V2dnIv?=
 =?big5?B?VG9tcit5TUtub1E1dkVlNVk5UFhYUDEyVGNoaXdaL3QyTXBhSURHRm50RXZObmJD?=
 =?big5?B?N0FpRUdNTWN0RkF3NXFDdjNrUDV4RDRYSzY2NjVvcC9rQVFlU3R4RmxxWHdJQ2Ey?=
 =?big5?B?NFRsVEtyZm1BTERpc2VZamlOcEQzYVhXdkZuYTFnRWgySmd4MHdXRTgvbVF1WlB2?=
 =?big5?B?cnRpSnJ3US9WZVMybU9Wc3hQL1VQNHo4OGtBNjhwanh4blA2VDMvTldaQVBHcmpl?=
 =?big5?B?Q2ltSnFwVHhUOWRVRTJCWXY1My9PMnhBTWJGQ2xRaG9CMHJjZzlXUXM4ZFNFTTlB?=
 =?big5?B?eXJLT0hzK2ZScXcybHZ1d2RqNmx1cHB6OE5rMVdxQ1lhSnBBejdpU2ZLdzZiV3Ra?=
 =?big5?B?dlIxTHBzcWxuN2JPdXZRN2p0RFVmTUI2VUxDKzhkM0tZdU5OSDlLZlZsb3ltd1Iy?=
 =?big5?B?V1NCVDM4OWd2d3ZPUGxaTThGMy9SM1M5OFNZY1lCSitBV1Y5K1VFd2tKS2huRnh4?=
 =?big5?B?aE9GN0N0K1hqZzVzZ0NUR1VoNnc0YzhKZjl0SUhLakFOR2tYamJEMThncmNzQ0Fi?=
 =?big5?B?a1ZHMTBWTS9ZOWtxdzJPbHZlSHlRTVRTUUYybG81NnViNzJxL2xTb2hQRzI4cXZV?=
 =?big5?B?OC9tSkdGd3ZJR1plNTNielBIMTJtV2pTbmlyQWFTck85MmUyT2d6SEJMbFR1TDNo?=
 =?big5?B?cTdqd09kbXZoc2txRHluQUxoNlNyOXhYbmNnaW5mTDhFMHYyS25hY1hLeFg4Uzho?=
 =?big5?B?SEo2aTdzSUVaVFc1ck44cDdJVWpoRnFqMVFqdFNYRDJqbU56Ly9QN0VoOXlWUGFv?=
 =?big5?B?U01ocjlUeXU2blZmUVBQd1BxaFdvQVA2bVBjc3RMMGJSR0FpVkl3NGpRSXNMQUpX?=
 =?big5?B?UFhCL1hKV1Njc1RQOU9ZeEtudFgycUJCNExDdFRBd0VCMzJGSStFc3hROFBzV3lF?=
 =?big5?B?eFlYNHZkSWR6V3RWK2V4QU1iaVl6RFlXQWhSNDJRTGVRK2NpM202MFhqUFFTTzNP?=
 =?big5?B?RHBtNnVqdFJDTldrMWVMK2Y2aXRiQlZZMXMzbDlOQ3NuRkhZS29GNHdEMlVWVExu?=
 =?big5?B?ZG9odDZWSnQvZUE0M3BzM1BoMFlhcEtIYkFWTUVJVzk3Y0hraHhEQTB5ZEh2a1FN?=
 =?big5?B?MXFrR3I4ZlBzclZ0dVJrUlN5QlRBQmhxdHM5YUpxaW9TdjhyK0NpbzRMam8xb3F1?=
 =?big5?B?SlpzSkgrZEZ6bVloS1hDenNMcEdqV2RPNnRLN2RVelBuWGVrc2Npa1JWeVN0RFN5?=
 =?big5?B?WWNxb3JHZWlXWjhNY0FtclR1aUlpQXRCWDkvTWNqdEZmd0Ztak1uTUZyTUY4K1E1?=
 =?big5?B?dWJ6T2dpdlp6TXRtbmNseWdCL0lvT2t4czQ5Vkx1Z2o4bkxiOGEwUmJoV2YvRHIx?=
 =?big5?Q?p+x8Gqe6nKXgey+SI9yyjA9nD9dPCWAO?=
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0P190MB2385.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: b390d7ff-5940-40d9-d1da-08debbc4f782
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2026 07:52:57.3618
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2P190MB2129
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_005303_485953_36042054 
X-CRM114-Status: GOOD (  15.89  )
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
Content-Type: text/plain; charset="big5"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gQXJtU29NIHRlYW0gYW5kIGxpbnV4LXJvY2tjaGlwLAoKRmlyc3QsIHRoYW5rcyBmb3Ig
dGhlIGV4Y2VsbGVudCBDTTUtSU8gZGVzaWduIKFYIHRoZSBjYXJyaWVyIGhhcyBiZWVuIGEKcGxl
YXN1cmUgdG8gYnJpbmcgdXAsIGFuZCB0aGUgc2NoZW1hdGljIHBhY2thZ2UgKENNNS0xVjEgKyBD
TTUtSU8tMVYxKQptYWRlIGhhcmR3YXJlIHZlcmlmaWNhdGlvbiBzdHJhaWdodGZvcndhcmQuCgpX
aGlsZSBydW5uaW5nIG1haW5saW5lIFUtQm9vdCB2MjAyNi4wNy1yYzMgYWdhaW5zdCBhIHByb2R1
Y3Rpb24gdW5pdCwgSQpub3RpY2VkIGEgZmV3IHNtYWxsIGFyZWFzIHdoZXJlIHRoZSB1cHN0cmVh
bSBib2FyZCBEVFMgYXQKCiAgZHRzL3Vwc3RyZWFtL3NyYy9hcm02NC9yb2NrY2hpcC9yazM1NzYt
YXJtc29tLWNtNS1pby5kdHMKCmNvdWxkIGJlbmVmaXQgZnJvbSBtaW5vciBhZGp1c3RtZW50cyB0
byBtYXRjaCB0aGUgaGFyZHdhcmUgYmVoYXZpb3VyCm9ic2VydmVkIGluIFUtQm9vdC4gUmF0aGVy
IHRoYW4gdG91Y2ggdGhlIHVwc3RyZWFtIGJvYXJkIERUUyAod2hpY2gKc2hvdWxkIHRyYWNrIHRo
ZSBrZXJuZWwgc2lkZSksIEkga2VwdCBhbGwgZml4ZXMgaW4gYSBVLUJvb3Qtb25seQpvdmVybGF5
LiBQYXRjaCBhbmQgY29tbWl0IG1lc3NhZ2UgYXJlIG9uIG15IGZvcmsgZm9yIHJldmlldzoKCiAg
aHR0cHM6Ly9naXRodWIuY29tL2dhaGluZ3dvby91LWJvb3QvY29tbWl0LzA4YWQzY2Q1CgpRdWlj
ayBzdW1tYXJ5IG9mIHRoZSBmb3VyIG9ic2VydmF0aW9uczoKCiAgMS4gJnUycGh5MF9vdGcgY3Vy
cmVudGx5IGhhcyBubyBwaHktc3VwcGx5LCBzbyB0aGUgVHlwZS1DIDVWIHN3aXRjaAogICAgIGdh
dGVkIGJ5IEdQSU8yX1BCNiAoVVNCX09URzBfUFdSRU5fSCBwZXIgc2NoZW1hdGljIHNoZWV0IDEy
KSBzdGF5cwogICAgIG9mZiBpbiBVLUJvb3QgYW5kIFVTQi1DIGRldmljZXMgZG9uJ3QgZW51bWVy
YXRlLiBBZGRpbmcKICAgICBwaHktc3VwcGx5ID0gPCZ2Y2NfNXYwX3R5cGVjMD4gcmVzb2x2ZXMg
dGhpcyBmb3IgdGhlIFUtQm9vdAogICAgIHN0YWdlOyBMaW51eCBhbHJlYWR5IGhhbmRsZXMgaXQg
dGhyb3VnaCBGVVNCMzAyLgoKICAyLiBUaGUgQ001IG9uLW1vZHVsZSBHYkUgUEhZIGlzIGEgTW90
b3JDb21tIFlUODUzMUMtQ0EgKHNjaGVtYXRpYwogICAgIHNoZWV0IDE4LCBVNjYwMSkuIEl0IHVz
ZXMgdGhlIFNvQydzIFJFRkNMS08yNU0gb3V0cHV0IGFzIGl0cwogICAgIDI1IE1IeiByZWZlcmVu
Y2UgKHBhZ2UgMTggc2hvd3MgWTY2MDAgaXMgZGVwb3B1bGF0ZWQpLCBzbwogICAgIGluY2x1ZGlu
ZyAmZXRobTBfY2xrMF8yNW1fb3V0IGluIGdtYWMwJ3MgcGluY3RybC0wIGFuZCBjbGFpbWluZwog
ICAgIDwmY3J1IFJFRkNMS08yNU1fR01BQzBfT1VUPiBhdCAyNSBNSHogb24gdGhlIFBIWSBub2Rl
IGxldHMgdGhlCiAgICAgUkdNSUktUlhJRCB0aW1pbmcgbG9jayByZWxpYWJseS4KCiAgMy4gJnVz
Yl9kcmQwX2R3YzMga2VlcHMgZHJfbW9kZSA9ICJvdGciICsgdXNiLXJvbGUtc3dpdGNoIHVwc3Ry
ZWFtLAogICAgIHdoaWNoIGlzIGNvcnJlY3QgZm9yIExpbnV4ICsgRlVTQjMwMiBidXQgbGVhdmVz
IFUtQm9vdCBpbgogICAgIHBlcmlwaGVyYWwgc3RhdGUgKG5vIEZVU0IzMDIgZHJpdmVyKS4gRm9y
Y2luZyAiaG9zdCIgb25seSBpbgogICAgIHRoZSBVLUJvb3Qgb3ZlcmxheSByZS1lbmFibGVzIFVT
Qi1DIGJvb3QgbWVkaWEuCgogIDQuIGRlZmNvbmZpZyBwdWxscyBpbiBDT05GSUdfUEhZX01PVE9S
Q09NTT15IHNvIHRoZSBZVDg1MzEgUEhZCiAgICAgZHJpdmVyIGlzIGxpbmtlZCBhbG9uZ3NpZGUg
dGhlIGV4aXN0aW5nIENPTkZJR19QSFlfUkVBTFRFSwogICAgIGZhbGxiYWNrLgoKRm9yIHJlZmVy
ZW5jZSwgaXRlbXMgKDEpIGFuZCAoMikgYXJlIGFscmVhZHkgaW1wbGVtZW50ZWQgaW4geW91ciBv
d24KQlNQIERUUyBhdCBBcm1Tb00vcm9ja2NoaXAta2VybmVsIEAgbGludXgtNi4xLXN0YW4tcmty
Ni4xLCBzbyB0aGlzIGlzCnJlYWxseSBqdXN0IGJyaW5naW5nIHRoZSBtYWlubGluZSBVLUJvb3Qg
c2lkZSBpbnRvIGFsaWdubWVudCB3aXRoIHRoZQpkZXNpZ24geW91ciB0ZWFtIGhhcyBhbHJlYWR5
IHZhbGlkYXRlZC4gUGFydGljdWxhcmx5IHRoZQoiYXJtNjQ6IGR0czogYWRkIGRldmljZSB0cmVl
IGZvciBBcm1Tb00gQ001IElPIGJvYXJkIiBjb21taXQKKDIwMjUtMTEtMjEpIHdhcyB0aGUgcHJp
bWFyeSByZWZlcmVuY2Ugd2hpbGUgY3Jvc3MtY2hlY2tpbmcgR1BJTwphc3NpZ25tZW50cyBhZ2Fp
bnN0IHRoZSBzY2hlbWF0aWMgoVggdGhhbmsgeW91IGZvciB0aGF0IHdvcmsuCgpGaWxlcyB0b3Vj
aGVkIChib3RoIG5ldywgYWRkaXRpdmUsIG5vdGhpbmcgcmVtb3ZlZCk6CgogIGFyY2gvYXJtL2R0
cy9yazM1NzYtYXJtc29tLWNtNS1pby11LWJvb3QuZHRzaQogIGNvbmZpZ3MvYXJtc29tLWNtNS1p
by1yazM1NzZfZGVmY29uZmlnCgpkdHMvdXBzdHJlYW0vLi4uL3JrMzU3Ni1hcm1zb20tY201LWlv
LmR0cyBpcyBpbnRlbnRpb25hbGx5IHVudG91Y2hlZApzbyBpdCBjYW4ga2VlcCB0cmFja2luZyB0
aGUga2VybmVsLXNpZGUgRFRTLgoKVmVyaWZpY2F0aW9uIHN0YXR1cyAoYWxsIG9ic2VydmF0aW9u
cyBmcm9tIGEgcnVubmluZyB1bml0LCBVLUJvb3QKdjIwMjYuMDctcmMzLWcwOGFkM2NkNTc0ZjAg
Y29uZmlybWVkIHZpYSAvcHJvYy9kZXZpY2UtdHJlZS9jaG9zZW4vCnUtYm9vdCx2ZXJzaW9uIGFm
dGVyIGhhbmRvZmYpOgoKICAtIEdiRSBQSFkgaWRlbnRpdHkgaXMgcG9zaXRpdmVseSBjb25maXJt
ZWQgYXMgWVQ4NTMxOiB0aGUgY2hpcCdzCiAgICBQSFkgSUQgcmVnaXN0ZXIgcmVhZHMgMHg0ZjUx
ZTkxYiBvbiBzdG1tYWMtMDowMSwgd2hpY2ggbWF0Y2hlcwogICAgUEhZX0lEX1lUODUzMSBpbiBk
cml2ZXJzL25ldC9waHkvbW90b3Jjb21tLmMuIChUaGUgdXBzdHJlYW0gYm9hcmQKICAgIERUUyBo
ZWFkZXIgY29tbWVudCBhbmQgdGhlIEJTUCBEVFMgcmVzZXQtZGVsYXlzIGNvbW1lbnQgYm90aAog
ICAgc3RpbGwgbWVudGlvbiBSVEw4MjExRi4pCgogIC0gaXBlcmYzIHN1c3RhaW5lZCA5NDEgTWJp
dHMvc2VjIGFnZ3JlZ2F0ZSBvdmVyIDQgcGFyYWxsZWwgVENQCiAgICBzdHJlYW1zIGZvciAzMCBz
IHdpdGggemVybyByZXRyYW5zbWl0cywgY29uZmlybWluZyB0aGUgUkdNSUktUlhJRAogICAgdGlt
aW5nIGlzIGxvY2tlZCBhbmQgdGhlIFlUODUzMSBpcyBoYXBweSB3aXRoIHRoZSBTb0MgUkVGQ0xL
TzI1TQogICAgcmVmZXJlbmNlIGNsb2NrIGxheW91dCBwZXIgc2NoZW1hdGljIHBhZ2UgMTguCgog
IC0gVW5kZXIgdGhlIEFybWJpYW4gLyB2ZW5kb3IgQlNQIERULCBrZXJuZWwgbG9nIGNvbmZpcm1z
CiAgICB1MnBoeTBfb3RnIGhhcyBubyBwaHktc3VwcGx5IHByb3BlcnR5IGFuZCB0aGUgcmVndWxh
dG9yCiAgICB2YnVzNXYwX3R5cGVjIGlzIGNvcnJlc3BvbmRpbmdseSBkcml2ZW4gYnkgRlVTQjMw
MiB2aWEKICAgIHZidXMtc3VwcGx5IChzdGF0ZSA9ICJkaXNhYmxlZCIgd2hlbiBubyBzb3VyY2Ug
cm9sZSBpcwogICAgbmVnb3RpYXRlZCkuIFRoaXMgaXMgZXhhY3RseSB0aGUgZGVzaWduIHRoZSBC
U1AgRFRTIGVuY29kZXM7IHRoZQogICAgVS1Cb290IG92ZXJsYXkganVzdCBwcm92aWRlcyBhIGNv
bXBsZW1lbnRhcnkgcGF0aCBmb3IgdGhlCiAgICBuby1GVVNCMzAyLWRyaXZlciBVLUJvb3Qgc3Rh
Z2UuCgogIC0gVVNCIGh1YiArIEhJRCArIEhETUkgYWxsIGZ1bmN0aW9uYWwuIFRoZSBvdmVybGF5
J3MgVVNCLUMtYXMtaG9zdAogICAgYmVoYXZpb3VyIGF0IHRoZSBVLUJvb3Qgc3RhZ2Ugd2FzIG5v
dCBkaXJlY3RseSBvYnNlcnZlZCAoZGVidWcKICAgIFVBUlQgdW5hdmFpbGFibGUgb24gdGhpcyB1
bml0KSwgYnV0IHRoZSB1bmRlcmx5aW5nIFVTQjIgUEhZCiAgICBwb3dlciBwYXRoIGlzIG5vdyBj
b25zaXN0ZW50IHdpdGggdGhlIEdQSU8yIFBCNgogICAgKFVTQl9PVEcwX1BXUkVOX0gpIHdpcmUg
ZnJvbSBzY2hlbWF0aWMgc2hlZXQgMTIuCgpTaWduZWQtb2ZmLWJ5IGlzIG9uIHRoZSBjb21taXQg
cGVyIERDTywgc28gZmVlbCBmcmVlIHRvIGNoZXJyeS1waWNrLAphZGFwdCwgb3IgdXNlIGl0IGFz
IGEgc3RhcnRpbmcgcG9pbnQgaWYgeW91J2QgbGlrZSB0byBzZW5kIGEgbW9yZQpwb2xpc2hlZCBz
ZXJpZXMgdG8gdS1ib290QGxpc3RzLmRlbnguZGUgKENDJ2luZwprZXZlci55YW5nQHJvY2stY2hp
cHMuY29tKS4gSSdtIGhhcHB5IHRvIHJldmlzZSwgc3BsaXQgdGhlIHBhdGNoCmRpZmZlcmVudGx5
LCBvciBjbGFyaWZ5IGFueSBzY2hlbWF0aWMgcmVmZXJlbmNlcyChWCB3aGljaGV2ZXIgZmxvdwp3
b3JrcyBiZXN0IGZvciB5b3UuCgpUaGFua3MgYWdhaW4gZm9yIHRoZSBib2FyZC4KCkJlc3QgcmVn
YXJkcywKZ2FoaW5nd29vCmh1aHV2bWI4OEBvdXRsb29rLmNvbQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
