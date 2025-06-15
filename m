Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A882DC61CE8
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Jun 2025 16:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKk83XPP5QTx3SebQYaDcUY6cqjyztpbpODWmw5/2Zw=; b=knGHbvMDfEUIGp
	WM6S2rWjhFJi/+P6+ePEQMj/R6L3GU6DtV587ZwdddXbXoGeySdXdIjeba6FLVqL8UdG183D0SBCE
	4bH+iJrBDn2+9HvgiH9orVze/RJlyKOztFLbqvnfiw06zhS9a3G0A9k70AxJNPMK9rPdprhvpP3KK
	UQlZstMtg94P8kgkt2ydsjiC40byW9QeRBQnEqf2IkSHJYSvYBZH6M4nTdk6OislF3H47Dh+GiRPn
	9zZ2GfkWCGz2RFDNX9tbhMl/PchdUqkmjfMYkc110JEM+qbYFqdW4DmXOxtD/kcWj9IRcD8k3dbrJ
	Xu5i8Ya+fXmt/33pRscQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQq8i-00000002eMa-1jIT;
	Sun, 15 Jun 2025 16:23:24 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQq6V-00000002eGN-1EFO;
	Sun, 15 Jun 2025 16:21:08 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-4a4312b4849so45554231cf.1;
        Sun, 15 Jun 2025 09:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750004466; x=1750609266; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jp7O6Jg1aWaKvBHu7wKcv8nngRfkIIG/oXFx1uRaGaE=;
        b=FJUcfCztUEsRJB3dDjHCDLajC2oFCGdX9WtVynQCJkV0k36eljBjbcvxfgpu/1DQh6
         nSqhmvS1nIz7NWNYmdiA5k6Rf7Qt2mkdm5m+9hegMwMY7Frzw0l2YSLsD9TMmbYyrzCU
         5YbPEm8S1yKwhDiXVpl7zP9SrI5lJ2oCZ7S5B+24rjIV23yrrLcZqAGNCIhTA4umww4g
         nLykPdWKN7oeKmNPUQdTFqVXwVOHxQz7fzUXhd+WxUjEUs4vleeUR2J73c2bi1yM3ZzG
         +0JuFs9ISqBDHVvKoXpSDcujAS5N3OzQEAOBKSi6L1t7oMHLQ5l5+aqzIANOI6LQOHIl
         bifg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750004466; x=1750609266;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jp7O6Jg1aWaKvBHu7wKcv8nngRfkIIG/oXFx1uRaGaE=;
        b=bECSd9IK0CSgyKb4FciIL+/yaSbT+f/c2blX4Bf0w3rCnkZFhudWPfKycnBy+bd7ev
         0v4z3OPf1G7GBQsb2K8836Nc2T6VdlyIMAaAV7w9YXx1Nsh3YUaDZet5LZNoPzHC9CwU
         n/Ht0fRr67e+W+83IAEURRNj9uIkYQzP2mgyemYMaTNJtMXEfOCRStjIurxehPwSjE2w
         m+KDwj8xl/rZgPYOGWE3MRDfKTUI+B6g8JYsqSslYkAToytib4sfoNV1XieAqUnxdn7O
         oUqyM3YimV5dKfuEpmUa53eKCn1WAlZfKMfAc8tcob1PPIC9zgDGTelHd61vwrg6RC2q
         UcMQ==
X-Forwarded-Encrypted: i=1; AJvYcCVx9evlw0rrAzeB/o+sTHk4Zq0UBlAGqj36vY9odtBnjNUikV1AH4IBfHaAeYV4Y254rngncLXpepEMent7YZ+T@lists.infradead.org, AJvYcCWuOz/s/GMS/47m1qoR1SzdYtr4uG8+mMrH/O3dw1Hb9RhY3fN+yOn33n2Y6b0jJ+2Plu/KuAW7hYIHbl4O9Wc=@lists.infradead.org
X-Gm-Message-State: AOJu0YybLf1zke5ygqAlk1H/vq3yqaBYgc3LbvFyLMGl3SushRC/pQwN
	MkkY2hiCvaebvMcFYEyWoV45qVpjnz6BAg3jaG769L2SBTzO8oQG54Qgf08NTRq19KM/TX2G1WW
	XqHHm0XNFAevTU5WEnTuOGV6ke+FpVC0=
