Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25495CF64B1
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 13:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrQy7fLUIqYXjQXmVaZrnX+PRGlWD0U3Em9JE+TzZk0=; b=DjMIMWP2cyu15H
	f01Le/c39tjYbfeGBEEcckpIG8Wnf4xF7/1/lpLZ51Fde6fSr9vY4+R3kMSoVOH/C9lk4G7eZcker
	2aMO33U3AwrwYYyYevRFLnZ2uxZ+uCxzVMzoPflAXslrK1GkuNLmCxTRXsjLJgE1wfDBagLAvKi8+
	aKJatM4RUAU0lFC7VRmaz+ko0Akoz01e8C9h0yPcwRnRzqbBAuqRXcNCXvPK6B5lAJAfrfo5Y/wVi
	gL34kvueu0zD+lWbcsxxo9x5LLXcigra5YPW5Io3DAuqeVp8PDX8+I8yk1qIhLRqZzBSOyzNcv+y0
	tX2gGBe1S4E6TsM5FI8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svG9F-0000000HD2Z-2eOh;
	Mon, 30 Sep 2024 13:09:09 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svFPi-0000000H1Hu-3Uie
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Sep 2024 12:22:08 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a90349aa7e5so642976266b.0
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Sep 2024 05:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1727698925; x=1728303725; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oVy0k0RRSey0HXyF2tOTq4T5kQb2eUiQ/yuwu9KTSQ0=;
        b=1w3x9dLUB+nN/Na5B9xzwQjRqtnewcH0t4EbHzKcIWftzgJ1sqWnvlDYCdeh20csrg
         1wbRyAr5G01ZH8vBoX2sk0EQRlxyOLXkEyCj017JlWZAABEG7rZnkPtnG3iXtBIe1r2+
         1YxONTvDAhZ/lYGN1/+PQ7h3jXHb58fPEAIqk2jqUHr54fbYDrtz+4aioqufw9XViADP
         TQ4L3MzOZYAEeMK81PbSWefgwe/IiikPlAHbIJGUYu2Szd6kPXGYiia4utvqlxwmITBZ
         ira8tsvCqPJW1SQuArfPeScseDTaqG5BY4W/Al6zEuzsY53BlmrdpQtNtCfCdAX5t7j+
         1FCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727698925; x=1728303725;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oVy0k0RRSey0HXyF2tOTq4T5kQb2eUiQ/yuwu9KTSQ0=;
        b=cha7Kl+oIET08mWbc41A/9mIjZL5pltnakY43Yw2BIs5RlZWZc45ilz49+PTgtB5l3
         qsJM0zKwEWlr40s4X/HgMTlUA9RinvKBsHdfd2uVH+0n/Lo08lvqE4+i/WhqxIU3nPU1
         ise5w3FGMh1NCvzn+IZBcuLPph8dX+/1/JEv6qh24WkBsmUeSxyi6N418Hbw2Um6HGew
         1DOZl/sA3UfqJ7OHaMql9uBtgiwtsZzsUwoVVywE6pHY3gYqN6gIAoF5SqYxKAy3Q8ul
         Tbs+Puiv82qjIHh28UO340gkfR0JJVydYF0K/e+iYa2ZJfToJFzU9M5+YXpL9KARRXKz
         tmWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXq5wcchcRyUAFw/N82oQhuXF1DUxJm+YIbPG8WypoQWYJO8T3AhGXmSDBPcAHVt6mp1i235I9Mj7mRksPe+Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyg68JsIzFkRcZdGUWlPO5YjQy9qwmX82Ne00vUzCw0ityeirMH
	uoI8a67qz96fHTX733p3VN4ETWIlXPUguCC6ce+uvNh+Ee/E6p9BhXFGPk9jy/ZYHKVMwbz8Ydj
	/SmM0JXaENa6CnU9guE3/dwIeVezEM2axeoAdVw==
X-Google-Smtp-Source: AGHT+IFRR/TqePx6m+P0F9wbjhdBYthJDFoxfhNspbc/S91fiILEYhQubKca8iEPPBq2sCP6d+bbteglymX0AAL2fYc=
X-Received: by 2002:a17:907:7f22:b0:a91:561:e7d8 with SMTP id
 a640c23a62f3a-a93c4c269c9mr1388845366b.61.1727698924559; Mon, 30 Sep 2024
 05:22:04 -0700 (PDT)
MIME-Version: 1.0
References: <20240925072945.18757-1-dse@thaumatec.com> <4620941.LvFx2qVVIh@diego>
 <5f73e2cf-cb18-4b65-9e42-cf3192aee706@cherry.de> <2221314.irdbgypaU6@diego>
