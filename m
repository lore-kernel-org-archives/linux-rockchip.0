Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44B01C54754
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 May 2025 13:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qiha/XxrjAW3333ZLxZu65+nNJarfxFE1wtjZ5Sou6E=; b=jnHbkSRTF2Soig
	YpKNAiN9XeB5p9Ss5kadwwwLHlKERyXvDXl1cMSOjueMJLp1+iZSKO35gUsmJAOu9D7c7khteBwkp
	bk4NlrsQ9V2cOQ7IqjlqacF63qWb+88aSSyywHqYRJtg3fLc812JP2xfmDRLW1pbEhi2xAJtyym5z
	sY1QiHA1P+kDlVuMCwh54QVXo/J7mMKmEBHN9+5KohpBOcakr6LW6usD0EUjdWQYerSbzl9p6ujyR
	BPIew5VQPI4Sxn0PfN71inYQ2MXjWq7iNGJJaYuuIO3iQkMZJTO3W74TUzuVBUfeS/VWWcC0ob5Y/
	nyFhQlqO0Uj+CNqGNBZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHN2Z-0000000D10m-3vmf;
	Tue, 20 May 2025 13:29:55 +0000
Received: from ni.piap.pl ([195.187.100.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHMzk-0000000D0XQ-2lyD;
	Tue, 20 May 2025 13:27:01 +0000
Received: from t19.piap.pl (OSB1819.piap.pl [10.0.9.19])
	by ni.piap.pl (Postfix) with ESMTPS id B0B1EC405A46;
	Tue, 20 May 2025 15:26:58 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 ni.piap.pl B0B1EC405A46
From: =?utf-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,  Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>,  Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Heiko Stuebner <heiko@sntech.de>,
  linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
  Jacopo Mondi <jacopo.mondi@ideasonboard.com>,  Ondrej Jirman
 <megi@xff.cz>,  Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
  stefan.klug@ideasonboard.com
Subject: Re: [PATCH] RKISP1: correct histogram window size
In-Reply-To: <aB31Eg6oRpcHHEsb@pyrite.rasen.tech> (Paul Elder's message of
	"Fri, 9 May 2025 14:29:06 +0200")
References: <m3tt5u9q7h.fsf@t19.piap.pl> <aB31Eg6oRpcHHEsb@pyrite.rasen.tech>
Date: Tue, 20 May 2025 15:26:58 +0200
Message-ID: <m3jz6b8lb1.fsf@t19.piap.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_062700_862235_E19610CB 
X-CRM114-Status: GOOD (  16.48  )
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

SGkgUGF1bCwKCkknbSBzb3JyeSBpdCB0b29rIHRoYXQgbG9uZy4KClBhdWwgRWxkZXIgPHBhdWwu
ZWxkZXJAaWRlYXNvbmJvYXJkLmNvbT4gd3JpdGVzOgoKPj4gV2l0aG91dCB0aGUgcGF0Y2ggKGku
TVg4TVAsIGFsbC13aGl0ZSBSR0dCLTEyIGZ1bGwgSEQgaW5wdXQgZnJvbQo+PiB0aGUgc2Vuc29y
LCBZVVYgTlYxMiBvdXRwdXQgZnJvbSBJU1AsIGZ1bGwgcmFuZ2UsIGhpc3RvZ3JhbSBZIG1vZGUp
Lgo+PiBISVNUX1NURVBTSVpFID0gMyAobG93ZXN0IHBlcm1pdHRlZCk6Cj4KPiBBY2NvcmRpbmcg
dG8gdGhlIGRhdGFzaGVldCwgdGhlIGhpc3RvZ3JhbSBiaW5zIGFyZSAxNi1iaXQgaW50ZWdlciB3
aXRoIGEKPiA0LWJpdCBmcmFjdGlvbmFsIHBhcnQuIFRvIHByZXZlbnQgb3ZlcmZsb3dpbmcgdGhl
IDE2LWJpdCBpbnRlZ2VyCj4gY291bnRlciwgdGhlIHN0ZXAgc2l6ZSBzaG91bGQgYmUgMTAuCj4K
PiBEbyB5b3UgaGF2ZSBhbnkgb3RoZXIgaW5mb3JtYXRpb24gb24gdGhpcz8gSXMgaXQga25vd24g
dGhhdCBpdCdzIHN0YWJsZQo+IGFuZCBjb25zaXN0ZW50IHRvIHVzZSBhbGwgMjAgYml0cyBhbnl3
YXk/CgpJbnRlcmVzdGluZy4gSSBvbmx5IGhhdmUgdGhvc2UgbXJ2XyouaCBmaWxlcyB3aGljaCBj
b21lIHdpdGgKaXNwLWlteC00LjIuMi4qIHBhY2thZ2UocykuIEhlcmUgd2UgaGF2ZSAoYW1vbmcg
b3RoZXJzKToKCi8qISBSZWdpc3RlcjogaXNwX2hpc3RfcHJvcDogSGlzdG9ncmFtIHByb3BlcnRp
ZXMgKDB4MDAwMDAwMDApKi8KLyohIFNsaWNlOiBzdGVwc2l6ZToqLwovKiEgaGlzdG9ncmFtIHBy
ZWRpdmlkZXIsIHByb2Nlc3MgZXZlcnkgKHN0ZXBzaXplKXRoIHBpeGVsLCBhbGwgb3RoZXIgcGl4
ZWxzIGFyZSBza2lwcGVkICovCi8qIDAsMSwyOiBub3QgYWxsb3dlZCAqLwovKiAzOiBwcm9jZXNz
IGV2ZXJ5IHRoaXJkIGlucHV0IHBpeGVsICovCi8qIDQ6IHByb2Nlc3MgZXZlcnkgZm91cnRoIGlu
cHV0IHBpeGVsICovCi8qIC4uLiovCi8qIDdGSDogcHJvY2VzcyBldmVyeSAxMjd0aCBwaXhlbCAq
LwojZGVmaW5lIE1SVl9ISVNUX1NURVBTSVpFX01BU0sgMHgwMDAwMDNGOAojZGVmaW5lIE1SVl9I
SVNUX1NURVBTSVpFX1NISUZUIDMKCkluIGNhc2Ugb2YgbXkgSU1YMjkwIDE5MjB4MTA4MCBzZW5z
b3IsIDEgZG9lc24ndCB3b3JrIHdlbGwgKGl0IHN0b3BzCmNvdW50aW5nIGJlZm9yZSByZWFjaGlu
ZyAkKCgxOTIweDEwODApKSBpbiBlYWNoIGJpbiwgYW5kIGV2ZW4gaWYgbm8gYmluCnJlYWNoZXMg
dGhpcyBtYWdpYyB2YWx1ZSwgdGhlIHRvdGFsIGNvdW50IG1heSBiZSBpbnZhbGlkIChub3QgZXF1
YWwgdG8KdGhlIG51bWJlciBvZiBwaXhlbHMpLiBJSVJDLCAyIHdvcmtlZCB3ZWxsLiBNYXliZSB3
aXRoIGhpZ2hlcgpyZXNvbHV0aW9ucywgSSBkb24ndCBrbm93LgoKSSdtIGN1cnJlbnRseSB1c2lu
ZyAiMyIgcGVyIHRoZSAuaCBmaWxlOgppc3BfaGlzdF9wcm9wOgozMkUxMjQwMDogMURoCmhpc3Rv
Z3JhbV9tZWFzdXJlbWVudF9yZXN1bHQ6CjMyRTEyNDE0OiAwIDAgMSAxMDA0IDU2OSA0NzYgNjMz
IDExOTcgMjM3MyAyMjEyIDE5MjMgMjk0NSAzNjMyIDMwMjUgNTgyMSAyMDQ1ODkKd2hpY2ggc3Vt
cyB0byA1MTg0MDAgPSAxOTIwKjEwODAvOS4KClNldHRpbmcgIjIiLCB0aGUgc2FtZSBpbnB1dCBz
Y2VuZToKMzJFMTI0MDA6IDE1aAozMkUxMjQxNDogMCAwIDAgMjE5NCAxMjYzIDEwOTYgMTQwNiAy
NTI4IDUyMjggNTA1MiA0MjkxIDYzNTQgODMyMiA2OTQzIDEzMjAxIDQ2MDUyMgp3aGljaCBzdW1z
IHRvIDUxODQwMCA9IDE5MjAqMTA4MC80LgoKU2V0dGluZyAiMSIsIHRoZSBzYW1lIGlucHV0IHNj
ZW5lOgozMkUxMjQwMDogRGgKMzJFMTI0MTQ6IDAgMCAyNSA5MDQ2IDQ5MjQgNDMxNyA1NDM1IDEw
NjU1IDIwNzgxIDE4OTY1IDE2MDUxIDI0NzE2IDMyNjgxIDI4MzY4IDU0MzAxIDEwNDg1NTkKd2hp
Y2ggc3VtcyB0byAxMjc4ODI0IHdoaWNoIGlzIHJhdGhlciBsZXNzIHRoYW4gMjA3MzYwMC4KVGhl
IGxhc3QgbnVtYmVyICgxMDQ4NTU5KSBpcyB0aGUgbWFnaWMgb25lLCBubyBiaW4gY2FuIGdvIGhp
Z2hlci4gTGVzcyBsaWdodHMgYW5kOgozMkUxMjQwMDogRGgKMzJFMTI0MTQ6IDAgMCAwIDAgMCAw
IDE4NCAzMDU5IDExOTcwIDc1Mjk4IDExNDg5OCAyMTE0NDQgNDI5NzcyIDQzOTkyMiA0MDAzNTgg
Mzg2Njk1CnRvdGFsID0gMjA3MzYwMC4gQnV0IGRvbid0IHJlbHkgb24gaXQgdG9vIG11Y2gsIHRo
ZSAiMSIgaGFzIHByb2JsZW1zLgoKSW4gc2hvcnQsIHRob3NlIGFyZSBpbnRlZ2VyIHZhbHVlcy4g
T25lIG1heSB1c2UgdGhlbSBhcyBmcmFjdGlvbmFscyB3aXRoCnNvbWUgY2xldmVyIHN0ZXAgc2l6
ZSwgSSBndWVzcy4KCj4+IGlzcF9oaXN0X2hfc2l6ZTogMzgzICg9IDE5MjAgLyA1IC0gMSkKPj4g
aXNwX2hpc3Rfdl9zaXplOiAyMTUgKD0gMTA4MCAvIDUgLSAxKQo+PiBoaXN0b2dyYW1fbWVhc3Vy
ZW1lbnRfcmVzdWx0WzE2XTogMCAwIDAgMCAgMCAwIDAgMCAgMCAwIDAgMCAgMCAwIDAgMjI5NDAx
Cj4+Cj4+IEFwcGFyZW50bHkgdGhlIGhpc3RvZ3JhbSBpcyBtaXNzaW5nIHRoZSBsYXN0IGNvbHVt
biAoMy1waXhlbCB3aWRlLAo+PiB0aG91Z2ggb25seSBzaW5nbGUgcGl4ZWxzIGNvdW50KSBhbmQg
dGhlIGxhc3QgKHNhbWUgaWRlYSkgcm93Cj4+IG9mIHRoZSBpbnB1dCBpbWFnZTogMTkxNyAqIDEw
NzcgLyAzIC8gMyA9IDIyOTQwMQo+Cj4gSSBkb24ndCBxdWl0ZSB1bmRlcnN0YW5kIHRoaXMuIFdp
dGggYSBzdWItd2luZG93IHdpZHRoIG9mCj4gMTkyMCAvIDUgLSAxID0gMzgzLCBzaG91bGRuJ3Qg
dGhlIHJlc3VsdGluZyB0b3RhbCB3aW5kb3cgd2lkdGggYmUKPiAzODMgKiA1ID0gMTkxNT8gU2Ft
ZSBpZGVhIGZvciB0aGUgaGVpZ2h0LgoKSXQgd291bGQsIGJ1dCB0aGUgc3RlcHNpemUgPSAzIG1h
a2VzIGl0IGlnbm9yZSBvbmx5IHRoZSBsYXN0IG9uZQotIGkuZS4sIG5vcm1hbGx5IHRoZSBjb3Vu
dGVkIG9uZXMgYXJlIDAsIDMsIC4uLiAxOTE0LCAxOTE3ICh3aGljaCBtYWtlcwoxOTIwLzMpIGFu
ZCB3aXRoIDM4MywgaXQgZW5kcyBhdCAxOTE0LCB0aHVzIG9ubHkgMyBwaXhlbHMgKDEgcmVhbGx5
LAppbnN0ZWFkIG9mIDIpIGFyZSBtaXNzaW5nIGZyb20gY2FsY3VsYXRpb25zIChub3QgNSkuIEkg
Z3Vlc3MgdGhlIHNhbWUKdmVydGljYWxseSwgMTA4MCBkaXZpZGVzIC8gMyBhbmQgMTA3NSBkb2Vz
bid0LgoKPiBUaGUgZml4IGxvb2tzIGZpbmUgdGhvdWdoLiBBbHRob3VnaCwgSSdtIHdvbmRlcmlu
ZyBpZiB0aGVyZSdzIGEgcmVhc29uCj4gd2h5IHRoZXJlIHdhcyBhIC0xIGluIHRoZSBmaXJzdCBw
bGFjZS4gRG9lcyBhbnlib2R5IGtub3c/CgpUaGVyZSBpcyBzbGlnaHQgY2hhbmNlIGl0J3MgZGlm
ZmVyZW50IG9uIHNvbWUgb3RoZXIgU29DLCBidXQgSSB3b3VsZCBiZQpzdXJwcmlzZWQuCi0tIApL
cnp5c3p0b2YgIkNocmlzIiBIYcWCYXNhCgpTaWXEhyBCYWRhd2N6YSDFgXVrYXNpZXdpY3oKUHJ6
ZW15c8WCb3d5IEluc3R5dHV0IEF1dG9tYXR5a2kgaSBQb21pYXLDs3cgUElBUApBbC4gSmVyb3pv
bGltc2tpZSAyMDIsIDAyLTQ4NiBXYXJzemF3YQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
