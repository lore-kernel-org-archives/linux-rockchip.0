Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC1A6C3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 08:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JKvCHy9rGua5AoG/Tm6Kucd5J8HgHyea//l0CdPPmPc=; b=LZqbU6mcjyLPUsEGZE/O+OMcab
	/tXblasrnowje8g0aAPM8DdIWIPP6AGZIHsAZ/QAhsUsu+Kc979vX/RHVxoSla6ndeq2BbDWZ3iks
	rkpzzJhvhC7ZNshjcxyjYMudbZYcg2lao94tttpKSVK/Mpxp48H22jmwiDMh4vWKwqFpl+5V5tjOv
	QrXPBQLOOXRFsHv3A1Q/DPWZuixNT49N2cf5X7jWCTKWh5yQasbB94GJ+1B3qQ9Belr4hnCTOUQ3G
	KLoJRib/W5F9Gdu/4EFSCh3GogSCmNdKgUURTgzBAnbz4IIPa+wTaqa8z5bS7Fk+YYumykG5Zheb/
	H7E8ghWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU050-0000000D9KI-0cy1;
	Wed, 17 Jul 2024 08:32:06 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU04O-0000000D97R-1TFK;
	Wed, 17 Jul 2024 08:31:30 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721205086;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=djaTs/VXwkde5ykilmezCihZKxxTBjysv9dBh/bulSc=;
	b=MA0cPLpQgynOCTGF3xZ7pX9SK2i58JLa7/0jsJS1Id8InlVCPmjxeW4Q/GMrMUNKN4gLNs
	24eQupFiIzNlvEQqlN/q06ryLe6oOheQgQVibDHG5U4yBli8Gkm0dHFuJKYRpPMS7wDSwa
	zHLA1eJW0jrfoGoYxa3QLdY0/QxlFNqpdiMXd3zfjlocyRgLt5i8RqY1h/6t/L/K7BLfvN
	Ag7BNNYY/y56aqr9oeUqXxicfNvD6wZuXtawK0C2OKBlP9Z0mdLk4dAiud1T9ldnOf+htB
	8G0p20FQgWUEuLsPDLYvCgJmcRbx2MD0B75xG9AaHOe0rvjns5PcLuLsCXM9MA==
Date: Wed, 17 Jul 2024 10:31:22 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Daniel Golle <daniel@makrotopia.org>, wens@kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Martin Kaiser <martin@kaiser.cx>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, Ard Biesheuvel
 <ardb@kernel.org>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>,
 devicetree@vger.kernel.org, linux-crypto@vger.kernel.org, Philipp Zabel
 <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Aurelien Jarno <aurelien@aurel32.net>, Heiko
 Stuebner <heiko@sntech.de>, Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
In-Reply-To: <2451882.5D0I8gZW9r@bagend>
References: <cover.1720969799.git.daniel@makrotopia.org>
 <ZpcrdwZBNFu-YlZt@makrotopia.org>
 <CAGb2v65Mm5s96asU7iaAC_sJnUk=Yuh+zMJJBbmSgETWrPLoFA@mail.gmail.com>
 <2451882.5D0I8gZW9r@bagend>
Message-ID: <8357f8b7a55f88186b8a222457ba5fcf@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_013128_703896_B01B2D69 
X-CRM114-Status: GOOD (  32.64  )
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

