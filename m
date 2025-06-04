Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00A09C5B543
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 14:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tYaR4R0O1VxJ9aDNfPidSwG6fFMjB320QbOy05Cm34E=; b=ZKCy5CsUOUEm21
	hf1FCTJAGuGh4ut0IWmEQo++eDlClN/XTkecW49UxqJZ52DcA68rir+nFHrpmChVwIBeC34n45jET
	XpOBvG9CkY3uz1LKt9C8jb5ImBQ2TPVFfMgn/xYvx85VrVtFrbd7spErwnQqHmDd25hcEBJdETCAe
	q8hx3LyK/06POoGCooHkExo4BexarXospgUthR+D59uNYv8YAt9WLJMdEqWH8VdrncMFNAltgcguS
	REdUyMkYrEoWMi49EfKzK2thsNfyWa70PNivfpJIB75LwP0wVK55tw7aMKmz4XaNEOrvTg7G0Qg9E
	QStSjaoghA+FhfDaqimQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMoy1-0000000DY0k-3Mwf;
	Wed, 04 Jun 2025 14:19:45 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMouC-0000000DXTS-0SV7;
	Wed, 04 Jun 2025 14:15:49 +0000
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-4a42f28017eso11860021cf.0;
        Wed, 04 Jun 2025 07:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749046547; x=1749651347; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Jg5NzVH9x0e/UrqCaECe5kEEmmSbvsrq491+SQEdD8=;
        b=YZ01Eez4dD7tgYKEZ+KqLdxKmQ5/xnZVgsgIIw1uoa5oeQoLv99QMHp1ya+yTaewiD
         cBrvkjJYKmwP5upH381EZfscDRDIBMRP3zGQq3JuDuepjGpdnnhL4XorNrtJKDitLBzh
         U9fvh8y/MkXyG/X9HeWVdIEcBqvW7SyIi+6HdSDs+hR07svaSi20+DelBk1/eJGKkbRM
         iN2szmakdVPGHbOT6E13XhY15HohX6ATVgEHjewN9Wzuze5fmAJ0L5doPnvELlv3ecnd
         odGjUgOt5JCLXTL8HEYC/bn+LO9TI0sApSajagb5pDXoUj984j6BgnEcyqaLX1mgeolr
         HOqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749046547; x=1749651347;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Jg5NzVH9x0e/UrqCaECe5kEEmmSbvsrq491+SQEdD8=;
        b=Kx+MKKR/fxdceUHiSevrt2wByKysXwSgcQElM+iv6nyWLxak5zCRplSyHGdlDYFZ+W
         FMRyIQStK/i6RtNn4fKgmJ9mM+M2hrMriSmt7FzYBfRnubPIKPabP4meawSjzb0W5ksz
         LqF65KeHE6lDoUmOlYkAi13PbgV7gWlGHzNAVKe6+fcTRDz2megNXgjmb3MTdo0DR7Y3
         H9i/xDsVO5W8bPPHdYkpCuuh/cmYLMKDw4WqiZaSWQ7lb+dzXtlg9iMegerFTXr0E2zE
         1ABK5B2xnNIzS0K/G/ga6PIoNYFMAzVRVptWLEVYyYYhSzGyHZhkYtR5twQhIcN/wUd8
         ZmPw==
X-Forwarded-Encrypted: i=1; AJvYcCUOt/TfQ0Hbm0IsZ7a2k0WGLw3Me2CC1rVFjQag/E234/eX/3Yx/TFn5QuCK7A1/ldsmKfeYmbC6axv78ihJvUg@lists.infradead.org, AJvYcCVUG93U55w7Upk6mluRGJ/zqmU+mCFsC9C5ti8PDZ2c42iYlvf8WM5KLO4x1SOEB2q0RUuHbjpEVJrprYoTfOo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyptcrmd/rJu4nEtpvCgg0r+T+omB8WXSS5OuIn29Z/9AmqwFud
	yWYo/anU9JTr7aOo1NEKphpFsqHZd9wkTFnh0YClwD/Ks9BE0RAA/pAhxRKAgWoyOWi7ugMIfHT
	tAqlQS/b6qTPicrfpeR5abReVm7t2O8DLEqga+Q3r5fs2
