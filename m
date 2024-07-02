Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE91DC30658
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jul 2024 14:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=frN3xmA3U3I/MmAJPmrCHL5wFLnptkw2uTS2kkFqFA4=; b=ERYW9mRyOs9OdzAlKP+x2KRypg
	8sE6ShhJ28vCwghogTD0+V5o1zhteKqNMeWb+vHUYXqhDf52+YuBlNgy0IgXZ4GULrYOMfbFycPgm
	JsbtT1tlMWbfoaRhsmakwYvfwtu0rUj4qJGsJ3cohcR3LAC7paLbMPsbXxRQ4rKtmKU4X9ZEXXCAI
	pgbq5RRErNs5H5jpT764Iq4Mu54xB44yCjMfCRdc7uMdZ/MFIiicbJZPZ+IyppUK6Xdnm1o2VS89z
	VFlhfmcndw+dGtPu3Y6I8cOcV9pYbe1u6Qjecu7XwqSgVnSgj5PbUSo56Ls4OULjWNYve6KnbcC28
	L23L64qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOeSQ-000000071jq-2WrD;
	Tue, 02 Jul 2024 14:26:10 +0000
Received: from mail-am6eur05on2070f.outbound.protection.outlook.com ([2a01:111:f403:2612::70f] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOeSN-000000071hU-2O7k
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jul 2024 14:26:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PYSmu2wW8511Svzl+PgFLk++W+fP0Z/tVQ1cMa62nruMconp50r8uDGjdMq+lDSFGOyzEniXOvrjfDvHIJgGPVOTbO2gWI6cJCwc1ye3S81nznImkzA2HYAdqIkAec11hZ1cdhzY6u+8nbr4jbtbvZJB2ChAZnSlApuFK5c+ZE1fPSVteOrbkplJlZEeIQfRgcV7iYi2enk7i1M7Nlr6fUl5l0o3mzKG18AP9dNw5XgdnsQBXpwU+bU+sDyi8hZYuUB4Q47TJFLFM9w908vi32hCr/AMvTQdBBaGwjMXHjMRT7NNhGrbEP7ajUsass/6cVgCDM4PnvfHGPDMLYcl9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KmJ83CGsIOG//JVw+w1/9GDOXWiNSUaZCyajocS4JeI=;
 b=O5T+Gr9SUOU661GzOzBtd2B2LzHbF61Pt3cZwY2nMGW/H6CiCsdRRdJbUrlwTKCezvuAPnbxF+fjCd8c7wLIrUetZlDVr0kGV8j+YjxtwRX+9tWa1fYtX9LX6fLJu3PzLN6rhqWxq02fNQCHbaJnK0TV2RIUTQaFHWqqDbYJuOpFhGJrukfrKzGLdaTW+v92V+JGDIbNofMci2L6nRxd3Pziy8ey4POT1nPDuYtHC7Vg3UP06W+s50CyllMSt5fNF93/WrX+wFQnZcVY5TFKsCxyGkZcYOOMe1b2UBrHvqVZP3e3qeBX99FoklkfOdtW3JfYMsVvBeMhsiLbmwHJWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pironex.com; dmarc=pass action=none header.from=pironex.com;
 dkim=pass header.d=pironex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pironexGmbH.onmicrosoft.com; s=selector2-pironexGmbH-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KmJ83CGsIOG//JVw+w1/9GDOXWiNSUaZCyajocS4JeI=;
 b=tZvmTHRBV3OsPJvPaAcw0hkWXrBTFAKD+QfmhvrQkWrPL3uu5BzYqQo+5+Cwc6U02czC58+wBh+tZb+ElHaMCcrsrZBmu/58BCT1SMh41SrfVYZvH1mUlaiy4x0WHSqEazmAdyCeMkaFB2/usH7FkssGHMljL+lLFqo7kDcuUx4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pironex.com;
Received: from AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:158::19)
 by DB9PR10MB7123.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:45a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.33; Tue, 2 Jul
 2024 14:25:58 +0000
Received: from AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4cb2:d40b:7a7d:c0dd]) by AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4cb2:d40b:7a7d:c0dd%5]) with mapi id 15.20.7719.029; Tue, 2 Jul 2024
 14:25:58 +0000
