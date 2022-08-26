Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C2C0ECAAD2
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Aug 2022 06:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cuQ4AbBVE2keLuIDMI++9FuEz9j7UbrT5BYEhowJInQ=; b=wRFWDprw/H2x6X
	rFmYJBjgdr9QlAynp1GPyBy2BSkKkIzBFia9u/oAlpuBu9tDFNPj0Pk1RnA2xifjfZu6J15efqVDT
	az54+euFTBIMECMPS2TY5xNRVTD8DApFUR2OhBmK3Kzn4IhqwPEMCJtixmVDVDmKRw14tYHb4ZbLd
	p/S8l6KK5U5uwIM1FfhamWYHWhKwG5PCQFLc1g1Jr7/F877a3vWTWvgoK3DbpteaoM10ufqsZueNh
	KQHlPFWnowKU8EdGcX93pPlzLps3f9c+nF5dqgkTuqjxAfUZG5xT5whogcHNzQ3gwQRJSpFSHOb8g
	guy3RVXB6k6giuJ3tmiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRSgC-00Eb1w-Kh; Fri, 26 Aug 2022 06:18:56 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRSg9-00Eazp-PQ
	for linux-rockchip@lists.infradead.org; Fri, 26 Aug 2022 06:18:55 +0000
Received: by mail-lf1-x129.google.com with SMTP id bq23so731490lfb.7
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Aug 2022 23:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=A55HGbYQY2Lsh3pXU2s/MT7frhz3q170job4bpURDR8=;
        b=D9FXwwocqQuKuITVY17hqXcail+ZUw2Bdz/LklCoyjPV3zqoIZqqKyg1ul/oxSrxNi
         zSIGHC9p2/rthPck8wZDPwtSqK6xwXIAHA+bckmqvsq6Ub8zIUKP8Qi4urI8lQNDWZb6
         WJuOhB4CM2F34LlvnAuQCexb+9lquIzO5Z1sLt8P7pUsYA6yH2iLHsk2+H0C1JO6ZJ3I
         SLnpr2CS3aUIvQXoth67P/SeHTZhcwNMw2L2Lz0JeUZmolg9iBt9a5kq5KMALNHvEmkB
         gRk/SFyxsgdM8Rie130nVdcxxugqvQLom3HdxRc/38klaUZBrbEpM51YeJ10E+BxYdOS
         q66g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=A55HGbYQY2Lsh3pXU2s/MT7frhz3q170job4bpURDR8=;
        b=JQmUNyRCFi4Gmv6IQI/Te+sfa880idmN1Qmhubrl3wkNLSfx4OMYC1blJ4pIeBtSK1
         9hRNo2g4jJIldkYZVZ9zPA58abPBjgVtBZoKovoxHflgGxB4hfwmJ+OF8D4fOKgI+prk
         QUP9fFHYFcOlFRi2sIxnUZJCHfIlIwxxERmKDncbP1tmxmn4mdatrLyZXrtD78PW6bNW
         3BdriNn6n1KQAXw+D2SfUUFRr9Mvlflp3Ad6KxCy0wtNWSEqHJRgDeSjW+NwxhczXb5r
         /5WPKNBs1YKb/Q82Z8XQXHZxKC58OAga91GWz0jGfNrXumBIVY3Lu4rxrT0xd6Eo9vJR
         YVTg==
X-Gm-Message-State: ACgBeo3iemZ7tItZ2apGLkX+GKbAju35NW4aYit2h9Wmbb00rXL6mvZP
	hzv+/fJ/og+vLvas2n/We4vxroBpTG1J7GiIP417t7nKlNo=
X-Google-Smtp-Source: AA6agR56PjLkcrFGDmjXRZ/cOvlTj/BMul2j1x5LUi/Wekp9qAXPt1csxnIlMMWojdGlDk+lXRbAqEiPptK7eI8tx4c=
X-Received: by 2002:a19:640a:0:b0:492:8df3:f29b with SMTP id
 y10-20020a19640a000000b004928df3f29bmr1923091lfb.306.1661494729300; Thu, 25
 Aug 2022 23:18:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220823193015.10229-1-macroalpha82@gmail.com>
 <20220823193015.10229-4-macroalpha82@gmail.com> <66b99ce4-752a-17e7-3213-26a898abd4a8@gmail.com>
 <SN6PR06MB5342ACD1362403FC9FE38627A5729@SN6PR06MB5342.namprd06.prod.outlook.com>
 <6e905128-0dd1-d3a8-09ad-2645c3e12625@gmail.com>
