Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 276D0C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Nov 2021 00:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8QMZP7q6Msl5I4tX0a3JjQnQNzQLyJvIC0obRnY2Xw=; b=ojB7jHyRyV/obJ
	AWaOGCYSFHKY0PzOxVfkPq/mohul3/5M1vXEBSmSrwtO8tuLx4zC6gCtEHEOJ/EYGl+pbQ5bnZbNs
	N+4cfFqAvLgEqpk7L88avJv/CcvzRjH9W3FJiAQJBdulo+UgRJEyc89Fi4O6TZNgxCwrcJPLUwOLG
	0D1scQgffh4EGiAfx1zXuSDX30yOgeWipiB5rbKyP+BBDSdGifyJDXcBpB6oxIhh3KrJb0ucc4H8G
	6bCb3xDlHzwmAYX4WC3VI/eY4B7b8xbGza3Hu+kUuGptkEmNmLqRCFhKmc+4rDMNHSTPS2kKRNa/+
	e6w7swNbJMAX4xPOY4fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpJp2-000YAr-4n; Tue, 23 Nov 2021 00:38:08 +0000
Received: from mail-mw2nam10olkn2013.outbound.protection.outlook.com
 ([40.92.42.13] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpJoz-000YAG-0k
 for linux-rockchip@lists.infradead.org; Tue, 23 Nov 2021 00:38:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YMjMlQzjZkuzU7qD0WikmWQGsHb0nBzu7SsU6z6Aa0vFvwwrCTVjbsukZPi+irPXpXLQVb1GsCvtW32sKJ+MMx0W+2gd9NrhyekWvBmah84l/A5aefJKiqJO0o6ARYkKlxet/6pMN/TWKQQxeQJJUlFszgeHVVWrsFrMBi2/s6ic/rcEDLAt53xSqAugO6aUuRm5+hi1vt56wgw29vSxzVJOaueb6gnnqerrIAPEwXGYBtOzxHtKJJIGRzPJgXbjUzUXjLCh26Sc7eSRdtAHDx5AGLKd+pnr5ekY7vLgRb7M9hDgxeVPUFHUo5wHRzbvGuzyKdhpU4M0IUm62M3tuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mO6Igq3b1XVv4tsOZg6i15C0vwc77ms5F6QRMBUyX3w=;
 b=mPAmKokLhwxFHnnV1cx86fKwTGMW4lu7lISb4UNi/nfh6Ca6ATcG2h1cKJnYnFLSNBje3hoR7u/x07CEgC1potmBCoFLuOUZFj9RDEDBMbYE1tQjGzMycvjE/tl44hhxg6/jl7PkLcy6SzTCs0J03qEDGclv6tQxqlQ37p8Xn7zqnhtjtVO+QkCGWQc0AQn3T3UsPPqGmRikKmhtpNUNxEUDu3rXHoJJXYjSJUQPZjyVTYunbFN8KxtwO13msdUR/ypnK7C37qqt06CipbQcwbmj3RDMNw6MXFUeiLCnBvOv8il+xWalWB4oQZuJDWQffpJYm3OJVrl1XP7w4pm3BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mO6Igq3b1XVv4tsOZg6i15C0vwc77ms5F6QRMBUyX3w=;
 b=cgpiCGawU39Zram6YCGIqiQBJ2haJdr+Nl4vnSgvKlRJNoB/fZQbsXfMVhOYNuerhvgcrqzVYjLbpOaarCkaz6EYX7zVZ3pXL4+Jbzonh+Pwxsjej/B29a9SXzyjhet/NcfIyzVPg66ZklE1Sqs3ZmMZay5oY9xB6XbRgMJfDsdvAyABDQJVD38nv/dELfMrC+C59Qyvmlo2FLziAOvy6+Y2QglROD3N69AfDmjyQNK310g+PRXoyTW3koUlTdmOu2YUCUJpW1niZoWwIXhGdmUNCjRTzn8oGtN31nZdD7TJx+m11mbpjD/8QC0ejWppss2pPeoxuqmF5bnCwQNTyA==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by SA0PR06MB6924.namprd06.prod.outlook.com (2603:10b6:806:bc::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.19; Tue, 23 Nov
 2021 00:38:00 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::c049:32fc:5638:f0f8]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::c049:32fc:5638:f0f8%7]) with mapi id 15.20.4713.025; Tue, 23 Nov 2021
 00:38:00 +0000
From: Christopher Morgan <macromorgan@hotmail.com>
To: Mark Brown <broonie@kernel.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Jaroslav
 Kysela <perex@perex.cz>, Lee Jones <lee.jones@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>, Takashi Iwai
 <tiwai@suse.com>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] ASoC: rk817: Add module alias for rk817-codec
