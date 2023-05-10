Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53D6AC77B7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 May 2023 11:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6mmQvzBkkcAB/qBmwQJTCcKD4PlI/5szIxL9NsFQ+Pc=; b=npQ6UuKo6wcKcN
	PW7C7L1FBRpcO0TxSD1TijEN9zECzECEHO2Yiy9exI+TOjBeeS/vl4hueDHrGNSH4xJe9xEJBplSS
	Nqq5eaDaAJRXPTbLNYWsSjd2JcIajyHDckj5ll6P7vJHFmKDcLW9JyepARzMJkXTzH+J8puGklEJ9
	9oj4v8c74REC/SUiShYGglv6LqhPk4RPQ2HmgT1HQFzLQj9soVAhYwGiaNfcRiTn378fFoRgh7VBP
	WqwVic++gRfMWTitOHFkJu0GCCsp9O/ywFjv9BoEHfcSn2sb8xTJ30h110B7KGdRPuQMpOt9PXrPU
	LNz0uY7wcVBUGYx/dXhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwho6-0060UF-2W;
	Wed, 10 May 2023 11:16:30 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwho3-0060T9-1f;
	Wed, 10 May 2023 11:16:29 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f41dceb9c9so30710385e9.3;
        Wed, 10 May 2023 04:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683717384; x=1686309384;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pBsIndB/0JBmV2qr33mCTEeeS4Iy2jxh4GLVwKZXMKo=;
        b=iqcXJrveVHEU+GGtZG8f4wqg4YspiZKIHvie8TtfVwGgTD3tvMR0xvGhZZ+HoWynG1
         tiWh37AR3cI3KXwzfwrmATe8liUZzPRsaQLrv9r3X6DcTCVriQERbmMMBZGgl/7kcokv
         ZTmlvGG/OnxLo/bHNt58wE8sPHrH517gvo60eesWA/laL4yfQWxrhP8K23wwBsqFP/eS
         e3JNZjcp39c37KFewemN05oTv2E3O2YfBbIG8ZA+6YohNs8VXkFR+MlEo2UiYcS7z1E3
         6Fb8VqHQEPXdWhcLUA6EMPTN/ycQSFiNTSC988uv0nuS9Th3TSGI/kGQYg7Ng5A8MnL1
         iztQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683717384; x=1686309384;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pBsIndB/0JBmV2qr33mCTEeeS4Iy2jxh4GLVwKZXMKo=;
        b=j6/02an5nvsUDYwLLQP6cROR++cDLgXJavpHVT1Inx9H9DtKHE7HtP5pCQmqHd8gAN
         ym+u23MiX8lLVXgIMPWbw5YrY9boyDVCARCbyofctvK+BmHciWaWZtHHzKIEEBLQyiPU
         9F10siPhQbvckAl+J58LWvXQgg+csgkkIS5RbGAgbFd+uz0UgZpoNkiobGvawHHIuzMq
         dLC5eIFEb0Yrc5DD2Z3+LeqsmPN1Xd5bKMcc0hSaNDYnOfr5ye7T+d2ClYcc6kcp+/wA
         C0xvzVjkGK06ZTuQfUtJ+NQPFxCs4alnCl5EynUAj4w+S4MkM7+KMJ80rzpon3JcWfix
         Tq4A==
X-Gm-Message-State: AC+VfDzLWYIgF3qVwJKKcgfrPkVbgpIQJIkJOSz31DaFuCGk3KAF1Ueh
	9nj3TWsQAKmd+AMMpGlsQW8=
X-Google-Smtp-Source: ACHHUZ6CkBmwDOlHCbYrI/mphVqzmMF7zFthMe87Sh8XjvMWEmrUJjFgtJQjuQrwXn/I0+sYY1bmIg==
X-Received: by 2002:a05:600c:28f:b0:3f1:8430:523 with SMTP id 15-20020a05600c028f00b003f184300523mr12094415wmk.14.1683717384131;
        Wed, 10 May 2023 04:16:24 -0700 (PDT)
Received: from localhost ([146.70.133.78])
        by smtp.gmail.com with ESMTPSA id f4-20020adffcc4000000b003063d83a168sm16937426wrs.26.2023.05.10.04.16.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 04:16:23 -0700 (PDT)