X-Gm-Gg: ASbGncuB76movurhVpJX8jOGJH1lD6Orb1mi4rT36UYuWHx22KMndlP5K0TThwSBrNx
	5aMbgqdzSOMnGEKtrv9rMmrmhAzYAhyRYcZr8Angls6LHz6ee5a7v2XZWIflTdkuRIQsUmQHwaV
	7I3nX/aotQuBAPf4Z14+4TWb4ePdka3nc=
X-Google-Smtp-Source: AGHT+IFyPdm7h42GRcVyPmAA4X8jANkDh7Synd5egnSqzeiSSM5/zmGzBDUZs3mzMIf1pwlRH506uMCvsx+yJMdRwm0=
X-Received: by 2002:a05:622a:4d0a:b0:494:7191:9f80 with SMTP id
 d75a77b69052e-4a5a56f2403mr53082581cf.16.1749046546628; Wed, 04 Jun 2025
 07:15:46 -0700 (PDT)
MIME-Version: 1.0
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com> <174904540020.3869609.29886103068021354.robh@kernel.org>
In-Reply-To: <174904540020.3869609.29886103068021354.robh@kernel.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 4 Jun 2025 18:15:35 +0400
X-Gm-Features: AX0GCFuFHM52cAYw2Dx-JD6z3McuUg4g7ERZuiqkBqoiRvc1ZSxeJSlSnxPNrig
Message-ID: <CABjd4Yzfy3A95EVXGh6espREMTpUOD=GoR3orxScmWJW85R3dg@mail.gmail.com>
Subject: Re: [PATCH 0/4] arm64: dts: rockchip: enable further peripherals on
 ArmSoM Sige5
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_071548_148583_F3AB8B04 
X-CRM114-Status: GOOD (  31.58  )
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

