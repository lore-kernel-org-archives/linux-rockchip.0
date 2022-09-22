Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9F67C54EE9
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 11:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9v3kage5JVMtaGPTJ6VerCKkHSujjFmMPTaVgscLN5w=; b=M+FHZSyEwUzxn6/gfxdFWiGg1X
	ArxvS6q6l6SrZ0VhsJMKR65e5eZn1iAtUm81wzDmxmU+49kwGRJLvWU0HtbYLUAuoI3bMoruxgiU0
	bMPGUBV7q0XzYuY54opCd0cowoz00FE5prUwf77mplyT3lyYC2ZoEDh+mK5UfDBE5Xq66emnr8int
	UJuS10Pzy4kNIYTst6wj6XvnXt3DSFbZlbuSHRkkfqLKmS/7RqbNORhc32RsBRZrJrW7/bGcriPB+
	i8OeHb35oSY/bojOT/nRUD8JPCIyn8vU+eflLyG3Eoh/9cNALVpEQE2Vj6R9bcdkfK1joHeAS0Pr+
	cdfmLstg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obKp2-00FHxB-2h; Thu, 22 Sep 2022 11:56:52 +0000
Received: from mail-eopbgr60057.outbound.protection.outlook.com ([40.107.6.57] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obKoq-00FHs7-5p; Thu, 22 Sep 2022 11:56:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XgagVrcmXlPRHQpczZln4IVYVw/EmvrV5wTLYkn2wZRX40UM6m58NrgPXVF/LGkRcqYsUoxH3T7gMujl8PIVGA7nvCMc1hWfRkMcNATuWkBpV9o/25sz81NyGBx60OGmTsnLIgj/6u9WkMxhv+7AJwwu9Xe4R8NdTTZCeWjgNd07M+3vepuaSGzU7OiGzQgpg0MHnkUHy2TWEKWDx7pT4VoQ7CgXS8dDwFPOqnOiKIc9xS6Trfbw9XBajPQnaH2qSCXCjL1LmxroutSQHYz00c8XhQyGymjBNja0sFUsG1yFr5rLuO1V5Wz2OmZD5YeHjBq4DOtSW/8nhFKeJOa6OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oxGAgmC250NqR/N021Cz/FHJAzMjeXc/2NphZcmuGyQ=;
 b=gbCWWsxv04VBofs7SG1Dw5f8HBRF23O+Ib6nPHPOe8zC0DjkpncmvEQQcBhlA5ZqBMkQFWBUuqTTJnqfs/hgY+i+Vz0BDr5ypde2rr01kro8Do492C1IOI8pNXHU+fjvgWte/F/U3bNQVrhobhctavRmISAdfkV8FG87wOlPER76Jk5Ptg7CAysCaPLSWD+h6tiiQb0strumaqOh+MTjPZk5i/tId9k+yjpMigCVUy2ZWIYfBccs7C8G3wxe78PK/MU3w6cL528hBtv6ZsB2tLFCo4pQlj+pLZYfWYnGzGFNMWQmx2VY+YQVXiDJ/8LmSZe05zcloiAjDsFC3MVfrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oxGAgmC250NqR/N021Cz/FHJAzMjeXc/2NphZcmuGyQ=;
 b=GyFAbnuEAROxmIVriXQFBEjRGLbMxTcyXgqRLH3t5Apo8derja6Z4YgxHZG2wOJvFG7j/AoTyT5flIUALx9Gsb/Tg/lqaBXDtTcp2okimUpbwvtg6uBwyVXZNBUF7IEnRAaNxM2AhUm5pr/pCK3flH+LvzwOGyW5orM6psX7Pt4pfX2dfjokAmIe1q/z2Iq3QAQ0+v+AxY17M9oHm4vvNBmWZwNCkIHrAyv/TxDfJSFqyrXbEyEQZzZvx1GT9tu7Jwxgs8BIb6U9zJNb4v8IyhPZqBj36YZHoCsGD+PcPVYBltBDpZYrPXt33VQJor4HjcCnxXIPpKj7Yhevpz5rQQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM9PR04MB8906.eurprd04.prod.outlook.com (2603:10a6:20b:409::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.18; Thu, 22 Sep
 2022 11:56:32 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833%3]) with mapi id 15.20.5654.016; Thu, 22 Sep 2022
 11:56:32 +0000
