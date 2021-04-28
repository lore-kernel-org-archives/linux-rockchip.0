Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0FF2C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 06:28:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0016A6141E
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 06:28:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0016A6141E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=hyperstone.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VBxRbM6WzkuVmCv/fJwIAlYI0nuXh4yETgh/D5BfH+Q=; b=ex09rvtQlX8jm3PKQSfp10XNC
	4KOYBkaVGA6h8p3uXF1zw6o3toMtXUiMKFqTdMp8RiHH2zXQdiuLUEvNZT1sMXx9aG8dyK0TAKoWD
	kKd1n/HzwIYI4L59jYE4v73RnDES5LxUj9Pz6hYyE0eafMk7aYeYa2Z6No3u11uynGLTbEkUlduGB
	wBaYXvvc7AiFsLMhknY3hCM4Ptq0GFe/em4lQCrmqKbwDU1DsLfOUh1EG3KBXZr2fzxK5Ia5MhbsB
	klF4qcCqWap8iD/SlsxGVC9Equ30jK+AFEe+Jxx3AzIY+MU8BDq3N2HlgbAEpuBS+smRAvpe+D0nH
	6jUKrD7kQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbdgQ-002vL0-Sq; Wed, 28 Apr 2021 06:28:28 +0000
Received: from de-smtp-delivery-1.mimecast.com ([51.163.158.241]
 helo=de-smtp-1.mimecast.com)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbdgJ-002vK2-EC
 for linux-rockchip@lists.infradead.org; Wed, 28 Apr 2021 06:28:25 +0000
Received: from GBR01-CWL-obe.outbound.protection.outlook.com
 (mail-cwlgbr01lp2058.outbound.protection.outlook.com [104.47.20.58]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 de-mta-33-vZDCqs73PEqhodFzszGmow-1; Wed, 28 Apr 2021 08:28:07 +0200
X-MC-Unique: vZDCqs73PEqhodFzszGmow-1
Received: from CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:89::10)
 by CWXP265MB3351.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:da::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.25; Wed, 28 Apr
 2021 06:28:07 +0000
Received: from CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM
 ([fe80::a91f:361d:5554:3958]) by CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM
 ([fe80::a91f:361d:5554:3958%5]) with mapi id 15.20.4065.027; Wed, 28 Apr 2021
 06:28:07 +0000
From: =?iso-8859-1?Q?Christian_L=F6hle?= <CLoehle@hyperstone.com>
To: Soeren Moch <smoch@web.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "heiko@sntech.de" <heiko@sntech.de>, "jbx6244@gmail.com" <jbx6244@gmail.com>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: include uhs support for rockpro64
Thread-Topic: [PATCH] arm64: dts: rockchip: include uhs support for rockpro64
Thread-Index: AQHXOyz+Y+++fPZwnUCCEHYwxF4ENKrId5wAgAEALc4=
Date: Wed, 28 Apr 2021 06:28:06 +0000
Message-ID: <CWXP265MB2680159B5F44B014FA544E89C4409@CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM>
References: <CWXP265MB2680938B222248792AC205F9C4419@CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM>,
 <97bcbcde-9ccf-f9cc-ef10-36cbd582825a@web.de>
