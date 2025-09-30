Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0372CCA470
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Sep 2025 17:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQxMsKzEOeSKOoLzBpnzRWV/nhr+70+dX3UQIiWlRb4=; b=MOI0oc8D102zIZ
	kki7Qt0X2zd62w3V2JeHaNhUkFTIMrctzg4NevldxcO2fIiqOLiNAzS3c3Tre9M0MolVaXRfwMJS0
	cpbVNMngW/n7rBoTUE2nN2tP8O+5Tk6RoKeeYngRDXArGBHmmZoKBmN78euz6BqkaVsmIml4rej9t
	7185/F61kTRF7znmVuZ7jgnPIkUDT8VH3y2aeeb/vPl58sRLQRtNqyCCMxDb8GCTuLY+tOor1j87x
	RpvS8kuOTLwj18uxTZmCeO4nPHAQlDmE/cq4pbCzL1bqw5I4vNkjrhh75vbe9a+xCQxCFm8tQPQw7
	5y+nezizJiYL/1NHA9tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3eXF-00000005vED-3BdE;
	Tue, 30 Sep 2025 17:53:09 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3eXD-00000005vDT-0fMz
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Sep 2025 17:53:08 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id 6a1803df08f44-81fdd5d7b59so47314136d6.3
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 10:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759254785; x=1759859585; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BCBIbBYTop5A6jYeRu7ELO0tniBU6tTB+IOx31qQ3MI=;
        b=FXMW7xVeCFKs0LvaBApJEk13GsAMba5iffWdQnRRGt89+q6Sn1uUio78qUvQKdz7lt
         KnTU6yuPVme3bJoFRaUpTQWE3qHSSFCOzGEeyQ3khFaH0REVSUy3WBpgsm82uhTr45j4
         SDG/kJpNFFOpwHWmLXBC7WGh5+lflz8wFVD5d4Z5kVc5Xckyg0JYoMBgzj26JNPSWd8t
         s0auEdIX+CMFTRhY0T2zS8ZzSSwQKwrS7pZsOu0n9+RMgwEcEiEmxhbBYTAFxvf9yt+a
         RXN8r5PZVIsEmFjjlUBAKGgwCQOkO2lW8hrjXFUqbbK2ctkbXTAgki9LrAVCde/v85E6
         MF8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759254785; x=1759859585;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BCBIbBYTop5A6jYeRu7ELO0tniBU6tTB+IOx31qQ3MI=;
        b=je5ZSIhbggcHamAGPuOJ3gcV9SBIULr8eI2e4/sZa25j614h3cOJ6uTpMWlLOVDn/Z
         kvPR5Gtc1VqY88zDsQH7H6iopOU8zr8sYPr3KbcN8ybvavmy2pP+ebGJrdAPwrSvMaK5
         N7srBOBj7pfu4qLFI2n3PGHP5mUakds/1Hujvak71NOqW0qZYifltgaHKNSz9zBihUf1
         rHlfvnxRRVFaplOyfL1Lk5sfkHa7Ucx4QebrFGHAgeGnGbxctphdr2BvzFblQEaj/Njp
         UdyRQArdKnJwJyXHax9XOfvhruyeUwZFXNmJGpX/gIUjbtk5ZaUd7UdNnJcUQjFtJ5N7
         q0EQ==
X-Forwarded-Encrypted: i=1; AJvYcCVX/94L2leF5lV+gg1J7QGYMw1VG1yNPAbnKJv9Y1uRniPlPmklNtLZ3XWSSRu/OXP/JrHkOuoKlzU2CwdBXA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxs6wi+x+1frQWRTGajXL4v335u9jPqP/m8Km6lvFc2Pzi9zmYR
	+kBGiCjIETxYYb5/uij5WAhZlCV5aQDIKnmOFSnc3NvzjMQhrybWZug4aL4AwxVdIzgGC6S6YXx
	yHSDfdK6IgTfu/J/nppLGz806tGtSpVI=
