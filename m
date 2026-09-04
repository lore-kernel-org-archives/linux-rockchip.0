Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F3BEC79F82
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 21:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmMjrWHKeB/adqHIlpWA7MVZw26AUHu5vSOBH5h9QG0=; b=tQaUf5JYRSdkly
	VGEx1fN3fI6wiNzsPINyzd4qa8ONKFVJwNQzTy/VNHGOp2+FAiwCCQgUqJawIc+QUUvH54OS5mkPp
	rGVaur9urODaMcKWskUfKsVA2lnQEMd9BidHSZg5E+4kPh19JiEhE1lTjK0pVoZSlJSvug2N3+CfU
	fIsiED8SDXiZrfCfYnXCnKk7xnkxEawgRrst9DA37pZb6eui55ysZjjIMdjCpHNb8eW2YhsjiF1kH
	UYWJlqT94iX6kZomYAESZwXB19KVS5zxEUVAzcN5Qq/AzHa4ee3P82JMcUuER6t7xkkBKeXKRf55i
	1ci6pLevWr0IvKX7Gayg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2bfN-00000003L2c-0vzz;
	Fri, 04 Sep 2026 21:41:45 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2bfK-00000003L1c-0hxS
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Sep 2026 21:41:43 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-6a5e392b2b3so2399616a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Sep 2026 14:41:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788558099; cv=none;
        d=google.com; s=arc-20260327;
        b=qTtgkPehtIXFE8wWdJ3kRB1YeMJvRKPchVJ+4mOKv4eCBOS4PufylXf4aUYha2rHBh
         xa2GFfXRY7qlngq5Q8wxTFsapq2rvLClMB4OW9TaSACZDm/6wilwlh5Twkf7UIASoran
         Dw8Zmf7jkEmurtAwjI78rhd1YEkOvqeo/TNdefMjTY97hP8YkOHyg6nlD0MEH/Wa3F9R
         cr605an53/uhH0JSVGBZp11lSHbiKUiaGCuh55otsFsRSCr0+fWOrmB9dhSOR/tOWfjW
         bq1GuOgbs7YK9nS9fBEpIWL4RaucMaH6OJ7bYKHwyfRou/t9TsW7h3a99/9IHD5N8rAs
         KcCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=kue2/Pm3HbmZQzjeKahvdcnYX4KwQ6G8saPWSb5Rn6g=;
        fh=E6pM1CMl88sJTU9YVOzMx0Q8sWUeXHoMXHztBfoJDNA=;
        b=l6Hy/BHVHAgEjX1yC94wBcFBqQG3yPCn3jbZlYE0k3Av6vBWs2zFy1RFE8S4Piz/Wu
         PTwzzBlMbdovP3CFmeH56av5fYye8EOZKY9eKw4l5Z6AM4/VaJPvqEnIxq6z80it9y62
         pH7UhtIS2FFrGUQVXNZt6BFF4jJ4HUIfd2x7dCjiWFhtGdceui0Jy0DIN4z7YRyDHtmA
         codYfXklZ9K1ZhTbOA8DD6ggP47jp+We6izKXOYXpHdUmRUvcUcPY/Ymgu0VqH+oKTjG
         bCx/HPJ/ToQM3YTz6b1e7RjCP6M0CPclzR/J3n9UpODGHuFSl339fBdX6lm3PISXc5pK
         OSvw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788558099; x=1789162899; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=kue2/Pm3HbmZQzjeKahvdcnYX4KwQ6G8saPWSb5Rn6g=;
        b=SPSzU6/CnA6vnRGXi6d3FQG+jgydnlD5NYk6OT6kC0Mw/CtwXUkgXM0tTeBm5rPSEW
         yjihMHz5NavoY1kL6ky/O25ya95Xz4AFNqoFTeirTivvmbWz/jvVm2WrJ35Ki8LV7N1w
         lx842zj5va4gibMgn3LMoztzOPdolXYZf+zOHyV2LZa3SUSB0nODd9Li60GzXStfo9qs
         uzKtGTpVpUK8ug1ByUDbXkbwTKD1u3WrxSyJy7cqZURMuzrdBipo4doTp+VJ8Cjq7ihY
         DDc2GIMeKT8aTPw9ULyVRYOxuM5PJgSFzfnMdv/UJlQrShdHG2PqHSYmEhpowDhnscaI
         OSfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788558099; x=1789162899;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kue2/Pm3HbmZQzjeKahvdcnYX4KwQ6G8saPWSb5Rn6g=;
        b=fj+rTiWESDzp6M1PAvbzWtAGbcyucemfF4R8P5luN5zFIqkMb44FIH65sOsEwT0RDM
         fOcNQktO9X2b7iTXXCTSVqkLnp6uX5IW5jB106aCdM0G2mKko+osb0qh8+MnL1Wq8Eth
         cRrvxoqCnnZwzMyOlJVCDFxYNH9eMrbjxZUgDrHn0ktzAcM8LrYmTpAtLn41JqIAGw5l
         AHK08CA9jv1C2p7AdRxrbsaHLKkNMhofObcXjbrXYxD8kj2w4im8+W2goZkyvdVIzCu6
         eAej3zkvHOnbWXlFj/mD/lDedX2BB8sDpCF3+cg8Tl3Pv+4bM1Dg8JVGo+OeROLwhhos
         OuBw==