In-Reply-To: <97bcbcde-9ccf-f9cc-ef10-36cbd582825a@web.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [185.80.168.10]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f5aa04b6-d9d8-4aef-1841-08d90a0ec934
x-ms-traffictypediagnostic: CWXP265MB3351:
x-microsoft-antispam-prvs: <CWXP265MB33512C693934D91556A20136C4409@CWXP265MB3351.GBRP265.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6430
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: us2m+PTxtj16eAN+HRyylrysdFEUQVO3lfhrly2OCRYiIKW/3QdzRq7Hp0ZwFK7dMAOTVXEm+qlSNHgwPW6JmqtMlZqdk0Hm5TgmJBpoHREyssD5iQTgwiuI4WAnVJsQvWv9dLfoz0M30u+vcXVy5/NNOFVs3LlEn0VUnUd+HEjENOvfqjKI0/Izd3QPtLwqdlPSN1LLZnXEJlzXxFYjj5ve10JEyp2BHwZIrLNPGfIKZDMC4HniHPAAM99qWfKc3fO4N9kRCxHSsqdsaI/8sxI/sm5dWNwsAB5Heqw5Fb9wIuBhpHRpiSZ/XyQ78xEYQLCvaoD98RQpjfNqSR55JYM//3O7VLUwUy+A/UYT2pN+LK1E3GE9IAWwXNw24FYCNsSCkEX2v2Zon+S7qUdUhHUQV2AHVLM9jeoWtqCA4QXy79dTjDf/j5AAkF5ydjP70NSkJtjEI0BoqruFDAeqKLflYQpZdRq4s57fC+yzzvXyXVFAOlP23GvJaI5tFOECxqhEzlzroOs2SqyvwC+U/O/f52TgYlUkcz2LrS88tQfOa58ZYRBCTpPTKtP3PnJn+Fy95xU5sLzlU5VDqYo/GgZAu5fEAKu//BUoY3SeOFU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(136003)(376002)(366004)(346002)(396003)(39830400003)(91956017)(64756008)(66446008)(66476007)(66556008)(52536014)(86362001)(110136005)(76116006)(66946007)(9686003)(7696005)(33656002)(6506007)(53546011)(5660300002)(8676002)(71200400001)(8936002)(122000001)(2906002)(38100700002)(186003)(26005)(316002)(478600001)(55016002);
 DIR:OUT; SFP:1101
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?DbFdr/Hs7vXrkYf0zwsHWnhptyrllLTprkUeqYl+XztseRw9b8B0V9Ny9c?=
 =?iso-8859-1?Q?ML7T0sh8I0UigXUr63csZLQiq2mD5ZBlMdeJZrSM1IJSQkIYxu4CZK540I?=
 =?iso-8859-1?Q?65C+9lpFbv/6zx2TQgL4rXyc6V3PjHWuTQuAqVTog85F6E+aFhNz2V6/n0?=
 =?iso-8859-1?Q?YyQvqucR5mRZde1Vs6ivqrpdE9fGmGcLjsOTmUhcMyxOoRSYqhcnyQPQFr?=
 =?iso-8859-1?Q?ckXA6cqPl3oxtHeZisw6hDwzmhsAJr7pGNmP5nQ9tsrYsSz6onabGnd626?=
 =?iso-8859-1?Q?m/Ve3eextqWfI7tNgB08bdme3PgGiRwqKF1UbGcL1n5EZ6CcldckNq36xb?=
 =?iso-8859-1?Q?2EcoRY5F/Q9Z6Ndv4OBA8DqE1c7UV4YRINUewyjlxG5F2kau4etGdbP6wD?=
 =?iso-8859-1?Q?QvGadKb51qj9ZUwhkyYKzeN2L75q3kVnutG7A09K4uMaFMeFRDvtWiC2GV?=
 =?iso-8859-1?Q?T8Sm582efkIsNZBuW1DFqt0q6stNNx5mg1OEjplCc7quYJKjyb6o6UTtc2?=
 =?iso-8859-1?Q?2AxCCoxjacho0WKaIPz03Da9Gb+wd6+ognPPVPpf2ASPAGI+czC6v/2P2s?=
 =?iso-8859-1?Q?CFNavEJ3aXYxC6v219lwRxgOGZvzm4yFQhPuHMOauQLR8i8pXVu1PTMZj8?=
 =?iso-8859-1?Q?me8SwGGvD1q9XZrnu9g8w4QL8cIvpGbrfRNdf1Qxtv5ktnpMNyTt3lJ1NH?=
 =?iso-8859-1?Q?PmSfH1tlGYm3t/wQNbZCsdHeNLxBPYgWMuJ5kPWRR6OWFaxl1k2I2o3Hx4?=
 =?iso-8859-1?Q?V0delTFplDaJJb5mprxYqoQ/f6+aZv989CGHV8rkJtp/yncOUkG2x1eE2v?=
 =?iso-8859-1?Q?FIO4TQsW2AN+pUjIDmmeML4rHYa8r1O4jvpsU90TC2paxAW4nupqGM8uMO?=
 =?iso-8859-1?Q?PYDWg0IOiZNvtJMk4MfLf2E5T5WDmCVB27DEwm2IA7Vdzy5hFxc3JKsqEw?=
 =?iso-8859-1?Q?w8tPRrCzu9405cadUYGjJjuq1QOn/boxRUzgsKFjk75OE5PJ+wr8hG5Rts?=
 =?iso-8859-1?Q?n+WNJ+DDVQsmctoL2pIIlSF8RGs3Sg6rpa4qYI2eaYHueNEOOKNJU/4rcv?=
 =?iso-8859-1?Q?bxP5O/t1iRlZqsxAPzL4NTdChq7TIu7Jjn+Q4Lz9Gxw0XgRmB2Thhn+PbM?=
 =?iso-8859-1?Q?zazoHw/ZAHTdmxKxtAEXouInnIZas6dREW3lIfafvB13XbjCcF9Rk4tSi9?=
 =?iso-8859-1?Q?4Sivj8nn2JGV82gCHnYa88BOCZy546oJedqqeX/ihbKvNHcqwNTatnnocF?=
 =?iso-8859-1?Q?sSY5RGwBOhE/OciHd4ficoghB3DkO2oF1ATGYD3wGTNdYt20gen8mQ3FPJ?=
 =?iso-8859-1?Q?c3oxVhKhqWpG/ZfZvKkCkrayxgbh8Q0fk9ZW6/TfMGXHMvI=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hyperstone.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f5aa04b6-d9d8-4aef-1841-08d90a0ec934
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2021 06:28:07.0005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 86f203eb-e878-4188-b297-34c118c18b11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M1+MKhcQTmBhmfJtsPtUa7rTI70zbDMOGSlk83XFua3Y7g5oDmrnvNqinTQVgpCDwAQfRjcGpQ19sr6/PTqnEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWXP265MB3351
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CDE5A68 smtp.mailfrom=cloehle@hyperstone.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hyperstone.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_072822_365482_9C2BC1A1 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
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