Thread-Topic: [PATCH] ASoC: rk817: Add module alias for rk817-codec
Thread-Index: AQHX3ulKAFEi6BAvM0C4EiRy2L3q06wQPEWAgAAJsoA=
Date: Tue, 23 Nov 2021 00:38:00 +0000
Message-ID: <SN6PR06MB53420308B0D8742B2CFC15DCA5609@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <163762559549.2471670.593188809347574663.b4-ty@kernel.org>
In-Reply-To: <163762559549.2471670.593188809347574663.b4-ty@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [hIWh4I4sI86dZzWKlaC87+OCw002zniAPcpTYdFCRwdGMmW0D6LWDt66Vvu2q++PYLXLhkNsYhg=]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e4a456f-cfe7-4d7b-eeb9-08d9ae1980cf
x-ms-traffictypediagnostic: SA0PR06MB6924:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 67nmHEQZlkNPl2Y0tV+sSEe1hy1duIcbV7/nMYepRnYnOmXFCZ0GHlwBrmdzS7c26RCauGX/d91ZV5tv/chm1REZOSLZTF4JVuFlYJWmSnfriYrlM/PFDnKTzZUGopq7pZWTjbbgA7PRUxXh1uysrCz7shxMWaeOClZk7ZPUcsGg3hii7MP24nUz1Cuc85kZkMKvxWn0Ys7emO0n9Z6Gn5qh4WGWMS+jLiB03Xdxuyh4M9G2z0vI/aZ+0S++KzQSU8IZLuqEjU8jCxHN4qypGoOZU5FCjDSnd1qGtu7bJ04zFpfPA3VuVkERSfi0v6b7xlVNo8NcHIFN4hsKSeXVB9fYOYCigULkvmAgYkID2SFa6CkwrDZHsJ5hKUv+zj6citx+fUQ2j+TZUVN6MUrdZgvEs8MvcZIuazcGpysZTJz0wioRW6mCOsU+rxycWDnddmuntBphAfAT77RUUCwV/pfaecG1BkeGm7fUQgZrBTJICHLo5eJIPVGt2lC3U3uLpJJEXvcbdb/wEicmbSxmMcCVdEZJIIpWolc5aauce1Dm9jtxjalpDFQ4c1DxXhL1Lj4z5NVj6aMiFCPWTCZes6CiVg2MbsjCOqu872KINykkB0Wfj4JvzrZdB2VCO1ga
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: LMzJEXxHYRpFaV3AUTI9An1F6CxZ16bUD7ajMEMcyB21SqDRllRaLlixyID6xcfCW/H+6yK25CuJefR22c/UGS0yXIwDjbt1FZoiNGndsNwAEEE+LF9XvVQL8Qsf6KP3T/iYLeluQdAQJjLBFFr/uC5qCD8N1ymYjV1Vyx6NRKcYFqJdjLa+BMXF6IXvgB/OAJfKcLbp+zuW/CCXx95zoSWtd4Mt9PVxww26Jk8UUx0BErqLcn3rD96nP+lYXACBlnddjNNANJMQdneYM/ntozauikrIfr0aihEjbG2iFvBiIGUoksnLutFfB53DVoq4RBqQ/A5ysSTf8kySOih/4PRqEVfXEzKuZprWc5NITyj2VQwaX2BXwIhGJVV+9dsdELVvedjG35NVl18NqZSfRayKoQqryKD2TAG7WYa8UkAuBQWYInX7NaKH5DVuU+GRZWks8NopCUNR107W0lLyGh9aU5tsbhzxsGSmBMq+dD0tiKLFpWUfmnzuSgvgBMany66HvH8y7a0Opwp0Gm9gotMRIV10h5IwslknbafMBoei0jNBYycOEAttbiVfDzfWTc8hwY948WI1UyYipNJPtIfTmLm0wdx7a/D9kl8u2au/e6Vv7PtZK0CvFzP96zlnUR1rZKuWbvL+vL/B9GLWG/OzchCkn8hXxUUzSA9K7oH1YDX6XluubVOrb6v9zyO1wtfkeALgmyjX5n827IvhL/Xijg0sxGDzwWgXoUTZJbr0/9SKirXcDw0xNgFJoE8ScvI8agXEY5ymobxEAHgqdA==
Content-ID: <09AE83264F2EE246AAA030715FF8ABE8@sct-15-20-3174-20-msonline-outlook-94543.templateTenant>
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-94543.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e4a456f-cfe7-4d7b-eeb9-08d9ae1980cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2021 00:38:00.7032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR06MB6924
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_163805_192347_CC4FF33D 
X-CRM114-Status: GOOD (  22.13  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SeKAmW0gc3VyZSBpdOKAmXMgb2theSwgYnV0IEkgYW0gb3V0IG9mIHRvd24gYW5kIHdpbGwgdGVz
dCB0aGlzIG9uZSBuZXh0IFN1bmRheSB3aGVuIEkgZ2V0IGJhY2suIFRoYW5rIHlvdSENCg0KPiBP
biBOb3YgMjIsIDIwMjEsIGF0IDU6NTkgUE0sIE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9y
Zz4gd3JvdGU6DQo+IA0KPiDvu79PbiBTdW4sIDIxIE5vdiAyMDIxIDE2OjA1OjIwICswMTAwLCBO
aWNvbGFzIEZyYXR0YXJvbGkgd3JvdGU6DQo+PiBXaXRob3V0IGEgbW9kdWxlIGFsaWFzLCBhdXRv
bG9hZGluZyB0aGUgZHJpdmVyIGRvZXMgbm90IG9jY3Vycg0KPj4gd2hlbiBpdCBpcyBidWlsdCBh
cyBhIG1vZHVsZS4NCj4+IA0KPj4gQnkgYWRkaW5nIGEgbW9kdWxlIGFsaWFzLCB0aGUgZHJpdmVy
IG5vdyBwcm9iZXMgZmluZSBhdXRvbWF0aWNhbGx5DQo+PiBhbmQgdGhlcmVmb3JlIGFuYWxvZyBh
dWRpbyBvdXRwdXQgd29ya3MgYXMgaXQgc2hvdWxkLg0KPj4gDQo+PiANCj4+IFsuLi5dDQo+IA0K
PiBBcHBsaWVkIHRvDQo+IA0KPiAgIGh0dHBzOi8vbmEwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5v
dXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGZ2l0Lmtlcm5lbC5vcmclMkZwdWIlMkZzY20l
MkZsaW51eCUyRmtlcm5lbCUyRmdpdCUyRmJyb29uaWUlMkZzb3VuZC5naXQmYW1wO2RhdGE9MDQl
N0MwMSU3QyU3QzEwZmM1NmRlYTY5ODQ4ZmYyMDZiMDhkOWFlMTQyZmViJTdDODRkZjllN2ZlOWY2
NDBhZmI0MzVhYWFhYWFhYWFhYWElN0MxJTdDMCU3QzYzNzczMjIyMzk4OTE0MzUwMCU3Q1Vua25v
d24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pC
VGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MzMDAwJmFtcDtzZGF0YT1oOUZmMWdJJTJCODl6
aUpIJTJCJTJCTkFkUmZScVhOZlZ6TTFSS1N0RDdVTjN4SzdZJTNEJmFtcDtyZXNlcnZlZD0wIGZv
ci1saW51cw0KPiANCj4gVGhhbmtzIQ0KPiANCj4gWzEvMV0gQVNvQzogcms4MTc6IEFkZCBtb2R1
bGUgYWxpYXMgZm9yIHJrODE3LWNvZGVjDQo+ICAgICAgY29tbWl0OiA0MjhlZTMwYTA1Y2QxMzYy
YzhhYTg2YTRjOTA5YjBkMWM2YmM0OGE0DQo+IA0KPiBBbGwgYmVpbmcgd2VsbCB0aGlzIG1lYW5z
IHRoYXQgaXQgd2lsbCBiZSBpbnRlZ3JhdGVkIGludG8gdGhlIGxpbnV4LW5leHQNCj4gdHJlZSAo
dXN1YWxseSBzb21ldGltZSBpbiB0aGUgbmV4dCAyNCBob3VycykgYW5kIHNlbnQgdG8gTGludXMg
ZHVyaW5nDQo+IHRoZSBuZXh0IG1lcmdlIHdpbmRvdyAob3Igc29vbmVyIGlmIGl0IGlzIGEgYnVn
IGZpeCksIGhvd2V2ZXIgaWYNCj4gcHJvYmxlbXMgYXJlIGRpc2NvdmVyZWQgdGhlbiB0aGUgcGF0
Y2ggbWF5IGJlIGRyb3BwZWQgb3IgcmV2ZXJ0ZWQuDQo+IA0KPiBZb3UgbWF5IGdldCBmdXJ0aGVy
IGUtbWFpbHMgcmVzdWx0aW5nIGZyb20gYXV0b21hdGVkIG9yIG1hbnVhbCB0ZXN0aW5nDQo+IGFu
ZCByZXZpZXcgb2YgdGhlIHRyZWUsIHBsZWFzZSBlbmdhZ2Ugd2l0aCBwZW9wbGUgcmVwb3J0aW5n
IHByb2JsZW1zIGFuZA0KPiBzZW5kIGZvbGxvd3VwIHBhdGNoZXMgYWRkcmVzc2luZyBhbnkgaXNz
dWVzIHRoYXQgYXJlIHJlcG9ydGVkIGlmIG5lZWRlZC4NCj4gDQo+IElmIGFueSB1cGRhdGVzIGFy
ZSByZXF1aXJlZCBvciB5b3UgYXJlIHN1Ym1pdHRpbmcgZnVydGhlciBjaGFuZ2VzIHRoZXkNCj4g
c2hvdWxkIGJlIHNlbnQgYXMgaW5jcmVtZW50YWwgdXBkYXRlcyBhZ2FpbnN0IGN1cnJlbnQgZ2l0
LCBleGlzdGluZw0KPiBwYXRjaGVzIHdpbGwgbm90IGJlIHJlcGxhY2VkLg0KPiANCj4gUGxlYXNl
IGFkZCBhbnkgcmVsZXZhbnQgbGlzdHMgYW5kIG1haW50YWluZXJzIHRvIHRoZSBDQ3Mgd2hlbiBy
ZXBseWluZw0KPiB0byB0aGlzIG1haWwuDQo+IA0KPiBUaGFua3MsDQo+IE1hcmsNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