X-Forwarded-Encrypted: i=1; AKwUvBxenhyDn+r8rHHcTdVvLvo+HdqXLmk1EWhbtVhs6Y/wLmRSqEwJ0NblhBrVaE0tWpzU+5gugaZCwLuENqE/EQ==@lists.infradead.org
X-Gm-Message-State: AFuF++l6pn9uUxNFXd9zZdt9Op/5xq/sLhoQ9NQAl7oKmaacnGpfSsbV
	V+i5GIFy62q5YMJ5CaFakRsHhSx3FQfgeogUFZdvyLRduzLrvRu2V+iadrmKZC7aUVJs8sqb+2J
	ISnqaFlZHOZnuWHtDRZ1L94n7efJhOfs=
X-Gm-Gg: AYBFou0X1nmAirkCXfEaDN8AJIdLbZ90Bp55AcQjZYK5/hKhA1dMMMR5jsoL6MKBlxI
	4t6+F9cVApq012DO+p2N+/VU8m3oGbBG6Lpxum2goMFWdSsmy9M/N3oAHqCAVJ2nrNv2Ho3VIof
	Orla0oSxGzX/nk6UfVU9wskcZD/l/irLBEoYwzXm+ZTIuHNIP9hXdMPuFdDFqn6fuQ3DoOchjbn
	ok5FQn0DRjyFT1A24gQ3JD5195ERuvP4PjozfJQV4o9Oe2hSwvrcKY4T/GfNw/1AdUtWKXxDXgw
	AO0CBFs+5LUDaWd0jOj8u4zhpmXtB4vLzvP1C9zctuSdJYPXSCmPZONKtvOpJJ3XMXvDCWmVCb1
	qbaxPkudKeY4bYR0ebtcl/kmhBT2FPgtis1ck+8iZbOAwGqwgLWLTMlRUg8ctVDiIFI9sv7A2ab
	tKA+LZOBl6GnLQrotqTXuvI7Up5I0SHMOyRAsLv+wTbdhCIh8eMsbakrbq8isW6G3rQQ==
X-Received: by 2002:a05:6402:2752:b0:6a7:ea54:376 with SMTP id
 4fb4d7f45d1cf-6a7ea541ef3mr2147241a12.30.1788558099252; Fri, 04 Sep 2026
 14:41:39 -0700 (PDT)
MIME-Version: 1.0
References: <20260511032252.361906-1-rosenp@gmail.com> <agH-ivEdw12_3OJz@redhat.com>
 <CAKxU2N-nEx-=KFh9djQRGZVTR_HJTSrJYzAa8NR+4QcNvbkxqw@mail.gmail.com> <agI_ANymmPyyWxuE@redhat.com>
In-Reply-To: <agI_ANymmPyyWxuE@redhat.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 4 Sep 2026 14:41:27 -0700
X-Gm-Features: AcwNN1VOkSQ_1hll8MMht--OgvQL0IoR_OsYRYOz3Zmp855n0-aj2ZBGahPJ2b8
Message-ID: <CAKxU2N8YimZyKFoWtHT+FZwzD1R+MzvaXoCu0MhVEzvGHd9VhA@mail.gmail.com>
Subject: Re: [PATCH] clk: rockchip: Use flexible array for clock table
To: Brian Masney <bmasney@redhat.com>
Cc: linux-clk@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_144142_254125_208F9E54 
X-CRM114-Status: GOOD (  24.58  )
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