X-Gm-Gg: ASbGncv4eYQ255ckQEQD9UzpfEBRdu3kHztbaKLocin4owRgRew2410QP+27jhqNp/U
	UqppffBwgcU/Xzqlun3yir1Fv5Rk5yc/p8Dub1XneWZf0GXzKlaLBcoiZ2+8nd2gWtHhxiBaAmx
	PiqZ3YArBA932of84bUz5STYJQL8gPpClX4Sd2QCp03tu/gg==
X-Google-Smtp-Source: AGHT+IFRUdBeIVHBLIhhVD74OXQUEBtMxUmA3npaAeY29ycZJNVeDhcqL4fcNY3KiRScIs0cAr7oIkSsjX57Jc/4Llk=
X-Received: by 2002:ac8:5cd2:0:b0:494:a148:b487 with SMTP id
 d75a77b69052e-4a73c47e332mr102634071cf.8.1750004466113; Sun, 15 Jun 2025
 09:21:06 -0700 (PDT)
MIME-Version: 1.0
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <20250603-sige5-updates-v1-1-717e8ce4ab77@gmail.com> <6656934.DvuYhMxLoT@workhorse>
 <CABjd4Yx05SCm+03jWbsEP-A5AuhL14wLj=+VdKyQgqMbnxi3xQ@mail.gmail.com>
 <512E950E-E8CB-443B-8E47-79F073D217E8@gmail.com> <CABjd4YxGQP=rH15EX12w36b7+82Dedf+rVH3v5V6gBwNv3V3iw@mail.gmail.com>
 <90218D7B-0CF5-4F5D-969A-909A44E6044F@gmail.com> <CABjd4Yw3FyVS0MBk2WdWKb24vkqrb09Tx3tj6B-xsmG1-Csk7w@mail.gmail.com>
 <80ACAAAE-F522-4199-9048-ADE69F6E1128@gmail.com>
