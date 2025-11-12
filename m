Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 271FBCCF9F8
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 11:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1p+S4D3Q1M6wisnqBuX05a3emRsK6dNRSqX1Y210WKY=; b=YPUOyS7yUFLJHu
	jihFs87h8zT0n5qj6fJ7EDqI8u2SWduPLKbzWV/n2ILf+t6gfhiAEPXJ+/tIfoa86vVrLMWDg9mzb
	cfvdqLb0ZZ2PjyDfsWvrq3PkoJ42uBy64Dmm64sjHSQnbS9J3b5jfX4sYgcFtX4EVDRSErv2ZmvKP
	hNG+8qti8BMX5/ed7JYU+RGOYn84HKck3mWI+7sH3WuN65NkFXkNFZSY3OI4xlWoTM4S6xMfxGpZR
	2/f1/rW7g6li7URI97zd7XrjJ/QJ+7y/LommS0kZLF7oGF0rrxfwft1k4DkAWEOdqf51Gct+hRmBb
	/CEYfY7jdx2m1h3kgJSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ8eG-00000008d9p-1CJG;
	Wed, 12 Nov 2025 11:04:24 +0000
Received: from mail-japaneastazon11022120.outbound.protection.outlook.com ([52.101.126.120] helo=TYPPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ8eC-00000008d9K-4Bf4;
	Wed, 12 Nov 2025 11:04:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TWN2aHpk2T5k3GawjwPPmFplPP9R+pNNQXBDVh7uYzJc9c0vpzfYMXRs7dG1Uzhwh6Br5OGc+erDceoU1YIG3X6kAUnmgAJNW8bWVFp0jvJ4bkuAmS26H2BRg2SCe5O6mAwBQalPtaxWi2RifCQFl0ly6SCMRT9fNML+tlM4WDLhjFr0qUD7g4pvJjudwfl0EUqiNrSMesyaA01bVOj5pmmJBnM1K3pxtakoFqw9gI5dUTUAnOlGGdilKVArExMLsjnCJa6O4v6/q7VwdUNBAaZxwcc5zKgbWNQ1hpEwnHSdD0xNVIUJHrV8Ih+D1f8ozDL5nWro5hggctMSw1M/Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zA848SkabEn1QnVAIPBikXdCbqRN1MdWv+kVvgT+r5w=;
 b=nvbaOx72e36jUgWyJZO8kH5vKrn+dSwe7ccYn2aO01wLWtxG9lawNcIW1ovkm9D1dv/lvqLVsPQdPEY6wJQShIewvsoDhCzs+Gwri42wftD8aX7GXWFgr3bbiC09BrqLA3v7E1P0Ng2QxkdZZvcJmx07Ae9rQyGqsQbgBm0zw5IufLmbtLYlgGXfa4DBYBBL0kgAq2UkB2dp8hS3HHwiqs9XlPVgcjyC2Qf52dcfe8YRcIWqGmqgEHTJDuOmVF6ObX0TfuqNimtduJ35ZYrQ8x9svcWObuAvXjQ2QBQjyeT85PjaYPpJ14HTB5ebUDxKklrLtr4PXCeF0+iEjk3opA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=163.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SI2PR04CA0014.apcprd04.prod.outlook.com (2603:1096:4:197::18)
 by TY0PR06MB5756.apcprd06.prod.outlook.com (2603:1096:400:27e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Wed, 12 Nov
 2025 11:04:13 +0000
Received: from SG1PEPF000082E4.apcprd02.prod.outlook.com
 (2603:1096:4:197:cafe::1d) by SI2PR04CA0014.outlook.office365.com
 (2603:1096:4:197::18) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9320.16 via Frontend Transport; Wed,
 12 Nov 2025 11:04:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 SG1PEPF000082E4.mail.protection.outlook.com (10.167.240.7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9320.13 via Frontend Transport; Wed, 12 Nov 2025 11:04:12 +0000
Received: from [172.16.96.116] (unknown [172.16.96.116])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 23CB440A5BD4;
	Wed, 12 Nov 2025 19:04:11 +0800 (CST)
Message-ID: <6bd16478-4bf9-436a-b862-02d1ebac3d29@cixtech.com>
Date: Wed, 12 Nov 2025 19:04:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/2] PCI: Configure Root Port MPS during host probing
To: Shawn Lin <shawn.lin@rock-chips.com>, Hans Zhang <18255117159@163.com>,
 lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
 helgaas@kernel.org, heiko@sntech.de, mani@kernel.org, yue.wang@Amlogic.com
Cc: pali@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
 jingoohan1@gmail.com, khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, cassel@kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20251104165125.174168-1-18255117159@163.com>
 <20251104165125.174168-2-18255117159@163.com>
 <ef433574-3e81-4636-82c8-9bc3552addca@rock-chips.com>
Content-Language: en-US
From: Hans Zhang <hans.zhang@cixtech.com>
In-Reply-To: <ef433574-3e81-4636-82c8-9bc3552addca@rock-chips.com>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SG1PEPF000082E4:EE_|TY0PR06MB5756:EE_
X-MS-Office365-Filtering-Correlation-Id: c57403e5-38e8-4caf-6227-08de21db369f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|1800799024|36860700013|7416014|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RmFBTlJiUlJzdnJzV2dqUkNjNjJmYk5UUklDVlRWL05kU0xLWXFhYWt2UjZw?=
 =?utf-8?B?NHI2ZURTRlVTZ1pQeGFpL1VvcWdyeVZTdnRPTlV0L29lSDhxZ0kvbTRaNlBG?=
 =?utf-8?B?aTRUOVRqNzgvWnFrNWwwN25CR2dSbmNVdVRtRzlaaFRxc3A5cllwT2htTjVo?=
 =?utf-8?B?Y3ZiNHA4WVJGWUVUVXpERHUyWnlkVlV5SVdPNlhYVUlmaXQrZm9FdDRYS28w?=
 =?utf-8?B?cWM3ZmFCZzZIVWN3aGZrandIK1FCa2pvdHl6Q0R2cTdpSlNMdWRoQjFIeHpM?=
 =?utf-8?B?MDdmVldQcEo2MDNkUHhSYXFmV0FiZ1NVRWhVVTBDQWFaaXpSdFZYaHBKRkdD?=
 =?utf-8?B?ZldvZDhpQTc1bysrbEJPV0lHUVdnT2ZCZjI5Wll1cTZwSnZWR0RFQXFpRXMz?=
 =?utf-8?B?OUw1emc5cG5MczFVTEk0MFE5UGhaUUcxTExOaTltYjRYNVROMnp0ME50dHJH?=
 =?utf-8?B?akF4aGQ1Q0R1cnRady9iT0U1UDZtOWtMNjNLUm1XZlAwVmJnaWhMZmZHWWZa?=
 =?utf-8?B?T0JNZ2s4bStTdmpDb1BOZW5wQU5VZWNZbnljSll4cnhjUUFRYzVzTkVobGxS?=
 =?utf-8?B?NEFzSFg4TXo0Nis0TERKQngwQ2xEd1p1b3NCaWZWaVN3Q29pRm1pL0VJdHJW?=
 =?utf-8?B?VE9ENmx5bEh6aUt0cVl0Sjh3Rm1yVTY5YnBuaUdvSEh1aDN6Q1MySUd5eFQv?=
 =?utf-8?B?OVFvSVAvVFZPRVVLWXVlN1dkVDM4Q1FtT1QzODRGdWxva0FjTU0zMHpMT0Uv?=
 =?utf-8?B?Y2FYVFZUWmtQZmhOUVNUTG1hVDBPZVlOWVBockcxUCtDQThqaDZKK3Y3aXpW?=
 =?utf-8?B?ZkFjSFFNU1ZRaHFMSmJIbmpKWmJ3aEl2UFdpMjJpU1cxL21HaEtIUUY0K2Fh?=
 =?utf-8?B?NWFlNk9GMVFoZEtxTGhHbUEyckdJek1qaDlwT0FOeVd6VUpPK1NROWhRNHZP?=
 =?utf-8?B?NmN3ZWpFdld1RXlFVytKTG9iVEV6MVZUT1VmMEp2d2lsb1c0TTFTUHNhOHJm?=
 =?utf-8?B?SG5aalBoTWs1cGl4YW5YQkVQdXhpVkVUaENQMW16QXVackp2WThHZmpjc1h2?=
 =?utf-8?B?aGFLMlYvQ2o2cGk3aEtScU5RVnhxa09pZThCQUVSVjRLMHFhNUhuaUljMXlp?=
 =?utf-8?B?OGErVmxuSTVONlczRU02Sy9KbDZjZUJsbWlZU3RzdXhNbkFxNFArNldWbTZJ?=
 =?utf-8?B?UjN5K0ZPaVIyYWo0N2svcDgzbE1zOWVkVFVOVlg3K0ZidkIvdm1WeGVwYXRG?=
 =?utf-8?B?TVYxcXoyMCtKVTFwemJ0eWZTZlIwUzhqOWJVd2gyTG81THg4M3Y5empsSUtG?=
 =?utf-8?B?RE01a2Y0U2RONmc4WXFmdzZpUnN5TytUUmQ1SEd3ekVSKy9jdnVqaTZPOTZT?=
 =?utf-8?B?UlQ1R0l3TjY5b3R2cHh1N1RXbG4ySm9CUnBGUWpvMWZuVXhIRE5NZlNtNHJY?=
 =?utf-8?B?WFFJTUoxNmY2Q0hWRTdMN3pldkcvYjJ0dGlseHY1YXAvYURvVkFLVlVydFVX?=
 =?utf-8?B?dWZGUEgzTWp4WU5VTTgwL1NlOG5PaVVlQnFmbWpMdU1rOVVkR3U5emJZN3NL?=
 =?utf-8?B?MWZwNGhlNWFKUmV5ZkMwUUtqSldHcnU5TTRlZE95b3ZVMjN2aDRzSktRSlAx?=
 =?utf-8?B?aDZNWE16Z0JpcGEzNWkyOEw5VTBGWkd6RjZRQzlVc3NNQW5PSUtVNjgvNHho?=
 =?utf-8?B?NFIycGNTbDVBT2FvYXc2V254Q3oyNURZKzdjUTJBVXdHSkJwdXk0ZjRGY2oz?=
 =?utf-8?B?S0h2SXo0VGFIZmhkNWhyM1NGSmZjZnhlT0NhQVZOazhybjJtUlo5dE0xZWpV?=
 =?utf-8?B?SFoxQStnVWVsMHY5c3R0eUZjOXpWSGZYMGZ6MEJrbS80cktzdjRic2lNNkY4?=
 =?utf-8?B?OUlpY0pQb1N1dHBRd2x1dVpFNmR1MGltSjR2bUZkUm5RN00vNG5CT2Y0elJz?=
 =?utf-8?B?VnpHREV3NkVjdGs2V0M5djlWTWtxbzdmK1lkdW1DSzZjemJFWXBKUEhjbEY0?=
 =?utf-8?B?WGlueXpnNks5eG05SWVSVldoSmtYQ2tXdDhrbUx6dHNpc1lHbVZFUVlFdWUv?=
 =?utf-8?B?SnFYZldTZVcwS1p4aklRMGx0TlFtWHBSTE1XaXREdk56b1B5aHhKbkd0VnZ4?=
 =?utf-8?Q?pInQ=3D?=
X-Forefront-Antispam-Report: CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(36860700013)(7416014)(376014)(7053199007);DIR:OUT;SFP:1102;
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2025 11:04:12.9423
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c57403e5-38e8-4caf-6227-08de21db369f
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource: SG1PEPF000082E4.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR06MB5756
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_030421_042763_BF9C4489 
X-CRM114-Status: GOOD (  13.99  )
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

CgpPbiAxMS8xMi8yMDI1IDQ6MzEgUE0sIFNoYXduIExpbiB3cm90ZToKPiBFWFRFUk5BTCBFTUFJ
TAo+IAo+IOWcqCAyMDI1LzExLzA1IOaYn+acn+S4iSAwOjUxLCBIYW5zIFpoYW5nIOWGmemBkzoK
Pj4gQ3VycmVudCBQQ0llIGluaXRpYWxpemF0aW9uIGxvZ2ljIG1heSBsZWF2ZSBSb290IFBvcnRz
IChyb290IGJyaWRnZXMpCj4+IG9wZXJhdGluZyB3aXRoIG5vbi1vcHRpbWFsIE1heGltdW0gUGF5
bG9hZCBTaXplIChNUFMpIHNldHRpbmdzLiBFeGlzdGluZwo+PiBjb2RlIGluIHBjaV9jb25maWd1
cmVfbXBzKCkgcmV0dXJucyBlYXJseSBmb3IgZGV2aWNlcyB3aXRob3V0IGFuIHVwc3RyZWFtCj4+
IGJyaWRnZSAoIWJyaWRnZSkgd2hpY2ggaW5jbHVkZXMgUm9vdCBQb3J0cywgc28gdGhlaXIgTVBT
IHZhbHVlcyByZW1haW4KPj4gYXQgZmlybXdhcmUvaGFyZHdhcmUgZGVmYXVsdHMuIFRoaXMgZmFp
bHMgdG8gdXRpbGl6ZSB0aGUgY29udHJvbGxlcidzIAo+PiBmdWxsCj4+IGNhcGFiaWxpdGllcywg
bGVhZGluZyB0byBzdWJvcHRpbWFsIGRhdGEgdHJhbnNmZXIgZWZmaWNpZW5jeSBhY3Jvc3MgdGhl
Cj4+IFBDSWUgaGllcmFyY2h5Lgo+Pgo+PiBXaXRoIHRoaXMgcGF0Y2gsIGR1cmluZyB0aGUgaG9z
dCBjb250cm9sbGVyIHByb2JpbmcgcGhhc2U6Cj4+IC0gV2hlbiBQQ0llIGJ1cyB0dW5pbmcgaXMg
ZW5hYmxlZCAobm90IFBDSUVfQlVTX1RVTkVfT0ZGKSwgYW5kCj4+IC0gVGhlIGRldmljZSBpcyBh
IFJvb3QgUG9ydCB3aXRob3V0IGFuIHVwc3RyZWFtIGJyaWRnZSAoIWJyaWRnZSksCj4+IFRoZSBS
b290IFBvcnQncyBNUFMgaXMgc2V0IHRvIGl0cyBoYXJkd2FyZS1zdXBwb3J0ZWQgbWF4aW11bSB2
YWx1ZQo+PiAoMTI4IDw8IGRldi0+cGNpZV9tcHNzKS4KPj4KPj4gTm90ZSB0aGF0IHRoaXMgaW5p
dGlhbCBtYXhpbXVtIE1QUyBzZXR0aW5nIG1heSBiZSByZWR1Y2VkIGxhdGVyLCBkdXJpbmcKPj4g
ZG93bnN0cmVhbSBkZXZpY2UgZW51bWVyYXRpb24sIGlmIGFueSBkb3duc3RyZWFtIGRldmljZSBk
b2VzIG5vdCBzdXBwb3IKPj4gdGhlIFJvb3QgUG9ydCdzIG1heGltdW0gTVBTLgo+Pgo+PiBUaGlz
IGNoYW5nZSBlbnN1cmVzIFJvb3QgUG9ydHMgYXJlIHByb3Blcmx5IGluaXRpYWxpemVkIGJlZm9y
ZSBkb3duc3RyZWFtCj4+IGRldmljZXMgbmVnb3RpYXRlIE1QUywgd2hpbGUgbWFpbnRhaW5pbmcg
YmFja3dhcmQgY29tcGF0aWJpbGl0eSB2aWEgdGhlCj4+IFBDSUVfQlVTX1RVTkVfT0ZGIGNoZWNr
Lgo+Pgo+IAo+IFRlc3RlZC1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+
CgpIaSBTaGF3biwKClRoYW5rIHlvdSBmb3IgeW91ciB0ZXN0LgoKQmVzdCByZWdhcmRzLApIYW5z
Cgo+IAo+PiBTdWdnZXN0ZWQtYnk6IE5pa2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwub3JnPgo+
PiBTdWdnZXN0ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPgo+
PiBTaWduZWQtb2ZmLWJ5OiBIYW5zIFpoYW5nIDwxODI1NTExNzE1OUAxNjMuY29tPgo+PiAtLS0K
Pj4gwqAgZHJpdmVycy9wY2kvcHJvYmUuYyB8IDEyICsrKysrKysrKysrKwo+PiDCoCAxIGZpbGUg
Y2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kv
cHJvYmUuYyBiL2RyaXZlcnMvcGNpL3Byb2JlLmMKPj4gaW5kZXggMGNlOThlMThiNWE4Li4yNDU5
ZGVmM2FmOWIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGNpL3Byb2JlLmMKPj4gKysrIGIvZHJp
dmVycy9wY2kvcHJvYmUuYwo+PiBAQCAtMjE5Niw2ICsyMTk2LDE4IEBAIHN0YXRpYyB2b2lkIHBj
aV9jb25maWd1cmVfbXBzKHN0cnVjdCBwY2lfZGV2ICpkZXYpCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybjsKPj4gwqDCoMKgwqDCoCB9Cj4+Cj4+ICvCoMKgwqDCoCAvKgo+PiAr
wqDCoMKgwqDCoCAqIFVubGVzcyBNUFMgc3RyYXRlZ3kgaXMgUENJRV9CVVNfVFVORV9PRkYgKGRv
bid0IHRvdWNoIE1QUyBhdCAKPj4gYWxsKSwKPj4gK8KgwqDCoMKgwqAgKiBzdGFydCBvZmYgYnkg
c2V0dGluZyBSb290IFBvcnRzJyBNUFMgdG8gTVBTUy4gVGhpcyBvbmx5IAo+PiBhcHBsaWVzIHRv
Cj4+ICvCoMKgwqDCoMKgICogUm9vdCBQb3J0cyB3aXRob3V0IGFuIHVwc3RyZWFtIGJyaWRnZSAo
cm9vdCBicmlkZ2VzKSwgYXMgCj4+IG90aGVyIFJvb3QKPj4gK8KgwqDCoMKgwqAgKiBQb3J0cyB3
aWxsIGhhdmUgZG93bnN0cmVhbSBicmlkZ2VzLiBEZXBlbmRpbmcgb24gdGhlIE1QUyAKPj4gc3Ry
YXRlZ3kKPj4gK8KgwqDCoMKgwqAgKiBhbmQgTVBTUyBvZiBkb3duc3RyZWFtIGRldmljZXMsIHRo
ZSBSb290IFBvcnQncyBNUFMgbWF5IGJlCj4+ICvCoMKgwqDCoMKgICogb3ZlcnJpZGRlbiBsYXRl
ci4KPj4gK8KgwqDCoMKgwqAgKi8KPj4gK8KgwqDCoMKgIGlmICghYnJpZGdlICYmIHBjaV9wY2ll
X3R5cGUoZGV2KSA9PSBQQ0lfRVhQX1RZUEVfUk9PVF9QT1JUICYmCj4+ICvCoMKgwqDCoMKgwqDC
oMKgIHBjaWVfYnVzX2NvbmZpZyAhPSBQQ0lFX0JVU19UVU5FX09GRikKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBwY2llX3NldF9tcHMoZGV2LCAxMjggPDwgZGV2LT5wY2llX21wc3MpOwo+
PiArCj4+IMKgwqDCoMKgwqAgaWYgKCFicmlkZ2UgfHwgIXBjaV9pc19wY2llKGJyaWRnZSkpCj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybjsKPj4KPiAKPiAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
