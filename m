Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 134A3C74A5B
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q5ADGTtpfaYx0xsIoOTWIU4XSaDUlYRMOdEH+pwNkMc=; b=ToedkEtMpkF8NW
	bmFcGsyUQ8hmOoUCQaZuL+VeQ7//efr1vQjWlL8A60cyaI/gfaiyFZAJgCHtZpeEgpqCLcIbBFTJU
	4i944hXsUETvbC996SFZZJ4JzrzgepshfCFmQ8y5DDM67lh8ou0dMtgt+iLl4IoMLEnpsvjYcJLCs
	9nrpRAdIlJkDi7q5yb9cD0gbJEHBgjM6Z6fcToHZgaPGtpEiVUSfOcXBWXzjfHGlcTgDMxf8o32r1
	fPJQ7QYHeB9HWhkQko0PF3ddeVy4TX8XKlUtrXd3h3Zk7AGkyLZMdxsDspdLGt4PEikub21kgCk3l
	vAmoaqSRgb6pVDLyfq/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgTiX-008qgh-1s;
	Sun, 26 Mar 2023 16:59:41 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgTiU-008qg1-23;
	Sun, 26 Mar 2023 16:59:39 +0000
Received: by mail-wr1-x42b.google.com with SMTP id v1so6330403wrv.1;
        Sun, 26 Mar 2023 09:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679849976;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4onfKPR5OV3H8ezXvNnqQtHHZOpBtrzFFIqmv0blz20=;
        b=F6M99Gu/29cxqx2Ny1B34fJ6KzEVNqQUdeB6+w5fcVYc0G5Mnyebxly18qN5QkEJ7W
         W1Tye1OHF4qPYf9f9FnR/uIw/eWztZjw1nAyhLq6F3a9aMUi1zrSlBGbHkN3hc2SGF3s
         A6dciSwZbxpNodkOORZC8UsKRiWw0N2fC6Uh2NfetPQi5WkjJzonMSdO/ENp38KrnBu9
         H0r9WKPZHiYdwNDMjodf1f7ogn23kfq8EHQQ7u79EY+Ncn26AFr419javWSP6zepK3FR
         1xjpU3GSabT9vpPSK9r7uEYE86R5aRzOWa8Qt4vNjzWEPiD65Qk7VYU6gSja7A3Q6Vr5
         tcYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679849976;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4onfKPR5OV3H8ezXvNnqQtHHZOpBtrzFFIqmv0blz20=;
        b=rL2VUVeJqf3o18rfYfoxBjD57E1cCiB25RTYIXPNtDOfW/EDxZsPLhrvsGtMIsxAik
         GG45yVGCMnOqEHcbgMwuJqAhAyAdABb6SfQ1N+xn4sD571kTjLOhl+avvX+AWq9Z6vDk
         d4Fk2CEozv1Q0VB37yhYqAn7lTVbppyUSo4qJXypqfgptP4Kwd7J8T6DI/8ccqFJJGe1
         01Z3+5Z6dNnd4NeVgMGW4FeXNdOCffKxH0SWrTkhUvA8obgZj4MNjpA4mbQmEqTPE8jT
         F6io2JU6PUH3XYzr/etuojRTQgHMQbt41VCp9vX8tHXynAY2idjfT+SJfjGXzzhVGACX
         AqgA==
X-Gm-Message-State: AAQBX9c10xtuaXWigv4chwLYschwRb/Of5isWvhYCg7+52i6hZ+TWiOa
	Scob/jVR3GT7K9m+Xyew5zvRXYCZDbSs9FtXeUA=
X-Google-Smtp-Source: AKy350auyOW51dcsEwSuS3Tg3x334Pt9EVII6MmtPIIGeMOP0puGxpIVEQCLy7aqA7YGXMxkjfHF7nEUR6fKBM9dO5Q=
X-Received: by 2002:adf:ec82:0:b0:2c7:156c:ae8d with SMTP id
 z2-20020adfec82000000b002c7156cae8dmr1819274wrn.2.1679849976117; Sun, 26 Mar
 2023 09:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <20230326001535.149539-1-bigbeeshane@gmail.com>
 <20230326001535.149539-2-bigbeeshane@gmail.com> <10930783-e1dd-5e75-a2cc-a09af862d949@linaro.org>
 <CABnpCuCzdbWTTp1Gc6wWPsB80J5GYw1QzKtZzzyEYU456E=1JA@mail.gmail.com> <1b9c8e19-10f2-824d-9b50-51e7a9287bb1@linaro.org>
In-Reply-To: <1b9c8e19-10f2-824d-9b50-51e7a9287bb1@linaro.org>
From: Shane Francis <bigbeeshane@gmail.com>
Date: Sun, 26 Mar 2023 17:59:25 +0100
Message-ID: <CABnpCuAWm7jh19JKukOquPnZCwHoJispgDPGJzjYy6T_BZSnbg@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: clock: update rk3588 clock definitions
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_095938_679205_1055170D 
X-CRM114-Status: GOOD (  23.51  )
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

