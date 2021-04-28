Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32DEC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 08:44:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0059161418
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 08:44:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0059161418
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=web.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VvQ5hAtakNG7JVIHyb/EmPsi73AP9/9WHNEYaP7KxVY=; b=ZsYivfmd8JcVcINHJrIcwDThi
	ylH6Wb/WimQQGb48i1Jdf8RYOiyLdUNRw0xaj4HPdDg9Th6OQXd3ri+F/4pp4sNRIcL7+QUM0hIlY
	4MpRYocKtM78TbE4tsq2r0zcXqQZZjrjAEkqgyqvyi4iZgBSEjHWfYxWz6q+4Zu7JxGC/W+mohkgO
	+fK9gfJ+JbODIVcoha4tHSS2pMZqfq+Bzzx3xg7tei6lXtOAPiwl7qg4nHE7XQFTUEPA9zzah6xiC
	EzWvfsxOLPXouvyaH7JRPgy1dnzmJllrgy51hpWWjwIoYjNpM/guqdXWnSFruYP5JjJUqN2DU2n48
	FVJ7kAusA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbfnf-00394w-8b; Wed, 28 Apr 2021 08:44:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbfnc-00394l-OL; Wed, 28 Apr 2021 08:44:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=6oyXuRc/HyaQOUAoGH4BzDn08qL8+bPGEAEzFtgQee8=; b=c5TmYk1D9PtuolKp3gmaMgJqQv
 T3B2eRnxKzUKHp1uBdWy0pI3YnOzwT6C4/jqJ3jTTx/xNlMuAdjEKGzyhQoX8PYtfpzxqixrItIbq
 qk5VnHdqm4DeTGL2GdTmiykuKN+4oVGwXBWUgIgO9MJeZU6PIJ/9Gv0O5OW1Z++glJ5kCm9cjibWU
 cXc1u1fPXZhGO/oa1wcBaT9IibN7k+Apory4nwrmrWlwxh3X8GhNYi8r/27GwLwb5ti+BUbbSfPES
 iHM914xeCi8L5xIWeM47YhXa3IMLCZH8gCxdiqF1AX7VfV3z3lph/ZQJcj5OYQuXyNqMcLs9SiSbs
 pj0arg4Q==;
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbfnZ-00HIDE-LH; Wed, 28 Apr 2021 08:43:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1619599419;
 bh=6oyXuRc/HyaQOUAoGH4BzDn08qL8+bPGEAEzFtgQee8=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=PSe8w6+iPdNb9pSML6dkoGWEONTrwTkVhRTNHqSXhblL2u2IBifLvn9TUzZ1rzZa2
 gh5CE8fl/DCFtLiRU2E8wBh/cF8UB1Ao9IDL76ghRo7v+MaZunECFBxUYtRP4ws3HP
 bf6iumkBTgUB00UZGGL8eGfW1aLDHpTyLcWhbYRw=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.70.1] ([46.114.137.249]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MgibW-1l5wXP28dQ-00h9An; Wed, 28
 Apr 2021 10:43:39 +0200
Subject: Re: [PATCH] arm64: dts: rockchip: include uhs support for rockpro64
To: =?UTF-8?Q?Christian_L=c3=b6hle?= <CLoehle@hyperstone.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "heiko@sntech.de"
 <heiko@sntech.de>, "jbx6244@gmail.com" <jbx6244@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <CWXP265MB2680938B222248792AC205F9C4419@CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM>
 <97bcbcde-9ccf-f9cc-ef10-36cbd582825a@web.de>
 <CWXP265MB2680159B5F44B014FA544E89C4409@CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM>
From: Soeren Moch <smoch@web.de>
Message-ID: <8466ba81-7334-d23c-8496-b3d11adcd595@web.de>
Date: Wed, 28 Apr 2021 10:43:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CWXP265MB2680159B5F44B014FA544E89C4409@CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM>
Content-Language: en-GB
X-Provags-ID: V03:K1:rI5NXxMS8vc1KqOWBuSEaRYXQILgcVXz4XXWfSf7usOe+o2UYL/
 32svAj4SutZK2NxYNKw1sudZOr7ZxroEgtTHyl7Tqn/0ui1PbL/UFv7SVuvXxF3jaDZM2S+
 BOQV/C+lyJ8SyZisVPBFSz4nt0YTtlgHLXAvxWflWskCjndUjw2ynMaYEjwKJXWdkAtfBuD
 MAU0eS0O+TDZxkcbvednQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Xjfoxz2hrlU=:NMfVgpSc3Ihcp8cpoROheQ
 lZyJMrT9pvTsMigU48ZOJWkDkyH35UxgribY2Wd0KVLIHsu821/cy5EFPPpa1Cm0LjlwUpw6U
 le88EZNz2UytA66V+U7TUWobPAP3rWSarpU1kc7BXqwgdHInQRlnwGTRaHIHsXo1dQcQL7fWy
 m/jB0vBk1FT79RKU58c8G8V3XHydczZzTQO4+1Zagp+TLimkkCstuxoJIXC1KRqX1jTcWkYUP
 hlrvLl1vxEd/PiQZzkS65CfUfz/aDi+0iuNiqj7BtfsT2i0JqlHGb+NKfZn2BJvjrvQI21Fja
 kesDVlSYjeJMfjjoLsbnDEOthjN6HA15QHXfkbbVIjtABBSIPnsBnlPwLuiw6vnje5ZdOqtyS
 Bmoj7l6FZZq8kTFg1oTNozqJVktD6lCWxjNdMCnHyOd/0lh7AVra4rJXJ8oxK83DyJN58FIOe
 KhcwxVSDri+/IFwKImwKAoctJBjqXLq69loj97h6DwVMePLrsldoya31O4bUGXFyBiuNzeaUa
 csuJK8CiLAOITfTSib4Aja/0087FJebnhrnEkG5vR7pBx9dVQJnZrwWFSVkfdQqdYR1DC9Pi2
 9JrsJFltSStnguzU20sT2eIIsGq8crD3D7UQUITbJ5QB6Dxo2sPPsBFVTr1aBSggWmiQoBjUf
 svnSjxZtwsyxEkJZ045ydXHhFSPT/x/XFHnNIVr3CIg+Z5hF4XcMqpihKCmtavHgAT4wERtfT
 6prwK/JvQ0MeDL1D3JDGqk8vhfKKQinxjh9stnMeUIhVjHgsPBZCnjD8YDJy0d0+2jxZgzFAi
 XVmsPe7anqwjcH8x/mUlAykhVS/l2xTz0O8wihDq9fYlLmxgQYhH9O60r/zeGT/1eQs7sUOhh
 dnBzVi1GhPS/A4BfOYecsIi6r7RZo9I8Zhhxh2y3addgAFTgkPNOqfrcvjphuBaTj8ctiQgNV
 +mDfuFmObZ3B6pZfE4PguPYaKzx9tZxVe7vy+7SVZjxccxytbvvmTfvVCKXxU3+OAutW49mO9
 HkM9LqaQi2p7XCiJuLkLz3bv1gyKRIqRZJPfJ7Wa+zZSXmcmoUACoJkyQv6Z96AOblGDwUj98
 M6vYH8S3zbh9WAEuHf6jJN0YMhH/RTkMFZPpzsL+IV+LirXQYsrnd1/9ALiMOxfmEQ14NJDb1
 Rub+ZGF0L10IXDcc4G1xUVf/OaF4ybQJq2DIgIMU2EXMXiOBIUY8reSQHSrc2lELu0cYs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_014358_063136_F5EEFC7F 
X-CRM114-Status: GOOD (  20.69  )
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

T24gMjguMDQuMjEgMDg6MjgsIENocmlzdGlhbiBMw7ZobGUgd3JvdGU6Cj4gT2ggb2theSwgSSB3
YXMgbm90IGF3YXJlIG9mIHRoaXMgaXNzdWUKPiBhbmQgaGF2ZSBub3QgZW5jb3VudGVyZWQgaXQg
eWV0Lgo+IEJ1dCB3b3VsZG4ndCBpdCBiZSBtb3JlIGFwcHJvcHJpYXRlCj4gdG8gZ2V0IHUtYm9v
dCB0byBwb3dlciBjeWNsZSB0aGUgaG9zdCBjb250cm9sbGVyIGF0IGJvb3Q/ClRoaXMgaXMgbm90
IGFib3V0IHBvd2VyLWN5Y2xpbmcgdGhlIGhvc3QgY29udHJvbGxlci4gV2UgaGF2ZSB0bwpwb3dl
ci1jeWNsZSB0aGUgU0QgY2FyZCBpdHNlbGYgdG8gc3dpdGNoIGl0IGJhY2sgdG8gZGVmYXVsdCBz
cGVlZCBhbmQKMy4zViBvcGVyYXRpb24uIFRoaXMgaXMgdGhlIG1vZGUgdGhlIGJvb3QgUk9NIGV4
cGVjdHMuCgpVbmZvcnR1bmF0ZWx5IHRoZXJlIGlzIG5vIHNlcGFyYXRlIHBvd2VyIHN3aXRjaCBm
b3IgU0QgY2FyZCBwb3dlciBvbgpSb2NrUHJvNjQuIFNvIHdlIGhhdmUgdG8gcG93ZXItY3ljbGUg
dGhlIHdob2xlIFNvQy4gVGhpcyBvYnZpb3VzbHkKY2Fubm90IGJlIGRvbmUgZWFzaWx5IGFmdGVy
IHJlYm9vdCBpbiB1LWJvb3QsIGJ1dCBjYW4gYmUgZG9uZSBpbiB0cnVzdGVkCmZpcm13YXJlIChU
Ri1BLCB3YXMgY2FsbGVkIEFURiBiZWZvcmUpIGF0IHJlYm9vdC4gVGhpcyBpcyB3aGF0IEkgdXNl
IG9uCm15IGJvYXJkcywgc2VlIHRoZSBoYWNrIGluIFsxXS4gUm9ja2NoaXAgc2VlbXMgdG8gcHJl
ZmVyIHNvZnQgcmVzZXQsCm1heWJlIHNvbWVvbmUgZnJvbSBSb2NrY2hpcCBjYW4gY29tbWVudCBv
biB0aGUgZXhhY3QgcmVhc29ucy4KClJlZ2FyZHMsClNvZXJlbgoKClsxXSBodHRwczovL2dpdGh1
Yi5jb20vcy1tb2NoL2FybS10cnVzdGVkLWZpcm13YXJlLXJvY2twcm82NAo+Cj4KPiBGcm9tOiBT
b2VyZW4gTW9jaCA8c21vY2hAd2ViLmRlPgo+IFNlbnQ6IFR1ZXNkYXksIEFwcmlsIDI3LCAyMDIx
IDU6MDcgUE0KPiBUbzogQ2hyaXN0aWFuIEzDtmhsZSA8Q0xvZWhsZUBoeXBlcnN0b25lLmNvbT47
IHJvYmgrZHRAa2VybmVsLm9yZyA8cm9iaCtkdEBrZXJuZWwub3JnPjsgaGVpa29Ac250ZWNoLmRl
IDxoZWlrb0BzbnRlY2guZGU+OyBqYng2MjQ0QGdtYWlsLmNvbSA8amJ4NjI0NEBnbWFpbC5jb20+
OyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyA8ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc+
OyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcgPGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZz47IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcg
PGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+OyBsaW51eC1rZXJuZWxAdmdlci5r
ZXJuZWwub3JnIDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPgo+IFN1YmplY3Q6IFJlOiBb
UEFUQ0hdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBpbmNsdWRlIHVocyBzdXBwb3J0IGZvciByb2Nr
cHJvNjQKPiDCoAo+IE9uIDI3LjA0LjIxIDA4OjIwLCBDaHJpc3RpYW4gTD9obGUgd3JvdGU6Cj4+
IFRoZSBEZXNpZ25XYXJlIEhvc3QgQ29udHJvbGxlciBoYXMgZnVsbCBVSFMtSSBzdXBwb3J0LCBz
byB1c2UgaXQuCj4gRW5hYmxpbmcgdGhpcyBVSFMgc3VwcG9ydCBtYWtlcyAncmVib290JyBoYW5n
IHdoZW4gYm9vdGluZyB0aGUgUm9ja1BybzY0Cj4gZnJvbSBTRCBjYXJkLiBJdCB3b3VsZCB3b3Jr
IHdoZW4gYm9vdGluZyBmcm9tIGVNTUMsIG9yIHdpdGggYSBtb2RpZmllZAo+IEFURiB3aGljaCBk
b2VzIGEgcG93ZXIgY3ljbGUgb24gcmVib290Lgo+Cj4gQnV0IGZvciBnZW5lcmFsIHVzZSBpdCBp
cyBub3Qgc2F2ZSB0byBlbmFibGUgVUhTIHN1cHBvcnQsIG9yIGRpZCBJIG1pc3MKPiBzb21lIHJl
Y2VudCBjaGFuZ2VzPwo+Cj4gUmVnYXJkcywKPiBTb2VyZW4KPj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXN0aWFuIExvZWhsZSA8Y2xvZWhsZUBoeXBlcnN0b25lLmNvbT4KPj4gLS0tCj4+IMKgIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpIHwgMSArCj4+IMKg
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaQo+PiBpbmRleCA2YmZmOGRi
N2QzM2UuLmQyMmE0ODllYzIxNCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPj4gQEAgLTcyMiw2ICs3MjIsNyBAQCAm
c2RtbWMgewo+PiDCoMKgwqDCoMKgwqDCoCBtYXgtZnJlcXVlbmN5ID0gPDE1MDAwMDAwMD47Cj4+
IMKgwqDCoMKgwqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+IMKgwqDCoMKgwqDC
oMKgIHBpbmN0cmwtMCA9IDwmc2RtbWNfY2xrICZzZG1tY19jbWQgJnNkbW1jX2J1czQ+Owo+PiAr
wqDCoMKgwqAgc2QtdWhzLXNkcjEwNDsKPj4gwqDCoMKgwqDCoMKgwqAgdm1tYy1zdXBwbHkgPSA8
JnZjYzN2MF9zZD47Cj4+IMKgwqDCoMKgwqDCoMKgIHZxbW1jLXN1cHBseSA9IDwmdmNjX3NkaW8+
Owo+PiDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4gSHlwZXJzdG9uZSBHbWJIIHwg
TGluZS1FaWQtU3RyYXNzZSAzIHwgNzg0NjcgS29uc3RhbnoKPiBNYW5hZ2luZyBEaXJlY3RvcnM6
IERyLiBKYW4gUGV0ZXIgQmVybnMuCj4gQ29tbWVyY2lhbCByZWdpc3RlciBvZiBsb2NhbCBjb3Vy
dHM6IEZyZWlidXJnIEhSQjM4MTc4Mgo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