T24gTW9uLCBNYXkgMTEsIDIwMjYgYXQgMTo0MeKAr1BNIEJyaWFuIE1hc25leSA8Ym1hc25leUBy
ZWRoYXQuY29tPiB3cm90ZToKPgo+ICsgR3VzdGF2bwo+Cj4gT24gTW9uLCBNYXkgMTEsIDIwMjYg
YXQgMTI6MDg6NTZQTSAtMDcwMCwgUm9zZW4gUGVuZXYgd3JvdGU6Cj4gPiBPbiBNb24sIE1heSAx
MSwgMjAyNiBhdCA5OjA24oCvQU0gQnJpYW4gTWFzbmV5IDxibWFzbmV5QHJlZGhhdC5jb20+IHdy
b3RlOgo+ID4gPgo+ID4gPiBIaSBSb3NlbiwKPiA+ID4KPiA+ID4gT24gU3VuLCBNYXkgMTAsIDIw
MjYgYXQgMDg6MjI6NTJQTSAtMDcwMCwgUm9zZW4gUGVuZXYgd3JvdGU6Cj4gPiA+ID4gU3RvcmUg
dGhlIGNsb2NrIGxvb2t1cCB0YWJsZSBpbiB0aGUgUm9ja2NoaXAgY2xvY2sgcHJvdmlkZXIKPiA+
ID4gPiBhbGxvY2F0aW9uIGluc3RlYWQgb2YgYWxsb2NhdGluZyBpdCBzZXBhcmF0ZWx5Lgo+ID4g
PiA+Cj4gPiA+ID4gVGhpcyB0aWVzIHRoZSB0YWJsZSBsaWZldGltZSBkaXJlY3RseSB0byB0aGUg
cHJvdmlkZXIgYW5kIHJlbW92ZXMgYQo+ID4gPiA+IHNlcGFyYXRlIGFsbG9jYXRpb24gZmFpbHVy
ZSBwYXRoIHdoaWxlIHByZXNlcnZpbmcgdGhlIGNsa19vbmVjZWxsX2RhdGEKPiA+ID4gPiBsb29r
dXAgaW50ZXJmYWNlLgo+ID4gPiA+Cj4gPiA+ID4gQXNzaXN0ZWQtYnk6IENvZGV4OkdQVC01LjUK
PiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4KPiA+
ID4gPiAtLS0KPiA+ID4gPiAgZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLmMgfCAxNyArKysrLS0t
LS0tLS0tLS0tLQo+ID4gPiA+ICBkcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGsuaCB8ICAyICsrCj4g
PiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkK
PiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGsuYyBi
L2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay5jCj4gPiA+ID4gaW5kZXggZWU4Yzc5YjkzOGQzLi5k
YmI0YjZmMzNhYmIgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xr
LmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGsuYwo+ID4gPiA+IEBAIC0z
NTksMjYgKzM1OSwyMSBAQCBzdGF0aWMgc3RydWN0IHJvY2tjaGlwX2Nsa19wcm92aWRlciAqcm9j
a2NoaXBfY2xrX2luaXRfYmFzZSgKPiA+ID4gPiAgICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcg
bnJfY2xrcywgYm9vbCBoYXNfbGF0ZV9jbG9ja3MpCj4gPiA+ID4gIHsKPiA+ID4gPiAgICAgICBz
dHJ1Y3Qgcm9ja2NoaXBfY2xrX3Byb3ZpZGVyICpjdHg7Cj4gPiA+ID4gLSAgICAgc3RydWN0IGNs
ayAqKmNsa190YWJsZTsKPiA+ID4gPiAgICAgICBzdHJ1Y3QgY2xrICpkZWZhdWx0X2Nsa192YWw7
Cj4gPiA+ID4gICAgICAgaW50IGk7Cj4gPiA+ID4KPiA+ID4gPiAgICAgICBkZWZhdWx0X2Nsa192
YWwgPSBFUlJfUFRSKGhhc19sYXRlX2Nsb2NrcyA/IC1FUFJPQkVfREVGRVIgOiAtRU5PRU5UKTsK
PiA+ID4gPgo+ID4gPiA+IC0gICAgIGN0eCA9IGt6YWxsb2Nfb2JqKHN0cnVjdCByb2NrY2hpcF9j
bGtfcHJvdmlkZXIpOwo+ID4gPiA+ICsgICAgIGN0eCA9IGt6YWxsb2NfZmxleCgqY3R4LCBjbGtf
dGFibGUsIG5yX2Nsa3MpOwo+ID4gPiA+ICAgICAgIGlmICghY3R4KQo+ID4gPiA+ICAgICAgICAg
ICAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Cj4gPiA+ID4KPiA+ID4gPiAtICAgICBjbGtf
dGFibGUgPSBremFsbG9jX29ianMoc3RydWN0IGNsayAqLCBucl9jbGtzKTsKPiA+ID4gPiAtICAg
ICBpZiAoIWNsa190YWJsZSkKPiA+ID4gPiAtICAgICAgICAgICAgIGdvdG8gZXJyX2ZyZWU7Cj4g
PiA+ID4gLQo+ID4gPiA+ICAgICAgIGZvciAoaSA9IDA7IGkgPCBucl9jbGtzOyArK2kpCj4gPiA+
ID4gLSAgICAgICAgICAgICBjbGtfdGFibGVbaV0gPSBkZWZhdWx0X2Nsa192YWw7Cj4gPiA+ID4g
KyAgICAgICAgICAgICBjdHgtPmNsa190YWJsZVtpXSA9IGRlZmF1bHRfY2xrX3ZhbDsKPiA+ID4g
Pgo+ID4gPiA+IC0gICAgIGN0eC0+cmVnX2Jhc2UgPSBiYXNlOwo+ID4gPiA+IC0gICAgIGN0eC0+
Y2xrX2RhdGEuY2xrcyA9IGNsa190YWJsZTsKPiA+ID4gPiAgICAgICBjdHgtPmNsa19kYXRhLmNs
a19udW0gPSBucl9jbGtzOwo+ID4gPiA+ICsgICAgIGN0eC0+Y2xrX2RhdGEuY2xrcyA9IGN0eC0+
Y2xrX3RhYmxlOwo+ID4gPgo+ID4gPiBXaGVyZSdzIHRoZSBfX2NvdW50ZWRfYnk/IEFsc28gc3Ry
dWN0IGNsa19vbmVjZWxsX2RhdGEgaXMgZW1iZWRkZWQKPiA+ID4gaW5zaWRlIHN0cnVjdCByb2Nr
Y2hpcF9jbGtfcHJvdmlkZXIsIGFuZCBJJ20gbm90IHN1cmUgb2ZmaGFuZCBob3cKPiA+ID4gdGhh
dCdsbCB3b3JrLgo+ID4gTm90IHByZXNlbnQuIF9fY291bnRlZF9ieSBkb2VzIG5vdCB3b3JrIHdp
dGggZW1iZWRkZWQgc3RydWN0IG1lbWJlcnMuCj4gPiBObyBuZWVkIHRvIGFkZCBvbmUgSU1PLgo+
Cj4gSSdsbCBiZSBob25lc3QgdGhhdCBJJ20gbm90IHN1cmUgd2hhdCdzIGNvcnJlY3QgaGVyZS4g
SSBhZGRlZCBHdXN0YXZvCj4gc2luY2UgSSBzYXcgY29tbWVudHMgZnJvbSBoaW0gYmVmb3JlIGFi
b3V0IHRoZXNlIHR5cGVzIG9mIGNoYW5nZXMuCkFueXRoaW5nIGVsc2U/IFRoZSBjb21tZW50cyBB
RkFJSyB3ZXJlIGFib3V0IGRlc2NyaXB0aW9ucyBvZiB3aHkgdGhlCmNvdW50aW5nIHZhcmlhYmxl
IGFzc2lnbm1lbnQgd2FzIG1vdmVkLiBUaGVyZSdzIG5vIGNvdW50aW5nIHZhcmlhYmxlCmhlcmUu
Cj4KPiBCcmlhbgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