SGkgS3J6eXN6dG9mCgoKPiBTbyBtZW50aW9uIHRoaXMgaW4gdGhlIGNvbW1pdCBtc2cuCgo+IFRo
ZW4gY29tbWl0IG1zZyBzaG91bGQgYWxzbyBtZW50aW9uIGl0LgoKU29ycnkgZm9yIG5vdCBleHBh
bmRpbmcgb24gdGhpcyBtb3JlIGluIHRoZSBpbml0aWFsIGNvbW1pdCBtZXNzYWdlLCBJIHdpbGwK
ZXhwYW5kIG9uIHRoaXMgaW4gdGhlIG5leHQgcGF0Y2ggc2V0LgoKSG93ZXZlciBJIHRoaW5rIGlu
IGdlbmVyYWwgZm9yIG1vc3QgbW9kZXJuIHBsYXRmb3JtcyBpdCBjYW4gYmUgYXNzdW1lZAp0aGF0
IHJlcGxhY2luZyB0aGUgYm9vdGxvYWRlciBpcyBub3QgYWx3YXlzIHNvbWV0aGluZyB0aGF0IGlz
IGFjaGlldmFibGUKZm9yIG9uZSByZWFzb24gb3IgYW5vdGhlcgoKClRoYW5rcyBJbiBBZHZhbmNl
CgpPbiBTdW4sIE1hciAyNiwgMjAyMyBhdCAzOjUx4oCvUE0gS3J6eXN6dG9mIEtvemxvd3NraQo8
a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIDI2LzAzLzIwMjMg
MTQ6MDIsIFNoYW5lIEZyYW5jaXMgd3JvdGU6Cj4gPj4gUGxlYXNlIHdyYXAgY29tbWl0IG1lc3Nh
Z2UgYWNjb3JkaW5nIHRvID4gPiBMaW51eCBjb2Rpbmcgc3R5bGUgLwo+ID4gc3VibWlzc2lvbgo+
ID4KPiA+IFdpbGwgZG8sIEkgaGF2ZW4ndCBzdWJtaXR0ZWQgcGF0Y2hlcyBmb3IgYSB3aGlsZSB0
b3RhbGx5IGZvcmdvdCB0aGUKPiA+IHdyYXBwaW5nIGd1aWRlbGluZXMKPiA+Cj4gPj4gVW5mb3J0
dW5hdGVseSB0aGUgcmVhc29uIGlzIG5vdCBnb29kIGVub3VnaCA+IGZvciBBQkkgYnJlYWsuIFJl
cGxhY2UKPiA+PiB2ZW5kb3IgYm9vdCB1Ym9vdHMgd2l0aCBvcGVuLXNvdXJjZSBvbmUgb3IgPiBq
dXN0IGNvcnJlY3QgdGhlbSAoaXQncyBzdGlsbAo+ID4+IFUtQm9vdCBzbyBldmVuIGZvciB2ZW5k
b3Igb25lIHlvdSBoYXZlIHRoZSBzb3VyY2UpLgo+ID4KPiA+IFJlcGxhY2luZyB1Ym9vdCBpcyBm
aW5lIGZvciB0aGlzIGNhc2UsIGhvd2V2ZXIgSSBjYW4gZm9yZXNlZSB0aGF0IGNhbiBjYXVzZQo+
ID4gaXNzdWVzIGZ1cnRoZXIgZG93biB0aGUgbGluZS4KPiA+Cj4gPgo+ID4gMS4gTm8gdWJvb3Qg
c291cmNlIGZyb20gdGhlIHZlbmRvciwgd2UgYWxsIGtub3cgbm8gZXZlcnlvbmUgcmVzcGVjdHMg
Y29kZQo+ID4gbGljZW5jaW5nCj4gPgo+ID4gMi4gU2VjdXJlIGVudmlyb25tZW50cyAobGlrZSBh
bmRyb2lkIHRhYmxlcyksIHRoaXMgY2hpcHNldCB3aWxsIGxpa2VseSBlbmQKPiA+IHVwIGluIGFu
ZHJvaWQgdGFibGV0cyB0aGF0IGhhdmUgdGhlIHNlY3VyZSBib290IGNoYWluIGVuYWJsZS4gVGhl
c2Ugd2lsbCBiZQo+ID4gdW5hYmxlIHRvIHJlcGxhY2UgdWJvb3QgZXZlbiBpZiBzb3VyY2UgaXMg
YXZhaWxhYmxlLgo+Cj4gU28gbWVudGlvbiB0aGlzIGluIHRoZSBjb21taXQgbXNnLgo+Cj4gPgo+
ID4gQXMgdGhpcyBTb0MgaXMgbmV3IHRvIHRoZSBMaW51eCBrZXJuZWwgKG5vdCBldmVuIHVzZWFi
bGUgZm9yIG11Y2ggaXQncwo+ID4gY3VycmVudCBzdGF0ZSkgd291bGQgaXQgbm90IGJlIGJldHRl
ciB0byBhbGluZyBvbiB0aGlzIHNvIHZlbmRvciBhbmQKPiA+IG1haW5saW5lIERUUyAiYWdyZWUi
IG5vdyByYXRoZXIgdGhhbiBwb3NzaWJseSBoYXZlIHRvIGFkZHJlc3MgaXMgaW4gdGhlCj4gPiBm
dXR1cmUgPwo+Cj4gVGhlbiBjb21taXQgbXNnIHNob3VsZCBhbHNvIG1lbnRpb24gaXQuCj4KPgo+
Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