T24gV2VkLCBKdW4gNCwgMjAyNSBhdCA1OjU44oCvUE0gUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPgo+IE9uIFR1ZSwgMDMgSnVuIDIwMjUgMjE6MDE6MTIgKzA0
MDAsIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4gQWRkIHN1cHBvcnQgZm9yIHRoZSB0d28gVVNC
IHR5cGUgQSBwb3J0cywgbGluayB1cCB0aGUgQ1BVIHJlZ3VsYXRvcnMgZm9yCj4gPiBEVkZTLCBl
bmFibGUgV2lGaSBhbmQgQmx1ZXRvb3RoLgo+ID4KPiA+IFRoZSBibHVldG9vdGggcGFydCBtaWdo
dCB3YXJyYW50IHNvbWUgZGlzY3Vzc2lvbiBhbmQgdGhvdWdodHMgZnJvbSB0aGUKPiA+IGxpc3Qs
IGdpdmVuIHRoYXQgaXQncyBjb25uZWN0ZWQgb3ZlciBVQVJUIGFuZCB0aHVzIG5vdCBkaXNjb3Zl
cmFibGUuIEF0Cj4gPiB0aGUgc2FtZSB0aW1lLCB0aGVyZSBhcmUgdHdvIHJldmlzaW9ucyBvZiB0
aGUgYm9hcmQgd2hpY2ggaGF2ZSBkaWZmZXJlbnQKPiA+IEJsdWV0b290aCBjaGlwcyBzb2xkZXJl
ZCBvbjogUmVhbHRlayBiYXNlZCBvbiB2MS4xIGFuZCBCcm9hZGNvbSBiYXNlZCBvbgo+ID4gdjEu
Mi4gSSdtIG5vdCBzdXJlIGlmIHRoZXJlIGlzIGFueSB3YXkgdG8gZGV0ZXJtaW5lIGJvYXJkIHZl
cnNpb24gZnJvbQo+ID4gc29mdHdhcmUuIE1pbmUgaXMgdjEuMiwgc28gdGhlIHJlc3BlY3RpdmUg
cGF0Y2ggZGVhbHMgd2l0aCB0aGUgQnJvYWRjb20KPiA+IGNhc2Ugb25seSwgYnV0IG1heWJlIGl0
J3MgYmV0dGVyIHRvIG1vdmUgaXQgaW50byBhIC5kdHNvIGFuZCB0aHVzIGtpY2sKPiA+IHRoZSBj
YW4gZG93biB0aGUgcm9hZCAoaS5lLiBtYWtlIHRoZSB1c2VyIGRlYWwgd2l0aCBib2FyZCBpZGVu
dGlmaWNhdGlvbgo+ID4gYW5kIGxvYWRpbmcgb2YgdGhlIHJpZ2h0IG92ZXJsYXkpPyBUaG91Z2h0
cyB3ZWxjb21lLgo+ID4KPiA+IEJlc3QgcmVnYXJkcywKPiA+IEFsZXhleQo+ID4KPiA+IFNpZ25l
ZC1vZmYtYnk6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4g
QWxleGV5IENoYXJrb3YgKDQpOgo+ID4gICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IGxpc3Qg
YWxsIENQVSBzdXBwbGllcyBvbiBBcm1Tb00gU2lnZTUKPiA+ICAgICAgIGFybTY0OiBkdHM6IHJv
Y2tjaGlwOiBlbmFibGUgVVNCIEEgcG9ydHMgb24gQXJtU29NIFNpZ2U1Cj4gPiAgICAgICBhcm02
NDogZHRzOiByb2NrY2hpcDogZW5hYmxlIHdpZmkgb24gQXJtU29NIFNpZ2U1Cj4gPiAgICAgICBh
cm02NDogZHRzOiByb2NrY2hpcDogZW5hYmxlIGJsdWV0b290aCBvbiBBcm1Tb00gU2lnZTUKPiA+
Cj4gPiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1hcm1zb20tc2lnZTUuZHRzICAgICAg
fCAxMzUgKysrKysrKysrKysrKysrKysrKysrCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NzYuZHRzaSAgICAgICAgICAgfCAgMTYgKysrCj4gPiAgMiBmaWxlcyBjaGFuZ2Vk
LCAxNTEgaW5zZXJ0aW9ucygrKQo+ID4gLS0tCj4gPiBiYXNlLWNvbW1pdDogNTQ2YjFjOWU5M2My
YmI4Y2Y1ZWQyNGUwYmUxYzg2YmIwODliMzI1Mwo+ID4gY2hhbmdlLWlkOiAyMDI1MDYwMi1zaWdl
NS11cGRhdGVzLWExNjJiNTAxYTFiMQo+ID4KPiA+IEJlc3QgcmVnYXJkcywKPiA+IC0tCj4gPiBB
bGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+Cj4gPgo+ID4KPiA+Cj4KPgo+IE15IGJv
dCBmb3VuZCBuZXcgRFRCIHdhcm5pbmdzIG9uIHRoZSAuZHRzIGZpbGVzIGFkZGVkIG9yIGNoYW5n
ZWQgaW4gdGhpcwo+IHNlcmllcy4KPgo+IFNvbWUgd2FybmluZ3MgbWF5IGJlIGZyb20gYW4gZXhp
c3RpbmcgU29DIC5kdHNpLiBPciBwZXJoYXBzIHRoZSB3YXJuaW5ncwo+IGFyZSBmaXhlZCBieSBh
bm90aGVyIHNlcmllcy4gVWx0aW1hdGVseSwgaXQgaXMgdXAgdG8gdGhlIHBsYXRmb3JtCj4gbWFp
bnRhaW5lciB3aGV0aGVyIHRoZXNlIHdhcm5pbmdzIGFyZSBhY2NlcHRhYmxlIG9yIG5vdC4gTm8g
bmVlZCB0byByZXBseQo+IHVubGVzcyB0aGUgcGxhdGZvcm0gbWFpbnRhaW5lciBoYXMgY29tbWVu
dHMuCj4KPiBJZiB5b3UgYWxyZWFkeSByYW4gRFQgY2hlY2tzIGFuZCBkaWRuJ3Qgc2VlIHRoZXNl
IGVycm9yKHMpLCB0aGVuCj4gbWFrZSBzdXJlIGR0LXNjaGVtYSBpcyB1cCB0byBkYXRlOgo+Cj4g
ICBwaXAzIGluc3RhbGwgZHRzY2hlbWEgLS11cGdyYWRlCj4KPgo+IFRoaXMgcGF0Y2ggc2VyaWVz
IHdhcyBhcHBsaWVkICh1c2luZyBiNCkgdG8gYmFzZToKPiAgQmFzZTogdXNpbmcgc3BlY2lmaWVk
IGJhc2UtY29tbWl0IDU0NmIxYzllOTNjMmJiOGNmNWVkMjRlMGJlMWM4NmJiMDg5YjMyNTMKPgo+
IElmIHRoaXMgaXMgbm90IHRoZSBjb3JyZWN0IGJhc2UsIHBsZWFzZSBhZGQgJ2Jhc2UtY29tbWl0
JyB0YWcKPiAob3IgdXNlIGI0IHdoaWNoIGRvZXMgdGhpcyBhdXRvbWF0aWNhbGx5KQo+Cj4gTmV3
IHdhcm5pbmdzIHJ1bm5pbmcgJ21ha2UgQ0hFQ0tfRFRCUz15IGZvciBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwLycgZm9yIDIwMjUwNjAzLXNpZ2U1LXVwZGF0ZXMtdjEtMC03MTdlOGNlNGFi
NzdAZ21haWwuY29tOgo+Cj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtcm9j
LXBjLmR0YjogbW1jQDJhMzIwMDAwIChyb2NrY2hpcCxyazM1NzYtZHctbXNoYyk6IGNvbXBhdGli
bGU6ICdvbmVPZicgY29uZGl0aW9uYWwgZmFpbGVkLCBvbmUgbXVzdCBiZSBmaXhlZDoKPiAgICAg
ICAgIFsncm9ja2NoaXAscmszNTc2LWR3LW1zaGMnLCAncm9ja2NoaXAscmszMjg4LWR3LW1zaGMn
XSBpcyB0b28gbG9uZwo+ICAgICAgICAgJ3JvY2tjaGlwLHJrMjkyOC1kdy1tc2hjJyB3YXMgZXhw
ZWN0ZWQKPiAgICAgICAgICdyb2NrY2hpcCxyazMyODgtZHctbXNoYycgd2FzIGV4cGVjdGVkCj4g
ICAgICAgICAncm9ja2NoaXAscmszNTc2LWR3LW1zaGMnIGlzIG5vdCBvbmUgb2YgWydyb2NrY2hp
cCxweDMwLWR3LW1zaGMnLCAncm9ja2NoaXAscmsxODA4LWR3LW1zaGMnLCAncm9ja2NoaXAscmsz
MDM2LWR3LW1zaGMnLCAncm9ja2NoaXAscmszMTI4LWR3LW1zaGMnLCAncm9ja2NoaXAscmszMjI4
LWR3LW1zaGMnLCAncm9ja2NoaXAscmszMzA4LWR3LW1zaGMnLCAncm9ja2NoaXAscmszMzI4LWR3
LW1zaGMnLCAncm9ja2NoaXAscmszMzY4LWR3LW1zaGMnLCAncm9ja2NoaXAscmszMzk5LWR3LW1z
aGMnLCAncm9ja2NoaXAscmszNTI4LWR3LW1zaGMnLCAncm9ja2NoaXAscmszNTYyLWR3LW1zaGMn
LCAncm9ja2NoaXAscmszNTY4LWR3LW1zaGMnLCAncm9ja2NoaXAscmszNTg4LWR3LW1zaGMnLCAn
cm9ja2NoaXAscnYxMTA4LWR3LW1zaGMnLCAncm9ja2NoaXAscnYxMTI2LWR3LW1zaGMnXQo+ICAg
ICAgICAgZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9tbWMv
cm9ja2NoaXAtZHctbXNoYy55YW1sIwo+IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTc2LWFybXNvbS1zaWdlNS5kdGI6IG1tY0AyYTMyMDAwMCAocm9ja2NoaXAscmszNTc2LWR3LW1z
aGMpOiBjb21wYXRpYmxlOiAnb25lT2YnIGNvbmRpdGlvbmFsIGZhaWxlZCwgb25lIG11c3QgYmUg
Zml4ZWQ6Cj4gICAgICAgICBbJ3JvY2tjaGlwLHJrMzU3Ni1kdy1tc2hjJywgJ3JvY2tjaGlwLHJr
MzI4OC1kdy1tc2hjJ10gaXMgdG9vIGxvbmcKClNob3VsZCBiZSBqdXN0IHJvY2tjaGlwLHJrMzU3
Ni1kdy1tc2hjLgoKVGhhbmtzIGJvdCwgYW5kIHNvcnJ5IGZvciB0aGUgbm9pc2UgLSBtaXNzZWQg
dGhpcyBvbmUuCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
