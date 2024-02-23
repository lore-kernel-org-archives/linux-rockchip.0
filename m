Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C48B6C5478C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Feb 2024 13:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hg2nZ1ZxHX4YelwFJqSryBrTxpOOWz0EByFIdWyFQHk=; b=ZyNhJnB9cu5Wh+GErtFYJh05Fy
	PaVLstaa12/UsU/UlPsQ4pPg53CdvCI/iSaC4BpSiIFEGutZHwUi9RmkIHEDgjq85tIhnyi6fuukS
	JopUbzLXrCNZ96o7wqS23WBeKI0L0s6pLjFiI/NVhzowcE81Toc1fRNAeEsTlhtfl2RDkMeqzyFPa
	ijMEOS/efMR6xALDUbiwQbTXyE0EuglEdRa5NQpTsXA7pgtuhQKxrJEWGePphVYphoFVpDd39EXQC
	zGxewFNgN32e6NpLbOwWKW/DBi0rNSgQAbNEYpqMJ5SriTeWjCrBh6rll1ZicFa7G/gIQE9HlGIbE
	t4W2IAQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVKS-00000009TXN-04Iu;
	Fri, 23 Feb 2024 13:11:04 +0000
Received: from mail-vi1eur04on20700.outbound.protection.outlook.com ([2a01:111:f403:2611::700] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVK0-00000009TOQ-27Qo;
	Fri, 23 Feb 2024 13:10:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hQUzh88AvFtrD6njhuDnl8RDaBDZmDDVcGwdK5kCbE9R7X124rGJyC6TV/pIy6zKq/cq/o6/KwcxyF9VfJvYCgtr2TvxJYDuZbKJt26+54v3oypxtO93n0TqVu2H326vMNMZ8wRaLio7t5DLL4/TOMBaPvMUPkKNaD+T3I1xr7SaXjPGFx3iC4jeYMW+iSXbsXAdtE8JiGmsAbLvLqUUNk/mB2skQdEh6UV5pG1e0A3HHJraCU2TC4I99HpQ+nFQJ/rgCxoE0bdxGa+xS3UgpHea+LdazyhMqgdY1zVps8zHIWdCJjsQf7MOezqzHPQN6FIJeqkqzqIUNROEisiWtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h3kOLtuoNtwSoEE/BpxFI3fM08A5Vd+Wc2BwQF0qxc8=;
 b=G+oWsMRr7C6AL24y7Wf4zb+N+VmtQwhuZc2Zjo2ogq/i5stZNPl2h4K8h6B3DMb8mQ6LIQuAUl1z2rP0CGVWGL+yNpekzYl9JxNk5X96t2ylO6puzyE1PQTy2IuN6MrgZLBpW+vMOtPKAtZ06GVzbJ7hkEw6ZSuvTtjoYm5i8KRUVfNJ1G4EuuLYVD5LCNXyYKfWZAQHgBDtOu2zv/WvNaH3SZ3DiNNwGwGlcMfJwm/ge/dcs+AoH2GARVKzaJS3IVfpeRetqxzqu41CUtVu1g6VxJG2ENcp/ZG5A1r8IrYe9ukvRDxjBWumm+Dg2gCeAUbE9eG4unLfYCcRMfYsLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h3kOLtuoNtwSoEE/BpxFI3fM08A5Vd+Wc2BwQF0qxc8=;
 b=f5RjaxiEHUgKt9xQLQ/l37pyHQ2gljzftT7b8wlMIKhkxQO0tvTZ0jh3+m/IaH42BEaEaX07KU0Eli2MBwE7oThbZ/UBJxRqAD/nUpURZAY82bKaGKcu/F22NVWFfWICdHvlYIS1yutcKhOmWfYJH67QMlb+rrNdPX6Ov/Qun/B28dHSPaNbs0sgIflnvNmytGov6F/U3srBoMl6TXlHwnhqrWPvFd+j9jy4t/C+ED8pZhHsqcV000vzxTP+WFfz2ZYZkk2r4G5cOLuBCokNKsYPI/w0wcgkyNxdUtmnf9lDE1t5oI2uarzSsCvE0GsziRVigZlOp84wVrRiPK8ElQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS8PR04MB8102.eurprd04.prod.outlook.com (2603:10a6:20b:3f3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.24; Fri, 23 Feb
 2024 13:10:18 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7316.023; Fri, 23 Feb 2024
 13:10:18 +0000
Message-ID: <6f76ffab-69fe-4afb-9d7e-d3cdfe37c28c@theobroma-systems.com>
Date: Fri, 23 Feb 2024 14:10:16 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] iio: adc: rockchip_saradc: replace custom logic with
 devm_reset_control_get_optional_exclusive
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Quentin Schulz <foss+kernel@0leil.net>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Heiko Stuebner <heiko@sntech.de>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>, Simon Xue <xxm@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240223-saradcv2-chan-mask-v1-0-84b06a0f623a@theobroma-systems.com>
 <20240223-saradcv2-chan-mask-v1-3-84b06a0f623a@theobroma-systems.com>
 <CAHp75VfVTJsQDwaPoPgGiT6jnymXAR3WpETqaKai8rXAC70iLw@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <CAHp75VfVTJsQDwaPoPgGiT6jnymXAR3WpETqaKai8rXAC70iLw@mail.gmail.com>
X-ClientProxiedBy: FR2P281CA0147.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:98::12) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS8PR04MB8102:EE_
X-MS-Office365-Filtering-Correlation-Id: c8ea6fa1-6e14-4bc1-a350-08dc3470c845
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 36ZRWF0wG6ixhqHKzc/oJYMbXHIXCbB9Q3p/SoRNus9uJtlNotxLvVMxSKyijobJkoYCyDMOAqi+VR4zE7QZI5yJV9I4SjS8QebzHGN4+INIGnPcD5uWIK2J8S71pLgziMQn0VYGBQQMh5j3+iAeMcCQIgf5qA/vpy12CJo9U9CCARd3zq2LQxu6mKCjMbxjRWAkxnXZr17ivyG8RZ4DkjvEKAs+7OhzFa+jV9WgKHPWxhqAi6KS5rIJsgdKykceILcX/fYqO5cr9t+IP+hViS4DIAj3pTM+uLuN8svWZhtPPpUMMCsDFpuLpgjrASL3uvDBvwexNx69BqdlLJTWnzZc4zRxoglO+mJVKPatP6nNPLSe0Be1u23jAjZ0ZEGZxw+nc5HJo+BbxZFFIcJSxwOnl87Ms0wgMfiiJlxMM6rf7W27W5EhTq1vHs5YATTYYZyJKzbPqjRshkRWZu+6YJkml6xOxvZE6j0n1xn1ei/lpmFTin93ndDwvvZn9KmS88mxHpLJRVFPJ1BLbnVPM3fhfasembdCzfvZ5BZ4mpM=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZVlaaERwZXRwQ3Y3bnk1cTdiWGp1MjNUcW14QjcxSUJLTTVkcW5EQ0pnV0dG?=
 =?utf-8?B?QU5jaGlucnZraHpadzBlK1krT1BGbjRNRFZCeElrMUpaSWNralJXeTNiOHd3?=
 =?utf-8?B?eFk3a0tuL3NWQXFUVnRjTWhKaVQ4UnVTTExCamVWT2ZGWFR1Y0Z1UTN3SDVM?=
 =?utf-8?B?RFZ2d1pZcHJWMjNDYkhidTM4R3ZSZmZRM1FwcmJ6V3hDMU9zaDZSb2NMZVNC?=
 =?utf-8?B?UXRMZlkveHNlZnZ6WXV1NXladTFVMHlHUzhsWjI5TlpVMGE0RjU1WHVRQllk?=
 =?utf-8?B?WjRud2MvcTc1bjJpVWk3aVFPM1JrekFtdnB4eHphRlE2RTFXMXdBTGlCWURi?=
 =?utf-8?B?anBaMzYwY2RjcXRSNGtlT3ZTQjNRNEd1QzJuS0MxRVpjaDNtTUovREE0OXov?=
 =?utf-8?B?Z1BQRlNBaktLNnZQS2lTZENOMmUwd3hDc2xiK1ZuTVRGZy9QV09uZ3ZwWDda?=
 =?utf-8?B?d2h3dk0rMVZwNDU0N0FreHk2M0poemU2QVFua3dFcExwNEZobGpZajUveWN2?=
 =?utf-8?B?cGxwSzlxdlNJa3lFWHhiVnVuUk8zQ2Q5b2dLL3RURmF4ai9NT1RxUnFxTHVS?=
 =?utf-8?B?Wkc1bGtTRnlUZDViUWQySUhwUVBUUmNONm5Ma0taMmpSTjlGVlhOK2NkZkZj?=
 =?utf-8?B?MHUrV01wS0ZFdUxCMnpZdFBtc0d1RW1MT0E5ZXVNYnVVR0xOMXdIU3ZOUjRW?=
 =?utf-8?B?Z1pZdVJubGM4cUtQWU95ZEVRZUxEeUg5cEFMOWw3UnV1Q0IzYkMxSzF3UEpr?=
 =?utf-8?B?K1QyQmRzeTZBRDNlMkFVaTZ5SnN3dmd2QTBodVIvOVgwa2N2bTMzSnFFT0V0?=
 =?utf-8?B?TnpQK1IzVUlTV1hyNVFmL001aVNqQ2h4S3RnUTV6d2Z6dFpKMFZYR1hkTUR3?=
 =?utf-8?B?eVEvTmd3dHorS0JWYUQrY25JV2YvamVRQ1o3ejBJNXJDMTBnNkVUeWo4S0ZU?=
 =?utf-8?B?VXIwM2ZLOUZXUmFnMmxrOFd6QUVhODExTE5MMVJBWGcwb2dIMlltbDFLams0?=
 =?utf-8?B?aHF4ZStXNGE1Y3pxUmtCUTJrQlZpSDdzbmt4NUhQTTRrM05SM2FxSmJrM1BE?=
 =?utf-8?B?VURLeTd4ekRrcGNFMDJkdkpNUXBDMkhMcnZYTGd3T0JBUE1CWnIrRU15azBU?=
 =?utf-8?B?WmJqS2ZjbWc3WUpSSDZydnNlaWxTMWN5NHN1cUZKVkttUHF6NzJjYlZCN3Bw?=
 =?utf-8?B?YnJXV3pkTWFmV2NzTUl1V2JNZTAzT3V4a1FWUms0ZTBROEdEaU1DUXQrbDc1?=
 =?utf-8?B?STZzYWhSMzJiVDcyT0JiUmVWc0ZqR01KYWluUnVKOGdmcXdPTm1XRG5Xa1Ix?=
 =?utf-8?B?ZFFoSUVZK25LaEV2aG5seDdKWXZ5WER6M3NMcE9XVjA0V1BDRDdYdlZlNkFQ?=
 =?utf-8?B?Um1BcGp6NnVyUVl3UFNVc1JVd0RnaFVKZFY3NWVmNHdpLzdOZzZmU2wyR21u?=
 =?utf-8?B?UmhUcHNYWHUzNjd4Yis0ZlhQWTYyYVR5ZFFneFVDUUZVck5Na1ZXSGhtMTEw?=
 =?utf-8?B?S1E3Rm5FRDNad0swMEZqUENWeENMYmRYVFdlTHE0d0Y3Yk1Qdk90aXJhckhP?=
 =?utf-8?B?a0hGNGJKL010dElEVmpINE05c1U0eHBwVFZ5dFVZVGVVeUhDTmFlMzBxWDk2?=
 =?utf-8?B?dCtxYkJTUkNsN052bEhrYzRibm44Z0xTTUNIOVZ5bjlIdk9XdlM0Z2g0WEc3?=
 =?utf-8?B?eGNBb0s4NjhLaG82UnN1Tmp5eTJVUm5lSnJNaVp0YjM1TmhoRzh0SGVNc2ps?=
 =?utf-8?B?RTRLblcxa2xkYWYvK1FPZmFNeFRrK0thZlFoRHNxREEvbWJMUTV3U2tNZmJ3?=
 =?utf-8?B?UHlrMWk2Q085Z1JXWFI0MXJqWXVHbGo1SzNFVUkrWENZWXRxbDZGSDFGVmxP?=
 =?utf-8?B?WTJJeGZaRU93RXYvaS9aTy9EKzBEN2cvRDdWM0lvbEg0WnJXYng4VEhMZURp?=
 =?utf-8?B?UGs0YUtqUDBxNlNmV2xBQUFlM1o2ZlhlWVdraTdsVXFvem8xcGxpMW1VdDE5?=
 =?utf-8?B?QmxxbERMVDhRa1NnK0lnTFZBMXFnRkxzUXZMdVo2aTRJRXRuT0c0eU5VZE1E?=
 =?utf-8?B?QzJUUDdiV2IrMkdPWWcydDVNU2hvcWFhRkxENW1jWHQyZUZEYjVBZXFMa3Na?=
 =?utf-8?B?dW9ScGpHL2R3REJPMWpFZWVUTzdFem9YYVZHSFBMbjJLQU1VT2V5RU9NaU9J?=
 =?utf-8?Q?ri3g6KjuuVmF3g1IYdSes/Y=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8ea6fa1-6e14-4bc1-a350-08dc3470c845
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2024 13:10:18.2303
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZjsRtn2kFDvwwEHPcVkMBqgtsJs/mA8YmRuecK6os2tdOGuGObnx0iSsx5posME7jE2fQ/i+g4XuaKQmXPoCpNoz148h3KugqEh3SHp5SpMPoB9S8suiA5/JxodiIXLY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_051036_604389_2F6C2FE4 
X-CRM114-Status: GOOD (  14.84  )
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