Mime-Version: 1.0
Date: Wed, 10 May 2023 13:16:21 +0200
Message-Id: <CSIJZYWBC38N.2M99O6W1PLR4B@vincent-arch>
Cc: <linux-pci@vger.kernel.org>, <robh@kernel.org>, <heiko@sntech.de>,
 <kw@linux.com>, <shawn.lin@rock-chips.com>, <linux-kernel@vger.kernel.org>,
 <lgirdwood@gmail.com>, <linux-rockchip@lists.infradead.org>,
 <broonie@kernel.org>, <bhelgaas@google.com>,
 <linux-kernel-mentees@lists.linuxfoundation.org>, <lpieralisi@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, "Dan Johansen" <strit@manjaro.org>
Subject: Re: [PATCH v1] drivers: pci: introduce configurable delay for
 Rockchip PCIe bus scan
From: "Vincenzo Palazzo" <vincenzopalazzodev@gmail.com>
To: "Peter Geis" <pgwipeout@gmail.com>, "Bjorn Helgaas" <helgaas@kernel.org>
X-Mailer: aerc 0.15.1
References: <20230509153912.515218-1-vincenzopalazzodev@gmail.com>
 <20230509211902.GA1270901@bhelgaas>
 <CAMdYzYp6=mYSoUHN3TEXVSMbRt1HpRm0X_4RMez09V0XzQewaw@mail.gmail.com>
In-Reply-To: <CAMdYzYp6=mYSoUHN3TEXVSMbRt1HpRm0X_4RMez09V0XzQewaw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_041627_555903_415FC208 
X-CRM114-Status: GOOD (  40.47  )
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