X-Gm-Gg: ASbGnctd54NxLWbCt8+84hs215lphM4sMfrzkgnpkM6gT+Pfq+WDg6nFkJ3rLHtQBTG
	4tTACsrzXxL0LYBx3Od0Xs5iJeiyZlod/gmhQJe9WHrpjz25b/dCy3Q4m+PYt4Wr3peUN30QG7H
	shmzKw8CTWhLkuNn6wk+ut51LslTGCwfhTNmU7qNwkr+KxnBA+K87ox0g6XLRpHLAAE+7UqVM5P
	kWbE6O3uWGG7ckH8QKOpM6waFVt/uNP
X-Google-Smtp-Source: AGHT+IH3LG1eaMCJQrs7hRvNNQFjTHAdF3HnSynbQVUv0PZozyh21VEl+N59P07/3LqK4vgOsVNfabWZJIcEr41/YrI=
X-Received: by 2002:a05:6214:2686:b0:78e:c5c7:1209 with SMTP id
 6a1803df08f44-873a6a8cdb1mr8752126d6.56.1759254785247; Tue, 30 Sep 2025
 10:53:05 -0700 (PDT)
MIME-Version: 1.0
References: <20250929065714.27741-1-jjm2473@gmail.com> <DD57IZJQ4FQM.3T5791FLUQ8KQ@cknow.org>
 <CAP_9mL6+uoeG7LX8YCcUFjoU13De1CdPFqxNNfoJvOdsOrYo5Q@mail.gmail.com> <DD63EEOKPWNV.3IK12D6CFPTQZ@cknow.org>
In-Reply-To: <DD63EEOKPWNV.3IK12D6CFPTQZ@cknow.org>
From: jjm2473 <jjm2473@gmail.com>
Date: Wed, 1 Oct 2025 01:52:53 +0800
X-Gm-Features: AS18NWBqxahGz4XH6x393wNkZ6fur-x0rbKIBXXIMh5nx8Rk_7tlCv4UZyCM6zo
Message-ID: <CAP_9mL4CtH1n9RoYNif7bPZ0Lm72zAFyUZzO9xzMUVkrU8n8VA@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] arm64: dts: rockchip: introduce LinkEase EasePi R1
To: Diederik de Haas <didi.debian@cknow.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	quentin.schulz@cherry.de, kever.yang@rock-chips.com, naoki@radxa.com, 
	honyuenkwun@gmail.com, inindev@gmail.com, ivan8215145640@gmail.com, 
	neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org, 
	pbrobinson@gmail.com, alchark@gmail.com, jbx6244@gmail.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_105307_206698_431B04E4 
X-CRM114-Status: GOOD (  28.48  )
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