SGkgQW5keSwKClRoYW5rcyBmb3IgdGhlIHByb21wdCBmZWVkYmFjayBvbiB0aGUgd2hvbGUgc2Vy
aWVzLgoKT24gMi8yMy8yNCAxNDowMCwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+IE9uIEZyaSwg
RmViIDIzLCAyMDI0IGF0IDI6NDbigK9QTSBRdWVudGluIFNjaHVseiA8Zm9zcytrZXJuZWxAMGxl
aWwubmV0PiB3cm90ZToKPj4KPj4gRnJvbTogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6
QHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4KPj4KPj4gZGV2bV9yZXNldF9jb250cm9sX2dldF9vcHRp
b25hbF9leGNsdXNpdmUgZG9lcyB3aGF0IHRoaXMgZHJpdmVyIGlzCj4gCj4gZGV2bV9yZXNldF9j
b250cm9sX2dldF9vcHRpb25hbF9leGNsdXNpdmUoKQo+IAo+PiB0cnlpbmcgdG8gZG8gaW4gaXRz
IHByb2JlIGZ1bmN0aW9uLCB0aGVyZWZvcmUgbGV0J3Mgc3dpdGNoIG92ZXIgdG8gdGhhdAo+IAo+
IGRvIGl0IGluCj4gCj4+IHN1YnN5c3RlbSBmdW5jdGlvbi4KPiAKPj4gQ2M6IFF1ZW50aW4gU2No
dWx6IDxmb3NzK2tlcm5lbEAwbGVpbC5uZXQ+Cj4gCj4gWW91IG1heSB1c2UgdGhlIC0tY2Mgb3B0
aW9uIHRvIGBnaXQgc2VuZC1lbWFpbGAgaW5zdGVhZCBvZiBwb2xsdXRpbmcKPiBjb21taXQgbWVz
c2FnZXMsIG9yIG1vdmUgdGhpcyBhZnRlciB0aGUgJy0tLScgY3V0dGVyIGxpbmUuCj4gCgpUaGUg
d2hvbGUgcG9pbnQgaXMgdGhhdCBteSBTb0IgYW5kIGF1dGhvcnNoaXAgaXMgZnJvbSBteSBwcm9m
ZXNzaW9uYWwgCm1haWwgYWRkcmVzcyB3aGljaCBpcyBsaWtlbHkgdG8gY2hhbmdlIG92ZXIgdGlt
ZSwgdGhlIENjIGlzIG15IHBlcnNvbmFsIApvbmUgZm9yIGRldmVsb3BtZW50LiBCYXNpY2FsbHks
IGluIHRoZSBldmVudCB0aGF0IEkgY2hhbmdlIG15IGVtcGxveWVyLCAKSSB3b3VsZCBzdGlsbCBi
ZSByZWFjaGFibGUgYXQgdGhhdCBDYyBhZGRyZXNzIHdpdGhvdXQgaGF2aW5nIHRvIG1vZGlmeSAK
dGhlIC5tYWlsbWFwIGFmdGVyIHRoZSBmYWN0ICh3aGljaCB3b24ndCBtYWtlIGl0IHRvIGFuIGVh
cmxpZXIgdmVyc2lvbiAKb2YgdGhlIGtlcm5lbCBmb3IgZXhhbXBsZSkuIFNvbWUgbWFpbnRhaW5l
cnMgZG9uJ3QgcmVhbGx5IGxpa2UgdGhpcywgCnNvbWUgZG9uJ3QgbWluZCwgd2UnbGwgc2VlIGlu
IHdoaWNoIGNhdGVnb3J5IHRoZSBJSU8gbWFpbnRhaW5lcihzKSBmYWxsIAppbiA6KSAoSSBkb24n
dCBtaW5kIGVpdGhlciB3YXkganVzdCB0byBiZSBjbGVhcikuCgpDaGVlcnMsClF1ZW50aW4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