PiBPbiBUdWUsIE1heSA5LCAyMDIzIGF0IDU6MTnigK9QTSBCam9ybiBIZWxnYWFzIDxoZWxnYWFz
QGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IEhpIFZpbmNlbnpvLAo+ID4KPiA+IFRoYW5rcyBm
b3IgcmFpc2luZyB0aGlzIGlzc3VlLiAgTGV0J3Mgc2VlIHdoYXQgd2UgY2FuIGRvIHRvIGFkZHJl
c3MKPiA+IGl0Lgo+ID4KPiA+IE9uIFR1ZSwgTWF5IDA5LCAyMDIzIGF0IDA1OjM5OjEyUE0gKzAy
MDAsIFZpbmNlbnpvIFBhbGF6em8gd3JvdGU6Cj4gPiA+IEFkZCBhIGNvbmZpZ3VyYWJsZSBkZWxh
eSB0byB0aGUgUm9ja2NoaXAgUENJZSBkcml2ZXIgdG8gYWRkcmVzcwo+ID4gPiBjcmFzaGVzIHRo
YXQgb2NjdXIgb24gc29tZSBvbGQgZGV2aWNlcywgc3VjaCBhcyB0aGUgUGluZTY0IFJvY2tQcm82
NC4KPiA+ID4KPiA+ID4gVGhpcyBpc3N1ZSBpcyBhZmZlY3RpbmcgdGhlIEFSTSBjb21tdW5pdHks
IGJ1dCB0aGVyZSBpcyBubwo+ID4gPiB1cHN0cmVhbSBzb2x1dGlvbiBmb3IgaXQgeWV0Lgo+ID4K
PiA+IEl0IHNvdW5kcyBsaWtlIHRoaXMgaGFwcGVucyB3aXRoIHNldmVyYWwgZW5kcG9pbnRzLCBy
aWdodD8gIEFuZCBJCj4gPiBhc3N1bWUgdGhlIGVuZHBvaW50cyB3b3JrIGZpbmUgaW4gb3RoZXIg
bm9uLVJvY2tjaGlwIHN5c3RlbXM/ICBJZgo+ID4gdGhhdCdzIHRoZSBjYXNlLCBteSBndWVzcyBp
cyB0aGUgcHJvYmxlbSBpcyB3aXRoIHRoZSBSb2NrY2hpcCBob3N0Cj4gPiBjb250cm9sbGVyIGFu
ZCBob3cgaXQncyBpbml0aWFsaXplZCwgbm90IHdpdGggdGhlIGVuZHBvaW50cy4KPiA+Cj4gPiBU
aGUgb25seSBkZWxheXMgYW5kIHRpbWVvdXRzIEkgc2VlIGluIHRoZSBkcml2ZXIgbm93IGFyZSBp
bgo+ID4gcm9ja2NoaXBfcGNpZV9ob3N0X2luaXRfcG9ydCgpLCB3aGVyZSBpdCB3YWl0cyBmb3Ig
bGluayB0cmFpbmluZyB0bwo+ID4gY29tcGxldGUuICBJIGFzc3VtZSB0aGUgbGluayB0cmFpbmlu
ZyBkaWQgY29tcGxldGVseSBzdWNjZXNzZnVsbHkKPiA+IHNpbmNlIHlvdSBkb24ndCBtZW50aW9u
IGVpdGhlciBhIGdlbjEgb3IgZ2VuMiB0aW1lb3V0IChhbHRob3VnaCB0aGUKPiA+IGdlbjIgbWVz
c2FnZSBpcyBhIGRldl9kYmcoKSB0aGF0IG5vcm1hbGx5IHdvdWxkbid0IGdvIHRvIHRoZSBjb25z
b2xlKS4KPiA+Cj4gPiBJIGRvbid0IGtub3cgdGhhdCB0aGUgc3BlYyBjb250YWlucyBhIHJldHJh
aW4gdGltZW91dCB2YWx1ZS4gIFNldmVyYWwKPiA+IG90aGVyIGRyaXZlcnMgdXNlIDEgc2Vjb25k
LCB3aGlsZSByb2NrY2hpcCB1c2VzIDUwMG1zIChmb3IgZXhhbXBsZSwKPiA+IHNlZSBMSU5LX1JF
VFJBSU5fVElNRU9VVCBhbmQgTElOS19VUF9USU1FT1VUKS4KPiA+Cj4gPiBJIHRoaW5rIHdlIG5l
ZWQgdG8gdW5kZXJzdGFuZCB0aGUgaXNzdWUgYmV0dGVyIGJlZm9yZSBhZGRpbmcgYSBEVAo+ID4g
cHJvcGVydHkgYW5kIGEgbW9kdWxlIHBhcmFtZXRlci4gIFRob3NlIGFyZSBoYXJkIGZvciB1c2Vy
cyB0byBkZWFsCj4gPiB3aXRoLiAgSWYgd2UgY2FuIGZpZ3VyZSBvdXQgYSB2YWx1ZSB0aGF0IHdv
cmtzIGZvciBldmVyeWJvZHksIGl0IHdvdWxkCj4gPiBiZSBiZXR0ZXIgdG8ganVzdCBoYXJkLWNv
ZGUgaXQgaW4gdGhlIGRyaXZlciBhbmQgdXNlIHRoYXQgYWxsIHRoZQo+ID4gdGltZS4KPgo+IEdv
b2QgRXZlbmluZywKPgo+IFRoZSBtYWluIGlzc3VlIHdpdGggdGhlIHJrMzM5OSBpcyB0aGUgUENJ
ZSBjb250cm9sbGVyIGlzIGJ1Z2d5IGFuZAo+IHRyaWdnZXJzIGEgU29DIHBhbmljIHdoZW4gY2Vy
dGFpbiBlcnJvciBjb25kaXRpb25zIG9jY3VyIHRoYXQgc2hvdWxkCj4gYmUgaGFuZGxlZCBncmFj
ZWZ1bGx5LiBPbmUgb2YgdGhvc2UgY29uZGl0aW9ucyBpcyB3aGVuIGFuIGVuZHBvaW50Cj4gcmVx
dWVzdHMgYW4gYWNjZXNzIHRvIHdhaXQgYW5kIHJldHJ5IGxhdGVyLiBNYW55IHllYXJzIGFnbyB3
ZSByYW4gdGhhdAo+IGlzc3VlIHRvIGdyb3VuZCBhbmQgd2l0aCBSb2JpbiBNdXJwaHkncyBoZWxw
IHdlIGZvdW5kIHRoYXQgd2hpbGUgaXQncwo+IHBvc3NpYmxlIHRvIGdyYWNlZnVsbHkgaGFuZGxl
IHRoYXQgY29uZGl0aW9uIGl0IHJlcXVpcmVkIGhpamFja2luZyB0aGUKPiBlbnRpcmUgYXJtNjQg
ZXJyb3IgaGFuZGxpbmcgcm91dGluZS4gTm90IGV4YWN0bHkgc2NhbGFibGUgZm9yIGp1c3Qgb25l
Cj4gU29DLiBUaGUgY29uZmlndXJhYmxlIHdhaXRzIGFsbG93IHVzIHRvIHByb2dyYW0gcmVhc29u
YWJsZSB0aW1lcyBmb3IKPiA5MCUgb2YgdGhlIGVuZHBvaW50cyB0aGF0IGNvbWUgdXAgaW4gdGhl
IG5vcm1hbCBhbW91bnQgb2YgdGltZSwgd2hpbGUKPiBiZWluZyBhYmxlIHRvIGFkanVzdCBpdCBm
b3IgdGhlIG90aGVyIDEwJSB0aGF0IGRvIG5vdC4gU29tZSByZXF1aXJlCj4gbXVsdGlwbGUgc2Vj
b25kcyBiZWZvcmUgdGhleSByZXR1cm4gd2l0aG91dCBlcnJvci4gUGFydCBvZiB0aGUgcmVhc29u
Cj4gd2UgZG9uJ3Qgd2FudCB0byBoYXJkY29kZSB0aGUgd2FpdCB0aW1lIGlzIGJlY2F1c2UgdGhl
IHByb2JlIGlzbid0Cj4gaGFuZGxlZCBhc3luY2hyb25vdXNseSwgc28gdGhlIGtlcm5lbCBhcHBl
YXJzIHRvIGhhbmcgd2hpbGUgd2FpdGluZwo+IGZvciB0aGUgdGltZW91dC4KClllYWgsIEkgc21l
bGwgYSBoYXJkd2FyZSBidWcgaW4gbXkgY29kZS4gSSBoYXRlIHdhaXRpbmcgaW4gdGhpcyB3YXkg
aW5zaWRlIAp0aGUgY29kZSwgc28gaXQncyB1c3VhbGx5IHdyb25nIHdoZW4geW91IG5lZWQgdG8g
ZG8gc29tZXRoaW5nIGxpa2UgdGhhdC4KCkR1cmluZyBteSByZXNlYXJjaCwgSSBhbHNvIGZvdW5k
IHRoaXMgcGF0Y2ggKGh0dHBzOi8vYnVnemlsbGEucmVkaGF0LmNvbS9zaG93X2J1Zy5jZ2k/aWQ9
MjEzNDE3NykgCnRoYXQgcHJvdmlkZXMgYSBmaXggaW4gYW5vdGhlciBwb3NzaWJseSBjbGVhbmVy
IHdheS4KCkJ1dCBJIGRvbid0IHVuZGVyc3RhbmQgdGhlIHJlYXNvbmluZyBiZWhpbmQgaXQsIHNv
IG1heWJlIEkgCmhhdmVuJ3Qgc3BlbnQgZW5vdWdoIHRpbWUgdGhpbmtpbmcgYWJvdXQgaXQuCgo+
IEknbSBjdXJpb3VzIGlmIGl0J3MgYmVlbiB0ZXN0ZWQgd2l0aCB0aGlzIHNlcmllcyBvbiB0b3A6
Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLWtlcm5lbC8yMDIzMDQxODA3NDcw
MC4xMDgzNTA1LTgtcmljay53ZXJ0ZW5icm9la0BnbWFpbC5jb20vVC8KPiBJJ20gcGFydGljdWxh
cmx5IGN1cmlvdXMgaWYKPiBbdjUsMDQvMTFdIFBDSTogcm9ja2NoaXA6IEFkZCBwb2xsIGFuZCB0
aW1lb3V0IHRvIHdhaXQgZm9yIFBIWSBQTExzIHRvIGJlIGxvY2tlZAo+IG1ha2VzIGEgZGlmZmVy
ZW5jZSBpbiB0aGUgYmVoYXZpb3IuIFBsZWFzZSB0ZXN0IHRoaXMgYW5kIHNlZSBpZiBpdAo+IGlt
cHJvdmVzIHRoZSB0aW1lb3V0cyB5b3UgbmVlZCBmb3IgdGhlIGVuZHBvaW50cyB5b3UncmUgdGVz
dGluZwo+IGFnYWluc3QuCgpNaCwgSSBjYW4gdHJ5IHRvIGNoZXJyeS1waWNrIHRoZSBjb21taXQg
YW5kIHRlc3QgaXQgaW4gbXkgb3duIHRlc3QgZW52aXJvbm1lbnQuIEN1cnJlbnRseSwgSSBoYXZl
bid0IGJlZW4gCmFibGUgdG8gdGVzdCBpdCBkdWUgdG8gYSBsYWNrIG9mIGhhcmR3YXJlLCBidXQg
SSdtIHNlZWtpbmcgYSB3YXkgdG8gb2J0YWluIG9uZS4gCkx1Y2tpbHksIEkgaGF2ZSBzb21lb25l
IG9uIHRoZSBNYW5qYXJvIGFybSB0ZWFtIHdobyBjYW4gaGVscCBtZSB0ZXN0IGl0LCAKc28gSSds
bCB0cnkgdG8gZG8gdGhhdC4KCkNoZWVycyEKClZpbmNlbnQuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