Message-ID: <f2c7cdb2-b27d-40cc-b103-68043714f13c@pironex.com>
Date: Tue, 2 Jul 2024 16:25:57 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: rk356x: add ethernet aliases
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 heiko@sntech.de, devicetree@vger.kernel.org
References: <20240702124626.116290-1-p.puschmann@pironex.com>
 <6bb12ab4cd12357dfd69db35107d8b88@manjaro.org>
Content-Language: de-DE, en-US
From: Philipp Puschmann <p.puschmann@pironex.com>
In-Reply-To: <6bb12ab4cd12357dfd69db35107d8b88@manjaro.org>
X-ClientProxiedBy: AM9P192CA0026.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:21d::31) To AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:158::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR10MB3601:EE_|DB9PR10MB7123:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c07f0f9-b8b0-4bad-29e0-08dc9aa2e44a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MDJkbFJUY3pRZlRKdEtYQVdXQm1qaFBScHhVQnBsV3hoYlIwdTF5eFRlSzdX?=
 =?utf-8?B?akRRREFSY2lwaTRJZk01d0l6SSszQUtIa205VHVLY3VXMHdSck9nQUNjN21h?=
 =?utf-8?B?UVNxc3J5TTl6SHdQa0VQeEQ2eUZSdmxob3dPWFZzeWpuemkvNmdPSEJRRmJL?=
 =?utf-8?B?bVZ3clZ6TXVFVmM0bVlNTWxOTE1tR3dGNnlacHBiWisrSlkyeVhMcTBuSkM4?=
 =?utf-8?B?MWMwWk8rZVRLR3JFMzhDY1BGMFJ1NlFWS1pmWEN4WWtYbi9UemJqeHQxK3hv?=
 =?utf-8?B?Vm5SU0FVcFd2OXFpL2xZMEZIOGlFZEQxaUIyUEVndTgvdUIvY1VWdURZd0Vx?=
 =?utf-8?B?M3dTWFZLbGg0WmxpbkpsQmI5YzN3dzBWbG9PTnhvSGtLdnZYTDFoTE5iOXhR?=
 =?utf-8?B?cldJVFF6TytVZ1M1N2ovaC9PNmp5M0VLa0dydzg4UGV5bkRVQU8wcmNrcTZS?=
 =?utf-8?B?Umd3clp1R2R3c1pmOE96TUxZdTJWRHpPSVRjLzhMOTY2dHNyMWFaVXJSYkFR?=
 =?utf-8?B?cndHb3pNZmpVQ1BGbWk3MEJrT3BJRFF6ZnJ5eEdpNVUrUysrOFg0eFI5K3Ex?=
 =?utf-8?B?allONHpKakpSS0tRMGllY3ZTQmtmUVJoZlRja3NDK09WWkxkcFhOR0JUS2VM?=
 =?utf-8?B?RDVoSnJSbnBqZFhGODhhRUZRM2FZN1IrSTAwUmh6c2RhTUI0elFmeFlRYWhw?=
 =?utf-8?B?YWNpQzZpRFlIM2dUak1jTEx0dXJyZzJWSWRycmhtaUoxUFhlSHlqYTZIVnZk?=
 =?utf-8?B?cTQ3R3dFK1JYeXVkNW5Cam8rT3J2d0JKQnZMcTdCc3IrOFhZeVJNL1VqKzh2?=
 =?utf-8?B?SkxtQjZmVjYxL2ZSR0d5eXFTT1FoT1k4ZUhpb3VQUnFyaXZSQ0VRU0lISjEv?=
 =?utf-8?B?TFdXTVVpQkp2eE1UTCtQdjN4TldqOHVGWUhITGZZbm56blU1dHhXR3U1SDk5?=
 =?utf-8?B?L0dJN0dEQzRGaDB5ckZFYVh3emExbmFWSHJNSkQxSTVLZnMvQ0ZwM1hyNkpS?=
 =?utf-8?B?WUhWRm4yUVNZTkJNQThlYWJ2b3RZa29XU3BjL3BNWDQ5UW05N2phcFJuYkdL?=
 =?utf-8?B?Ny9QZ21xYm5oNlJldzJWblJvWTQrUm1hRUtGTFZJK1BCM2FncnJ6T0tiUHgw?=
 =?utf-8?B?TlJXNDNVaGlNbWk3NkRpd1JjTVR5WVM1L3d3WWVRdzBTbC9pVmdyTjE3U1JJ?=
 =?utf-8?B?Q21JRTZ6VEhYMWRoODQ4L3lvcG9nblFGTWxYRHRuc3ZKQjlTNnYvTzdTUjVq?=
 =?utf-8?B?QjQ4NnlzaG1EeXI1cERNTVJLbGc1ZTdGQnN3aXBrcWZmVXpKS25CVGxPTG0r?=
 =?utf-8?B?SWR6SGhmNU1pcERJeXJWNG9OV2QydzR2RFJqdEZmWXNPUkdUNjladTdteGNx?=
 =?utf-8?B?RXYzQzIycTVYd2ExMnBMNWZuamFpa1VRVlBwWFFrTFFiZ0Vya0taQ3dqY2gw?=
 =?utf-8?B?SmFXRmdZUHprMXF4cTNsZEIzOUhKMWRXaXJ3aUpHL1MzUFExWmoxY3loalpL?=
 =?utf-8?B?dzhsWnZnWXdFY2V0Z0VrTDJTYWRJaUVWQ1YyNGFtNWVDcDlUS1VJOVBxNTh6?=
 =?utf-8?B?UldkUElkcTJJc0NneUdOd1hzZWdUTVM1VTMvY01HODVHWUYyREtLMERvQUZv?=
 =?utf-8?B?ZHFJT3U0VndISFhNL2l2bHpoMW5RV0hsM0RqcU4rVGE3NlZJYmlCNDhpRmRa?=
 =?utf-8?B?ZkJPbnd4WHk2VGpTSVlxUW9hWTQyRDJZOUdEK2QxNGNnVGtabXVZREFQYTFw?=
 =?utf-8?Q?qyBRfebQdlPHC0K5Ms=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZlVIWVJPYnZtcHVFeXhmMkNMV3dUZWdDN0lHTm1PYlMzbDBWRzZIK2piVWZz?=
 =?utf-8?B?T0ZTNkd3SGtxUEMzYTR4YWJUSjMwN3pGdUkvWkpvWVlna3hUNmRVeGVGU1B3?=
 =?utf-8?B?Wkx1N2dSRGxaNmFmSTlxUHBqVTVreGw2cW1pN1FLbVpNaHVKU2d2dENkK2ZC?=
 =?utf-8?B?b1BvbVd1OHErOGJMVFNQNFJuK3ZRU3l1N2UydTlySm1GYUd3OXA5UjJ1a1NR?=
 =?utf-8?B?Y09sZVVyVTg4VHR1SG1udXA1c1pxdFZabU1oNk1mT0huQkdYcmUvVGlvbkYr?=
 =?utf-8?B?eDBiUE5sN01peC9mME1nNEpVcFVZNmt1cEU1S0JQTFVTSGV1NFVWZ1JlRnZw?=
 =?utf-8?B?Y09ZWnRjNkJLS3VQQTRUYXB6dStaMThGd1VYblFJZEpCMnlSc3FvTHhzVEFq?=
 =?utf-8?B?WE0xYWZRQ2wxcXA1UXcveXVKM2ZEQlJUZFB4MTZ1TzJFa243bWgxZFlTUmtP?=
 =?utf-8?B?TmtyWitoTVpNb1VJTmVmb1d5cHlmOWxkRndWTVcrZlhyTlE5dzJZR0hCb1E5?=
 =?utf-8?B?VGxxQ1J1dmYrMHlDOFc4R2NXbDJKK2FxYkZ4SFZkOS9GaGF0THQvTTZ0V0pI?=
 =?utf-8?B?MHVmNW1XS3Z2K1QxYXI1a1BSRHVxMW52bUlFa1JrQ0p4ekpsbXRXT3p2aXlI?=
 =?utf-8?B?dVN6Z2d0MHRNdUFHS0JDeVh6MDcvMzNpeWRLYTFwNVhFVCtYWTdvZC9sOU0v?=
 =?utf-8?B?Qm5Fd2VPT1UvY0VOQ2daNEI5WnZxblJlemFPK3BFOGFTTFp3UjI3S0xwbERh?=
 =?utf-8?B?SU54QWpBWEhkYVBhNnVadkJZb01FekZzMHp6QVB5eEw2YmpaYVF0dWNxNnNt?=
 =?utf-8?B?TElCWWZicGp2c0Jvc2QxbUJya0Q5Y2cxamZkNXJlTWVZYTc4bGRmQysrVmcw?=
 =?utf-8?B?VTR4aXB5WFpjL1ZTMFVyZDU4K2tKMFN0cFBVMCtod3BVQXpnYnlPZVJ3MlYx?=
 =?utf-8?B?NnhOMW1iK0VsUnNJbWlJUi9BZHFGbldadlNTS1Rtc2lvek1KNXcrWXZaWWFI?=
 =?utf-8?B?Zmh5QkNFMUVCb0J4am5DU1Bxa1diUU9GenJNais1Q1kzdTdHRlhXYzhEK3pP?=
 =?utf-8?B?NGhSYTZ2aFowWjFYOUxDL0diODZId0NDM2VGN3R6YmphK04wUi82ZUtPZmNp?=
 =?utf-8?B?RzJPVTcydmVJVGJmcHIxVG82L0E4WGYvYStnclZWRnMvdEszK3QwbFN0aTFu?=
 =?utf-8?B?Wmx3VUUzQUF0TjhKbHQ2YkJPZFhValFVS2tya093SUQ5d3lCYXpHcWpLOTZ5?=
 =?utf-8?B?Zzk4VEFMM0RVTkREVk04VkJoT0JoWHJlNmFwbDdsS21RVU1yVUZWcUl6TUE3?=
 =?utf-8?B?OXRPL1dWUkxFQnFOUEpGa2N3aU56M2RqZE95S2tYM3ArbjlOdzY5ZW9mREYv?=
 =?utf-8?B?dktuZ3krRVZFc2hsUFhSMXk4Q3U0ek0vV1F0bnFreEVWdUZyU2JiUkxyc0RN?=
 =?utf-8?B?WnhtOGdkSXJnQ2gzck9QMVpXa0ZpRkthV3U5Wmg1VzFxTVFCOXIydEsrV0tY?=
 =?utf-8?B?SmNBUmljMGZaMTRaNy8zdFhwNXB4UDFuM3cwanQwTlFWeWhqb3BaaWR4U3Fy?=
 =?utf-8?B?ZWNQdjl1NUJUNllEbmtlQnRqM2dQZUZod05MMHR4cTZVUGxrZHRzVVgzZjNj?=
 =?utf-8?B?SWExTEtJRDRVT1d3QUJaZllLdThFN2dVbXBSWmk5c3pxR29MVXRoVUNQQm1m?=
 =?utf-8?B?ajY4Nmg2TnZoNVErVGozeTd1ZnpFRmtnZXYzRUF1bXRkU0lCalIrOFJYSWVs?=
 =?utf-8?B?TEh6YnN2MUJrUUd5YjZEQkhEeDZQZ2szL2E4d1oxdWZRWFBFVXdFNmhuWm9S?=
 =?utf-8?B?Q1V4eWVuSENuREdmaGFydzk3OXUzNmRtUGc5eFJrdytaYUZiU1ZMOFQyaHg0?=
 =?utf-8?B?T1BmRS9hcjVYNTF0UGt1b3JIYyt0bDIwM3crMlQ3STFYTHQrNjJRODVqbCsy?=
 =?utf-8?B?SmJjVm00OG1ydjIrdm5YSDJBVUpEbWp1ZnpxSjJkcm94NllLNzhwdS9BNkF0?=
 =?utf-8?B?TjRiNE12RzdLelBkZnlDaEUrdXh5dVBQY2NWeGZUbVNqdnVJYTdTYlhHakRp?=
 =?utf-8?B?dmRxL2xYV3lMRDMzejQ4Wnp3bUh6Y1Z6Sk1sVVRWVEp2ZjlxcWdaSW1oYkNM?=
 =?utf-8?B?OXArUlBRSWZTZzlLaTJvVWRzbHRSVjZ4VTJVOWFVRjdjNHloVld2VTMwYVhx?=
 =?utf-8?Q?YGUGGG3Iolb8yHO+8XX9AygX7tz4Hzl+PQpzBsrQAvA8?=