In-Reply-To: <2221314.irdbgypaU6@diego>
From: Daniel Semkowicz <dse@thaumatec.com>
Date: Mon, 30 Sep 2024 14:21:53 +0200
Message-ID: <CAHgnY3nmx=jpg-+OTmQ4ovgWOPCsX5LrYXJQqzpDeb67ZoVsMw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add power button for RK3399 Puma
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Dragan Simic <dsimic@manjaro.org>, Farouk Bouabid <farouk.bouabid@theobroma-systems.com>, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
	Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_052207_162123_156639CB 
X-CRM114-Status: GOOD (  42.50  )
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

T24gTW9uLCBTZXAgMzAsIDIwMjQgYXQgMTE6MjHigK9BTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29A
c250ZWNoLmRlPiB3cm90ZToKPgo+IEFtIE1vbnRhZywgMzAuIFNlcHRlbWJlciAyMDI0LCAxMTox
MTo1NiBDRVNUIHNjaHJpZWIgUXVlbnRpbiBTY2h1bHo6Cj4gPiBIaSBIZWlrbywKPiA+Cj4gPiBP
biA5LzMwLzI0IDEwOjQ5IEFNLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+ID4gSGV5IFF1ZW50
aW4sIERhbmllbCwKPiA+ID4KCkhlbGxvIEhlaWtvLCBIZWxsbyBRdWVudGluLAoKPiA+ID4gQW0g
RG9ubmVyc3RhZywgMjYuIFNlcHRlbWJlciAyMDI0LCAxNDozNDozMCBDRVNUIHNjaHJpZWIgUXVl
bnRpbiBTY2h1bHo6Cj4gPiA+PiBPbiA5LzI1LzI0IDk6MjggQU0sIERhbmllbCBTZW1rb3dpY3og
d3JvdGU6Cj4gPiA+Pj4gVGhlcmUgaXMgYSBQV1JCVE4jIGlucHV0IHBpbiBleHBvc2VkIG9uIGEg
UTcgY29ubmVjdG9yLiBUaGUgcGluCj4gPiA+Pj4gaXMgcm91dGVkIHRvIGEgR1BJTzBfQTEgdGhy
b3VnaCBhIGRpb2RlLiBRNyBzcGVjaWZpY2F0aW9uIGRlc2NyaWJlcwo+ID4gPj4+IHRoZSBQV1JC
VE4jIHBpbiBhcyBhIFBvd2VyIEJ1dHRvbiBzaWduYWwuCj4gPiA+Pj4gQ29uZmlndXJlIHRoZSBw
aW4gYXMgS0VZX1BPV0VSLCBzbyBpdCBjYW4gZnVuY3Rpb24gYXMgcG93ZXIgYnV0dG9uIGFuZAo+
ID4gPj4+IHRyaWdnZXIgZGV2aWNlIHNodXRkb3duLgo+ID4gPj4+IEFkZCB0aGUgcGluIGRlZmlu
aXRpb24gdG8gUkszMzk5IFB1bWEgZHRzLCBzbyBpdCBjYW4gYmUgcmV1c2VkCj4gPiA+Pj4gYnkg
ZGVyaXZlZCBwbGF0Zm9ybXMsIGJ1dCBrZWVwIGl0IGRpc2FibGVkIGJ5IGRlZmF1bHQuCj4gPiA+
Pj4KPiA+ID4+PiBFbmFibGUgdGhlIHBvd2VyIGJ1dHRvbiBpbnB1dCBvbiBIYWlrb3UgZGV2ZWxv
cG1lbnQgYm9hcmQuCj4gPiA+Pj4KPiA+ID4+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgU2Vta293
aWN6IDxkc2VAdGhhdW1hdGVjLmNvbT4KPiA+ID4+Cj4gPiA+PiBUaGlzIHdvcmtzLCB0aGFua3Mu
Cj4gPiA+Pgo+ID4gPj4gVGVzdGVkLWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpA
Y2hlcnJ5LmRlPgo+ID4gPj4KPiA+ID4+IE5vdyBJIGhhdmUgc29tZSBxdWVzdGlvbnMgSSB3YXNu
J3QgYWJsZSB0byBhbnN3ZXIgbXlzZWxmLCBtYXliZSBzb21lb25lCj4gPiA+PiBjYW4gcHJvdmlk
ZSBzb21lIGZlZWRiYWNrIG9uIHRob3NlIDopCj4gPiA+Pgo+ID4gPj4gV2UgYWxyZWFkeSBoYXZl
IGEgZ3Bpby1rZXlzIGZvciBidXR0b25zIG9uIEhhaWtvdSwgYy5mLgo+ID4gPj4gaHR0cHM6Ly9l
bGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTEvc291cmNlL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LXB1bWEtaGFpa291LmR0cyNMMjIuCj4gPiA+PiBUaG9zZSBzaWduYWxz
IGFyZSBkaXJlY3RseSByb3V0ZWQgdG8gdGhlIFNvTSBhbmQgZm9sbG93IHRoZSBRc2V2ZW4gc3Rh
bmRhcmQuCj4gPiA+Pgo+ID4gPj4gVGhlIHNhbWUgYXBwbGllcyB0byBQV1JCVE4jIHNpZ25hbC4K
PiA+ID4+Cj4gPiA+PiBIb3dldmVyLCBoZXJlIHdlIGhhdmUgb25lIGdwaW8ta2V5cyBmb3IgUFdS
QlROIyBpbiBQdW1hIERUU0kgYW5kIG9uZQo+ID4gPj4gZ3Bpby1rZXlzIGZvciB0aGUgYnV0dG9u
cyBhbmQgc2xpZGVycyBvbiBIYWlrb3UgZGV2a2l0IGluIEhhaWtvdSBEVFMuCj4gPiA+Pgo+ID4g
Pj4gSSdtIGEgYml0IHVuZGVjaWRlZCBvbiB3aGVyZSB0aGlzIHNob3VsZCBnby4KPiA+ID4+Cj4g
PiA+PiBIYXZpbmcgYWxsIGJ1dHRvbi9zbGlkZXIgc2lnbmFscyBmb2xsb3dpbmcgdGhlIFFzZXZl
biBzdGFuZGFyZCBpbiBQdW1hCj4gPiA+PiBEVFNJIGFuZCBlbmFibGUgdGhlIGdwaW8ta2V5cyBv
bmx5IGluIHRoZSBkZXZraXQgd291bGQgbWFrZSBzZW5zZSB0byBtZSwKPiA+ID4+IHNvIHRoYXQg
b3RoZXIgYmFzZWJvYXJkcyBjb3VsZCBlYXNpbHkgbWFrZSB1c2Ugb2YgaXQuIEhvd2V2ZXIsIHRo
aW5ncwo+ID4gPj4gZ2V0IGNvbXBsaWNhdGVkIGlmIHRoZSBiYXNlYm9hcmQgbWFudWZhY3R1cmVy
IGRlY2lkZXMgdG8gb25seSBpbXBsZW1lbnQKPiA+ID4+ICoqc29tZSoqIG9mIHRoZSBzaWduYWxz
LCBmb3Igd2hpY2ggd2UgdGhlbiBuZWVkIHRvIHJlbW92ZSBzb21lIG5vZGVzCj4gPiA+PiBmcm9t
IGdwaW8ta2V5cyAoYW5kIHBpbmN0cmwgZW50cmllcykgc2luY2UgZ3Bpby1rZXlzIGRvZXNuJ3Qg
Y2hlY2sgdGhlCj4gPiA+PiAic3RhdHVzIiBwcm9wZXJ0eSBpbiBpdHMgY2hpbGQgbm9kZXMgKHRo
b3VnaCB0aGF0IGNvdWxkIGJlIGZpeGVkKS4gQXQKPiA+ID4+IHdoaWNoIHBvaW50LCBpdCdzIG5v
dCBlbnRpcmVseSBjbGVhciBpZiBoYXZpbmcgaXQgaW4gUHVtYSBEVFNJIGlzCj4gPiA+PiBhY3R1
YWxseSBiZW5lZmljaWFsLgo+ID4gPj4KPiA+ID4+IFNvbWVvbmUgaGFzIGFuIG9waW5pb24vcmVj
b21tZW5kYXRpb24gb24gdGhhdD8KPiA+ID4KPiA+ID4gSSBndWVzcyBmcm9tIGEgcGxhdGZvcm0g
cGVyc3BlY3RpdmUgbm9ib2R5IHJlYWxseSBjYXJlcywgc28gYXMgdGhhdCBpcwo+ID4gPiAieW91
ciIgYm9hcmQsIGl0IGNvbWVzIGRvd24gdG8gYSBwb2xpY3kgZGVjaXNpb24gb24geW91ciBwYXJ0
IDstKSAuCj4gPiA+Cj4gPiA+IFdoaWxlIHBpbnMgZm9sbG93IHRoZSBxNyBzdGFuZGFyZCwgdGhl
cmUgbWF5IHZlcnkgd2VsbCBiZSBzb21lIGxheAo+ID4gPiBoYW5kbGluZyBvZiB0aGF0IHN0YW5k
YXJkIGluIHNvbWUgcGxhY2VzLCBhbmQgSSBndWVzcyBncGlvIGxpbmVzIGNvdWxkCj4gPiA+IGJl
IHJlLXVzZWQgZm9yIHNvbWV0aGluZyBlbHNlIGlmIG5lZWRlZCwgYXMgc29tZXRoaW5nIGxpa2Ug
dGhlIGxpZC1zd2l0Y2gKPiA+ID4gaXMgcHJvYmFibHkgbm9uLWVzc2VudGlhbC4KPiA+ID4KPiA+
ID4gQWxzbyBhIGdwaW8ta2V5IGlucHV0IGRvZXMgbm90IGNyZWF0ZSB0aGF0IG11Y2ggY29kZS1v
dmVyaGVhZCBpZgo+ID4gPiByZXBsaWNhdGVkLCBzbyBwZXJzb25hbGx5IEknZCBqdXN0IHN0aWNr
IHRoZSBwb3dlci1idXR0b24gd2l0aCB0aGUgb3RoZXIKPiA+ID4gYnV0dG9ucyBpbiB0aGUgaGFp
a291IGR0cy4KPiA+ID4KPiA+ID4gV2hpY2ggaXMgYWxzbyBhIHdheSBiZXR0ZXIgdGhpbmcgdGhh
biBoYXZpbmcgbXVsdGlwbGUgZ3Bpby1rZXlzIGluc3RhbmNlcwo+ID4gPiB0aGF0IHVzZXJzcGFj
ZSB0aGVuIGhhcyB0byBoYW5kbGUuCj4gPiA+Cj4gPgo+ID4gWWVzLCBidXQgdGhpcyBhbHNvIG1l
YW5zICJjb2RlIiBkdXBsaWNhdGlvbiBmb3Igd2hvZXZlciBuZWVkcyB0aGlzIGZvcgo+ID4gdGhl
aXIgYmFzZWJvYXJkLCBpbnN0ZWFkIG9mIGp1c3QgaGF2aW5nIHRvIGFkZCBhICZncGlvX2tleXMg
eyBzdGF0dXMgPQo+ID4gIm9rYXkiOyB9Lgo+Cj4gWWVzIDotKSAuCj4KPiBncGlvLWtleXMgaXMg
c3BlY2lhbCBpbiBhIHdheSBpbiB0aGF0IHlvdSBjb3VsZCBlbmQgdXAgd2l0aCBhIGRpZmZlcmVu
dCBzZXQKPiBvZiBlbmFibGVkIGtleXMgcGVyIGJhc2Vib2FyZCAtIGRlcGVuZGVudCBvbiBob3cg
Y2xvc2VseSBpdCBmb2xsb3dzIHRoZQo+IHN0YW5kYXJkLgo+Cj4gU28gaWYgc29tZW9uZSByZXB1
cnBvc2VkIHRoZSBsaWQtc3dpdGNoIG9ubHksIHlvdSdkIHN0YXJ0IGNoYW5naW5nIHRoZQo+IGNv
cmUgbm9kZSBhZ2Fpbi4gSGVuY2UgZm9yIHRoZSBncGlvLWtleXMgaXQncyBwcm9iYWJseSBlYXNp
ZXIgdG8gZGVmaW5lCj4gdGhlIHNldCBvZiBrZXlzIGluIHRoZSBiYXNlYm9hcmQuCj4KPiBJdCdz
IG9mIGNvdXJzZSBkaWZmZXJlbnQgZm9yIHJlZ3VsYXRvci1pbmZyYXN0cnVjdHVyZSBhbmQgc3Vj
aC4KPgo+ID4gSSBkb24ndCB0aGluayB0aGVyZSdzIGEgZ29vZCBzb2x1dGlvbiBoZXJlLCBzbyBJ
IHdvdWxkIHN1Z2dlc3Qgd2UgZ28KPiA+IHdpdGggZXZlcnl0aGluZyBpbiBIYWlrb3UncyBncGlv
LWtleXMgYXMgSGVpa28gc3VnZ2VzdGVkIHRoZW4sIEBEYW5pZWwKPiA+IGlmIHlvdSBhZ3JlZSBj
YW4geW91IHNlbmQgYSB2MiBmb3IgdGhhdD8KCkknbSBmaW5lIHdpdGggdGhhdC4gSSB3aWxsIHBy
ZXBhcmUgdjIgd2l0aCBzdWNoIGNoYW5nZS4KCj4KPiBJJ2xsIHdhaXQgZm9yIHYyIHRoZW4uCj4K
PiBIZWlrbwo+Cj4KCktpbmQgcmVnYXJkcwpEYW5pZWwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
