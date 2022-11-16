Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00BDAC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 13:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=any9WpHFVPfSILnIvus5N2Yvssusw/nbw8Xid/yr+jI=; b=n2R44NK1Ar9x2O
	T9piwfkl22R5snY/nlbLyCrLdN/yTPRzH58E330Rp08QRnH5UtXPXKIAmmUm+taWdVDv4+hAmTYoE
	OS5LDKsh5110yqUs3IT3wQnlRo1KBix5MFNonFWp93epdrDGd1FKX7tu7NfzI5kxJGPmLAk9tul9x
	as0fHgUPB70d1DPP9UwmwbxqK+lvXn/dyeJew89Vc61H492uF2Cuza0TpmFcdD92OVBpsxzFpo47i
	7CtQzHsPIaUWHHV/sv3Mbc88unirvAwixQRg06/6hDITUFOysudbrJ+xGa3oA798Lo0K6FYHnPCg7
	ORf4BZTnzqXYpAyqy0eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovIK5-003oTx-4b; Wed, 16 Nov 2022 13:19:25 +0000
Received: from mail-vi1eur05on20616.outbound.protection.outlook.com ([2a01:111:f400:7d00::616] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovIK2-003oFr-Dx
	for linux-rockchip@lists.infradead.org; Wed, 16 Nov 2022 13:19:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mcgIqX9et+reQCDb1qk5tOgXiP476uJuPg3OaTKH4EOb+t5nTrxBaQumsY/Inj0bVPfbPgoN41vGRaQgMKj+ZF2BJ3+FWAUC9Q8M2pgpE6CYhiSUEEbMb+bVgjDoaIfl+01nGljrnuyW5JDwWM6tO0FX5XJrB8x9pnK0LOQW69CBidyNFgm6F7ukUmQJA7AOsShk+JG6cV0Si2xJMl1zBJSYwCypDnljYQXWoNrxTvWOdqnbpqG+CFwNsN1FHClqaLJzJSWdauU4Cygt0GXux/n6VoZ4uqRvczE5ErM2T6E9qKKiqmgWB+B9KSHqwxqta17pohH2qiHHPx533ZopBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xa2By/KJfHuuuK6O92eSvWV82VQ/fapN0CIp/Q4Jboo=;
 b=TlZIeodNXVI2AukIxoVzVz9Y1JfJJ9Naf7uwEOK4GjjjQ02RJtEmi+5FvNTt0ruN7zCzg5HnrYHsU873lmw7KKrRXirSbHui9wfOaLC40zAI2c1XzBpT8E+kUG3uOaxQgv4Z5uqzrlYK78Ds+NyWdE9OuazuQNQcmObPRs8wmxOUUmuCs4OEExTXS6sVhJcvRaCCs/u3+SiOejDIy7bbvlWfbwJBebvnSRm/cgHupHURhBABFyDLZjcc6S0+QyBG43eZezFY3+YNzQBVi9iLUOwtpC3Ar1goBIWnrJOqiAjn4KY9GbMP6jlkn4Fh6+ZB4WmtxU7IzbpB2k0V66Dn1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xa2By/KJfHuuuK6O92eSvWV82VQ/fapN0CIp/Q4Jboo=;
 b=0NFJBOujQ2ZvO4IGI9hfYvY0GjYBJNCNyiA1TBJX330SpkoUwMvKOVk3YdXHmHkrwisr2LPTCsXtZGwm3iWA///topQ3NrQ4PJZPSpJF77bmN2Rh3Usq9XLDw04lJYcpqvve71lmrxTmleBo6ZIORaCbi25sKNEtETmQ6pX86chMAaPDbQiSaw+CnCfff/1I9wk5cvE7oC82LKvHiQhhZmPospe1KxEi7kmITtl6Nibr3Pt9H6wtNUQdiv2K4Dg9jsAEOmhVRZjmKoSM/igVg5MUtUKlLeKv188thz4d7mIjf7ReUIALjE/ldblVdvjol1s1iPpA+Jgj4IK/B0PV8A==
Received: from AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:5b6::22)
 by AS2PR10MB7604.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:547::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.19; Wed, 16 Nov
 2022 13:19:16 +0000
Received: from AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::d27b:367:da40:8042]) by AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::d27b:367:da40:8042%9]) with mapi id 15.20.5813.018; Wed, 16 Nov 2022
 13:19:16 +0000