X-OriginatorOrg: pironex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c07f0f9-b8b0-4bad-29e0-08dc9aa2e44a
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2024 14:25:58.6167
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 00aa8e52-eebe-489a-8263-3195e0a468ca
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w3OiJGeb4V/ImGYD8gnmVXF3v7tQxeC6VeHA55XhjzAXkZKNc2Jzh5U9HzXLt3yxQY8w3qvNHBy5mKmzn9YbkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR10MB7123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_072607_644720_2008FAEB 
X-CRM114-Status: GOOD (  25.83  )
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

SGkgRHJhZ2FuLAoKPiBIZWxsbyBQaGlsaXBwLAo+IAo+IE9uIDIwMjQtMDctMDIgMTQ6NDYsIFBo
aWxpcHAgUHVzY2htYW5uIHdyb3RlOgo+PiBQcm92aWRpbmcgZXRoZXJuZXQgYWxpYXNlcyBzb2x2
ZXMgYSBzdWJ0bGUgcHJvYmxlbSBmb3IgdGhlIHJrMzU2OC4gVGhlCj4+IGJ1c19pZCB1c2VkIGZv
ciB0aGUgc3lzZnMgZGlyZWN0b3J5IG5hbWUgb2YgdGhlIG1kaW8uIFdpdGhvdXQgZXRoZXJuZXQK
Pj4gYWxpYXMgdGhlIGJ1c19pZCBpcyBhbHdheXMgMCBhbmQgc28gY3JlYXRpbmcgdGhlIHN5c2Zz
IGRpcmVjdG9yeSBmb3IgdGhlCj4+IHNlY29uZCBtZGlvIGZhaWxzIHdpdGggYSBkdXBsaWNhdGUg
ZmlsZW5hbWUgZXJyb3IgYW5kIGJ5IHRoaXMgdGhlIHNldHVwCj4+IG9mIHRoZSBzZWNvbmQgZXRo
ZXJuZXQgcG9ydCBmYWlscyB0b28uCj4+Cj4+IE5vdGU6IFRoZSBhbGlhcyBudW1iZXJpbmcgaXMg
aW52ZXJ0ZWQgYXMgZ21hYzEgY29tZXMgZnJvbSBtb3JlIGdlbmVyaWMKPj4gcmszNTZ4LmR0c2kg
YnV0IGdtYWMwIGNvbWVzIGZyb20gc3BlY2lhbGlzZWQgcmszNTY4Lgo+IAo+IFBsZWFzZSBzZWUg
dGhlIGZvbGxvd2luZyBjb21taXRzIGFuZCB0aGUgZGlzY3Vzc2lvbnMgb24gdGhlIHJvY2tjaGlw
LWxpbnV4Cj4gbWFpbGluZyBsaXN0IHRoYXQgYXJlIGxpbmtlZCBpbiB0aGVtOgo+IAo+IC0gYjAx
NDBhMWIzYjFkICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBldGhlcm5ldDAgYWxpYXMgdG8g
dGhlIGR0cwo+IMKgIGZvciBSSzM1ODgoUykgYm9hcmRzIikKPiAtIDM2ZDliM2FlNzA4ZSAoImFy
bTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgZXRoZXJuZXQwIGFsaWFzIHRvIHRoZSBkdHMKPiDCoCBm
b3IgUkszNTY2IGJvYXJkcyIpCj4gLSA1ZDkwY2IxZWRjZjcgKCJhcm02NDogZHRzOiByb2NrY2hp
cDogUmVtb3ZlIGV0aGVybmV0MCBhbGlhcyBmcm9tIHRoZQo+IMKgIFNvQyBkdHNpIGZvciBSSzMz
OTkiKQo+IC0gYzkwMGZlZjVkZWZmICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IFJlbW92ZSBldGhl
cm5ldDAgYWxpYXMgZnJvbSB0aGUKPiDCoCBTb0MgZHRzaSBmb3IgUkszMzY4IikKPj4gVG8gc3Vt
IGl0IHVwLCBldGhlcm5ldFggYWxpYXNlcyBhcmUgY29uc2lkZXJlZCBib2FyZC1sZXZlbCBmZWF0
dXJlcywKPiBiZWNhdXNlIG5vdCBhbGwgYm9hcmRzL2RldmljZXMgYWN0dWFsbHkgZXhwb3NlIHRo
ZSBFdGhlcm5ldCBpbnRlcmZhY2VzCj4gYnVpbHQgaW50byB0aGUgU29Dcy7CoCBUaHVzLCBhZGRp
bmcgZXRoZXJuZXRYIGFsaWFzZXMgdG8gdGhlIFNvQyBkdHNpCj4gZmlsZXMsIHVuZm9ydHVuYXRl
bHksIGlzbid0IGFuIGFjY2VwdGFibGUgb3B0aW9uLgpBcmUgZXRoZXJuZXQgYWxpYXNlcyBhcmUg
aGFuZGxlZCBkaWZmZXJlbnRseSB0aGFuIGkyYywgc2VyaWFsIGFuZCBzcGkgYWxpYXNlcz8KVGhl
cmUgYXJlIGFsaWFzZXMgZm9yIGVhY2ggb2YgdGhlbSwgd2l0aG91dCBkb2luZyBhbnkgaGFybS4g
QW5kIGV2ZW4gaWYgdGhlIGdtYWMKbm9kZXMgYXJlIGRpc2FibGVkIHdpdGggc3RhdHVzIHByb3Bl
cnR5PwpPbiBteSByazM1NjgtYmFzZWQgY3VzdG9tIGJvYXJkIGkgaGFkIG5vIGV0aGVybmV0IGFs
aWFzZXMgYW5kIG5ldHdvcmtpbmcgd2FzCmVuYWJsZWQgbm9ybWFsbHkgd2l0aCB0aGUgc3RhdHVz
IHByb3BlcnRpZXMgb2YgdGhlIGdtYWMgbm9kZXMuIEVpdGhlciBvbmUgb3IKdGhlIG90aGVyIG9y
IGJvdGggbmV0d29yayBkZXZpY2VzIHdlcmUgaW5pdGlhbGl6ZWQuIFdvdWxkIGJlIHN0cmFuZ2Ug
aWYgYW4KYWxpYXMgd291bGQgYmUgdXNlZCB3aXRob3V0IHJlZ2FyZCB0byBpbml0aWFsaXppbmcg
YSBkZXZpY2UgZHJpdmVyLgoKPiAKPiBUaGUgc3lzZnMgaXNzdWUgdGhhdCB5b3UndmUgZGlzY292
ZXJlZCBzaG91bGQgYmUgaW5zdGVhZCBzb2x2ZWQgaW4gc29tZQo+IG90aGVyLCBtb3JlIHN5c3Rl
bWljIHdheS4KVGhlIGJ1c19pZCB2YWx1ZSBjb21lcyBmcm9tIHN0bW1hY19wbGF0Zm9ybS5jIGFu
ZCBvZl9hbGlhc19nZXRfaWQoKSB3aXRoCiJldGhlcm5ldCIgYXMgcGFyYW1ldGVyIGlzIHVzZWQs
IHdoYXQgaXMgYSBjb21tb24gd2F5IGluIHRoZSBrZXJuZWwuIEl0CmRlbGl2ZXJzIHVuaXF1ZSBp
bnRzIHN0YXJ0aW5nIHdpdGggMC4gc3RtbWFjX21kaW8gdGhlbiB1c2VzIHRoZSBidXNfaWQgdG8K
Y3JlYXRlIGEgbWRpbyBidXMgaWQgc3RyaW5nIHN0bW1hYy0ke2J1c19pZH0gdG8gcmVnaXN0ZXIg
YSBtZGlvX2J1cy4KRnJvbSBteSB1bmRlcnN0YW5kaW5nIHRoaXMga2luZCBvZiBidXMgaWQgaXMg
Y29tbW9ubHkgdXNlZCB0byBuYW1lIGRldmljZXMKYW5kIHBhdGhzIGluIHRoZSBzeXNmcy4gVmll
d2VkIG9ubHkgdGhpcyBwcm9ibGVtIGl0IHdvdWxkIGJlIHBvc3NpYmxlCnRvIHVzZSBvdGhlciBp
bmZvcm1hdGlvbiBsaWtlIHRoZSBub2RlIGFkZHJlc3Mgb3Igc29tZSB1bmlxdWUKaW5mb3JtYXRp
b24gdG8gdXNlIGl0IGFzIHVuaXF1ZSBwYXJ0IG9mIHRoZSBtZGlvIGJ1cyBpZC4gQnV0IGRvZXNu
J3QgYnJlYWsKdGhpbmdzIHRvbywgYXQgbGVhc3Qgc29tZSBraW5kIG9mIGNvbnZlbnRpb24/CgpB
bm90aGVyIGhhY2sgaSB0cmllZCBmaXJzdCwgd2FzIHRvIHVzZSBhIHN0YXRpYyBpbmNyZWFzaW5n
IGludCB0byBnZXQKdGhlIGJ1c19pZC4gVGhpcyB3b3VsZCBrZWVwIHRoZSByZXN1bHRpbmcgc3lz
ZnMgdHJlZSBwcm9iYWJseSB1bmNoYW5nZWQKYnV0IHdvdWxkIGRyb3AgdGhlIGNvbm5lY3Rpb24g
YmV0d2VlbiBkdHMgYW5kIGJ1cyBudW1iZXJpbmcgaW4gc3lzZnMuCgpSZWdhcmRzLApQaGlsaXBw
Cgo+IAo+PiBTaWduZWQtb2ZmLWJ5OiBQaGlsaXBwIFB1c2NobWFubiA8cC5wdXNjaG1hbm5AcGly
b25leC5jb20+Cj4+IC0tLQo+PiDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4
LmR0c2kgfCA0ICsrKysKPj4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5k
dHNpIHwgMSArCj4+IMKgMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPj4KPj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPj4gYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4+IGluZGV4IGYxYmU3NmE1
NGNlYi4uNDIwMThjODY2NmUwIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2OC5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTY4LmR0c2kKPj4gQEAgLTgsNiArOCwxMCBAQAo+PiDCoC8gewo+PiDCoMKgwqDCoCBjb21w
YXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OCI7Cj4+Cj4+ICvCoMKgwqAgYWxpYXNlcyB7Cj4+ICvC
oMKgwqDCoMKgwqDCoCBldGhlcm5ldDEgPSAmZ21hYzA7Cj4+ICvCoMKgwqAgfTsKPj4gKwo+PiDC
oMKgwqDCoCBzYXRhMDogc2F0YUBmYzAwMDAwMCB7Cj4+IMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0
aWJsZSA9ICJyb2NrY2hpcCxyazM1NjgtZHdjLWFoY2kiLCAic25wcyxkd2MtYWhjaSI7Cj4+IMKg
wqDCoMKgwqDCoMKgwqAgcmVnID0gPDAgMHhmYzAwMDAwMCAwIDB4MTAwMD47Cj4+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpCj4+IGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaQo+PiBpbmRleCBkODU0M2I1NTU3ZWUu
LmUxM2JkN2IyNDc1MiAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1NnguZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2
eC5kdHNpCj4+IEBAIC00Myw2ICs0Myw3IEBAIGFsaWFzZXMgewo+PiDCoMKgwqDCoMKgwqDCoMKg
IHNwaTEgPSAmc3BpMTsKPj4gwqDCoMKgwqDCoMKgwqDCoCBzcGkyID0gJnNwaTI7Cj4+IMKgwqDC
oMKgwqDCoMKgwqAgc3BpMyA9ICZzcGkzOwo+PiArwqDCoMKgwqDCoMKgwqAgZXRoZXJuZXQwID0g
JmdtYWMxOwo+PiDCoMKgwqDCoCB9Owo+Pgo+PiDCoMKgwqDCoCBjcHVzIHsKCi0tIApQaGlsaXBw
IFB1c2NobWFubiwgTS5TYy4KU29mdHdhcmVlbnR3aWNrbHVuZwoKcGlyb25leCBHbWJIClN0YW5n
ZW5sYW5kIDQKMTgxNDYgUm9zdG9jawp3d3cucGlyb25leC5kZQoKVGVsLjogICArNDkgKDApIDM4
MSA3MDA2IDA4IDQ0CkUtTWFpbDogcC5wdXNjaG1hbm5AcGlyb25leC5jb20KRmlybWE6ICArNDkg
KDApIDM4MSA3MCAwNiAwOCAwCkZheDogICAgKzQ5ICgwKSAzODEgNDkgNjggMDIgNzcKV2ViOiAg
ICBodHRwOi8vd3d3LnBpcm9uZXguZGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
