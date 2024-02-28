Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30B70C54E49
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 11:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/9NwXzkvi+nj7I2WKCQ6KryERLYjc2Km8/kraf5/zIo=; b=ynuGoZUs9QaUzvDCoBvq/EkeSN
	MpZUyhNpQeosSj1eclKWNBw0o02noE7X1xwFLWlXdQROMXV4mpuj1XpwjeQ8uUBpQn9wIXmsVnPOe
	YmbYPFYlvY6HLp2O8E41oJFVHLFuO/gjiWHSvDVrrSNj4x5wbju4rStGmFdjFBvWrHSb3dDS38mCH
	Kk3O+I4Khav/qc8ZuTlQkmdBlr0P4fSN0wKwE6dD0qz/Cnxh2A9BP/epc1g+P57ZZyEMc0ZPsNgAt
	nmEftmcniaLHgsh8DunLovTJNGmKoX901+Rb8vFdbn2w5fiU+q8Ceijgq/mzmh8qfuHrDIFFo86Mi
	pVS1VtqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfIK0-000000093q2-1LBj;
	Wed, 28 Feb 2024 11:42:00 +0000
Received: from mail-he1eur04on20701.outbound.protection.outlook.com ([2a01:111:f403:260f::701] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfII0-000000093CK-2Wvi;
	Wed, 28 Feb 2024 11:39:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EdQSxcoROKqQnnSL5tdLAIyTLRwszZRq0aySW/uhIfmOwUa3++Frii2QKwzB+ESYxBJpf5C+MASFsZG4+r3ndcQtV7wH8ej9iMxPUqX/eDCy60KO9+qMO0fUQC85IU/D2LxV43dKpjpIrX7sVyDYKSVMFMbs4PtawT59+1suL8UqOGXFVrudOObIfiqbzL8oAHsFVM1FePCIj97Je3a6h9v9qIbXanRbJXI/zvasV7G/SzmV2AE0e2fcuIivZtuJELuQBa6mmM9CoQtqRFo9DK0i1OIfNYYHiJ5KfWxDzaKqqtT56t0q/Fs7AG1Hn2z+/my60jzTE7cHcHJVVVoAtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N79pY7a8XvsumP/57S6xx9c4Le1vN+02wdHxnI99CU8=;
 b=ZcMfS2YST/2W4vD2Vd9GNi4ga8aCkf6usmvWwzpqvs3jPRHiARxTanzn3iGpt5K2V91XGdlj1GxcVFRkgl6xqvpHQluh+ua3mVzE0bB6+zDAXQFAE/7vi//RzTEiDhhQuYC+qcPs+QsQlnkFR3dofCXyhHZm1nycT2RrE39PSSLN8R5/gviOPJWK4GueXzvyOX5sbKlPJ0Uq1lfqYyWuR8cxbkapc2kI5DXnZtC+2bXmj8ACcNM0U5BFLgIAes5TaDOmoSrIjfKvroMicXbwt63fktI+UwISNhX1WbBu1qy+en3CrfF7Gmp/v72ozTtbnB27Iu9uaOzrM891gIFgCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N79pY7a8XvsumP/57S6xx9c4Le1vN+02wdHxnI99CU8=;
 b=DzR1cCbqF7RWt5ChNVZsqApl4SsfRBQEWpoXtt18sLKER4TrglenQxGxi1XShZw8cSNPzSYaanTpaVheCHiDp2HGZ5gSB6ySjqHSqICSbCkxbnaNCoNXnZGSXWA/LW3hJvI/Ntl98oQIzTLg0nEI40HiLiDciCTN4xypXAVe4jpzCQiFe57Dp/6Wc3FQEpU2AHH548P53b2401LqkcT1qqg6h9+lvoNOxdsuYdSHnjC2FjYyDJWT4mzVAnF50XmuRWvDUihCgWy4r1eLGZ3oFNy+yWzQwYBy6E1B0hIfUyPOL32vb40RdWm5HxsBIoO9a3sqwoz0+J7zaRRPcjBHIw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS8PR04MB8482.eurprd04.prod.outlook.com (2603:10a6:20b:34a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.39; Wed, 28 Feb
 2024 11:39:48 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7316.039; Wed, 28 Feb 2024
 11:39:48 +0000
Message-ID: <5a45022b-a92e-46ad-96c2-d1413b4e1721@theobroma-systems.com>
Date: Wed, 28 Feb 2024 12:39:45 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: add Haikou baseboard with
 RK3588-Q7 SoM
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20240227164659.705271-1-heiko@sntech.de>
 <20240227164659.705271-5-heiko@sntech.de>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240227164659.705271-5-heiko@sntech.de>
X-ClientProxiedBy: FR4P281CA0190.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ca::15) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS8PR04MB8482:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d489998-13fb-4a63-9be9-08dc3851f7bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h1s86g8kt6qhZ2lh02WXPXt+LEazTWbGR8xf3Vr5mAOxnNcLeVdbozxIqZNRR92aHmwexVeUSRVjwYicxuAtVEurdMTAdWf1zwHcR67OADz+66pEYl8hqhmaCfxxqlGklDCiZie+VPRzOzb/tkfHUGWcJSbxMq+aIWykqgzEpOr56VyrNahZcTadW7p3WX/zbx8hHp/rBoWdFzuymjGnEQppz4jXSDJYDeLs6Z7WzGbzKjPM8r5IJm/sJkBjvdIpHcynSFxhlZ7nXJGW2CGfodz1P+m6tmiSrdsnKt5+ICZRBb7MuzCAIrplCW6kd2u2XE9YfrXMCibMrMmzOUSLIrpSfdU9qJoeLBi1Uq1wXyYEuGtVy8mHN5QWZC4wLxYZbnlciaGjyemYYCc4VwDMrduDRNosOXDwXsNxjE0qwsi5/FucHQfRvTnUqOAMK+dYS2CrWfUVYP1hzEjv7w1u6juiuJayV6bejipKMSe/g0hiDubvOpUDfE5mlSRfffP1brltuO7YPVSxhKE0sRLmFS6ElksO74Pm81Yspizh9cAWSZJ6k1ATWKGA339hNBw2u1tiOumqY39LI+caBjwVvE9um+Ytureyik2VA4cS4u/oZ4UzJ2W503LsFqjP7VXc0ob/0K2QiTdwZ+Tf/A+J+g==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NkJ4b1VlVThwSkhQbDA2QUFVbmwzS2wvbTZ3Umo3aVlnb2E2Sjg0MVhjeWg5?=
 =?utf-8?B?Y3d4QjY4TEVlMFZGWStqSWJsMzNrbnZtSG1OVWRDdkt2Rngyc0Jkb0p0RDl1?=
 =?utf-8?B?M3oreXo2N3ZGRVVDeWVQRUcyT29GdFd0OURYT2dkemZxOUJnbzFGbVVkSHFK?=
 =?utf-8?B?aFRUUDJOSHg4aFVvRi84MW42cm02Szg4eHllQjJMNjZ2bDc4WjRzY1lOUlF2?=
 =?utf-8?B?L1A0OGxZZWdKNHdlejNRbFBSL24rdUM2NjZmTWhlaHZkSDJuaFRxRUFvT25q?=
 =?utf-8?B?MFh4bmswYnROWGhwY2p1RldOWWFLQUJWaEVwSVJIQW9QT1hEelBKTGVKa1I3?=
 =?utf-8?B?ZndTNjZpVjR4KzhYaWdzS0xUV0dRZ3RjMHJvSUNXNkN2a2I5T1BsdjVTZ1I1?=
 =?utf-8?B?V2ZiNGlENStscU8yc1QzKzN6NDI3elo4Y2Z6UzNFSlJ2WjliU00yMk84VmFu?=
 =?utf-8?B?cVdRQjJyNll5RVpPR2NpaVV5WjdPUkNESkE5akxsbklCTGgzcjNqVGpSZ0ky?=
 =?utf-8?B?dG50aHFzdk84Sk9WakNZV3pta2l2eGhnWisxQVVJSnkyWklCcisvbFRmc28z?=
 =?utf-8?B?ZlRjMDVPNkZ6bnJyZWJFZjV6bTRXc21UYzZBS2tLbitDT3Q2OXNqT0JPd1Ba?=
 =?utf-8?B?QktSaWpXN0E4bVE3cTNkQ1dSSzhmdU1pY3dJVlJMWTdDR1crUFBKUFNkekEw?=
 =?utf-8?B?U1lQQjVOOE1tYnpyT0JMU2g3eTF4VEtSckpTZjRYZ1RoWDVidWV1dHFIRUp0?=
 =?utf-8?B?dHRxVThBMFcwaUYyV3EvQWV0RzlrR2xDYTJYQURjL1ZTMjc3dzhVK1NPOGZL?=
 =?utf-8?B?Y2d5TnFIQVIzUkNrbEZ4MGpSam1PTWdFSjhDclFMWkFiNUcyZEd2RXRrNW81?=
 =?utf-8?B?SWhtS1V4UjNjc3cybW5tWWpSR2tTcE5mNWNLRmkrMWZ4QUJWWlNaZWhGeGxC?=
 =?utf-8?B?djJ4eTExUXZKWk1DckpWbllnYjZWdWVoVjJXcjViV1JESWxLL3FMYmtwdmFN?=
 =?utf-8?B?ZnJVOXVnK1V0Njhla25NYVdzNE5xbTlqV2FZNDBUTDNBa1U5dGltaHVaYnA2?=
 =?utf-8?B?aE1iUXlMR21WUnNKKzBPZzJzeHZKb0JrZ1BXWVlQTThBU0VtdGVmWkdMcS81?=
 =?utf-8?B?bFNUTXduOWJQaHlQRHkzVU9Nb3RHeWdIQm1IU011ejVzRzU2OFM4SHY0ak9G?=
 =?utf-8?B?RDZvM2x0ZFpTMXBoUjlWRWpYc0JqSHNMWmhYZnF2cTJFdm1SbENnSFRIYitm?=
 =?utf-8?B?c3lsUzRpY1ZwYWlrN3F1WmNtbGk3YW54VEpIUHNiWFFXUHQ2NnJwajc3TmV1?=
 =?utf-8?B?SzB6WUN2NE4wcU05YXc1NldFN21sRy9sdTJlV2tXN0xpQlY4Q1kvUURhTXdE?=
 =?utf-8?B?ZDlFTzFZS1FFS2oyamFaTnVhNzBuemMzTzVQWUp4dVJleVFQTjdxUXA4RWdT?=
 =?utf-8?B?UlQ2SGRnbzdERHAzOUNUdkREcERTa002ZDFudUFDZEdZcUtZMWFqbWZxa285?=
 =?utf-8?B?bzBjMzZ6Z0l2R29BTHQ1cVpIUEpDWnAySDdKL2tsOENBREtuMHhjdjNrYXhv?=
 =?utf-8?B?UUFXV3NvaUZMM0crbjJKc2Y1aDJqRHJtNDkybkIrRE95d1lNallKZHBpZFJm?=
 =?utf-8?B?dXNnbzRTeWtocjRIMjJiOUFRb1NCQWQzUGl1ejhJNGtaN29BZFhZZGNIMVZ4?=
 =?utf-8?B?N2E3cG9DZTNaYlpOc1VBblJHUXRzNUlRSXo5TEwvdElLWHVMbWViNmExZ1d3?=
 =?utf-8?B?T3Y4Mk1rRXc0WVc0cFEwdVB4MVd2TWpEdTRZRWRDL2hvWHZMSXZjZWJ0enE2?=
 =?utf-8?B?ajZLSDMzSUpzNGxkK2lDYnNldklhWThpeWRTT0lUUU1IUWJmSmpuVVFFYmVC?=
 =?utf-8?B?N0hKYXBXMVJCRXdTVXc3QVBaRURMNm94ZTRrTFhBclhzcUFWWlZJVk1TbGZ0?=
 =?utf-8?B?bEVzNTV0UG5xa0c2emdiVXpIRlJKTktBbFowcEI4b042TVVZZDRQUGxYaW1R?=
 =?utf-8?B?OWEvMEFyT1AyczJWUkVldHZmVmdMRlVRNEZOdFJidTdqUkkzM2V1czB0TUti?=
 =?utf-8?B?S0FVVG5PVTUzdmFEdmJoa0o3U3dabzRkSFEwL1JteVFLV2t5YWNhbHlvZmNX?=
 =?utf-8?B?aHJGekcwbElVZW5wbDQ3NkM3eGh1d1R0UHpndEZPRjltUFVLRWF3eThtdFBQ?=
 =?utf-8?B?ZGM3dFBRc0F6WVJJWHFubWZqSksvVWZ4bXdEZlQ0SDBqQ2tRcU1PSWM3QVBo?=
 =?utf-8?B?QVlKYS9lbWlibHBXKzlGVXhjMUZRPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d489998-13fb-4a63-9be9-08dc3851f7bf
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2024 11:39:48.0740
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RjKQUz0DEI3ryDhVTFCUSP8+iiyV3FNYaQ2uBYhu+urPpmlY2Ura43Ppi6Mj2x9DmX6YZDvg/29hOO4Yhl452MzuwNfdsdbe3nxliJOCUrWF+UzBoKfkrsdE9DeQFj/6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8482
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_033956_835315_12221F39 
X-CRM114-Status: GOOD (  17.30  )
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

SGkgSGVpa28sCgpPbiAyLzI3LzI0IDE3OjQ2LCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBGcm9t
OiBIZWlrbyBTdHVlYm5lciA8aGVpa28uc3R1ZWJuZXJAY2hlcnJ5LmRlPgo+IAo+IEhhaWtvdSBp
cyBhIFFzZXZlbiBhbmQgzrxRc2V2ZW4gYmFzZWJvYXJkIGZlYXR1cmluZyBQQ0llLCBVU0IzIGFu
ZCBhCj4gdmlkZW8gY29ubmVjdG9yIGZvciBhIE1JUEktRFNJL0NTSSBhZGFwdGVyLgo+ICA+IFRo
aXMgZHRzIGlzIGZvciB1c2FnZSB3aXRoIHRoZSBSSzM1ODgtUTcgU29NIFRpZ2VyLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5lckBjaGVycnkuZGU+Cj4g
LS0tCj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAg
IDEgKwo+ICAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10aWdlci1oYWlrb3UuZHRzIHwg
MjY2ICsrKysrKysrKysrKysrKysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyNjcgaW5zZXJ0aW9u
cygrKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LXRpZ2VyLWhhaWtvdS5kdHMKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFr
ZWZpbGUKPiBpbmRleCBhN2IzMGUxMWJlYWY0Li5hNDRhOWUxNWM5ZjYyIDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4gQEAgLTExMCw2ICsxMTAsNyBAQCBkdGItJChD
T05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4LW5hbm9wYy10Ni5kdGIKPiAgIGR0Yi0kKENP
TkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODgtb3JhbmdlcGktNS1wbHVzLmR0Ygo+ICAgZHRi
LSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OC1xdWFydHpwcm82NC5kdGIKPiAgIGR0
Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODgtcm9jay01Yi5kdGIKPiArZHRiLSQo
Q09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OC10aWdlci1oYWlrb3UuZHRiCj4gICBkdGIt
JChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4LXR1cmluZy1yazEuZHRiCj4gICBkdGIt
JChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1jb29scGktNGIuZHRiCj4gICBkdGIt
JChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1pbmRpZWRyb2lkLW5vdmEuZHRiCj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXRpZ2VyLWhh
aWtvdS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10aWdlci1oYWlr
b3UuZHRzCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi5jOTM0
MDkyM2RjYjk4Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LXRpZ2VyLWhhaWtvdS5kdHMKClsuLi5dCgpJIGp1c3QgcmVhbGl6ZWQgd2Ug
aGF2ZSBvbmUgcmVndWxhdG9yIG1pc3NpbmcgaGVyZToKCiIiIgogICAgICAgICB2Y2M1djBfb3Rn
OiB2Y2M1djAtb3RnLXJlZ3VsYXRvciB7CiAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJy
ZWd1bGF0b3ItZml4ZWQiOwogICAgICAgICAgICAgICAgIGVuYWJsZS1hY3RpdmUtaGlnaDsKICAg
ICAgICAgICAgICAgICBncGlvID0gPCZncGlvMSBSS19QQjUgR1BJT19BQ1RJVkVfSElHSD47CiAg
ICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKICAgICAgICAgICAgICAg
ICBwaW5jdHJsLTAgPSA8Jm90Z192YnVzX2Rydj47CiAgICAgICAgICAgICAgICAgcmVndWxhdG9y
LW5hbWUgPSAidmNjNXYwX290ZyI7CiAgICAgICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1v
bjsKICAgICAgICAgfTsKCiZwaW5jdHJsIHsKICAgICAgICAgdXNiIHsKICAgICAgICAgICAgICAg
ICBvdGdfdmJ1c19kcnY6IG90Zy12YnVzLWRydiB7CiAgICAgICAgICAgICAgICAgICAgICAgICBy
b2NrY2hpcCxwaW5zID0KICAgICAgICAgICAgICAgICAgICAgICAgICAgPDEgUktfUEI1IFJLX0ZV
TkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+OwogICAgICAgICAgICAgICAgIH07CiAgICAgICAgIH07
Cn07CiIiIgoKVGhpcyByZWd1bGF0b3IgaXMgcGFydCBvZiB0aGUgVTExIElDIG9uIEhhaWtvdSBh
bmQgdGhlIHNpZ25hbCB0byBlbmFibGUgCml0IGlzIFE3X1VTQl9PVEdfUEVOLiBJIGd1ZXNzIHdl
IGNhbiBhZGQgdGhpcyBvbmNlIHdlIGhhdmUgU1cgc3VwcG9ydCBpbiAKdGhlIGtlcm5lbCBmb3Ig
dGhlIFVTQiBQSFkvY29udHJvbGxlciwgc28gbm90IGEgYmxvY2tlci4KCj4gKwl2Y2M1djBfdXNi
OiB2Y2M1djAtdXNiLXJlZ3VsYXRvciB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4
ZWQiOwo+ICsJCXJlZ3VsYXRvci1uYW1lID0gInZjYzV2MF91c2IiOwo+ICsJCXJlZ3VsYXRvci1h
bHdheXMtb247Cj4gKwkJcmVndWxhdG9yLWJvb3Qtb247Cj4gKwkJcmVndWxhdG9yLW1pbi1taWNy
b3ZvbHQgPSA8NTAwMDAwMD47Cj4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8NTAwMDAw
MD47Cj4gKwkJdmluLXN1cHBseSA9IDwmZGNfMTJ2PjsKPiArCX07CgpbLi4uXQoKPiArJmkyYzUg
ewo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICsJY2xvY2stZnJlcXVlbmN5ID0gPDQwMDAwMD47CgpJ
IHRoaW5rIHdlJ3JlIHN1cHBvc2VkIHRvIGhhdmUgc3RhdHVzID0gIm9rYXkiIGFzIGxhc3QgcHJv
cGVydHkgYmVmb3JlIAp0aGUgY2hpbGRyZW4gbm9kZXMuCgpSZXZpZXdlZC1ieTogUXVlbnRpbiBT
Y2h1bHogPHF1ZW50aW4uc2NodWx6QHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4KClRoYW5rcywKUXVl
bnRpbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