T2ggb2theSwgSSB3YXMgbm90IGF3YXJlIG9mIHRoaXMgaXNzdWUKYW5kIGhhdmUgbm90IGVuY291
bnRlcmVkIGl0IHlldC4KQnV0IHdvdWxkbid0IGl0IGJlIG1vcmUgYXBwcm9wcmlhdGUKdG8gZ2V0
IHUtYm9vdCB0byBwb3dlciBjeWNsZSB0aGUgaG9zdCBjb250cm9sbGVyIGF0IGJvb3Q/CgoKRnJv
bTogU29lcmVuIE1vY2ggPHNtb2NoQHdlYi5kZT4KU2VudDogVHVlc2RheSwgQXByaWwgMjcsIDIw
MjEgNTowNyBQTQpUbzogQ2hyaXN0aWFuIEzDtmhsZSA8Q0xvZWhsZUBoeXBlcnN0b25lLmNvbT47
IHJvYmgrZHRAa2VybmVsLm9yZyA8cm9iaCtkdEBrZXJuZWwub3JnPjsgaGVpa29Ac250ZWNoLmRl
IDxoZWlrb0BzbnRlY2guZGU+OyBqYng2MjQ0QGdtYWlsLmNvbSA8amJ4NjI0NEBnbWFpbC5jb20+
OyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyA8ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc+
OyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcgPGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZz47IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcg
PGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+OyBsaW51eC1rZXJuZWxAdmdlci5r
ZXJuZWwub3JnIDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPgpTdWJqZWN0OiBSZTogW1BB
VENIXSBhcm02NDogZHRzOiByb2NrY2hpcDogaW5jbHVkZSB1aHMgc3VwcG9ydCBmb3Igcm9ja3By
bzY0IArCoApPbiAyNy4wNC4yMSAwODoyMCwgQ2hyaXN0aWFuIEw/aGxlIHdyb3RlOgo+IFRoZSBE
ZXNpZ25XYXJlIEhvc3QgQ29udHJvbGxlciBoYXMgZnVsbCBVSFMtSSBzdXBwb3J0LCBzbyB1c2Ug
aXQuCkVuYWJsaW5nIHRoaXMgVUhTIHN1cHBvcnQgbWFrZXMgJ3JlYm9vdCcgaGFuZyB3aGVuIGJv
b3RpbmcgdGhlIFJvY2tQcm82NApmcm9tIFNEIGNhcmQuIEl0IHdvdWxkIHdvcmsgd2hlbiBib290
aW5nIGZyb20gZU1NQywgb3Igd2l0aCBhIG1vZGlmaWVkCkFURiB3aGljaCBkb2VzIGEgcG93ZXIg
Y3ljbGUgb24gcmVib290LgoKQnV0IGZvciBnZW5lcmFsIHVzZSBpdCBpcyBub3Qgc2F2ZSB0byBl
bmFibGUgVUhTIHN1cHBvcnQsIG9yIGRpZCBJIG1pc3MKc29tZSByZWNlbnQgY2hhbmdlcz8KClJl
Z2FyZHMsClNvZXJlbgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIExvZWhsZSA8Y2xvZWhs
ZUBoeXBlcnN0b25lLmNvbT4KPiAtLS0KPsKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LXJvY2twcm82NC5kdHNpIHwgMSArCj7CoCAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKykKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1yb2NrcHJvNjQuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJv
Y2twcm82NC5kdHNpCj4gaW5kZXggNmJmZjhkYjdkMzNlLi5kMjJhNDg5ZWMyMTQgMTAwNjQ0Cj4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kK
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRz
aQo+IEBAIC03MjIsNiArNzIyLDcgQEAgJnNkbW1jIHsKPsKgwqDCoMKgwqDCoMKgIG1heC1mcmVx
dWVuY3kgPSA8MTUwMDAwMDAwPjsKPsKgwqDCoMKgwqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7Cj7CoMKgwqDCoMKgwqDCoCBwaW5jdHJsLTAgPSA8JnNkbW1jX2NsayAmc2RtbWNfY21k
ICZzZG1tY19idXM0PjsKPiArwqDCoMKgwqAgc2QtdWhzLXNkcjEwNDsKPsKgwqDCoMKgwqDCoMKg
IHZtbWMtc3VwcGx5ID0gPCZ2Y2MzdjBfc2Q+Owo+wqDCoMKgwqDCoMKgwqAgdnFtbWMtc3VwcGx5
ID0gPCZ2Y2Nfc2Rpbz47Cj7CoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7CgpIeXBlcnN0
b25lIEdtYkggfCBMaW5lLUVpZC1TdHJhc3NlIDMgfCA3ODQ2NyBLb25zdGFuegpNYW5hZ2luZyBE
aXJlY3RvcnM6IERyLiBKYW4gUGV0ZXIgQmVybnMuCkNvbW1lcmNpYWwgcmVnaXN0ZXIgb2YgbG9j
YWwgY291cnRzOiBGcmVpYnVyZyBIUkIzODE3ODIKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
