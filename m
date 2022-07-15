Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12D50C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jul 2022 19:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTt1g0ScD40/CRPP1cNaEgUoJQ0k/m2Un9tcZ5IEI6I=; b=PzWKK/qhFz376M
	ssp1WaI2RDGMQOIQeoag+t/7HQLx0eRwDUpwFTG7MKvaP/1BdzRX5L4s9rb0ycy2m+j3Ad0HxR6d0
	5BRxKkpjk5VVffHvMUtX2WEnmzohpGxAAqRkY9U6Qmm2toX5qMUdfPCQx9esP2NqjFkA3VP3VYWzr
	fYILep5jP8PIkMfPWNlLyo+83KBXzG0HSHDhz385xrBYa02Jf3s/mCaFNkDDMn6yNzSeG7pNl6fLg
	v7h2Wi22CDf3EL9XW1t20E9eaTEX133KWddyasF7csK/P8R8r/3XLYcxLXofQ5OZLQmazTkAR7zzb
	ZH6BMujSUz47aJzxOxhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCQcE-009cDy-6p; Fri, 15 Jul 2022 19:04:42 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCQby-009c2F-2L
	for linux-rockchip@lists.infradead.org; Fri, 15 Jul 2022 19:04:28 +0000
Received: by mail-ej1-x62a.google.com with SMTP id b11so10513880eju.10
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Jul 2022 12:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=bv2dOhFfF2dk3rLWdihNlfJKNevFVvMuIuaBR1GrWRE=;
        b=C2TKJm5IFjGEWJD7Q5OSvM7ms789VUE4H0SshdOsXi3HBldXepa1WRPnnUZ3nQBm90
         3zhmtQC7b9aYbi4fWkgPIttqG2M1era+PHqkCZW+8RpCvSlU+5B8cPssYmOIGo/632Xa
         +aVeXZnSE97zEg767JEi34Keyf5Vlka4VFLlN0625atSzEXPcLlWIf7wke1im0r8X1OZ
         D94rXiwPs/C4fjZazbdxyZ+h+HkPbcs1HMzJlDu6oY60Pu0A7aR++StIjYgJrLwMt/rx
         KxWjGMUripZKRDqbL8CqH72TlXYi3OcXSCYACwmgIzpo3lOUnrSBTBXXxgX1x3r6tMEn
         nL0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=bv2dOhFfF2dk3rLWdihNlfJKNevFVvMuIuaBR1GrWRE=;
        b=Y6j2qwZgsWEvFuuZehKepZkq5P09QpJEQEZ6GW6e2yws+5lC4kjEYkZIDdenhjhx5H
         cPWIixiuYxCyM3vR/cA16SurYyZ2zVkvf1nZFScfoEq9fL5SO79oK5MsGS6NNb60WVmo
         Iw8KCBUFsdNIraOlQuVFVjm6FEc8HAfHTW/0qrfTNbRquzMnezUZTi4qttmoRVDWC68M
         ADO4/VNh8f4/d1hqSj/zr1PAayo5F+DIG8/DlwSdHdpFZ9MFzIHOAyyQ2uu2KShOjpco
         QE4dFYpjVd2h/Sv42L+tIPVKymB/MEoQ8K30QmYy0Eut2S2Tp8ZDMRtUvz2u4n3DZ19P
         NJVw==
X-Gm-Message-State: AJIora+nDLKtbykAhKVXcwJabyXhHaeNcv1I8E8yLY7w9iMQdKWozvI/
	q0677M97s92jdP3x61xOw688sf3z3hMFmU8D
