Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33DC1C6FD19
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Mar 2023 14:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dUoACNNv5tEgW+PlRULE1txJdYmZHkkSFwtLgw0cjrA=; b=R0vVwoZKzFZ/e0RzgMQBO4P/Ue
	QLrTaOBiudA8iC1R1cwu2psWe5hH+93uyttJQyrGVAK2o7Wmg7FllEex30Cr80Pfbu25wP/PuWxmr
	90B2Vif3/VT4d72sHEGhlf3/E5+QOs8+nmNs1UtOy9iwlN/CGJP013n0T6PbSSM9BDWzi6SA3NKNq
	IeWk+fWsuqdc+QoKrU7kzmQ/bMBftq3pEBR357B6QtDabgSM91OgCcnqBl6Mzrnninmo9c/fxEE0e
	MMFbzr3ekWnp7eqplVzYLxnHWjnjqqaWwv34JUxUnEqx8QRk4gg1Px46cXYl71VQRwThes1BkFKUq
	1w1i00Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcoR8-00GfQg-33;
	Thu, 16 Mar 2023 14:18:34 +0000
Received: from mail-am6eur05on20631.outbound.protection.outlook.com ([2a01:111:f400:7e1b::631] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcoR4-00GfOd-1S;
	Thu, 16 Mar 2023 14:18:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nXufD/zKYZrt0W88l3gQj701AihCCxeaoDn2GTzDFvGbXbDrPCg97FE/gxoYHAqaZUwrqpvB8OhFMcn7KmiGoGI7oxKJ54fdDEuVcr0C7+yYKSRJIVE9DIsV9pO7yAxad9YQMPF8uwQCfYe8h8MHHd3BPwy1BW7SQ48LW/u8WjBqJaWYmsAx0M7122EaZD+s8sop/iOQYVdlp7kcpfYSPBHmSlemIVgK992Mkxc5ppI8mrE/Nft4Tapv+hcy1XStlx8W0W/5W+cEkrXMODbccL7bCBbj2tB93tRu+tYDcdl/GUnUaz17kJliWRUu5QL4y7a186unNQ9P6Su86SvHyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nwy2GE8rnAJJrpxFQHChrGnNHpu6kgToc4sJn6i7thI=;
 b=npYF+6vXHUenpwk3hGhTsojVDuuczL+GeVM1NvhsPLR5Wa+ZE7yLxPlHF/2b5XhPmuRCxizOzJaGfBU8U6l6DSggSDAVAzI1/LDXZHvicjT7ZVUV2juvItc7vmVw4S6FtO9ec4NN8Fq68/6IY5xUhHrOytXSewjwhs1+pOZsm4y/S3I2hxFkgoltSWj3kfjA88PpEeKPdkfxNL32BuZMq3BC7U+WptMIqM9mZsQ/dhFOoP23W0qvFoZvr1jwJ/RR5XTQ5DDpmgQt/Lr84YYIyPCvyHz7jRSlJg+3gYSDYfWhDX4xRdNfkKGdWaBvTPWS7Pd829bFKzgtPXSumenFrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nwy2GE8rnAJJrpxFQHChrGnNHpu6kgToc4sJn6i7thI=;
 b=yKGhVAKwYbVKHRSPTdOzbRCsVPHGkj7rxzld+/2iSVR0D3XUYjrTDYbEkA/dzopYqpAntqN2zvr1i+77HtS4HYRnBh/u53GdxUeb8+ape/cX2mbMfy66MbmQP9zWYKKtWuSmg/RWCdycIxEYxyLLTbzVZqH+BPsU/4r8j7ITqBw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by PAWPR08MB8935.eurprd08.prod.outlook.com (2603:10a6:102:33f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.29; Thu, 16 Mar
 2023 14:18:26 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::6f4d:f868:c89:4db1]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::6f4d:f868:c89:4db1%5]) with mapi id 15.20.6178.031; Thu, 16 Mar 2023
 14:18:26 +0000
Message-ID: <b49b6b01-a496-263c-470d-1edb04dff251@wolfvision.net>
Date: Thu, 16 Mar 2023 15:18:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] drm/rockchip: vop2: fix uninitialized variable
 possible_crtcs
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, hjc@rock-chips.com, airlied@gmail.com,
 daniel@ffwll.ch, nathan@kernel.org, ndesaulniers@google.com,
 s.hauer@pengutronix.de, Tom Rix <trix@redhat.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 llvm@lists.linux.dev
References: <20230316132302.531724-1-trix@redhat.com>
 <8664878.T7Z3S40VBb@phil>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <8664878.T7Z3S40VBb@phil>