In-Reply-To: <6e905128-0dd1-d3a8-09ad-2645c3e12625@gmail.com>
From: Maya Matuszczyk <maccraft123mc@gmail.com>
Date: Fri, 26 Aug 2022 08:18:20 +0200
Message-ID: <CAO_MupJ4vUtxtz76aw5z_R+jS3_7HyWHVfgieQkxa9PdHjCEAQ@mail.gmail.com>
Subject: Re: [PATCH V9 3/4] power: supply: Add charger driver for Rockchip RK817
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Chris Morgan <macromorgan@hotmail.com>, Chris Morgan <macroalpha82@gmail.com>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-pm@vger.kernel.org, 
	devicetree <devicetree@vger.kernel.org>, zhangqing@rock-chips.com, zyw@rock-chips.com, 
	jon.lin@rock-chips.com, sre@kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, lee@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_231853_867638_5B55F088 
X-CRM114-Status: GOOD (  37.06  )
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

cHQuLCAyNiBzaWUgMjAyMiBvIDA3OjUyIE1hdHRpIFZhaXR0aW5lbiA8bWF6emllc2FjY291bnRA
Z21haWwuY29tPiBuYXBpc2HFgihhKToKPgo+IE9uIDgvMjUvMjIgMTg6MzcsIENocmlzIE1vcmdh
biB3cm90ZToKPiA+IE9uIFRodSwgQXVnIDI1LCAyMDIyIGF0IDAzOjU0OjA2UE0gKzAzMDAsIE1h
dHRpIFZhaXR0aW5lbiB3cm90ZToKPiA+PiBPbiA4LzIzLzIyIDIyOjMwLCBDaHJpcyBNb3JnYW4g
d3JvdGU6Cj4gPj4+IEZyb206IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+
Cj4gPj4+Cj4gPj4+IEFkZCBzdXBwb3J0IGZvciB0aGUgUm9ja2NoaXAgcms4MTcgYmF0dGVyeSBj
aGFyZ2VyIGludGVncmF0ZWQgaW50byB0aGUKPiA+Pj4gcms4MTcgUE1JQy4KPiA+Pj4KPiA+Pj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiA+
Pj4gU2lnbmVkLW9mZi1ieTogTWF5YSBNYXR1c3pjenlrIDxtYWNjcmFmdDEyM21jQGdtYWlsLmNv
bT4KPiA+Pj4gLS0tCj4gPj4+ICAgIGRyaXZlcnMvcG93ZXIvc3VwcGx5L0tjb25maWcgICAgICAg
ICB8ICAgIDYgKwo+ID4+PiAgICBkcml2ZXJzL3Bvd2VyL3N1cHBseS9NYWtlZmlsZSAgICAgICAg
fCAgICAxICsKPiA+Pj4gICAgZHJpdmVycy9wb3dlci9zdXBwbHkvcms4MTdfY2hhcmdlci5jIHwg
MTE1NyArKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4+PiAgICAzIGZpbGVzIGNoYW5nZWQs
IDExNjQgaW5zZXJ0aW9ucygrKQo+ID4+PiAgICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9w
b3dlci9zdXBwbHkvcms4MTdfY2hhcmdlci5jCj4gPj4+Cj4gPj4+ICsKPiA+Pj4gK3N0YXRpYyB2
b2lkIHJrODE3X2NoYXJnaW5nX21vbml0b3Ioc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ID4+
PiArewo+ID4+PiArICAgc3RydWN0IHJrODE3X2NoYXJnZXIgKmNoYXJnZXI7Cj4gPj4+ICsKPiA+
Pj4gKyAgIGNoYXJnZXIgPSBjb250YWluZXJfb2Yod29yaywgc3RydWN0IHJrODE3X2NoYXJnZXIs
IHdvcmsud29yayk7Cj4gPj4+ICsKPiA+Pj4gKyAgIHJrODE3X3JlYWRfcHJvcHMoY2hhcmdlcik7
Cj4gPj4+ICsKPiA+Pj4gKyAgIC8qIFJ1biBldmVyeSA4IHNlY29uZHMgbGlrZSB0aGUgQlNQIGRy
aXZlciBkaWQuICovCj4gPj4+ICsgICBxdWV1ZV9kZWxheWVkX3dvcmsoc3lzdGVtX3dxLCAmY2hh
cmdlci0+d29yaywgbXNlY3NfdG9famlmZmllcyg4MDAwKSk7Cj4gPj4+ICt9Cj4gPj4KPiA+PiBJ
IHJlYWxseSB0aGluayB3ZSB3b3VsZCBiZW5lZml0IGZyb20gc29tZSBtb3JlIGZyYW1ld29yayBj
b2RlIHdoaWNoIGNvdWxkCj4gPj4gaGFuZGxlIHRoZSBwZXJpb2RpYyBwb2xsaW5nIHRhc2tzIGFu
ZCB0aGUgY291bG9tYiBjb3VudGVyIGRyaWZ0IGNvcnJlY3Rpb25zCj4gPj4gd2hlbiBiYXR0ZXJ5
IGlzIGZ1bGwvcmVsYXhlZC4gSSB0aGluayBJIG1pZ2h0IHJldml2ZSB0aGUgc2ltcGxlLWdhdWdl
IHBhdGNoCj4gPj4gc2VyaWVzLi4uCj4gPgo+ID4gUG9zc2libHksIGRvZXMgc3VjaCBleGlzdCBv
ciBpcyB0aGF0IGEgZnV0dXJlIGVuZGVhdm9yPwo+Cj4gTm8uIFN1Y2ggYSBmZWF0dXJlIGRvZXMg
bm90IGV4aXN0IHVwc3RyZWFtLiBJdCB3YXMganVzdCBzb21lIGJhYmJsaW5nIEkKPiBkaWQgaGVy
ZSA6KSBJIHN0YXJ0ZWQgZHJhZnRpbmcgc29tZXRoaW5nICJnZW5lcmljIiB0aGF0IHdvdWxkIGRv
IHBvbGxpbmcKPiBvZiBjb3Vsb21iIGNvdW50ZXIgLyBiYXR0ZXJ5IHN0YXRlIChmdWxsL3JlbGF4
ZWQpIGFuZCB0aGVuIHBlcmZvcm0gc29tZQo+ICdDQyByZXNldHRpbmcnIHRvIGNvcnJlY3QgZHJp
Zml0bmcgZXJyb3IgYW5kIGNvbXB1dGUgdGhlIFNPQyBiYXNlZCBvbiBDQwo+IHZhbHVlcy4gVGhh
dCB3b3VsZCBvYnZpb3VzbHkganVzdCBiZSBhIG1hY2hpbmVyeSB0aGF0IGNhbGxzIGRyaXZlcgo+
IGNhbGxiYWNrcy4gSSBkaWQgc3VwcG9ydCBmb3IgdHdvIFJPSE0gY2hhcmdlcnMgdXNpbmcgdGhp
cyBjb25jZXB0IGJ1dCBJCj4gaGFkIHRvIHN3aXRjaCB0byBzb21lIHVyZ2VudCB0YXNrcyBiZWZv
cmUgSSBtYW5hZ2VkIHRvIGRvIHByb3Blcgo+IHRlc3RpbmcuIE1pZ2h0IGdldCBiYWNrIHRvIHRo
YXQgbGF0ZXIgdGhvdWdoIChkZXBlbmRpbmcgb24gdGhlIG90aGVyCj4gZHV0aWVzKS4KPgo+ID4g
SSdtIG9ubHkgcmVhbGx5Cj4gPiBkb2luZyB0aGUgcG9sbGluZyBiZWNhdXNlIHRoYXQncyBob3cg
dGhlIEJTUCBkcml2ZXIgd2FzIHNldCB1cCAoYW5kIEkKPiA+IHRoaW5rIGl0IG1ha2VzIHNlbnNl
IHRvIG5vdCByZXBlYXRlZGx5IGNoZWNrIGZvciB0ZWVueS10aW55IGNoYW5nZXMgYWxsCj4gPiB0
aGUgdGltZSkuCj4KPiBJIGFtIGZhciBmcm9tIGJlaW5nIGFuZCBleHBlcnQgb24gdGhlIGNoYXJn
ZXJzIHNvIEkgY2FuJ3Qgc2F5IGlmIHRoaXMgaXMKPiB0aGUgImRlLWZhY3RvIiB3YXkgb2YgZG9p
bmcgdGhpbmdzLiBJIGp1c3QgaGF2ZSBhIGZlZWxpbmcgdGhpcyAodGhpcwo+IG1lYW5pbmcgcGVy
aW9kaWMgcmVhZGluZyBmcm9tIEhXIGFuZCB0aGVuIHJldHVybmluZyB0aGUgJ2NhY2hlZCcgdmFs
dWVzCj4gdG8gdXNlci1zcGFjZSkgaXMgcXVpdGUgY29tbW9uIChJIG1heSBiZSB3cm9uZyB0aG91
Z2gsIG1hbnkgb3RoZXJzCj4gaW5jbHVkaW5nIFNlYmFzdGlhbiBhbmQgTGludXMgVyBoYXZlIF9t
dWNoXyBtb3JlIGluc2lnaHQgaW50byBob3cKPiBjaGFyZ2Vycy9jaGFyZ2VyIGRyaXZlcnMvdXNl
ci1zcGFjZSBvcGVyYXRlKS4gQ2FjaGluZy9wb2xsaW5nIHNvdW5kcwo+IGxpa2UgYSB0YXNrIHRo
YXQgY291bGQgYmUgaW1wbGVtZW50ZWQgaW4gdGhlIGZyYW1ld29yayBjb2RlIHJhdGhlciB0aGFu
Cj4gaW4gbWFueSBpbmRpdmlkdWFsIGRyaXZlcnMuIChUaGlzIGNvbW1lbnQgZG9lcyBub3QgbWVh
biBJIHdvdWxkIGV4cGVjdAo+IFlvdSB0byB3cml0ZSBzdWNoIGEgZnJhbWV3b3JrIGZvciB0aGlz
IGRyaXZlciAtIGFzIEkgc2FpZCwgSSBhbSBqdXN0Cj4gcG9uZGVyaW5nIGFsb3VkIGFuZCB3YWl0
aW5nIHRvIHNlZSBob3cgb3RoZXJzIHRoaW5rIG9mIHRoaXMgOl0gKQo+Cj4gPiBJZiB0aGVyZSdz
IGFuIGV4aXN0aW5nIGZyYW1ld29yayBsZXQgbWUga25vdywgb3RoZXJ3aXNlIEknbGwKPiA+IGtl
ZXAgbXkgZXllIG91dCBpbiB0aGUgZnV0dXJlIGFuZCByZXZpc2UgdGhpcyBpZiBJIGNhbiB3aGVu
IGl0J3MgbGl2ZS4KPgo+IFNvIG5vIGV4aXN0aW5nIGZyYW1ld29yayBhbmQgcGxlYXNlLCBkb24n
dCBob2xkIHlvdXIgYnJlYXRoIHdhaXRpbmcgZm9yCj4gb25lIDspIEl0J3Mgc3RpbGwgZ3JlYXQg
dG8ga25vdyB0aGF0IHlvdSBjYW4gYmUgcGluZ2VkIGlmIEkgbWFuYWdlIHRvCj4gY29vay11cCBz
b21ldGhpbmcuCkZlZWwgZnJlZSB0byBwaW5nIG1lIHRvbywgSSBzdGFydGVkIHRoZSB3b3JrIG9u
IG1haW5saW5lIHJrODE3IGNoYXJnZXIKZHJpdmVyIGFuZCBJJ3ZlIGdvdCBkZXZpY2Ugd2l0aCBi
YXR0ZXJ5IGNvbm5lY3RlZCB0byByazgxOCBjaGlwIGp1c3QKbGF5aW5nIGFyb3VuZCBhbmQgSSBh
c3N1bWUgdGhhdCBpdCdzIHF1aXRlIHNpbWlsYXIgdG8gcms4MTcuCgpCZXN0IFJlZ2FyZHMsCk1h
eWEgTWF0dXN6Y3p5awoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