X-Google-Smtp-Source: AGRyM1tPel0R2mg91POFeBUbB4WlNmAh0eE483+HEoJ5xuYhHXc/h54jUcmOslGngJBsu7eYtwFQaA==
X-Received: by 2002:a17:907:9605:b0:6f5:c66:7c13 with SMTP id gb5-20020a170907960500b006f50c667c13mr15273977ejc.66.1657911862212;
        Fri, 15 Jul 2022 12:04:22 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id u18-20020a05640207d200b0042dcbc3f302sm3276938edy.36.2022.07.15.12.04.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jul 2022 12:04:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: [PATCH v4] arm64: dts: rockchip: Fix SD card init on
 rk3399-nanopi4
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <9405b97a-6758-ad4e-ccff-eed072096539@arm.com>
Date: Fri, 15 Jul 2022 21:04:20 +0200
Cc: wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
Message-Id: <BF7CC548-88C9-4889-8A41-8E99C31EF81C@kohlschutter.com>
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
 <590f7a08-a6ca-be54-4254-363343642a52@arm.com>
 <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com>
 <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
 <CAGb2v65Ehbu1wrib2CzF1fDZuD3fHZQDhKfVusyUF9KnxTvi+Q@mail.gmail.com>
 <5ca9bd94-54d9-04f8-0098-a56ffb6f5fe1@arm.com>
 <502b3fbe-3077-407e-6010-a8cb3ffce7d6@arm.com>
 <449292CA-CE60-4B90-90F7-295FBFEAB3F8@kohlschutter.com>
 <73F9AED0-D2A8-4294-B6E1-1B92D2A36529@kohlschutter.com>
 <115AD6A4-021B-4879-BFB5-BC7689A0203E@kohlschutter.com>
 <17a4c6f6-d79c-a7b2-860f-e5944b778f9f@arm.com>
 <9405b97a-6758-ad4e-ccff-eed072096539@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_120426_171750_D38EA7C4 
X-CRM114-Status: GOOD (  17.53  )
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

