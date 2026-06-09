Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED832CD8CB2
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jun 2026 22:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n0oIP7zYJyvC+rPr2in0KvaQ9il0QL7r1WXPAKoTsYI=; b=BCexmN6hAOW2HUP1/7OYjJLs73
	JZ20hIGmOJHS5A3fIKvOXzqFOWtdG5xELR2/X/oqHsHDbulsR3NvE8Djrwbp6EjF4406tS8FCCwFp
	6GOlbeYnukJQEb/+La95PLZ0jQUIPol1HuimEw/voFDFtSJPp9FZnlaF13BZWGv6Ldt4ilLW+DQ+p
	fNxiE5g9rxkZFj+81yxRuhfmUwZ9SGUkZncY0PZ1XkRsDT5jqC3OTL+Xwf1CDRn1t0OlrSOVX2wU7
	B45cx/ppVc203ZsR9h/NLeBeWVNKIs8MQKkFgFG0zz11GltgbGulDi5Xl2fW09zfM/F/m/JdZqone
	DlDl0h3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wX4iJ-00000006RXd-3HM6;
	Tue, 09 Jun 2026 22:14:27 +0000
Received: from mail-australiaeastazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c40d::1] helo=SY8PR01CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wX4iG-00000006RXE-1cm3
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jun 2026 22:14:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bEfqive5mDtzktT4ZGxnQNbAZtfhgh2lukUPmDfhlmXx5OU0Eti8tnLIZo17ViqxDO1XgqZMcpQwLlqSasqLPrGmiHKyXAElVpYhw4GNf6VgwuUR/dr/DWXUTRdtZj/qV4dwA41rD2f2vQdmiuxEAgTGJRMY7Nr7BbdOTOsJ2ytCHYE+NdcWvdjNBxt1LO9s/uNdXIdIVrls6N8x1n+bisIO5eT34JKkXdGUQWGVqXYdN1AKsfOC6nEN7kALkAbfGmZPrzyhJZeZAJATlucLIS7bdhhfppmTL1qIhu69z0oVDqOpgoHzr8DU4QcICJEOfPFMhqOyWrAIHzPT9X0rFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gPBuzPxPdjkj7TW3bzh57+KXlN0qYPofpDxLeG/osv8=;
 b=CkmSnEewtxTQFQRh4SfGAtiub3iR1NC2uGRyIgwj+OXHrJVYNe3ahgbBnd/O+NATU6aMbrc5IT80uJHpx6Mtn1pn949lDus5cODnGK0zmCS84jGGGJ5EAA9QpyKU1dVZeE447Q9tWPvCwBGvZcQUCEY0QdVM6ApcHW9mUQda7W8DoopffFlb4pX4+wPdTQ/Bt6VQPgLxpmLmxdMZlkE7iBcuibZp+PFm0ucLOb0pt43/VRZ50M9qMbxMaaSb43hSgXJoReFwBjRPPq6qJmCSM/DXYTln7ZByUXQxDSiKmt/R6pBstlvuEISuE3Ug2Xr/+ecdYpeL23TYN/Y+wHYnOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=symple.nz; dmarc=pass action=none header.from=symple.nz;
 dkim=pass header.d=symple.nz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=symple.nz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gPBuzPxPdjkj7TW3bzh57+KXlN0qYPofpDxLeG/osv8=;
 b=WVH7b/MxP6Z+QJ+ruZBdpugjmcmfC6F+rnigTaAYKKFmjV8l8kgz4GPSB6839i1lPWv5jdD8/eA+Au2ydF3ryStzpFcLXMsYDHCUzthaR6T+iI9LNObqgZb+PlX2UF9OJrhR0K95aahcq46/1qW/yl1wW1Wlqa3n6mOefsNirMcHz1Y58L8Oz6aTWjUe3ZqauD5A0IdA9AP9lO24ZCsfQQ7sQtq5kIlET5zLxELWCY/BVUfslsgZ5j02b49MbAMan3we/9gIw5pJGD6tcLxzJ11NQKfgu9WYrLUBao8C+HB0nAxHp3f8qVg51CJ1pmz6RzMVZf8xeLdXF0ZSvkZiog==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=symple.nz;
