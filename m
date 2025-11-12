Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D77FCCFA1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 08:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8CGdwKkiM18JKI1qkCMcD2uXd3T5hBBkdUPFAWLX5BE=; b=Snva3rC5RQsUQZ
	nhK+dhzG0rlxOKIeVFVM/W10GQ/A+kTrVV4pr5xI33/XhO2vZH+9kzAuk8PgDF+enH7fczoCmw0c6
	fxmSgV0QR8194DZfpMsp9GyQCIWwMl8qvrqqBXY0B9lWS9RFjppO6zZcFu+bPf3LZmnePoBtPMAqH
	VZ65pRpk1p4gBXooqlYlH53tP1KQLZ2y5TLfP6jntj3I6cnPzXY7DLh5g6MDfMtPAXxW7gBghDrfq
	fFUZptVxQCXkQKOrBcoQQ74VlLIL9jEg9Xu5l6GtPkCCG/wThkHvsc0F8Dr4HwXBmAsVJyNgVzyTB
	fyBgZ17p71Oh7L22WhRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ61q-00000008K3v-21eV;
	Wed, 12 Nov 2025 08:16:34 +0000
Received: from mail-koreacentralazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c40f::6] helo=SEYPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ61m-00000008K3N-2feQ;
	Wed, 12 Nov 2025 08:16:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WFQN9kbz7tUhVBf6Z0m9J8OPwskgW9EN/m89bHuXgTea6Ua5buYKpTn+ak+5lhjmpbM0XRBBTUQ3A1YXB4XhjLEEeiGursOc5ijV/REbDItcMkDEB9O72rqpCpcPcDyLGf56i1hNHGls+HJPUEl1UeewNyWP8jhmrIabdQKhdUx2h0+5sS5zEjAMvbwtRXmzZuwfNOkaZsOWIo0JYtacXAg6FcAf0UDMxUEOA8kDAtx52Aemv2EeNwxWvcmlmM7h8dFFWFA4yEdm9EC+0WytBNYIeh6KoriLWg3ql15Zbj45/tTsJLD7Jq2zOaaEcCLO3a+uLgulbFPbd5LxM1lvAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pfS25oS8hY1os5ebwj4UanmRQauctaa+HiRFK34WJts=;
 b=U7cuRJ1Tcg7nmMpbmmHEcUoMvFl+j45ltkiqXH81U4s7KWoQMl0hMc2qm2nKngv+IkLBcq0sVLy1VuagrtNbnPsu+aA5Mmd9I4tkAnaA68OAZFXLHXZc6vREcD66o8Ip6C1sd9nfnXMkJBQJrYWXKQsTYc6qWD8WzCVe9xT1Kh/bSK6NBoA7h/Bdl3d5cNohLqn5oUFEFGP50ibqZr+V+RMW63l6KkHNUG4xnFdYJle9kkSSV+PUvNZvDm+CUuEDGvdWMjsidxMAozAjrbDCKCyt5rVh4v5LbLX9tXbrmB7G/s8ir8YbfnHC2L81ag968oibR/CmBz7h36iquvZ42g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=163.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SG2PR02CA0004.apcprd02.prod.outlook.com (2603:1096:3:17::16) by
 SEZPR06MB6871.apcprd06.prod.outlook.com (2603:1096:101:197::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Wed, 12 Nov
 2025 08:16:23 +0000
Received: from SG1PEPF000082E5.apcprd02.prod.outlook.com
 (2603:1096:3:17:cafe::74) by SG2PR02CA0004.outlook.office365.com
 (2603:1096:3:17::16) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9320.16 via Frontend Transport; Wed,
 12 Nov 2025 08:16:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 SG1PEPF000082E5.mail.protection.outlook.com (10.167.240.8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9320.13 via Frontend Transport; Wed, 12 Nov 2025 08:16:22 +0000
Received: from [172.16.96.116] (unknown [172.16.96.116])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 9515941C0160;
	Wed, 12 Nov 2025 16:16:20 +0800 (CST)
Message-ID: <58b37b3a-7bb7-46bb-8ad4-f4d2f152bf1f@cixtech.com>
Date: Wed, 12 Nov 2025 16:16:20 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/2] PCI: Configure Root Port MPS during host probing
To: Mahesh Vaidya <mahesh.vaidya@altera.com>, Hans Zhang
 <18255117159@163.com>, lpieralisi@kernel.org, kwilczynski@kernel.org,
 bhelgaas@google.com, helgaas@kernel.org, heiko@sntech.de, mani@kernel.org,
 yue.wang@Amlogic.com
Cc: pali@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
 jingoohan1@gmail.com, khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, cassel@kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20251104165125.174168-1-18255117159@163.com>
 <e940eae5-16bb-46e1-83aa-47c6ff747083@altera.com>
Content-Language: en-US
From: Hans Zhang <hans.zhang@cixtech.com>
In-Reply-To: <e940eae5-16bb-46e1-83aa-47c6ff747083@altera.com>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SG1PEPF000082E5:EE_|SEZPR06MB6871:EE_
X-MS-Office365-Filtering-Correlation-Id: 06fa7845-5242-434b-f508-08de21c3c3f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|82310400026|1800799024|36860700013|13003099007|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WEFGUTg0V1BwSWJuc1I3ZWYxM2hWMk1PR3FZeUhHY0QyeDN1U0RPRC83OWsv?=
 =?utf-8?B?N3VkbENBNS9CVXdPUEUvSml4Tlo2TmJLVzF5cEFRSmgxVk9GR3FXOGJjUUlB?=
 =?utf-8?B?a2RzK0ZsaVpSczRXQUN6V3VFTjZoUDBYZFdUQ2ZyZ0s5U2MvNFpHZFlWUVNS?=
 =?utf-8?B?OFIrRWZsQTVyVzhnaGFBN2VRSnRYQmY1QmZEUWNOM3FjY1liYmZ2NmI5VXRl?=
 =?utf-8?B?c045TmkvNE85VGFaRlhIaTVjNVNJK0E5UUVWWUFSQ0ZHREpobkxzYlpiM3Fj?=
 =?utf-8?B?aFBlaDArOEc5OU1KLzcyWGYrQnNOR0NJZytZWEc1VC9CdHg3ekFWS253Q05M?=
 =?utf-8?B?Z3NTUVZEQUg3eVg3NHFtVjRRdnRUam5RZDFodllVRWF0d0ZzNGF2Ykp6MVBX?=
 =?utf-8?B?SjJCbWtZRnZNZmltdHJtQjgxQStCZHhwdzl1alBqbVltdFZOV2tWd0pKcWR5?=
 =?utf-8?B?ekErS005Vmpvc1I1QnM1eGF2OHRnY0hya0ZueEQyRjJkMW1TZW1sT25DN1RB?=
 =?utf-8?B?WVp4MllpT24zWWZGZWc0VTg0SkJPNmpQc0Z4Rmp2OFR1R0FWcWQyQUV2TEUz?=
 =?utf-8?B?WmlPMGYxZ3gyM2g4ckc5MGRKL0l1NVc4eEtzU2Q1VHhxczFKQy9jZytJdDFX?=
 =?utf-8?B?dGtXeGdOa2ZDUFRUOXMrc0NrdllaQnRRWmErWVlCTW5JMm5peHRvQ3U1SEwz?=
 =?utf-8?B?Q3grdE5LMEFIaTBCalJwR0xWWlgweDFTdTdvMkE3czBXWXhGTzRPaXByZFJH?=
 =?utf-8?B?UDRPMUJUemtGbkZLSjNKSkFEclBjOUdOWGFXNTZyem9UTWl2UGl0MW9LVDhx?=
 =?utf-8?B?eFZEK3dEVlFWQ21SZzRWYklvQVU3R3ZCbE5DQURKZEtteTBiWlNWeXBZNkNs?=
 =?utf-8?B?T2JXcVRGQXpTdEJ6dWdTUldqN3N5djJWM2NnMVdNMGdtaXlwSjBJTkdsZzNM?=
 =?utf-8?B?MzFUWEZCS09kT1JXSzVZY3d6OUdaZSs1bzBvSDRJaEk3NmlIWmNBd2ZpdC8z?=
 =?utf-8?B?aDdjWnd0Sy9lb2dQZVlLcVdBak1mT2FWVlAxcDhYa090SDRxbTEzVmx5eXg1?=
 =?utf-8?B?dWlGL2pvbVN0MDhIWTFjaGR2akJITlFhTHhuU1ZKZWd0THRrK1o5Vld1ZDEr?=
 =?utf-8?B?dlBVS2s4d1YzK202N0hBTXlrcU5kMWlLamRsOGw0eWZISXhWdmRaSWtqOGlF?=
 =?utf-8?B?a3F6MHljK2FPL2hPbGxubytKM1YycVhoZmkwNldhZU9DYkFuaUQzSDVET0Nk?=
 =?utf-8?B?czBZeUdOL2F3aER1dGNCUCtpd1NoMC9ILzBySTlXKzIvV2MvQXRoajRmZ1Ux?=
 =?utf-8?B?Q3k4Wm5JNDhzQWhPT0ZGWnFCbzd2UzYzYmIwdFc5blRhbUx4M0UrTlVWYy9U?=
 =?utf-8?B?cTd3TjNhc3hxWCt4aktOekRpN040Y0U5OGF0YmJDQjNhSjZYeFVvc2RWWk5a?=
 =?utf-8?B?NStVUDRSNHNiS2tUMHl5bVpTMURPVWZlMWFMb0VDdGJZUkNuVjFuS1c0Q2d5?=
 =?utf-8?B?bzhtMkVOcGppdThCcGpsSXBQb3laTEJhcE5xM1dmdmp4NlQrV1luNGlxM21L?=
 =?utf-8?B?WjJESmxVTjZMMEdaSFNYTUlEQjNFSkpHMHJnZlpQZG5ONVV4YjJJcHhLSmRn?=
 =?utf-8?B?TkI5OTZadHQ3OGg3ZklKZ0I3MWZSY1FNTUFXczJHZHh1VU8xRGF1eHE0eGVC?=
 =?utf-8?B?RlRWbStIY0pmeTI2U0hyZkRGd1VEZjM2cnluT0xBOHpEd3FFRnBjMlBPYnZO?=
 =?utf-8?B?VzN0a1I4ZE1adUNiRFdsR3FFdnJKSVlXZUhWUmxEWWROVWVRajM5QjlqWUhU?=
 =?utf-8?B?NXFxaElFWnhIeGlyaExmVE5TY05ZTk1ieFROVEtsT2RtYTFBYWhYeE9BREFo?=
 =?utf-8?B?SDg0N21ka3IwcUxIaUNpN3ZNNDB0amxsT2RBaUNNQUIwQkNQZE04RlVaNXhB?=
 =?utf-8?B?VW0yUFlOTUM2NGJUc3dJR1EwR0ZOVjc0N2l0RWd6QlMrTmd3UXRBS1pBMkE2?=
 =?utf-8?B?NnFTSDkwVXhvcEJJOWYvT2tadmFlNXc1dnRNTmpZTjZ4WW52WlFNRjM2a1Z3?=
 =?utf-8?B?SEdYT3gyZXZ3VzZGTFVJUnVEWFBrNlF2emlUUlh0dC85UWRNTkZFNkluV1Ro?=
 =?utf-8?Q?2ehE=3D?=
X-Forefront-Antispam-Report: CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(7416014)(376014)(82310400026)(1800799024)(36860700013)(13003099007)(7053199007);DIR:OUT;SFP:1102;
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2025 08:16:22.1239
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 06fa7845-5242-434b-f508-08de21c3c3f3
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource: SG1PEPF000082E5.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR06MB6871
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_001630_679108_F27CA4CB 
X-CRM114-Status: GOOD (  17.03  )
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

CgpPbiAxMS8xMi8yMDI1IDQ6MDYgUE0sIE1haGVzaCBWYWlkeWEgd3JvdGU6Cj4gW1lvdSBkb24n
dCBvZnRlbiBnZXQgZW1haWwgZnJvbSBtYWhlc2gudmFpZHlhQGFsdGVyYS5jb20uIExlYXJuIHdo
eSB0aGlzIAo+IGlzIGltcG9ydGFudCBhdCBodHRwczovL2FrYS5tcy9MZWFybkFib3V0U2VuZGVy
SWRlbnRpZmljYXRpb24gXQo+IAo+IEVYVEVSTkFMIEVNQUlMCj4gCj4gT24gMDQtMTEtMjAyNSAy
MjoyMSwgSGFucyBaaGFuZyB3cm90ZToKPj4gQ3VycmVudCBQQ0llIGluaXRpYWxpemF0aW9uIGV4
aGliaXRzIGEga2V5IG9wdGltaXphdGlvbiBnYXA6IFJvb3QgUG9ydHMKPj4gbWF5IG9wZXJhdGUg
d2l0aCBub24tb3B0aW1hbCBNYXhpbXVtIFBheWxvYWQgU2l6ZSAoTVBTKSBzZXR0aW5ncy4gV2hp
bGUKPj4gZG93bnN0cmVhbSBkZXZpY2UgY29uZmlndXJhdGlvbiBpcyBoYW5kbGVkIGR1cmluZyBi
dXMgZW51bWVyYXRpb24sIFJvb3QKPj4gUG9ydCBNUFMgdmFsdWVzIGluaGVyaXRlZCBmcm9tIGZp
cm13YXJlIG9yIGhhcmR3YXJlIGRlZmF1bHRzIG9mdGVuIGZhaWwKPj4gdG8gdXRpbGl6ZSB0aGUg
ZnVsbCBjYXBhYmlsaXRpZXMgc3VwcG9ydGVkIGJ5IGNvbnRyb2xsZXIgaGFyZHdhcmUuIFRoaXMK
Pj4gcmVzdWx0cyBpbiBzdWJvcHRpbWFsIGRhdGEgdHJhbnNmZXIgZWZmaWNpZW5jeSB0aHJvdWdo
b3V0IHRoZSBQQ0llCj4+IGhpZXJhcmNoeS4KPj4KPj4gVGhpcyBwYXRjaCBzZXJpZXMgYWRkcmVz
c2VzIHRoaXMgYnk6Cj4+Cj4+IDEuwqAgQ29yZSBQQ0kgZW5oYW5jZW1lbnQgKFBhdGNoIDEpOgo+
PiAtIFByb2FjdGl2ZWx5IGNvbmZpZ3VyZXMgUm9vdCBQb3J0IE1QUyBkdXJpbmcgaG9zdCBjb250
cm9sbGVyIHByb2JpbmcKPj4gLSBTZXRzIGluaXRpYWwgTVBTIHRvIGhhcmR3YXJlIG1heGltdW0g
KDEyOCA8PCBkZXYtPnBjaWVfbXBzcykKPj4gLSBDb25kaXRpb25hbCBvbiBQQ0llIGJ1cyB0dW5p
bmcgYmVpbmcgZW5hYmxlZCAoUENJRV9CVVNfVFVORV9PRkYgdW5zZXQpCj4+IC0gTWFpbnRhaW5z
IGJhY2t3YXJkIGNvbXBhdGliaWxpdHkgdmlhIFBDSUVfQlVTX1RVTkVfT0ZGIGNoZWNrCj4+IC0g
UHJlc2VydmVzIHN0YW5kYXJkIE1QUyBuZWdvdGlhdGlvbiBkdXJpbmcgZG93bnN0cmVhbSBlbnVt
ZXJhdGlvbgo+Pgo+PiAyLsKgIERyaXZlciBjbGVhbnVwIChQYXRjaCAyKToKPj4gLSBSZW1vdmVz
IHJlZHVuZGFudCBNUFMgY29uZmlndXJhdGlvbiBmcm9tIE1lc29uIFBDSWUgY29udHJvbGxlciBk
cml2ZXIKPj4gLSBGdW5jdGlvbmFsaXR5IGlzIG5vdyBjZW50cmFsaXplZCBpbiBQQ0kgY29yZQo+
PiAtIFNpbXBsaWZpZXMgZHJpdmVyIG1haW50ZW5hbmNlIGxvbmctdGVybQo+Pgo+PiAtLS0KPj4g
Q2hhbmdlcyBmb3IgdjY6Cj4+IC0gTW9kaWZ5IHRoZSBjb21taXQgbWVzc2FnZSBhbmQgY29tbWVu
dHMuIChCam9ybikKPj4gLSBQYXRjaCAxLzIgY29kZSBsb2dpYzogQWRkICFicmlkZ2UgY2hlY2sg
dG8gY29uZmlndXJlIE1QUyBvbmx5IGZvciAKPj4gUm9vdCBQb3J0cwo+PiDCoMKgIHdpdGhvdXQg
YW4gdXBzdHJlYW0gYnJpZGdlIChyb290IGJyaWRnZXMpLCBhdm9pZGluZyBpbmNvcnJlY3QgCj4+
IGhhbmRsaW5nIG9mCj4+IMKgwqAgbm9uLXJvb3QtYnJpZGdlIFJvb3QgUG9ydHMgKE5pa2xhcyku
Cj4gVGVzdGVkIHRoaXMgcGF0Y2ggc2VyaWVzIG9uIEFnaWxleCA3Lgo+IAo+IFRlc3RlZC1ieTog
TWFoZXNoIFZhaWR5YSA8bWFoZXNoLnZhaWR5YUBhbHRlcmEuY29tPgo+IAoKSGkgTWFoZXNoLAoK
VGhhbmsgeW91IGZvciB5b3VyIHRlc3QuCgpCZXN0IHJlZ2FyZHMsCkhhbnMKCj4+Cj4+IENoYW5n
ZXMgZm9yIHY1Ogo+PiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgt
cGNpLyAKPj4gcGF0Y2gvMjAyNTA2MjAxNTU1MDcuMTAyMjA5OS0xLTE4MjU1MTE3MTU5QDE2My5j
b20vCj4+Cj4+IC0gVXNlIHBjaWVfc2V0X21wcyBkaXJlY3RseSBpbnN0ZWFkIG9mIHBjaWVfd3Jp
dGVfbXBzLgo+PiAtIFRoZSBwYXRjaCAxIGNvbW1pdCBtZXNzYWdlIHdlcmUgbW9kaWZpZWQuCj4+
Cj4+IENoYW5nZXMgZm9yIHY0Ogo+PiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2pl
Y3QvbGludXgtcGNpLyAKPj4gcGF0Y2gvMjAyNTA1MTAxNTU2MDcuMzkwNjg3LTEtMTgyNTUxMTcx
NTlAMTYzLmNvbS8KPj4KPj4gLSBUaGUgcGF0Y2ggW3Y0IDEvMl0gYWRkIGEgY29tbWVudCB0byBl
eHBsYWluIHdoeSBpdCB3YXMgZG9uZSB0aGlzIHdheS4KPj4gLSBUaGUgcGF0Y2ggW3Y0IDIvMl0g
aGF2ZSBub3QgYmVlbiBtb2RpZmllZC4KPj4gLSBEcm9wIHBhdGNoIFt2MyAzLzNdLiBUaGUgTWFp
bnRhaW5lciBvZiB0aGUgcGNpLWFhcmR2YXJrLmMgZmlsZSBzdWdnZXN0cwo+PiDCoMKgIHRoYXQg
dGhpcyBwYXRjaCBjYW5ub3QgYmUgc3VibWl0dGVkLiBJbiBhZGRpdGlvbiwgTWFuaSBhbHNvIHN1
Z2dlc3RzCj4+IMKgwqAgZHJvcHBpbmcgdGhpcyBwYXRjaCB1bnRpbCB0aGlzIHNlcmllcyBvZiBp
c3N1ZXMgaXMgcmVzb2x2ZWQuCj4+Cj4+IENoYW5nZXMgZm9yIHYzOgo+PiBodHRwczovL3BhdGNo
d29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcGNpLyAKPj4gcGF0Y2gvMjAyNTA1MDYxNzM0
MzkuMjkyNDYwLTEtMTgyNTUxMTcxNTlAMTYzLmNvbS8KPj4KPj4gLSBUaGUgbmV3IHNwbGl0IGlz
IHBhdGNoIDIvMyBhbmQgMy8zLgo+PiAtIE1vZGlmeSB0aGUgcGF0Y2ggMS8zIGFjY29yZGluZyB0
byBOaWtsYXMnIHN1Z2dlc3Rpb24uCj4+Cj4+IENoYW5nZXMgZm9yIHYyOgo+PiBodHRwczovL3Bh
dGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcGNpLyAKPj4gcGF0Y2gvMjAyNTA0MjUw
OTU3MDguMzI2NjItMS0xODI1NTExNzE1OUAxNjMuY29tLwo+Pgo+PiAtIEFjY29yZGluZyB0byB0
aGUgTWFpbnRhaW5lcidzIHN1Z2dlc3Rpb24sIGxpbWl0IHRoZSBzZXR0aW5nIG9mIE1QUwo+PiDC
oMKgIGNoYW5nZXMgdG8gcGxhdGZvcm1zIHdpdGggY29udHJvbGxlciBkcml2ZXJzLgo+PiAtIERl
bGV0ZSB0aGUgTVBTIGNvZGUgc2V0IGJ5IHRoZSBTT0MgbWFudWZhY3R1cmVyLgo+PiAtLS0KPj4K
Pj4gSGFucyBaaGFuZyAoMik6Cj4+IMKgwqAgUENJOiBDb25maWd1cmUgUm9vdCBQb3J0IE1QUyBk
dXJpbmcgaG9zdCBwcm9iaW5nCj4+IMKgwqAgUENJOiBkd2M6IFJlbW92ZSByZWR1bmRhbnQgTVBT
IGNvbmZpZ3VyYXRpb24KPj4KPj4gwqAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLW1l
c29uLmMgfCAxNyAtLS0tLS0tLS0tLS0tLS0tLQo+PiDCoCBkcml2ZXJzL3BjaS9wcm9iZS5jwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMiArKysrKysrKysrKysKPj4g
wqAgMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKPj4K
Pj4KPj4gYmFzZS1jb21taXQ6IDY5MWQ0MDFjN2UwZTVlYTM0YWM2ZjgxNTFiYzA2OTZkYjFiMjUw
MGEKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