In-Reply-To: <80ACAAAE-F522-4199-9048-ADE69F6E1128@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Sun, 15 Jun 2025 20:20:54 +0400
X-Gm-Features: AX0GCFvyfycTOtkz4ezDarF-FdHEZqxgkWW-GdCXjuH2q8WwDdHjjRYYdWxH-Gg
Message-ID: <CABjd4YwQrnoeFU5Nm8Vy-=rFW-tfQuzQfYi+B2zmBdj_=Qh6EQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: list all CPU supplies on ArmSoM Sige5
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250615_092107_335897_BFAD7F8E 
X-CRM114-Status: GOOD (  27.77  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU3VuLCBKdW4gMTUsIDIwMjUgYXQgODowMOKAr1BNIFBpb3RyIE9uaXN6Y3p1awo8cGlvdHIu
b25pc3pjenVrQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPgo+Cj4gPiBXaWFkb21vxZvEhyBuYXBpc2Fu
YSBwcnpleiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+IHcgZG5pdSA5IGN6ZSAy
MDI1LCBvIGdvZHouIDE2OjA1Ogo+ID4KPiA+IE9uIFN1biwgSnVuIDgsIDIwMjUgYXQgMTE6MjTi
gK9BTSBQaW90ciBPbmlzemN6dWsKPiA+IDxwaW90ci5vbmlzemN6dWtAZ21haWwuY29tPiB3cm90
ZToKPiA+Pj4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogQWxleGV5IENoYXJrb3YgPGFsY2hh
cmtAZ21haWwuY29tPiB3IGRuaXUgNSBjemUgMjAyNSwgbyBnb2R6LiAxNTo0MjoKPiA+Pj4+IEFs
ZXhleSwKPiA+Pj4+IEkgc2VlIHlvdSBhcmUgdXNpbmcgcmszNTc2IGJvYXJkIGxpa2UgbWUgKG5h
bm9waS1tNSkKPiA+Pj4+IEhhdmUgeW91IG9uIHlvdXIgYm9hcmQgY29ycmVjdGx5IHdvcmtpbmcg
Y3B1IGR2ZnM/Cj4gPj4+PiBJIG1lYW46IFsxXVtkZXNpcmVkIGNsb2NrcyByZXBvcnRlZCBieSBr
ZXJuZWwgc3lzZnMgYXJlIGluIHBhaXIgd2l0aCBbMltdY3VyIGNsb2Nrcz8KPiA+Pj4+IEluIG15
IGNhc2UgaSBzZWUgbWluZSBjcHUgbGl2ZXMgdG90YWxseSBvbiBpdOKAmXMgb3duIHdpdGggZHZm
czoKPiA+Pj4KPiA+Pj4gSGkgUGlvdHIsCj4gPj4+Cj4gPj4+IEkgaGF2ZW4ndCB0cmllZCB0byB2
YWxpZGF0ZSBhY3R1YWwgcnVubmluZyBmcmVxdWVuY2llcyB2cy4gcmVxdWVzdGVkCj4gPj4+IGZy
ZXF1ZW5jaWVzLCBidXQgc3ViamVjdGl2ZSBwZXJmb3JtYW5jZSBhbmQgcG93ZXIgY29uc3VtcHRp
b24gc2VlbSB0bwo+ID4+PiBiZSBpbiBsaW5lIHdpdGggd2hhdCBJIGV4cGVjdC4KPiA+Pgo+ID4+
IHdlbGwgLSBteSBzdWJqZWN0aXZlIGwmZiBpcyB0aGF0ICAtIGN1cnJlbnRseSAtIG15IHJrMzU3
NiBzZWVtcyDigJ5zbG93ZXIiIHRoYW4gaS5lLiA0eEE1MyBoNjE4Lgo+ID4KPiA+IEluIG15IGV4
cGVyaWVuY2UsIG5hdGl2ZSBjb21waWxhdGlvbiBvZiBHQ0MgMTQgdXNpbmcgOCB0aHJlYWRzIG9u
Cj4gPiBSSzM1NzYgKG1haW5saW5lIHdpdGggcGFzc2l2ZSBjb29saW5nIGFuZCB0aHJvdHRsaW5n
IGVuYWJsZWQpOiAyIGhvdXJzCj4gPiA2IG1pbnV0ZXMsIG9uIFJLMzU4OCAobWFpbmxpbmUgd2l0
aCBwYXNzaXZlIGNvb2xpbmcgdmlhIFJhZHhhIFJvY2sgNUIKPiA+IGNhc2UgYW5kIHRocm90dGxp
bmcgZW5hYmxlZCBidXQgbmV2ZXIga2lja2luZyBpbik6IDEgaG91ciAxMCBtaW51dGVzCj4KPiBi
eSBjdXJpb3NpdHkgaSBsb29rZWQgcmFuZG9tbHkgb24gMzU3NiB2cyAzNTg4Ogo+IG11bHRpdGhy
ZWFkIHBhc3NtYXJrOiAzNjc1IChodHRwczovL3d3dy5jcHViZW5jaG1hcmsubmV0L2NwdS5waHA/
Y3B1PVJvY2tjaGlwK1JLMzU3NiZpZD02MjEzKQo+IG11bHRpdGhyZWFkIHBhc3NtYXJrOiA0NTMw
IChodHRwczovL3d3dy5jcHViZW5jaG1hcmsubmV0L2NwdS5waHA/Y3B1PVJvY2tjaGlwK1JLMzU4
OCZpZD00OTA2KQo+Cj4gYXNzdW1pbmcgMzU4OCBhcyBiYXNlbGluZSwgMzU3NiBpcyBhcHByb3gg
MjAlIHNsb3dlciBvbiBtdWx0aXRocmVhZCBwYXNzbWFyayAoaGFzIH4wLDggY29tcCBwb3dlciBv
ZiAzNTg4KQo+IDcwIG1pbiBjb21waWxlIG9uIDM1ODggc2hvdWxkIHRha2Ugc29tZXRoaW5nIGxp
a2Ugfjg2bWluIG9uIDM1NzYuCj4gSW4geW91ciBjYXNlIDEyNm1pbiBjb21waWxlIG9uIDM1NzYg
c2hvd3MgMzU3NiBvZmZlcnMgMCw1NSBjb21wIHBvd2VyIG9mIDM1ODguCj4gUm91Z2hseSAzNTc2
IHNob3VsZCBkbyB0aGlzIHRhc2sgaW4gNDBtaW4gbGVzcyB0aGFuIHlvdSBjdXJyZW50bHkgc2Vl
IGkgdGhpbmsKPgo+Cj4gPiBDYW4ndCBzZWUgaG93IHUtYm9vdCB3b3VsZCBhZmZlY3QgQ1BVIHNw
ZWVkIGluIExpbnV4LCBhcyBsb25nIGFzIHlvdQo+ID4gdXNlIGNvbXBhcmFibGUgQVRGIGltYWdl
cy4gRG8geW91IHVzZSB0aGUgc2FtZSBrZXJuZWwgYW5kIGR0YiBpbiBhbGwKPiA+IHRoZXNlIGNh
c2VzPyBBbHNvLCB3aGF0J3MgeW91ciB0aGVybWFsIHNldHVwPwo+Cj4geWVzLiBpbiBhbGwgY2Fz
ZXMgb25seSBjaGFuZ2Ugd2FzOiB1Ym9vdCAmIGF0Zgo+IHRoZXJtYWwgaXMgYmFzZWQgb24gcmVj
ZW50IGNvbGxhYm9yYSBzZXJpZXMgKCsgcmVjZW50IHBvb2xpbmcgZml4IGZvciBjbG9ja3MgcmV0
dXJuIGZyb20gdGhyb3R0bGluZykKPgo+ID4KPiA+Cj4gPiBOb3Qgc3VyZSBVWCBpcyBhIHBhcnRp
Y3VsYXJseSBnb29kIG1lYXN1cmUgb2YgQ1BVIHBlcmZvcm1hbmNlLCBhcyBsb25nCj4gPiBhcyB5
b3UndmUgZ290IGEgcHJvcGVybHkgYWNjZWxlcmF0ZWQgRFJNIGdyYXBoaWNzIHBpcGVsaW5lLiBN
b3JlCj4gPiBsaWtlbHkgMkQvM0QgYW5kIG1lbW9yeS4KPgo+IGluZGVlZC4KPiBGb3IgcXVhbnRp
ZmllZCBsb29rIGnigJltIGxvb2tpbmcgb24gdi5zaW1wbGUgYXBwcm9hY2ggdG8gZXN0aW1hdGUg
cmVhbCBjbG9jayBpcyBodHRwOi8vdW9iLWhwYy5naXRodWIuaW8vMjAxNy8xMS8yMi9hcm0tY2xv
Y2stZnJlcS5odG1sCj4gYnkgY3VyaW9zaXR5IGkgbG9va2VkIHdoYXQgaXQgcmVwb3J0cyBvbiBh
NTMvYTU1L2E3Mi9hNzYgYW5kIGl0IGlzIHN1cnByaXNpbmdseSBhY2N1cmF0ZSA6LSkKPiBvbiBt
aW5lIDM1NzYgd2l0aCBjb2xsYWJvcmEgdWJvb3QrbWFpbmxpbmUgYXRmIGlzIGhvd3MgODAwTUh6
IChhbmQgaW4gcGVyZi4gZ292IGl0IHNlZW1zIHRvIGJlIGNvbnN0YW50KQo+Cj4gPgo+ID4gVGhl
cmUgbWlnaHQgYmUgc29tZSBkaWZmZXJlbmNlIGluIGhvdyBQVlRQTEwgYmVoYXZlcyBvbiBSSzM1
NzYgdnMuCj4gPiBSSzM1ODguIEJ1dCBmcmFua2x5IGZpcnN0IEkgd291bGQgY2hlY2sgaWYgeW91
IGFyZSB1c2luZyBjb21wYXJhYmxlCj4gPiBBVEYgaW1wbGVtZW50YXRpb25zIChlLmcuIHVwc3Ry
ZWFtIFRGLUEgaW4gYm90aCBjYXNlcyksIGtlcm5lbHMgYW5kCj4gPiB0aGVybWFsIGVudmlyb25t
ZW50IDopCj4KPiBhbGwgdGVzdHM6IHRoZSBzYW1lIDYuMTUuMiBtYWlubGluZSArIHNvbWUgY29s
bGFib3JhIHBhdGNoZXMKPgo+IGRpZmZzIHdlcmU6Cj4gMS5jb2xsYWJvcmEgdWJvb3RbMV0gKyBt
YWlubGluZSBhdGYgMi4xMwo+IDIuY29sbGFib3JhIHVib290WzFdICsgcm9ja2NoaXAgcmtiaW4g
YmwzMSBibG9iCj4gMy52ZW5kb3IgdWJvb3QgKGJpbiBkdW1wIGZyb20gZnJpZW5kbHllbGVjIHVi
dW50dSBpbWFnZSkKPgo+IG9uIDEvMiBpIHNlZSBraW5kIG9mIGlzc3VlIHdpdGggY2xvY2sgdmFs
dWVzIChpLmUuIHBlcmYgZ292IGdpdmVzIGNvbnN0YW50IDgwME1IeiBvbiBtYWlubGluZSBhdGYp
Lgo+IDMgc2VlbXMgdG8gcGVyZm9ybSBiZXR0ZXIgLSAoaS5lLiBwZXJmIGdvdiBnaXZlcyBjb25z
dGFudCAxNTAwTUh6IHNvIGFsbCBpcyBzbmFwcGllci9mYXN0ZXIpCj4KPiBhcyBwdnRwbGwgaXMg
dHJ5aW5nIHRvIHJlYWNoIHRhcmdldCBmcmVxIGFuZCBlbmRzIHdpdGggc3RhYmxlIG9wZXIuIGZy
ZXEgZm9yIGdpdmVuIGNwdV92ZGQvdGVtcC9mYWIuY3V0IC0gcG9zc2libGUgdGhlb3J5IGlzOiBp
ZiBjcHVfdmRkIGlzIHdyb25nbHkgZHJpdmVuLCBwdnRwbGwgcHJvZ3JhbW1lZCBmcmVxIHdpbGwg
d2F5IGRpZmYgZnJvbSByZXEuIChpLmUuIHdheSB0b28gbG93KS4KCkl0IGlzIGFuIGludGVyZXN0
aW5nIGxpbmUgb2YgdGhvdWdodC4gQWZ0ZXIgYWxsLCBSSzM1NzYgYm9hcmRzIEkKbG9va2VkIGF0
IHVzZSBhbiBJMkMgY29ubmVjdGVkIFBNSUMsIHdoaWxlIFJLMzU4OCB1c2UgYW4gU1BJIGNvbm5l
Y3RlZApvbmUuIElmIHRoZXJlIGlzIHNvbWUgYnVnIGluIHRoZSBJMkMgYnVzIGdsdWUgZm9yIHRo
ZSBQTUlDIGRyaXZlciwgIGl0CmNvdWxkIHRoZW9yZXRpY2FsbHkgcmVwb3J0IHVwZGF0ZWQgdm9s
dGFnZSB3aXRob3V0IGFsd2F5cyB1cGRhdGluZyBpdApwcm9wZXJseS4KCkkgc3RpbGwgYmVsaWV2
ZSBpdCBzdWNjZWVkcyBtb3JlIG9mdGVuIHRoYW4gbm90IHRob3VnaCwgYmVjYXVzZSBJCm9ic2Vy
dmUgbWVhc3VyZWQgcG93ZXIgY29uc3VtcHRpb24gb2YgYXJvdW5kIDVXIHVuZGVyIGZ1bGwgbG9h
ZCB2cy4KYXJvdW5kIDEuNFcgaW4gaWRsZSAob24gQXJtU29NIFNpZ2U1KS4gV2hpY2ggZG9lc24n
dCBydWxlIG91dCBzb21lCnRyYW5zaWVudCB3ZWlyZG5lc3MuCgo+IG1vbml0b3JpbmcgdmRkX2Jp
Zy92ZGRfbGl0IHNob3dzIGNvbnN0YW50IDk1MG12IGZvciBwZXJmLmdvdiAocmVhZCBmcm9tIHN5
c2ZzOyBub3QgdmVyaWZpZWQgd2l0aCBtdWx0aW1ldGVyIGFzIGkgZG9u4oCZdCBoYXZlIHBjYiBw
ZGYgd2l0aCBjb21wb25lbnRzIGxheW91dCBzbyBjYW7igJl0IGlkZW50aWZ5IGkuZS4gdmRkX2Jp
ZyBmaWx0ZXJpbmcgY2FwcyBjMTAwNy9jMTAwOCB0byBtZWFzdXJlKQoKTWVhc3VyaW5nIHZvbHRh
Z2VzIHRvIHdpdGhpbiAwLjFWIHByZWNpc2lvbiAobm90IGp1c3QgcmVzb2x1dGlvbikKc291bmRz
IGxpa2UgYSBiaWcgYXNrIG9mIGEgbXVsdGltZXRlciBJTUhPIDopCgpCZXN0LApBbGV4ZXkKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