From: "Sverdlin, Alexander" <alexander.sverdlin@siemens.com>
To: "a1ba.omarov@gmail.com" <a1ba.omarov@gmail.com>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [RFC PATCH 2/3] arm64: dts: rockchip: rk356x: add LVDS bindings
Thread-Topic: [RFC PATCH 2/3] arm64: dts: rockchip: rk356x: add LVDS bindings
Thread-Index: AQHY+b4GSnIUZXWRF0GV9tw3wI3Rww==
Date: Wed, 16 Nov 2022 13:19:16 +0000
Message-ID: <e02b6efd7d242f95c5cdfb2c5cdac29fe65a7d13.camel@siemens.com>
References: <20220923160115.2946615-1-a1ba.omarov@gmail.com>
	 <20220923160115.2946615-3-a1ba.omarov@gmail.com>
In-Reply-To: <20220923160115.2946615-3-a1ba.omarov@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR10MB6867:EE_|AS2PR10MB7604:EE_
x-ms-office365-filtering-correlation-id: e2617bfe-d39e-484c-bc03-08dac7d5295d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  ViwR7bgnzb9N5IW9GpZ0cY4mm6ZsB7990LzoYE/GYdV4N4z67ne3Nw9XXSB7A3kFrYKKlZtveN4rwpndFp5RVU24M1qoHlLVaFkCwVSLBkYMvUqq3yKnqGYVNihb0Oa8hVCZAD55GBgpRkMGPE8+EPF/MxAZsaVDcNUYV5ShYLmAxyt0AcxUIpQpRK9gm1v7khZzeC5wgbgFmN21s2jc/HNK6D0gbFjs0B1vGNDq8Hm5p8o+zsgR7cirkguUVIcerTQSZuUl+TRRJJErGjASBsw/ooyDTuSpdHEM8QBvWO50A36Kw+63ZF5z5yIkZo4TCEc8+bdvr9lLOiJohunl0YnGiLEWNpsHxfR0F3c8LGNdd9cysTjSi7PNN7G0bUZBPdOeK1aa1lCOekqsA9VFSllqfWMinbecLjpz+jzB4Xh/gcDlQTUmJWWvWj/L2zd4RbhNrv7Isb3PE/NoNxWGJOYxDw47c5PRthrYdi9jzoVjfHZQ1IAQhvP0LazUZIhcwfcUOVRMaWGqkdxdwcQg11+J/xjE4ssKgGJEx3vbf/+R9d8CcOs9fWgH1KO4l5ZHtqu2AjtTJuvDoNQ26lD5M+pLbAFbXlzKnsfmNsekDnwfZNwC4eddy8sL0kmPl6wG0/9QmXNHnfQyGZ/khfbbkgxntk97D/xZVdopEJLBIm96nqX2W2HAn4I//LFicWuvILAQQHbtFtoaPtU3sEqHbLSPoofAZFToXXR25r9CIMsYbhKlEtxzKY/5bdReX0o8eqHJxf5pETbk+tb7dJi00Xtpbue6yJEJvkgOh0HdOUpDADwICK9SILQ+kN/Wor1U3FRZB7fVOm+vrWR6NrmYJg==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(366004)(376002)(136003)(396003)(39860400002)(451199015)(36756003)(26005)(15974865002)(86362001)(38070700005)(82960400001)(122000001)(38100700002)(110136005)(186003)(6512007)(2906002)(2616005)(55236004)(6506007)(5660300002)(83380400001)(6486002)(478600001)(41300700001)(966005)(8936002)(76116006)(71200400001)(316002)(66476007)(91956017)(64756008)(66946007)(8676002)(66556008)(66446008)(18886075002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?Y3YxSkg1TzlHUUdOM01ad2FvSWw5aHZvdmgvQ2FtVytBcnpidW9rVDRobUll?=
 =?utf-8?B?WnllTU9HaGRKU2RvZS9DUitFb3NibjVCUlZxZHNFdGpwM2Naa3hFSzFPSFFF?=
 =?utf-8?B?MlIzekRyNE5mVlNhMDZRamsxdjBtOTJHUjFRSytFejk5cVp2ZzJ4eTVPYjF5?=
 =?utf-8?B?dFRlZ2owY3EvMHJBcTg3eWY2OHNSaDV5SVRqUGZXQW1rNm5BWnpJM21UZStw?=
 =?utf-8?B?WUh5MkU3bkRpdVQyeDVjbncweDkyY1BLeFE0VDF2NEYrOXJ2VEFVS0U2SEUy?=
 =?utf-8?B?Zkh6aitaUGVGVGo3KzdUK2dndUlSUGxxazMzQXViSmZJUnpydjViTGhXeWR5?=
 =?utf-8?B?UE5la1RNVThHVVV5S0cvd0l4cmp0aytoYTVTc0MrSW1XMEJ5V3I2RCtWQjhh?=
 =?utf-8?B?T1JMb21ZVHBsdTZmR2V1SE1CTTRVbmRFUnk1cHprMTB1aVc3SFpMYTFMQkZt?=
 =?utf-8?B?bjJrODNqR2Q0SkdYa2J0am1mWmVkR1JmUGVzeTBZeTBtWG5LcFAvT2xBaGgv?=
 =?utf-8?B?dFRrQytpOHRqTDl0aFRRTDZ5TmFvYVgwdlN2UjA5Z2ZzWGE1cGNmSzZUa3Jq?=
 =?utf-8?B?U3c1eGtFRUVMSDlENFpMQ3lqZTdJYW9IS2pPN1ZsdVVObm9INkx1SldWQXps?=
 =?utf-8?B?UWVlVkQzeks0MjU4YU5zRnZiTzU0eE9GTzUxZXBzMGRkOXhZWlJkMU5FUFc3?=
 =?utf-8?B?NUJQb0lQN2dabmhnYjVOQjhUNTdJWm1paEVnWHowcDg5RkJ4SkpKSkNvV29N?=
 =?utf-8?B?bWszZHJvemJsQ0oyWW5PR0FzQ2RnQWtCbUdjMnZNTWN0cmhHZXE0cXBjS0ly?=
 =?utf-8?B?TlVidWNnWUpnS1FrbDNZeVdsZjQvM245WUhKRGJ3cmVLTDdRazNHZGprdmpD?=
 =?utf-8?B?QVhlYnBjVW43WlJZQlF5NGR1RkZiWnRRM2pIUTdNUHJXQjFxcXN6ZnJTcjJ5?=
 =?utf-8?B?ZU5DRVFuUWpvN2F5cjhPclYzTFhwc0cvWEFzcHRDdmpLZUdZc0pCMDd1bk9Z?=
 =?utf-8?B?Tmo4UDhxd2laZFd6RFhBODJvOGhnbGhnL2NIS08zWkxpWG1jclZRVmNCb08r?=
 =?utf-8?B?SllPcVk2V1N2YS9EWWh3NDdNYUIzYjExbXdtNm5PZ3pYMERMVHQ4dHEwazc5?=
 =?utf-8?B?SmNSVjhjaktrZk55SHZTKzBzQmFCY256elhaVE9ac0hmbUVQdGgrUzB0UGdR?=
 =?utf-8?B?UmY1RWFqYlIvTEVvM2lUMWt4N053WHZacCs5R3VtNEtRQjJNT1VsdlNyaU5D?=
 =?utf-8?B?L3VaTkNIa250cHZSd2wwdFQxSFRYZnpIVldhWVZMZnprZmVuMDcrblJjQ3Mr?=
 =?utf-8?B?M0RJMk5oQlBYWjZwU1JZNGRqbjFaVzl5aHpwNGtuSFd6cURYZ2VEaUFuNTZQ?=
 =?utf-8?B?dFVaaUczdW5TQk5Mei9PcjY3U2QzcXZFb2hMMTkvRFVlT2ZkKzNraTZ1TTU1?=
 =?utf-8?B?WlAxQWFlK1lRR0lUWllvNFlHVUxsZUxzTFd4VFdzVDFnRW5NcWFCNmRZRS9N?=
 =?utf-8?B?VFNYTHhva2xmaHVGWVdsMkc2RFhRaW40dnY0eHBTUkgxZ05Md0luZUxWcTNl?=
 =?utf-8?B?WEdiYnZ6cXE2K3dHUEJzUTlBOTdmbjNHby8xRlVOd042NU9wRWNLeFhZZkRC?=
 =?utf-8?B?eGhJMjZIamhaUzMrYTQzM0RlRklkTUROQjlkOU5oMERiZzdndkN5UnNuc2Mz?=
 =?utf-8?B?TUFiM0VZR1VnRTVyZXU5QytkNTk3R0cyNDVJRlp0cTVOdjdkajZtUFdUd1ZF?=
 =?utf-8?B?UENNeFRVVVA5QkhFRC9WdVpySWhvUmlCdGJycE9UUlFPMWpEN2YrcEtSK2Z5?=
 =?utf-8?B?UmRzcUp6c0VBQkhySXRtRDY1N01SNUlGbzhuYWR4bk9GRG94cGo2UUJoR083?=
 =?utf-8?B?TDFnWFhkVHBpTjM2bWZmWDkyenVLeTJoNzZBRUV4em8rTVBEbjVJMDZHWUFQ?=
 =?utf-8?B?QXJ6aFIxTlRreCtJa2JqaWdKRE1JRHM2YTZmOWVzNUNobVNMQ0hxRVZUYWNC?=
 =?utf-8?B?QVRHYXJBdmZMSk9tNnVOZVVPU2RNckxaV1FlcDNVWFJkSDZKVFNxdTg1S09r?=
 =?utf-8?B?SCtyd25mdi82NkJqdklCanc3QlJGdDRRUXNadlJNSFJjcU9kTUE3cml1Y1FV?=
 =?utf-8?B?OGlkWlp2TUNRVkwzamI0SVJJTlRVZFlhcGlTK2lrcXZKa0FleTZTT0V5Tk5Y?=
 =?utf-8?Q?U65W7iqneqEp1fDZXmT1nl4=3D?=