QW0gMTUuMDcuMjAyMiB1bSAyMDo1NyBzY2hyaWViIFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5
QGFybS5jb20+Ogo+IAo+IE9uIDIwMjItMDctMTUgMTk6MTEsIFJvYmluIE11cnBoeSB3cm90ZToK
Pj4gT24gMjAyMi0wNy0xNSAxODoxNiwgQ2hyaXN0aWFuIEtvaGxzY2jDvHR0ZXIgd3JvdGU6Cj4+
PiBPSywgdGhpcyB0b29rIG1lIGEgd2hpbGUgdG8gZmlndXJlIG91dC4KPj4+IAo+Pj4gV2hlbiBu
byB1bmRlcnZvbHRhZ2UgbGltaXQgaXMgY29uZmlndXJlZCwgSSBjYW4gcmVsaWFibHkgdHJpZ2dl
ciB0aGUgaW5pdGlhbGl6YXRpb24gYnVnIHVwb24gYm9vdC4KPj4+IFdoZW4gdGhlIGxpbWl0IGlz
IHNldCB0byAzLjBWLCBpdCByYXJlbHkgb2NjdXJzLCBidXQganVzdCBhZnRlciBJIHNlbmQgdGhl
IHYzIHBhdGNoLCBJIHdhcyBhYmxlIHRvIHJlcHJvZHVjZS4uLgo+PiBXZWxsIHRoaXMgaGFzIHRv
IGJlIGluIHRoZSBydW5uaW5nIGZvciAid2VpcmRlc3QgcGxhY2VibyBldmVyIi4uLiA6Lwo+PiBB
bGwgaXQgYWN0dWFsbHkgc2VlbXMgdG8gYWNoaWV2ZSBpcyBwcmludGluZyBhbiBlcnJvclsxXSAo
dGhpcyBpcyBhZnRlciBhbGwgYSB0aW55IDUtcGluIGZpeGVkLXZvbHRhZ2UgTERPIHJlZ3VsYXRv
ciwgbm90IGFuIGludGVsbGlnZW50IFBNSUMpLCBhbmQgaWYgdGhhdCBtYWtlcyBhbiBhcHByZWNp
YWJsZSBkaWZmZXJlbmNlIHRoZW4gdGhlcmUgaGFzIHRvIGJlIHNvbWUga2luZCBvZiB3ZWlyZCB0
aW1pbmcgY29uZGl0aW9uIGF0IHBsYXkuIE1heWJlIHJlZ3VsYXRvcl9yZWdpc3RlcigpIGVuZHMg
dXAgdHVybmluZyBpdCBvZmYgYW5kIG9uIGFnYWluIHJhcGlkbHkgZW5vdWdoIHRoYXQgdGhlIGNh
cmQgc2VlcyBhIHZvbHRhZ2UgYnJvd25vdXQgYW5kIGdsaXRjaGVzLCBhbmQgYWRkaW5nIG1vcmUg
ZGVsYXkgYnkgcHJpbnRpbmcgdG8gdGhlIGNvbnNvbGUgc29tZXdoZXJlIGluIHRoZSBtaWRkbGUg
Z2l2ZXMgaXQgZW5vdWdoIHRpbWUgdG8gYWN0IGFzIGEgcHJvcGVyIHBvd2VyIGN5Y2xlIHdpdGgg
bm8gaWxsIGVmZmVjdD8KPiAKPiAuLi5hbmQgYXBwYXJlbnRseSB0aGUgYW5zd2VyIGlzIHllcywg
aXQgc2VlbXMgdG8gYmUgZG9pbmcgZXhhY3RseSB0aGF0IChzZWUgYXR0YWNoZWQpLiBCdXQgc2Vl
bWluZ2x5IG15IFNEIGNhcmRzIGRvbid0IG1pbmQsIG9yIG1heWJlIG15IFQ0IGJvYXJkIGhhcHBl
bnMgdG8gaGF2ZSBtb3JlIGNhcGFjaXRhbmNlIHRoYW4gQ2hyaXN0aWFuJ3MgUjRTIHNvIG15IHZv
bHRhZ2UgZGlwIGlzbid0IGFzIGJhZCwgb3IgYm90aC4KPiAKPiBTbyBpdCBzZWVtcyBsaWtlIHRo
ZSBzb2x1dGlvbiBoZXJlIG1pZ2h0IGluZGVlZCBzaW1wbHkgYmUgdG8gcmVtb3ZlIHRoZSByZWd1
bGF0b3ItYWx3YXlzLW9uIHdoaWNoIGRvZXNuJ3Qgc2VlbSB0byBoYXZlIGFueSByZWFzb24gdG8g
YmUgaGVyZSBhbnl3YXkuIFdpdGhvdXQgdGhhdCwgdGhlIGVuYWJsZSBzdGF5cyBsb3cgdW50aWwg
dGhlIE1NQyBkcml2ZXIgcHJvYmVzIGFuZCBjbGFpbXMgaXQsIHdoaWNoIGlzIHRoZW4gbWFzc2l2
ZWx5IGxvbmdlciB0aGFuIHRoZSB0aW1lIGl0IHRha2VzIGZvciBWQ0MzVjBfU0QgdG8gcmFtcCBk
b3duIGNvbXBsZXRlbHkuCj4gCj4gUm9iaW4uCgpSZW1vdmluZyAicmVndWxhdG9yLWFsd2F5cy1v
biIgaGFzIHRoZSBlZmZlY3QgdGhhdCB0aGUgc3lzdGVtIGZyZWV6ZXMgdXBvbiByZWJvb3QuIFRo
ZXJlIG1heSB3ZWxsIGJlIGFub3RoZXIgYnVnIHNsdW1iZXJpbmcgaW4gdGhlIGNvZGViYXNlIHRo
YXQgaXMgY2lyY3VtdmVudGVkIGJ5IDEuIGFkZGluZyBhIGRlbGF5IGluIHRoZSBjb2RlIGFuZCAy
LiBub3QgdHVybmluZyB0aGUgcmVndWxhdG9yIG9mZiB1cG9uIHNodXRkb3duLgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