X-ClientProxiedBy: VE1PR08CA0029.eurprd08.prod.outlook.com
 (2603:10a6:803:104::42) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|PAWPR08MB8935:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d942ffe-e022-4a17-e358-08db26294ebb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	Ufo2YBfLxhsRAjq9bpqJn+wcTH2ajRltem8MQa7mU4U6tBUQPi90/CrFFt/lbeMH7kcBbO73nYmKTeek/SoEvLkB+3+T7btxKAsBiBvB9xkUKQ16xkYEVXR9G07VlmQRg0eOepkBVoXIENmAi+owns30mq6sn6pbA7riobQhMb7NnhZ2pO4iMBLaCC6FPYyvqYzLxDjJi7Y4Fagaoy7NjAKCuv52g+NtPZv45QsVFUlnEParaYqa6MKnk4ES5zDmYWlinsubGZTVVkZuxIEbgYCdDyzop2DIJX8rp7SjX5XTB8QKtFW6F5lV81WuK06d8YnPgpc3/8yuHjQ0EQ+7546LxEa2+UtXQq9SeG3iDwwFg8lyyuV39NR5FHNLzRkKfHtZxIfhoVr3FjODgalhC2+5eqledbbx3LeqtzBg5M9uE7Dae+gBe6J4MeplR5j5WPWYzUgavHOZf5a5TRCLrRvNA7cBz0wTFf+YOU79mKyywtwf2jUBkeJtzpfFmzAKeTR4JVVDmfVsTsQxy7EfqCl2Kb6itDM/SdJ3E3BvWz6u6MCwTWzrmL95+8CI6yihU/oUxEpucdI4y5ZlE924xfGDHjugu5Dne3TlePQgl8oVisJ2yFBF8Oi8cV+rhrzivgQb4gVh2mviBYjsN+oiHGPAJxTKzyKvJmjsShWPBbuRylj2JGLOWVg8c4XULa73SXZ2vIWelNwv6zuJ30iDF4f+0nfE/0CjEV3cit403Uw=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(39850400004)(346002)(376002)(396003)(366004)(451199018)(2906002)(31686004)(83380400001)(316002)(7416002)(44832011)(36756003)(5660300002)(66476007)(66556008)(8936002)(66946007)(31696002)(8676002)(4326008)(38100700002)(86362001)(110136005)(478600001)(36916002)(41300700001)(2616005)(186003)(6666004)(6512007)(6486002)(53546011)(966005)(26005)(6506007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?eFBZaWdmS09oV29xTE5xNmhudkJtS0h6VXdPejZ5cndtWE5BYTFlT3l6Zm9o?=
 =?utf-8?B?akdkcTdJOXR4YnBKUHcreTJNVzNDODZ1M0I0M0tHOThtcGd3aE1yVjFNYmE3?=
 =?utf-8?B?bmZYbVVFVW14M0Q0QW94eEpmZkJnZExPa2dHa2dwL0l6L2l5VmxDNjFvMWlK?=
 =?utf-8?B?enFvSDFBeGZnK0FmdVFOTVFQM2xZZC81UUhKYkZtbjFpTWh1U0xUckErLzd6?=
 =?utf-8?B?VE1xQ1dJU3JqNzFHUWFLdTBITGRPbU1UVTFZM0RocEhOa3FEaTFsc3pXUXVk?=
 =?utf-8?B?Wm92ZmxpRFpoSDBsSWJBamdnTjZHZTZxUE1XTUhQUDIyb3VMSi9HSjRuN3R0?=
 =?utf-8?B?QmJhMmd0enRwOW9ETXdvN1pFWG1FN0U4Y2gwcVZobm5rdEkwb1FCWmpIQWZG?=
 =?utf-8?B?WERtUEtLaStyTXliWFZPTTJXOUlVSTNYWTZYQXV5d0tubzJXUExGakNkcFRk?=
 =?utf-8?B?V1MrY0g3WUowekFRMFR6c3pOV0FLc0piczM5QjlYZzZDeWZES084YWZmTW13?=
 =?utf-8?B?QkxJSGpwdTl0M3pEdUZJUWhpSEtPdWFDV3AxOEFqZGRMRnNrOFFYZWdRNnox?=
 =?utf-8?B?WDA4RU1ZekYrMlpCRmNvN0FHT1craythdHVQWUFSQ05DYVFOVTRxR1NJNThF?=
 =?utf-8?B?ZUZ4ZnV6ZWw2RUorczk2RGFrbCtKVWQxeGIraTMwRG9nVDJ4eDdBVWpuKzln?=
 =?utf-8?B?QktLa1ZVbVhlTWlRQWZkVTM2aDRUTFAxTk9sYUxvb0YydW1lVCthLzNQMlpU?=
 =?utf-8?B?eXM4ejF3UkN1d3BhUmdCb2d6VGNzblBNV1VudlovL0FrT0ZYNkRiRklFb2g2?=
 =?utf-8?B?MUxtSU9CdVRUNy9rclM4aHNuQlRuM2s3WTh2Ui9pK1EyVGtHdXhBQlk3eXN5?=
 =?utf-8?B?MTRqVlJwSGJzKzVpbWlvNVN6Mlg1R3ZUMmxJdnRQcTFBaWcwdVJDSEg2cHVX?=
 =?utf-8?B?UE1zOUtlcVlPRU1LOWlydWZsMHZnNG82ZmNNS21GRGh6c1orNlowY2JUTklN?=
 =?utf-8?B?SWZXYm5JTHBTT2F0VDFjTDFFM0pOdFVZTTFXd2huNkJYcjVCN2M3V2xVWjFP?=
 =?utf-8?B?a1ZQY25QOUlDbCtya0tOSnhSTDJUQkF1cXdGcVhsczdnUW9SbWZCYko4ZnRN?=
 =?utf-8?B?b1dJR1JIMkIwc3NTdXd6SHRlc09XNGQ4dU9aUkJMeW40eHM5L3YzNmppM0lL?=
 =?utf-8?B?REsxQ2ZqR0p6MXNXUHR3WksxQjNPME1MS1VZd3lkZ0N0K3VpaTZwQmg1djkz?=
 =?utf-8?B?MG15RDY1bVNFNitrTVlEa2dlNmpMQ2I2R1VzSTdWaU5kYU0yOGhQTGt2RlBp?=
 =?utf-8?B?dzdRbEpLRzlINkluSGxBZXlVaWtocnRVNDd2d01pRStLdzlyR0xQR0V2RkpU?=
 =?utf-8?B?YkFVdmZ2cmt0aW5KRFI1bSs3eVpnOUlIR2REQTF2YWs4TmRNVXhKOGlkSXox?=
 =?utf-8?B?dkpRSFpvWWNnQSt6bU0yK1RTTDNTcXdwL0lZRDZYTGhmVmFPY3FGOVRaSnVX?=
 =?utf-8?B?VVo2YjNGNDBoTGEvOTN0UFFaNnVtejMybjY1SmM0QStHNjg3MmI0RGJWWXZY?=
 =?utf-8?B?OEM2b012bFVxMHdOVlNjdEYvUjVESWRxMUliTWFpUUZGUjZhb1Y2bEhkV3lm?=
 =?utf-8?B?bkhhbnh3N0lhSlNYK3VlOEZ0b0NCd2NXMVJmNkI0NngyZDY1NW4yME9UVHV1?=
 =?utf-8?B?bVcyN0ZVR2drVkVxRmJ0d0NtU3pvNXJGT0Zoa2w2Vy9tS21Ya2Vab3kyTnlH?=
 =?utf-8?B?S05FZGVKWk53NVZza0ZKaHcwNTd0WUtSTS9QVVRSSEFHS2c4aVF4WFo5VGlI?=
 =?utf-8?B?WlNmaXRRdzJyUVp6bk9CUjVuQzdiS1JBeGlqZElzdEFSUVRuNEliSVZnMzRi?=
 =?utf-8?B?REg0eDBGM0ErLzQxSlk3RE16cElCN1Znbmdkc0h5eUJ4RmY5TDhWZ3ZqWHBa?=
 =?utf-8?B?ZVNDd0hGQnVZRTljNDJHc1RoK0tnMVEwQ1lwT0JSMDlBbEE0YzNSUVZMVFR3?=
 =?utf-8?B?NUtUUHRSNkVESlBhbGYwUGRBRzVOditTaUhZRXRHQW0rRnprNFBMd25vOWZj?=
 =?utf-8?B?WFJUOVVJaHYzTGNHaEo1a1RjZHJoTEcxeERXV1dQRnVBVHZzUW01WDl1RlVF?=
 =?utf-8?B?YUVjSHk2UktRcTVwdlhpVkZacVd0VXdOQmtxSFdpS1UxUmZjVGw2S3cxNlJ6?=
 =?utf-8?Q?OC8/b0Yfumhu0KHLp2TNcKk=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d942ffe-e022-4a17-e358-08db26294ebb
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2023 14:18:26.0289
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RSnDrq8Fw1SKNyqMtA2dxtiuyfwxlfmRxfHWvdisSnD8FBB4rhguP1tS8KfZddLVgI9ziyUSfKsDS4TCoc7t2wZ+BAoMIrKmyMeyN+OnrtU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB8935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_071830_733198_85CC567E 
X-CRM114-Status: GOOD (  25.18  )
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

SGkgVG9tLCBIZWlrbywKCk9uIDMvMTYvMjMgMTU6MDUsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+
IEFtIERvbm5lcnN0YWcsIDE2LiBNw6RyeiAyMDIzLCAxNDoyMzowMiBDRVQgc2NocmllYiBUb20g
Uml4Ogo+PiBjbGFuZyByZXBvcnRlcyB0aGlzIGVycm9yCj4+IGRyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jOjIzMjI6ODogZXJyb3I6Cj4+ICAgdmFyaWFibGUgJ3Bv
c3NpYmxlX2NydGNzJyBpcyB1c2VkIHVuaW5pdGlhbGl6ZWQgd2hlbmV2ZXIgJ2lmJwo+PiAgIGNv
bmRpdGlvbiBpcyBmYWxzZSBbLVdlcnJvciwtV3NvbWV0aW1lcy11bmluaXRpYWxpemVkXQo+PiAg
ICAgICAgICAgICAgICAgICAgICAgICBpZiAodnApIHsKPj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIF5+Cj4+IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5j
OjIzMzY6MzY6IG5vdGU6Cj4+ICAgdW5pbml0aWFsaXplZCB1c2Ugb2NjdXJzIGhlcmUKPj4gICAg
ICAgICAgICAgICAgIHJldCA9IHZvcDJfcGxhbmVfaW5pdCh2b3AyLCB3aW4sIHBvc3NpYmxlX2Ny
dGNzKTsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IF5+fn5+fn5+fn5+fn5+Cj4+IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
dm9wMi5jOjIzMjI6NDoKPj4gICBub3RlOiByZW1vdmUgdGhlICdpZicgaWYgaXRzIGNvbmRpdGlv
biBpcyBhbHdheXMgdHJ1ZQo+PiAgICAgICAgICAgICAgICAgICAgICAgICBpZiAodnApIHsKPj4g
ICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn4KPj4KPj4gVGhlIGVsc2Utc3RhdGVtZW50
IGNoYW5nZXMgdGhlIHdpbi0+dHlwZSB0byBPVkVSTEFZIHdpdGhvdXQgc2V0dGluZyB0aGUKPj4g
cG9zc2libGVfY3J0Y3MgdmFyaWFibGUuICBSZXdvcmsgdGhlIGJsb2NrLCBpbml0aWFsaXplIHBv
c3NpYmxlX2NydGNzIHRvCj4+IDAgdG8gcmVtb3ZlIHRoZSBlbHNlLXN0YXRlbWVudC4gIFNwbGl0
IHRoZSBlbHNlLWlmLXN0YXRlbWVudCBvdXQgdG8gaXRzCj4+IG93biBpZi1zdGF0ZW1lbnQgc28g
dGhlIE9WRVJMQVkgY2hlY2sgd2lsbCBjYXRjaCB3aGVuIHRoZSB3aW4tdHlwZSBoYXMKPj4gYmVl
biBjaGFuZ2VkLgo+Pgo+PiBGaXhlczogMzY4NDE5YTJkNDI5ICgiZHJtL3JvY2tjaGlwOiB2b3Ay
OiBpbml0aWFsaXplIHBvc3NpYmxlX2NydGNzIHByb3Blcmx5IikKPj4gU2lnbmVkLW9mZi1ieTog
VG9tIFJpeCA8dHJpeEByZWRoYXQuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIHwgOSArKysrLS0tLS0KPj4gIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+IGluZGV4IDAzY2EzMmNkMjA1MC4uZmNl
OTkyYzM1MDZmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX3ZvcDIuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX3ZvcDIuYwo+PiBAQCAtMjMwMSw3ICsyMzAxLDcgQEAgc3RhdGljIGludCB2b3AyX2NyZWF0
ZV9jcnRjcyhzdHJ1Y3Qgdm9wMiAqdm9wMikKPj4gIAludnAgPSAwOwo+PiAgCWZvciAoaSA9IDA7
IGkgPCB2b3AyLT5yZWdpc3RlcmVkX251bV93aW5zOyBpKyspIHsKPj4gIAkJc3RydWN0IHZvcDJf
d2luICp3aW4gPSAmdm9wMi0+d2luW2ldOwo+PiAtCQl1MzIgcG9zc2libGVfY3J0Y3M7Cj4+ICsJ
CXUzMiBwb3NzaWJsZV9jcnRjcyA9IDA7Cj4+ICAKPj4gIAkJaWYgKHZvcDItPmRhdGEtPnNvY19p
ZCA9PSAzNTY2KSB7Cj4+ICAJCQkvKgo+PiBAQCAtMjMyNywxMiArMjMyNywxMSBAQCBzdGF0aWMg
aW50IHZvcDJfY3JlYXRlX2NydGNzKHN0cnVjdCB2b3AyICp2b3AyKQo+PiAgCQkJCS8qIGNoYW5n
ZSB0aGUgdW51c2VkIHByaW1hcnkgd2luZG93IHRvIG92ZXJsYXkgd2luZG93ICovCj4+ICAJCQkJ
d2luLT50eXBlID0gRFJNX1BMQU5FX1RZUEVfT1ZFUkxBWTsKPj4gIAkJCX0KPj4gLQkJfSBlbHNl
IGlmICh3aW4tPnR5cGUgPT0gRFJNX1BMQU5FX1RZUEVfT1ZFUkxBWSkgewo+PiAtCQkJcG9zc2li
bGVfY3J0Y3MgPSAoMSA8PCBudnBzKSAtIDE7Cj4+IC0JCX0gZWxzZSB7Cj4+IC0JCQlwb3NzaWJs
ZV9jcnRjcyA9IDA7Cj4+ICAJCX0KPj4gIAo+PiArCQlpZiAod2luLT50eXBlID09IERSTV9QTEFO
RV9UWVBFX09WRVJMQVkpCj4+ICsJCQlwb3NzaWJsZV9jcnRjcyA9ICgxIDw8IG52cHMpIC0gMTsK
Pj4gKwo+IAo+IEFmdGVyIGEgbG9uZyBoYXJkIHN0YXJlIGF0IHRoZSBjb2RlIGluIHF1ZXN0aW9u
LCBJIHRoaW5rIGRvaW5nIGl0IHRoaXMKPiB3YXkgbG9va3MgbGlrZSB0aGUgY29ycmVjdCBvbmUs
IGFzIGFzIHlvdSBtZW50aW9uIGluIHRoZSBjb21taXQgbWVzc2FnZQo+IHRoZSBmaXJzdCAiaWYi
IHdpbGwgY2hhbmdlIHRoZSB3aW4tPnR5cGUgdG8gT1ZFUkxBWSBpbiBvbmUgY2FzZSwgYnV0IHRo
aXMKPiB0aGVuIHdpbGwgbmV2ZXIgYmUgYWRkZWQuCj4gCj4gTWljaGFlbCwgZG8geW91IGFncmVl
L2Rpc2FncmVlPwoKU2hvb3QsIHRoaXMgYml0IG9mIGNvZGUgaXMgbW9yZSBjb21wbGljYXRlZCB0
aGFuIEkgYmVsaWV2ZWQgaXQgd291bGQgYmUuClllcywgVG9tJ3MgcGF0Y2ggbWFrZXMgc2Vuc2Ug
dG8gbWUuIEJ1dCBoYXZpbmcgb3Zlcmxvb2tlZCB0aGUgd2luLT50eXBlCmNoYW5nZSBpbiB0aGUg
aWYtY2xhdXNlIG1ha2VzIG1lIHRoaW5rIEkgc2hvdWxkbid0IGJlIHRoZSBqdWRnZSBvZiB0aGF0
CjotKSBTdGlsbCwKCkFja2VkLWJ5OiBNaWNoYWVsIFJpZXNjaCA8bWljaGFlbC5yaWVzY2hAd29s
ZnZpc2lvbi5uZXQ+CgpUaGFua3MgZm9yIGZpeGluZyBpdCBhbmQgYmVzdCByZWdhcmRzLApNaWNo
YWVsCgo+IAo+IAo+IFRoYW5rcwo+IEhlaWtvCj4gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
ci8yMDIzMDMxNTA5MDE1OC4yNDQyNzcxLTEtbWljaGFlbC5yaWVzY2hAd29sZnZpc2lvbi5uZXQK
PiAKPj4gIAkJcmV0ID0gdm9wMl9wbGFuZV9pbml0KHZvcDIsIHdpbiwgcG9zc2libGVfY3J0Y3Mp
Owo+PiAgCQlpZiAocmV0KSB7Cj4+ICAJCQlkcm1fZXJyKHZvcDItPmRybSwgImZhaWxlZCB0byBp
bml0IHBsYW5lICVzOiAlZFxuIiwKPj4KPiAKPiAKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