VGhhbmtzIGZvciB5b3VyIGV4cGxhbmF0aW9uISBJIGdvdCBpdC4KICBMaWFuZ2JpbgoKRGllZGVy
aWsgZGUgSGFhcyA8ZGlkaS5kZWJpYW5AY2tub3cub3JnPiDkuo4yMDI15bm0OeaciDMw5pel5ZGo
5LqMIDE5OjE55YaZ6YGT77yaCj4KPiBPbiBNb24gU2VwIDI5LCAyMDI1IGF0IDg6MDkgUE0gQ0VT
VCwgamptMjQ3MyB3cm90ZToKPiA+IEkgaGF2ZSBhbm90aGVyIHF1ZXN0aW9uLiBJZiB0aGVyZSBh
cmUgcmV2aWV3ZXJzIG9yIGNvLWF1dGhvcnMgbGF0ZXIsCj4gPiBkbyBJIG5lZWQgdG8gYWRkIGl0
IHRvIHRoZSBjb21taXQgbWVzc2FnZSBhbmQgc2VuZCBpdCBhZ2Fpbj8KPiA+IE9yIHNob3VsZCB0
aGUgcmV2aWV3ZXIgb3IgY28tYXV0aG9yIGFkZCB0aGUgbWVzc2FnZSBhbmQKPiA+IGNvbnRpbnVl
IHRvIGRlbGl2ZXIgdGhlIHBhdGNoPwo+Cj4gV2hlbiB5b3UgZ2V0IGEgUmV2aWV3ZWQtYnkgdGFn
LCB5b3Ugc2hvdWxkIGFkZCB0aGF0IHRhZyB0b28gdG8gYSBuZXcKPiB2ZXJzaW9uLiBCdXQgdGhl
cmUncyBubyBuZWVkIHRvIHNlbmQgYSBuZXcgdmVyc2lvbiB0byBqdXN0IGFkZCB0aG9zZQo+IHRh
Z3MsIHRoZSB0b29saW5nIHVzZWQgYnkgbWFpbnRhaW5lcnMgcGlja3MgdGhvc2UgdXAgdGhlbXNl
bHZlcy4KPgo+IElmIHlvdSAnanVzdCcgZ2V0IHJldmlldyBjb21tZW50cywgdGhlbiB5b3UnZCB1
c3VhbGx5IGp1c3QKPiBpbXByb3ZlIHRoZSBwYXRjaCBhbmQgeW91IGNvdWxkIHJlZmVyZW5jZSBp
dCBpbiBhIGNoYW5nZWxvZyBpdGVtICh0bwo+IGluZGljYXRlIHlvdSBhZGRyZXNzZWQgaXQsIHR0
Ym95aykuCj4gSWYgeW91IHRoaW5rIGEgcmV2aWV3ZXIgaGVscGVkIHlvdSAnc2lnbmlmaWNhbnRs
eScsIHlvdSBjb3VsZCBjaG9vc2UgdG8KPiBhZGQgYW4gSGVscGVkLWJ5IHRhZywgYnV0IHdoZXRo
ZXIgeW91IHRoaW5rIHNvbWVvbmUgZGVzZXJ2ZXMgc29tZQo+IGNyZWRpdHMgdGhhdCB3YXksIGlz
IHVwIHRvIHlvdShyIGp1ZGdlbWVudCkuCj4KPiAoQ28tKWF1dGhvcnMgYXJlIHVzdWFsbHkga25v
d24gdXBvbiBmaXJzdCBzdWJtaXNzaW9uLiBJZiB5b3UgbGF0ZXIgZmluZAo+IG91dCB0aGF0IHRo
YXQgbGlzdCB3YXMgaW5jb3JyZWN0L2luY29tcGxldGUsIHRoZW4geW91IHdvdWxkIGFkZAo+IENv
LWRldmVsb3BlZC1ieSArIFNpZ25lZC1vZmYtYnkgdGFncyBvbiBhIG5ldyB2ZXJzaW9uLgo+Cj4g
SFRILAo+ICAgRGllZGVyaWsKPgo+ID4gRGllZGVyaWsgZGUgSGFhcyA8ZGlkaS5kZWJpYW5AY2tu
b3cub3JnPiDkuo4yMDI15bm0OeaciDI55pel5ZGo5LiAIDE4OjIw5YaZ6YGT77yaCj4gPj4KPiA+
PiBPbiBNb24gU2VwIDI5LCAyMDI1IGF0IDg6NTcgQU0gQ0VTVCwgTGlhbmdiaW4gTGlhbiB3cm90
ZToKPiA+PiA+IExpbmtFYXNlIEVhc2VQaSBSMSBbMV0gaXMgYSBoaWdoLXBlcmZvcm1hbmNlIG1p
bmkgcm91dGVyLgo+ID4+ID4gLi4uCj4gPj4gPiBbMV0gaHR0cHM6Ly9kb2MubGlua2Vhc2UuY29t
L3poL2d1aWRlL2Vhc2VwaS1yMS9oYXJkd2FyZS5odG1sCj4gPj4gPgo+ID4+ID4gU2lnbmVkLW9m
Zi1ieTogTGlhbmdiaW4gTGlhbiA8amptMjQ3M0BnbWFpbC5jb20+Cj4gPj4gPiAtLS0KPiA+PiA+
Cj4gPj4gPiBDaGFuZ2VzIGluIHYyOgo+ID4+ID4gLSBDaGFuZ2UgZGVwcmVjYXRlZCAicm9ja2No
aXAsc3lzdGVtLXBvd2VyLWNvbnRyb2xsZXIiIHRvICJzeXN0ZW0tcG93ZXItY29udHJvbGxlciIK
PiA+PiA+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDkyNTA1
NTkwNi44MzM3NS0xLWpqbTI0NzNAZ21haWwuY29tLwo+ID4+Cj4gPj4gWW91IHJlY2VpdmVkIGFu
IEFja2VkLWJ5IG9uIHBhdGNoIDEgYW5kIDIgaW4gdjEgb2YgdGhpcyBwYXRjaCBzZXQuCj4gPj4g
WW91J3JlIHN1cHBvc2VkIHRvIGFkZCB0aGF0IHRvIHRoZSBuZXh0L25ldyB2ZXJzaW9uKHMpIG9y
IGV4cGxhaW4gd2h5Cj4gPj4geW91IGNob29zZSBub3QgdG8gZG8gdGhhdCAoYmMgZi5lLiB0aGVy
ZSB3YXMgYSBtYWpvciBjaGFuZ2UsIGJ1dCB0aGF0Cj4gPj4gZG9lcyBub3Qgc2VlbSBhcHBsaWNh
YmxlIHRvIHRob3NlIHBhdGNoZXMpLgo+ID4+Cj4gPj4gQ2hlZXJzLAo+ID4+ICAgRGllZGVyaWsK
PiA+Pgo+ID4+ID4gQ2hhbmdlcyBpbiB2MzoKPiA+PiA+IC0gRml4IHR5cG8gKCdzdGF0dXMgPSAi
ZGlzYWJsZSInIC0+ICdzdGF0dXMgPSAiZGlzYWJsZWQiJykgZm91bmQgYnkga2VybmVsIHRlc3Qg
cm9ib3QgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwOTI2MTMyOC5HcmpocDAyOS1s
a3BAaW50ZWwuY29tLwo+ID4+ID4gLSBMaW5rIHRvIHYyOiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9yLzIwMjUwOTI1MDkyMDM3LjEzNTgyLTEtamptMjQ3M0BnbWFpbC5jb20vCj4gPj4gPgo+ID4+
ID4gLS0tCj4gPj4gPgo+ID4+ID4gTGlhbmdiaW4gTGlhbiAoMyk6Cj4gPj4gPiAgIGR0LWJpbmRp
bmdzOiB2ZW5kb3ItcHJlZml4ZXM6IERvY3VtZW50IExpbmtFYXNlCj4gPj4gPiAgIGR0LWJpbmRp
bmdzOiBhcm06IHJvY2tjaGlwOiBBZGQgTGlua0Vhc2UgRWFzZVBpIFIxCj4gPj4gPiAgIGFybTY0
OiBkdHM6IHJvY2tjaGlwOiBhZGQgTGlua0Vhc2UgRWFzZVBpIFIxCj4gPj4gPgo+ID4+ID4gIC4u
Li9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sICAgICB8ICAgNSArCj4gPj4g
PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgIHwgICAyICsK
PiA+PiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAg
IDEgKwo+ID4+ID4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtZWFzZXBpLXIxLmR0cyAg
ICB8IDY5MiArKysrKysrKysrKysrKysrKysKPiA+PiA+ICA0IGZpbGVzIGNoYW5nZWQsIDcwMCBp
bnNlcnRpb25zKCspCj4gPj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTY4LWVhc2VwaS1yMS5kdHMKPiA+PiA+Cj4gPj4gPgo+ID4+ID4gYmFz
ZS1jb21taXQ6IGQwY2EwZGYxNzljNGIyMWUyYTZjNGE0ZmI2MzdhYThmYTE0NTc1Y2IKPiA+Pgo+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