Received: from ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:b2::11)
 by ME3P282MB1921.AUSP282.PROD.OUTLOOK.COM (2603:10c6:220:b3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.11; Tue, 9 Jun
 2026 22:14:03 +0000
Received: from ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
 ([fe80::4619:bdb0:3293:3834]) by ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
 ([fe80::4619:bdb0:3293:3834%5]) with mapi id 15.21.0113.011; Tue, 9 Jun 2026
 22:14:03 +0000
Message-ID: <4b3a9f32-807a-4b9e-8df2-d22f872d288e@symple.nz>
Date: Wed, 10 Jun 2026 10:14:01 +1200
User-Agent: Mozilla Thunderbird
Subject: Re: [BUG] rkvdec-vdpu383-h264: wrong pixels at horizontal de-blocking
 edges y=4 and y=12
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Detlev Casanova <detlev.casanova@collabora.com>
References: <52a01f1f-5b36-429b-96cf-f1a0a1c8f5e4@symple.nz>
 <5939C396-3A70-458F-8E6B-A55319929564@gmail.com>
Content-Language: en-NZ
From: Simon Wright <simon@symple.nz>
In-Reply-To: <5939C396-3A70-458F-8E6B-A55319929564@gmail.com>
X-ClientProxiedBy: AK0P299CA0004.NZLP299.PROD.OUTLOOK.COM
 (2603:10c6:108:15::15) To ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
 (2603:10c6:220:b2::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ME3P282MB2196:EE_|ME3P282MB1921:EE_
X-MS-Office365-Filtering-Correlation-Id: f1a14faf-5ded-4d3b-2190-08dec67469ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|23010399002|366016|18002099003|22082099003|5023799004|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: WAVAG2FzffBHS2UNUA8ePIlIL0efAz3674MFxetGepPj/4SE7Ybe2ZaSTpaVvL/r75mTP+eR+AMCbAzbrCmGzazB4f/aFZpIsW4/CSNwfzhILxJh1xg5K6Y1aK1HsYbFKFRpzzg7zx5V9b1mccNKtsGw1lrYEqkX6ooC0SpVvtqNXgB212FyIKrcu/bR+gwbpkhhn3glfXLGXiRyZ7zBe68AjMKEyIynnJGteTuk6OifqD22zgoP7BhhzGRrPzS40BvB3PHg6ov5we10SXYZ0saNF960FJXpjVx9zlzN/rk4ZQogsDrebzfQBOjLe71F6Nv72pRLJpWxYJmPEn3uzxVJDdvt3jkFSguKtb5Fp5BB4i5kLicqYkJ+QvpVD071yNzEqj+9MMmubLzT/iA5Ucm13dE6zwUc9fZxEfxC0UVMEYYElj9u7xIQgz2tEsUfj/CxiZ6EWYwaafkvU67l+LzPATwBHcsuNNGcGgVE5Y+xil85xGV3Ak5tfyJFYLMAAEuy4fmPcxwDtVOJ0F4Inz9EF3h0G4coscLDK5HxGJOdjPRpxuG/cSMk0BTqFnqhXO0OjBYM64yT1v3gnV/VhcmcZlyq9spSwkTDtRpk9z4ijP2Ymfcj72KmO9m6sZDURMRkUeCyDlhIRqNJQuawkxvUehKFfmGwo13PEA7LifBc/WT4ffcflW2TOy9ise6PLu9HR7DyTR7HQKMExQsnZw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(23010399002)(366016)(18002099003)(22082099003)(5023799004)(4143699003)(56012099006);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QUk0dHFMdnZKUWZSWERnbHNUeDFOUFNNQ2xkclo5dUdRSXdTNmtZZHRyaW5O?=
 =?utf-8?B?ODVxbytYT2FYaFFaSEpmYTA0dENhb0dNSXdkR0tqZlp3azh1UEhiZjZ0WXM3?=
 =?utf-8?B?OHhoTDJKN3hXSFBzVlYxS0FsNGxSMWk4aW1kM0ZFSUhwMmdiQjNucDdlNW9Z?=
 =?utf-8?B?NzNGd0o3VUJiUDFuRWl4M3RVNWNMMzROTFZ0OXd0bWFva3pXTCtkU2c5bDNX?=
 =?utf-8?B?eDh6bWZoM1hsOFVkYVkrMGEzNUovRDJObWxyWGorK2N5bjJ1ckF6Y2I2cHhW?=
 =?utf-8?B?YmYxbXhsV3ovaHdCQytKMTdWRHE5N2VUZEtLR1M3d0lxbk9wbmlQeVQ3VXdM?=
 =?utf-8?B?cjZFdWcxWTVvY2Y1QlBFVkRSMFV2THVGRUwrQ2hzRERrblgrb3lHNTRzUUll?=
 =?utf-8?B?ZkoxdzB5RXZ0cnZ2cHh3UHJQaWsxZVFlRW5kbGR3T2szdEJYZWYzNllUeGw5?=
 =?utf-8?B?UmhqYW0zcTJTSlVHY1huQ2VLTnNLTmVwWC9jUmo0U2YvQ3BXYTk4TzBNR2pD?=
 =?utf-8?B?RlVVWGpjN1RMSHNpem40OXFJSUFtdS9PVGZSc1VHbkl4R3JLT25vd3hCbFEy?=
 =?utf-8?B?aHVlZ0hsNWx0WG5kUHVjTzQrYlFiVEJuMis5Y2luVXlYMnBRVzUyeTlzWE84?=
 =?utf-8?B?T0hrYUllYkRmQldMcTg1RXVLaE5pUHVGTWpQWmtYNVowM3RmcitlMUoyYW5W?=
 =?utf-8?B?dFIvVWVXM0ordXNRU1J1SW1Pc2tRMDlUNGUxTlBIQ3NyNEl4NHM4YmdjeTRv?=
 =?utf-8?B?OUJCQlJzS2xUbzJuODJhSTdPUTMzNVdWaXY2eGlpdHJyRnVVOGxtQXJPRG1x?=
 =?utf-8?B?MXM2ZXpmVm1hRHlJa1FaMVAwOUtVZjQrWU5haXhWVXk1UGl0UDlKcU5JWWdL?=
 =?utf-8?B?QmJQTGd6U0had1hRK2FTdkZiaGtFNHIwcGE5YzZKZzJORDFFcFRPZUQrZEFN?=
 =?utf-8?B?c0RQbzVvQVJsNkt6bWNXOG9zTkNVeFhpYlorT1ZMTVl4dzN3YnlmYmdoR0h0?=
 =?utf-8?B?VEtCd2RSbUxlbGtNUTkwWHBCNGpucVhCWXl4V3FuOWxjV2R6WTVaZ3I0RjVu?=
 =?utf-8?B?QjhXV3BZbjVucFp5SVhaNVFEMnNINDd1VVpSa3ZUcHo1Mzd2b29EL3krVlAv?=
 =?utf-8?B?RVF0SmQ2ZkcwMzl4MktrN2RpZnJSUlFUd0h0Z2Q5SXQ1WmJPRzByVk1Ya3FH?=
 =?utf-8?B?VTVYQnlPNEJDSUd0TEF1T3lKdFgzeUZJU3hNYzJrTTZXYytXazBnb09yNTlm?=
 =?utf-8?B?RXZ4UUkrVXZzd2FzVnVVeFB1azY4STV0ZkQ5bXB1a1JZUUZTRlgxMVVrQ25V?=
 =?utf-8?B?YlpmTDVqam1hM1ZleHFhLzFoL1pIMHg4OEg4NS84emxBenBkYzhTSVJ1czRQ?=
 =?utf-8?B?YTE5ejdvdVh0clN4THlBQW5lK2R6d3ZYM3RrYTMxeW5zVjNRNHNKWEk4ZDFy?=
 =?utf-8?B?NXU4Y05tT3pEZ0IvUDh6eklERjQrTlg5cWVaVWZGNGlMTGtsdmtRaVkwWkhv?=
 =?utf-8?B?czJWQWpjWjEyTUpVa3BGaVZjbjZJcm9TaEFzb1doWm5Jb3h6VERoSjk2cVpz?=
 =?utf-8?B?QmtWdkh2dUdFSDlNbkJkbWxsQ244WFZjOERDNmhxRnlPYzJFbUowWDVtaWRN?=
 =?utf-8?B?M2xJUXFGaWNERWZqTGVJK0VyemNsK0phN3MzajRpQWVPSHZTVEhrblJyQ3A5?=
 =?utf-8?B?Q0NlYmtiYTFZSHpRL1paeit2SzFTbU5KYmE0NEQ1aXB3OVZHejIvWlNxazlJ?=
 =?utf-8?B?ViszSTZoVTN5aGQ2czJHckgwY20rOXFlejFZMDZXYmtZYndyNlVNSlZZV3BI?=
 =?utf-8?B?MDBDd1E3OVluQTR2aURtYVhIQlN3YjE2NlJrUjh2UkJkb2NyZ3MvNmNIT3d0?=
 =?utf-8?B?dkpIOVMwcDMvc0JJZkZ3WWZOZ1N0Vk9SZ2JqT2JVOHQ3b2NhSzYwYWF2d0Fa?=
 =?utf-8?B?dGNFZXRXME9UVnlWd3hzbDVFUkZ4ekRFcXc4bDZuWmtoemRSRXdia0k1SFBz?=
 =?utf-8?B?Tms2dWNjU2g1U0JuRnZRT0xMNm1pcnd5ZUp0VE45WUxuNE1lVkhKMU9aVWx0?=
 =?utf-8?B?SDQ3eHUvZjkyMWxvS0JLLzg0cHhUWDMreWRoUEdwZXhGUEV1VDhHWW5EbGpJ?=
 =?utf-8?B?RUh1VFl5a0NmdGtOWTYyemwzNkhEdkhQN0diVG1NZjJuNlVrZ2xRS3F2M3JQ?=
 =?utf-8?B?Q1N2OVRFZWFsM1lMMmZFM1hrREg1WlRoajkrdmpKb0FmclFabUUxR1M1aTh4?=
 =?utf-8?B?YlFydWZuS2k5N0I4aFJTd2xzTzUvcHhwb0gwc1VCd0NJZG9VbGtYSjFsTUVW?=
 =?utf-8?Q?wpXDAT11cf5K9939Dh?=
X-OriginatorOrg: symple.nz
X-MS-Exchange-CrossTenant-Network-Message-Id: f1a14faf-5ded-4d3b-2190-08dec67469ce
X-MS-Exchange-CrossTenant-AuthSource: ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2026 22:14:02.9629
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 9531f271-068a-4210-b471-bd8da91491c5
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oRbwlUgjGxvN72N8o92m7evuIlfYwGRG25wyH2POyXY6ZurQQcLfdGMVWtilzfpP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME3P282MB1921
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_151424_455456_8A3E2CAB 
X-CRM114-Status: GOOD (  12.39  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Piotr,

Thanks - glad it's useful. If your RK3576 H.264 decode shows wrong pixels at the
same horizontal edges (luma rows 4 and 12 within each macroblock row, propagating
through the following P-frames), it's very likely the same bug.

On a PoC for 7.1, good news first: I checked the in-kernel driver, and the whole
drivers/media/platform/rockchip/rkvdec/ directory is byte-identical between 7.0 and
7.1-rc7 (as is the V4L2 stateless control uAPI). So there's nothing 7.1-specific to
do - the same fix covers both.

The less convenient part is that the fix is not a small patch to
rkvdec-vdpu383-h264.c. The root cause is that the BSP runs a one-shot "warmup"
priming decode at every decoder power-up (rk3576_workaround_run) that mainline
omits, and that warmup is driven through the VDPU383's link/CCU register bank.
Mainline's single-shot path doesn't carry that link infrastructure, so the warmup
lives in an out-of-tree file (rkvdec-link.c) that is part of a broader downstream
tree I've been building on top of mainline - link-mode support plus V4L2 stateless
VP9 and AV1 decoders for the VDPU383 (neither is upstream yet). The warmup isn't
self-contained in the H.264 file; it needs that link plumbing around it. So rather
than hand you a fragile micro-diff, the practical way to verify is to build and load
that downstream module, where the warmup is on by default:

    git clone https://github.com/SympleNZ/rkvdec-vdpu383-vp9
    cd rkvdec-vdpu383-vp9
    # against your running kernel's headers/source:
    KBUILD_MODPOST_WARN=1 make -C /lib/modules/$(uname -r)/build M=$PWD/src modules

    sudo rmmod rockchip_vdec 2>/dev/null    # unload the in-tree driver
    sudo insmod src/rockchip-vdec.ko        # warmup is default-on, no params needed

(If rockchip-vdec is built into your kernel rather than a module, you'll need it as
a module - or blacklisted - first. The module name may differ slightly on your
build.)

Then decode your H.264 as usual (v4l2slh264dec) and compare against avdec_h264 - the
rows-4/12 corruption should be gone. That repo is the VP9 work, but its src/ builds
the full VDPU381/383 H.264/H.265/VP9/AV1 driver, so H.264 is included.

One honest caveat for the media-player use case: the warmup fixes correctness (the
wrong pixels), not throughput - and the throughput limit isn't specific to H.264.
It's the mainline single-shot submit model (no link-mode pipelining yet), so it
applies equally to HEVC. (HEVC, incidentally, already decodes correctly on stock
mainline - the deblock bug is H.264-only - but it sits under the same throughput
ceiling.) Mainline decode on RK3576 is still well short of the BSP's rate, so
real-time 1080p/4K playback can still drop frames regardless of codec. This will
tell you whether your corruption is this bug; smooth playback across codecs is a
separate piece of work.

If it builds and runs, I'd be very interested in the result on your three boards -
independent confirmation across more RK3576 hardware would strengthen the report.
Happy to help if the build trips up.

Full write-up (root cause, the register kick sequence, validation):
https://github.com/SympleNZ/rkvdec-vdpu383-h264-bug/blob/master/FIX.md

Regards,
Simon

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