Content-ID: <3DF372916202694CBF2C8F119444BD56@EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR10MB6867.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: e2617bfe-d39e-484c-bc03-08dac7d5295d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2022 13:19:16.1848
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: heF3smG8k0Gmq4k+7IPz1J0A18NY34lTc2e3HxYFrl9LwzubB/FloG/E1eJh1TbDlM0JokssikT2ztVFRVj0KnZEDU3n51NFfkpLiVzro0Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR10MB7604
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_051922_817772_60F58C51 
X-CRM114-Status: GOOD (  12.49  )
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

SGVsbG8gQWxpYmVrIQoKT24gRnJpLCAyMDIyLTA5LTIzIGF0IDE5OjAxICswMzAwLCBBbGliZWsg
T21hcm92IHdyb3RlOgo+ID4gRXhwb3NlcyBwb3J0cyBmb3IgVk9QMiBhbmQgZm9yIHBhbmVsCj4g
PiAKPiA+IFNpZ25lZC1vZmYtYnk6IEFsaWJlayBPbWFyb3YgPGExYmEub21hcm92QGdtYWlsLmNv
bT4KPiA+IC0tLQo+ID4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNp
IHwgMjUgPgo+ID4gKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiDCoDEgZmlsZSBjaGFuZ2Vk
LCAyNSBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpID4KPiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NnguZHRzaQo+ID4gaW5kZXggMDQ3M2Q3ZWUyNjY4Li5mZWEzMzE5YTZhNGUgMTAw
NjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpCj4g
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpCj4gPiBAQCAt
Nzg3LDYgKzc4NywzMSBAQCBoZG1pX291dDogcG9ydEAxIHsKPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgfTsKPiA+IMKgwqDCoMKgwqDCoMKgwqB9Owo+ID4gwqAKPiA+ICvCoMKg
wqDCoMKgwqDCoGx2ZHM6IGx2ZHMgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4LWx2ZHMiOwo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGNsb2NrcyA9IDwmY3J1IFBDTEtfRFNJVFhfMD47Cj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2xvY2stbmFtZXMgPSAicGNsa19sdmRzIjsKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwaHlzID0gPCZkc2lfZHBoeTA+OwoKSWYgdGhp
cyBwYXRjaCBkZXBlbmRzIG9mIHRoZSAKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjIw
OTA2MTc0ODIzLjI4NTYxLTYtbWFjcm9hbHBoYTgyQGdtYWlsLmNvbS8KcGF0Y2gsIHRoZW4gc2hv
dWxkIHRoZSBwaHlzIHJlZmVyZW5jZSAibWlwaV9kcGh5MCIgbm9kZT8KCj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcGh5LW5hbWVzID0gImRwaHkiOwo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU2OF9QRF9WTz47
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcm9ja2NoaXAsZ3JmID0gPCZncmY+
Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJvY2tjaGlwLG91dHB1dCA9ICJs
dmRzIjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdGF0dXMgPSAiZGlzYWJs
ZWQiOwo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBvcnRzIHsKPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgI2FkZHJlc3Mt
Y2VsbHMgPSA8MT47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCNzaXplLWNlbGxzID0gPDA+Owo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsdmRzX2luOiBwb3J0QDAgewo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVn
ID0gPDA+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqB9Owo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBsdmRzX291dDogcG9ydEAxIHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJlZyA9IDwxPjsKPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfTsKPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+ID4gK8KgwqDCoMKgwqDCoMKgfTsKPiA+ICsKPiA+IMKg
wqDCoMKgwqDCoMKgwqBxb3NfZ3B1OiBxb3NAZmUxMjgwMDAgewo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC1xb3MiLCAic3lz
Y29uIjsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVnID0gPDB4MCAweGZl
MTI4MDAwIDB4MCAweDIwPjsKCi0tIApBbGV4YW5kZXIgU3ZlcmRsaW4KU2llbWVucyBBRwp3d3cu
c2llbWVucy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