Message-ID: <0bc7d14f-6e38-009a-9ec7-46d92042b44b@theobroma-systems.com>
Date: Thu, 22 Sep 2022 13:56:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_2/3=5d_arm64=3a_dts=3a_rockchip=3a_add_PX3?=
 =?UTF-8?Q?0-=c2=b5Q7_=28Ringneck=29_SoM_with_Haikou_baseboard?=
Content-Language: en-US
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 dmitry.torokhov@gmail.com, klaus.goger@theobroma-systems.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org
References: <20220922101211.3215888-1-foss+kernel@0leil.net>
 <20220922101211.3215888-3-foss+kernel@0leil.net>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20220922101211.3215888-3-foss+kernel@0leil.net>
X-ClientProxiedBy: AS9PR06CA0204.eurprd06.prod.outlook.com
 (2603:10a6:20b:45d::30) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM9PR04MB8906:EE_
X-MS-Office365-Filtering-Correlation-Id: 172514c8-4104-40b6-04ba-08da9c917d8b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	ZKZARB7jU7MtKX65o1ZE9q4fo/Z1r24DbUZB4TRN33HV2vtkfvS3uapqN2E/pfmP/R7QNu0fXc5CnDN+qwi6xGKvdvLsS0C2Vfl2JPKUgs5T0lwptkPhyUKj+69vt1WfwcO6Mlw6WFDUMhtHDq0VPBLeJZQozfq0suZ5yPAPBWtK4umdPjCFTIm3xW5zm1S4T/uyVtdaQdsbU6XwDdWQD4SaTGA1JldUn9xfYHZkgi7lzFD1b0UsOS0kL8OqKMq1Fdv/nZPOO1nf62F9+yElri4Rt8IKSxBKKDsQ2JAR72RJy2x5Kj4Hd7o65teesHgQaVKl3D62DrY0sAjpP9227aLx+pKSkcuUSxTeUFUFOEqzK5Wfe2n17HDyL6v76C7fo/rN3tHcP+oQ5FrXE6xcgfwZW7JHzXiGU+QHC6g8Mc2rdP1edUl7ZmRJQM1dN9AdYKVsMzAUD9bNXTGXCZ9i8OV+TsfICd3uTUadOONEYtYhncV8GE9HB71XBgoWDnrDDzb/N/lsVyLqWzyJblyWO1QXC+A2CZa2TkeMmgYidyGZdDnMBnUFLuEkOhm7jF7Nkgk2AQlXxpCXN21vA+0YENo8O+lwsa7di4TI+tV2+AKutAI3spE7dcFIFFG3hSiC1XzGpkrsH1IAP3+OcKBbTFqmj0E5Y/7DtZwWhWl+BjENuWO0Cen8pzis3v9UdsAxFDjkhsN2aUb5I6w8BOhkce60N4PmTL6HP6XFS4VDkjLsUmgNqccNN+MKbpl/No7zJWfk8zevFzKAtKgmtDc23kMA1FXfbm7hDX4oVkq5Kfw=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(396003)(39850400004)(376002)(366004)(346002)(451199015)(224303003)(53546011)(36756003)(31686004)(2906002)(41300700001)(5660300002)(7416002)(8936002)(86362001)(4326008)(31696002)(66476007)(66946007)(66556008)(316002)(186003)(6486002)(83380400001)(44832011)(26005)(478600001)(6506007)(6512007)(2616005)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?V1FKakdXdlpRKzg0azliRTZRU0xBWlVmS2RqNnZaVytlOEEzdmRWayswbHFF?=
 =?utf-8?B?eVA3ZFJrVVlibUlmZlYxelJic1dDMEEzc0hrdzZwbHBCT3ZKWExGUEZpMTls?=
 =?utf-8?B?NGx3SVh3ZjNUeW9TYlpRblgvZzBBWUZDRWoyRjloR2FPTkFRUFd3aXo2WWpM?=
 =?utf-8?B?R3lMR01CVllZYll5Q0ZlN1lBTEtxOUdYTDJpbEFSUVVoS0VLN09pWkdFMXNJ?=
 =?utf-8?B?cEJja1N0K0FGclZMcmRrdjdxaThQSDVuMzN6NjFJaHh6RG1hV1poZmE2Vmgw?=
 =?utf-8?B?dktBMHRQZmZKUmZVZEI3MVRwUEJEWW1adEdneDgrYXRLQWluRk9GSlNPNS8w?=
 =?utf-8?B?N01nZGhKRWh1V1gvc3JnV29aUWduT3JvNnNSOWVSWW1nYVNsR0JEelcyVUFs?=
 =?utf-8?B?ZC8vN1liaHhibU9zZTNoeWo0V1QwU3FINE5vUkJJR0c3ZE1EZklkR1F2d2Ix?=
 =?utf-8?B?Q3JLd0hTWXF4d2RMVlNSOEF6ZHhtRHhkaEJKdkltMUVRSmtMYVNsQ1N1UDVy?=
 =?utf-8?B?ZlFnRTRTZXJ0WDNma0dUWGZJYk5vUUh0QWxlZDZBbUpjc3hiVkJmYlk1bUZm?=
 =?utf-8?B?VmxCOGdseHFSdFgrdG1kT1ltdVhZVmVyVEYrcWpsazN2RndSUEhYZ0NuZmFv?=
 =?utf-8?B?a2ZGV05Bei9PdVovVmorWmsvUVZPR2tPbWRteHh2Qlkrc1FKK29COWdKdm02?=
 =?utf-8?B?bWdYdXh6SHNzQURFRXV5SndReWdnaTRaOVA3ajZxaVJvWGROeWhueUg5MGFK?=
 =?utf-8?B?dzZOZ2xRYmNubFBWYmlPL3VuZ290UEhVU2R4UFU5RVJrU1JsM0w1TkxSTGFB?=
 =?utf-8?B?cTFPTkE1UGhHbnBza01wbFFwaXhWTXFVV085Qnc5cGxjNG9UeStQNEhSL3Na?=
 =?utf-8?B?RU5DWi9TL0svWkU5U24za3JFamV5WXpPV1BiT29yRU9UMFRvT0MzUEcwNG1T?=
 =?utf-8?B?UytNcVYreDllbXVVN1E0MDYwaGV1OHA2N3VIS1FSWDJEcFl4RlhYWDZvQUVL?=
 =?utf-8?B?c0RYYzg2MGp6RncwUHk5RWFqYkxLQm1tNXF3bWJmU2FMc2dLWEpNL2tDV0hH?=
 =?utf-8?B?R1ZsZktFd2wyUTNSUStsUjljb1ZoNnVKWTBLSjRQU3JaR2llT2FrVk5HZ2Fm?=
 =?utf-8?B?L3ZGdEMyN1ZRaTlaOXFaUkpUZU5HTjRpMlVSRG5NQUlrU0VLbjVmR2xJS0pH?=
 =?utf-8?B?aEExWFpuQmpCeHBYbW5HSGw2UDRDSzNTVFR4TTdqQ0trVU5od3ROOVBNWjgr?=
 =?utf-8?B?UklkcDhOTVI1STUxQXdxT3FVZmZyU2N4NlpJYWpGK3BEQU1LUDg4SlhyZndI?=
 =?utf-8?B?aHdiR2RFeUtxOHV1enlldVJHMWY2TWVLUXVXZFFuZHRmaWZMcng2dWkvVGRU?=
 =?utf-8?B?Z1hEQmhDdlVwcXVJSFhiMmFTOU91VHJTajNKZGsydVQyc2ZFUWFaaEkzblNJ?=
 =?utf-8?B?QVBBbVJwQVlnVG81dnVpdW5xNFg0UkFqUnNNQkk4QmVFWWQ2cmhNd2NyMjRX?=
 =?utf-8?B?aDVQTDVUZG9Rdmtua3FsNk82NHZzM2pRSDBTZk53YlZ3ak8yQzByZXhNa1Fo?=
 =?utf-8?B?b2hPZjg4UXh4QlgycHRjVTFFZUY4V0t0UkkrZndORmJLSW8rQlZGd1VTT3ha?=
 =?utf-8?B?UklpSlpKdjVJK1B5MnVxd0JyRG9WaDdsYkpDNGlsU1hGbldsZ1RyS1pPTW4y?=
 =?utf-8?B?QytpdlBZWHZkQW9WOU1pZ1dXRVRLeUlQOE1YUjR1a0NUSlh1RUNsSklyaVdG?=
 =?utf-8?B?NmM5dTJodTZyelQzNEFvakptcVVVSmlKT0JZcThnZjVHSlVqSmZndDdhNkF1?=
 =?utf-8?B?VE9qY2RzTFZibHQ5aFJhY0U1ckNUSytXUlZaKzZ0V2ljK0tvWmpSNldwVFFl?=
 =?utf-8?B?d01PYTNPRnhNN0NpNE1GaFdUNWo3cG83L3pqOG54UVRsUEVreHZFWmlsbFdk?=
 =?utf-8?B?WHNLb0E3eENTbXJ3ODgxNDNtdWwzUFFwRHZXZmc1S2E3S1Z5UmhxcDVRZm4y?=
 =?utf-8?B?Vk9EU2JxakpIay96YlFEMzBZTTVjajY2NDBLcmF1QUxEL1kxK0JDdGZmd0ds?=
 =?utf-8?B?eVpFa244T1ppbGJvQlFhSnkzSDI0QmdncDNyOUxOTVJlOHg0dWVNb05LNkdn?=
 =?utf-8?B?OVUwME9CSWVLeU5veFBrbFFMc3RKQldiOWRjUFhrMlZaT3NKYmZEeHJ3cFlp?=
 =?utf-8?Q?XOgDNr0L9WZt95GqQlLd7sk=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 172514c8-4104-40b6-04ba-08da9c917d8b
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2022 11:56:32.0703
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cip1q1XFL1j1xPIH2JJIIsPPUyXhxRrHIRT8FOMAultchPcgmpcNsxIV4lKDVI56FwNVJps0oSnW6GhnPbTwQVg2/YHzNt0/2T8obVVyGRnVdSdU3gednP6kVms0mY9T
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8906
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_045640_478647_0AFEF332 
X-CRM114-Status: GOOD (  13.95  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgYWxsLAoKT24gOS8yMi8yMiAxMjoxMiwgUXVlbnRpbiBTY2h1bHogd3JvdGU6ClsuLi5dCj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay5k
dHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLmR0c2kKPiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uNzRhN2YxMTgyYzIxCj4g
LS0tIC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1y
aW5nbmVjay5kdHNpCj4gQEAgLTAsMCArMSwzNDcgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4gKy8qCj4gKyAqIENvcHlyaWdodCAoYykgMjAyMiBU
aGVvYnJvbWEgU3lzdGVtcyBEZXNpZ24gdW5kIENvbnN1bHRpbmcgR21iSAo+ICsgKi8KPiArCj4g
Ky9kdHMtdjEvOwo+ICsjaW5jbHVkZSAicHgzMC5kdHNpIgo+ICsKPiArLyB7Cj4gKwlhbGlhc2Vz
IHsKPiArCQltbWMwID0gJmVtbWM7Cj4gKwkJbW1jMSA9ICZzZGlvOwo+ICsJCXJ0YzAgPSAmcnRj
X3R3aTsKPiArCQlydGMxID0gJnJrODA5Owo+ICsJfTsKPiArCj4gKwllbW1jX3B3cnNlcTogZW1t
Yy1wd3JzZXEgewo+ICsJCWNvbXBhdGlibGUgPSAibW1jLXB3cnNlcS1lbW1jIjsKPiArCQlwaW5j
dHJsLTAgPSA8JmVtbWNfcmVzZXQ+Owo+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4g
KwkJcmVzZXQtZ3Bpb3MgPSA8JmdwaW8xIFJLX1BCMyBHUElPX0FDVElWRV9ISUdIPjsKPiArCX07
Cj4gKwo+ICsJbGVkcyB7Cj4gKwkJY29tcGF0aWJsZSA9ICJncGlvLWxlZHMiOwo+ICsJCXBpbmN0
cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwkJcGluY3RybC0wID0gPCZtb2R1bGVfbGVkX3Bpbj47
Cj4gKwkJc3RhdHVzID0gIm9rYXkiOwo+ICsKPiArCQltb2R1bGVfbGVkOiBsZWQtMCB7Cj4gKwkJ
CWxhYmVsID0gIm1vZHVsZV9sZWQiOwo+ICsJCQlncGlvcyA9IDwmZ3BpbzEgUktfUEIwIEdQSU9f
QUNUSVZFX0hJR0g+Owo+ICsJCQlsaW51eCxkZWZhdWx0LXRyaWdnZXIgPSAiaGVhcnRiZWF0IjsK
PiArCQl9Owo+ICsJfTsKPiArCj4gKwl2Y2M1djBfc3lzOiB2Y2NzeXMgewo+ICsJCWNvbXBhdGli
bGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiArCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2M1djBfc3lz
IjsKPiArCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+ICsJCXJlZ3VsYXRvci1ib290LW9uOwo+ICsJ
CXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ICsJCXJlZ3VsYXRvci1tYXgt
bWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ICsJfTsKPiArfTsKPiArCj4gKyZjcHUwIHsKPiArCWNw
dS1zdXBwbHkgPSA8JnZkZF9hcm0+Owo+ICt9Owo+ICsKPiArJmNwdTEgewo+ICsJY3B1LXN1cHBs
eSA9IDwmdmRkX2FybT47Cj4gK307Cj4gKwo+ICsmY3B1MiB7Cj4gKwljcHUtc3VwcGx5ID0gPCZ2
ZGRfYXJtPjsKPiArfTsKPiArCj4gKyZjcHUzIHsKPiArCWNwdS1zdXBwbHkgPSA8JnZkZF9hcm0+
Owo+ICt9Owo+ICsKPiArJmVtbWMgewo+ICsJYnVzLXdpZHRoID0gPDg+Owo+ICsJY2FwLW1tYy1o
aWdoc3BlZWQ7Cj4gKwltbWMtaHMyMDAtMV84djsKPiArCXN1cHBvcnRzLWVtbWM7Cj4gKwltbWMt
cHdyc2VxID0gPCZlbW1jX3B3cnNlcT47Cj4gKwlub24tcmVtb3ZhYmxlOwo+ICsJdm1tYy1zdXBw
bHkgPSA8JnZjY18zdjM+Owo+ICsJdnFtbWMtc3VwcGx5ID0gPCZ2Y2NfZW1tYz47Cj4gKwo+ICsJ
c3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArLyogT24tbW9kdWxlIFRJIERQODM4MjVJIFBI
WSBidXQgbm8gY29ubmVjdG9yLCBlbmFibGUgaW4gY2FycmllcmJvYXJkICovCj4gKyZnbWFjIHsK
PiArCXNucHMscmVzZXQtZ3BpbyA9IDwmZ3BpbzMgUktfUEIwIEdQSU9fQUNUSVZFX0xPVz47Cj4g
KwlzbnBzLHJlc2V0LWFjdGl2ZS1sb3c7Cj4gKwlzbnBzLHJlc2V0LWRlbGF5cy11cyA9IDwwIDUw
MDAwIDUwMDAwPjsKPiArCXBoeS1zdXBwbHkgPSA8JnZjY18zdjM+Owo+ICsJY2xvY2tfaW5fb3V0
ID0gIm91dHB1dCI7Cj4gK307Cj4gKwoKSSBmb3Jnb3Q6CgomZ3BpbzIgewogICAgICAgICAvKgog
ICAgICAgICAgKiBUaGUgUXNldmVuIEJJT1NfRElTQUJMRSBzaWduYWwgb24gdGhlIFBYMzAtwrVR
NyBrZWVwcyB0aGUgCm9uLW1vZHVsZQogICAgICAgICAgKiBlTU1DIHBvd2VyZWQtZG93biBpbml0
aWFsbHkgKGluIGZhY3QgaXQga2VlcHMgdGhlIHJlc2V0IHNpZ25hbAogICAgICAgICAgKiBhc3Nl
cnRlZCkuIEJJT1NfRElTQUJMRV9PVkVSUklERSBwaW4gYWxsb3dzIHRvIHJlLWVuYWJsZSBlTU1D
LgogICAgICAgICAgKi8KICAgICAgICAgYmlvc19kaXNhYmxlX292ZXJyaWRlIHsKICAgICAgICAg
ICAgICAgICBncGlvcyA9IDxSS19QQjUgR1BJT19BQ1RJVkVfTE9XPjsKICAgICAgICAgICAgICAg
ICBvdXRwdXQtaGlnaDsKICAgICAgICAgICAgICAgICBsaW5lLW5hbWUgPSAiYmlvc19kaXNhYmxl
X292ZXJyaWRlIjsKICAgICAgICAgICAgICAgICBncGlvLWhvZzsKICAgICAgICAgfTsKfTsKClNp
bmNlIEkgaGFkIHRoaXMgY2hhbmdlIGluIHRoZSBib290bG9hZGVyIHRoYXQgd2FzIGVub3VnaCBk
dXJpbmcgbXkgCnRlc3RzLCBidXQgYmV0dGVyIG5vdCByZWx5IG9uIHRoZSBib290bG9hZGVyIHdo
ZW5ldmVyL3doZXJldmVyIHBvc3NpYmxlIDopCgpJJ2xsIHdhaXQgYSBiaXQgZm9yIHJldmlld3Mg
YmVmb3JlIHNlbmRpbmcgYSB2MiBqdXN0IGZvciB0aGF0LgoKQ2hlZXJzLApRdWVudGluCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