SGVsbG8gRGllZGVyaWssCgpPbiAyMDI0LTA3LTE3IDEwOjIyLCBEaWVkZXJpayBkZSBIYWFzIHdy
b3RlOgo+IE9uIFdlZG5lc2RheSwgMTcgSnVseSAyMDI0IDA0OjU4OjUxIENFU1QgQ2hlbi1ZdSBU
c2FpIHdyb3RlOgo+PiBPbiBXZWQsIEp1bCAxNywgMjAyNCBhdCAxMDoyNeKAr0FNIERhbmllbCBH
b2xsZSA8ZGFuaWVsQG1ha3JvdG9waWEub3JnPiAKPj4gd3JvdGU6Cj4+ID4gT24gVHVlLCBKdWwg
MTYsIDIwMjQgYXQgMDc6MTk6MzVQTSArMDIwMCwgRGllZGVyaWsgZGUgSGFhcyB3cm90ZToKPj4g
PiA+IE9uIFR1ZXNkYXksIDE2IEp1bHkgMjAyNCAxODo1Mzo0MyBDRVNUIERpZWRlcmlrIGRlIEhh
YXMgd3JvdGU6Cj4+ID4gPiA+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkgTG9uZyBy
dW46IDAKPj4gPiA+Cj4+ID4gPiBJIGRvbid0IGtub3cgaWYgaXQgbWVhbnMgc29tZXRoaW5nLCBi
dXQgSSBub3RpY2VkIHRoYXQgSSBoYXZlCj4+ID4gPiBgYExvbmcgcnVuOiAwYGAgd2l0aCBhbGwg
bXkgcG9vciByZXN1bHRzLAo+PiA+ID4gd2hpbGUgQ2hlbi1ZdSBoYWQgYGBMb25nIHJ1bjogMWBg
Lgo+PiA+ID4KPj4gPiA+IERpZmZlcmVudCBTb0MgKFJLMzM5OSksIGJ1dCBBbmFuZCBoYWQgYGBM
b25nIHJ1bjogMGBgIHRvbyBvbiB0aGVpcgo+PiA+ID4gdmVyeSBwb29yIHJlc3VsdCAoMTAwJSBm
YWlsdXJlKToKPj4gPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwL0NB
TkF3U2dUVHpaT3dCYVI5empKNVZNcHhtNUJ5ZHRXNgo+PiA+ID4gckIyUzdqZytkbm9YOGhBb1dn
QG1haWwuZ21haWwuY29tLz4KPj4gPiBUaGUgY29uY2x1c2lvbnMgSSBkcmF3IGZyb20gdGhhdCBy
YXRoZXIgdWdseSBzaXR1YXRpb24gYXJlOgo+PiA+ICAtIFRoZSBod3JuZyBzaG91bGQgbm90IGJl
IGVuYWJsZWQgYnkgZGVmYXVsdCwgYnV0IGl0IHNob3VsZCBieSBkb25lCj4+ID4KPj4gPiAgICBm
b3IgZWFjaCBib2FyZCBvbiB3aGljaCBpdCBpcyBrbm93biB0byB3b3JrIHdlbGwuCj4+ID4KPj4g
PiAgLSBSS19STkdfU0FNUExFX0NOVCBhcyB3ZWxsIGFzIHRoZSBhc3N1bWVkIHJuZyBxdWFsaXR5
IHNob3VsZCBiZQo+PiA+Cj4+ID4gICAgZGVmaW5lZCBpbiBEVCBmb3IgZWFjaCBib2FyZDoKPj4g
PiAgICAqIGludHJvZHVjZSBuZXcgJ3JvY2hjaGlwLHJuZy1zYW1wbGUtY291bnQnIHByb3BlcnR5
Cj4+ID4gICAgKiByZWFkICdxdWFsaXR5JyBwcm9wZXJ0eSBhbHJlYWR5IHVzZWQgZm9yIHRpbWVy
aW9tZW1fcm5nCj4+ID4KPj4gPiBJIHdpbGwgcHJlcGFyZSBhIGZvbGxvdy11cCBwYXRjaCB0YWtp
bmcgdGhvc2UgY29uY2x1c2lvbnMgaW50byBhY2NvdW50Lgo+PiA+Cj4+ID4gSnVzdCBmb3IgY29t
cGxldGVuZXNzLCBoZXJlIG15IHRlc3QgcmVzdWx0IG9uIHRoZSBOYW5vUGkgUjVDOgo+PiA+IHJv
b3RAT3BlbldydDp+IyBjYXQgL2Rldi9od3JuZyB8IHJuZ3Rlc3QgLWMgMTAwMAo+PiA+IHJuZ3Rl
c3QgNi4xNQo+PiA+IENvcHlyaWdodCAoYykgMjAwNCBieSBIZW5yaXF1ZSBkZSBNb3JhZXMgSG9s
c2NodWgKPj4gPiBUaGlzIGlzIGZyZWUgc29mdHdhcmU7IHNlZSB0aGUgc291cmNlIGZvciBjb3B5
aW5nIGNvbmRpdGlvbnMuICBUaGVyZSBpcyBOTwo+PiA+IHdhcnJhbnR5OyBub3QgZXZlbiBmb3Ig
TUVSQ0hBTlRBQklMSVRZIG9yIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUgo+PiA+IFBVUlBPU0Uu
Cj4+ID4KPj4gPiBybmd0ZXN0OiBzdGFydGluZyBGSVBTIHRlc3RzLi4uCj4+ID4gcm5ndGVzdDog
Yml0cyByZWNlaXZlZCBmcm9tIGlucHV0OiAyMDAwMDAzMgo+PiA+IHJuZ3Rlc3Q6IEZJUFMgMTQw
LTIgc3VjY2Vzc2VzOiA4NzUKPj4gPiBybmd0ZXN0OiBGSVBTIDE0MC0yIGZhaWx1cmVzOiAxMjUK
Pj4gPiBybmd0ZXN0OiBGSVBTIDE0MC0yKDIwMDEtMTAtMTApIE1vbm9iaXQ6IDEyMwo+PiA+IHJu
Z3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkgUG9rZXI6IDUKPj4gPiBybmd0ZXN0OiBGSVBT
IDE0MC0yKDIwMDEtMTAtMTApIFJ1bnM6IDQKPj4gPiBybmd0ZXN0OiBGSVBTIDE0MC0yKDIwMDEt
MTAtMTApIExvbmcgcnVuOiAwCj4+ID4gcm5ndGVzdDogRklQUyAxNDAtMigyMDAxLTEwLTEwKSBD
b250aW51b3VzIHJ1bjogMAo+PiA+IHJuZ3Rlc3Q6IGlucHV0IGNoYW5uZWwgc3BlZWQ6IChtaW49
ODUuMTcxOyBhdmc9MTQxLjEwMjsKPj4gPiBtYXg9NDg4MjgxMi41MDApS2liaXRzL3Mgcm5ndGVz
dDogRklQUyB0ZXN0cyBzcGVlZDogKG1pbj0xNy44MDk7Cj4+ID4gYXZnPTE5LjQ5NDsgbWF4PTYw
LjE2OSlNaWJpdHMvcyBybmd0ZXN0OiBQcm9ncmFtIHJ1biB0aW1lOiAxMzk2Mjg2MDUKPj4gPiBt
aWNyb3NlY29uZHMKPj4gCj4+IEkgZG91YnQgdGhpcyBpcyBwZXItYm9hcmQuIFRoZSBSTkcgaXMg
aW5zaWRlIHRoZSBTb0MsIHNvIGl0IGNvdWxkIGJlIGEgCj4+IGNoaXAKPj4gcXVhbGl0eSB0aGlu
Zy4KPiAKPiBJIGFncmVlIHdpdGggQ2hlbll1IChhbmQgb3RoZXJzKSB0aGF0IHRoaXMgaXMgaXNu
J3QgYSBwZXItYm9hcmQgbGV2ZWwgCj4gdGhpbmcuCj4gSSdkIGV2ZW4gZ28gZnVydGhlcjogJ3Mv
SSBkb3VidC9JdCBjYW4ndCBiZSB0aGF0LycgKGZvciB0aGUgc2FtZSByZWFzb24KPiB0aG91Z2g7
IHRoaXMgaXMgaW5zaWRlIHRoZSBTb0MpLgo+IAo+IEJlZm9yZSBJIHNhdyB0aGVzZSBsYXRlc3Qg
ZW1haWxzLCBJIHdhcyBnb2luZyB0byBzdWdnZXN0Ogo+IDEuIEVuYWJsZSBpdCBvbmx5IG9uIFJL
MzU2OCBmb3Igbm93LiBJIHdvdWxkIGJlIGZpbmUgaWYgdGhpcyB3b3VsZCBiZSAKPiBhY2NlcHRl
ZAo+IGJ5IHRoZSBtYWludGFpbmVyCgpJIHRoaW5rIHdlIG5lZWQgbW9yZSB0ZXN0aW5nIG9uIG1v
cmUgdW5pdHMgb2YgdGhlIFJLMzU2OCBTb0MsIHNpbXBseQpiZWNhdXNlIHRoZSBIV1JORyBtYXkg
d29yayBiYWRseSBvbiBzb21lIHVuaXRzLiAgSSBrbm93IHRoYXQgaXQgc3Vja3MsCmJ1dCB3ZSBi
YXNpY2FsbHkgbmVlZCBqdXN0IG9uZSAiYmFkIGFwcGxlIiB0byBtYXJrIGFuIFNvQyBhcyBoYXZp
bmcKYW4gdW5yZWxpYWJsZSBIV1JORywgd2hpY2ggaXMgSU1ITyB0aGUgb25seSByaWdodCB0aGlu
ZyB0byBkby4KCk9mIGNvdXJzZSwgdW5sZXNzIHdlIGNhbiBwcm92ZSB0aGF0IHR3ZWFraW5nIHRo
ZSBIV1JORyBrbm9icyBtYWtlcyBzdWNoCiJiYWQgYXBwbGVzIiB3b3JrIHdlbGwuCgo+IDIuIEFz
ayB0aGF0IHlvdSBtYWtlIGEgc3BlY2lhbCB2ZXJzaW9uIChmb3IgbWUpIHdoZXJlIEkgY291bGQg
cGxheSB3aXRoIAo+IHRoZQo+IHBhcmFtcyB3aXRob3V0IGhhdmluZyB0byBjb21waWxlIGEgbmV3
IGtlcm5lbCBmb3IgZWFjaCB2YXJpYW50IChpdCAKPiBnZW5lcmFsbHkKPiB0YWtlcyBtZSBtb3Jl
IHRoZW4gMjRoIG9uIG15IFE2NC1BKS4gRWl0aGVyIHRocm91Z2gga2VybmVsIG1vZHVsZSAKPiBw
cm9wZXJ0aWVzCj4gb3IgcHJvcGVydGllcyBkZWZpbmVkIGluIHRoZSBEZXZpY2VUcmVlIGlzIGZp
bmUgd2l0aCBtZS4KPiAKPiAzLiBCYXNlZCBvbiB0aGUgcmVzdWx0cyBtYWtlICBhIGNob2ljZSB0
byBub3QgZW5hYmxlIGl0IG9uIHJrMzU2NiBhdCAKPiBhbGwgb3IKPiAoaW5kZWVkKSBpbnRyb2R1
Y2UgRFQgcHJvcGVydGllcyB0byBjb25maWd1cmUgaXQgZGlmZmVyZW50bHkgcGVyIFNvQy4KClNl
ZSBhYm92ZTsgdW5mb3J0dW5hdGVseSwgd2UgYWxyZWFkeSBoYXZlIHNvbWUgImJhZCBSSzM1NjYg
YXBwbGVzIi4KCj4gNC4gSG9wZS9Bc2sgZm9yIG1vcmUgdGVzdCByZXN1bHRzCj4gCj4+IE9uIHRo
ZSBSSzMzOTkgd2UgYWxzbyBzYXcgd2lsZGx5IHZhcnlpbmcgcmVzdWx0cy4KPiAKPiBPbiBteSBS
b2NrNjQoJ3MpIChSSzMzMjgpIGl0IGRvZXNuJ3Qgd29yayBhdCBhbGw6Cj4gCj4gYGBgCj4gcm9v
dEBjczIxOn4jIGNhdCAvZGV2L2h3cm5nIHwgcm5ndGVzdCAtYyAxMDAwCj4gcm5ndGVzdCA1Cj4g
Li4uCj4gcm5ndGVzdDogc3RhcnRpbmcgRklQUyB0ZXN0cy4uLgo+IGNhdDogL2Rldi9od3JuZzog
Tm8gc3VjaCBkZXZpY2UKPiBybmd0ZXN0OiBlbnRyb3B5IHNvdXJjZSBkcmFpbmVkCj4gYGBgCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
