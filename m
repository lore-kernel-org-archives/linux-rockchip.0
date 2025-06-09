Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C227AC61CE8
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jun 2025 14:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g5CUfm/eNyqrGbE7OG+v795i3w4pSxmecYaxr/KDmAA=; b=N7IVvDyW7WJY+D
	aMKmhei73f7vs1AK3snxC+K0mpT+DulizYrRT7HAuuYdkSVDlHks+1oaGDIKOj3hpwC/94z8w/mYb
	/H+6UPei1PIUT4txvn9NtWKPj8f8tanz10x1WPPw3HyVY5Rkl6KOiQ+Q+WbjfFLu2U9YKKKGJI9xB
	TlktKSU3GdwDrbpEnGLLttGUKjkSCPhwmCVG6mZgiXPocOa/HAO3up+K83m2cFKCNUqK03nTnu24e
	VjdgeXNVUR9plmEXqoF/rRa8nSUnR2hhVn+luLsjt7P0m72bBD3yu9gsrLqktW8B9WbOstY8Evxdk
	Qe0YLOT3ItfPatIO5now==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOdAQ-00000004Lnt-42Rq;
	Mon, 09 Jun 2025 14:08:02 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOd8D-00000004LSi-0KJb;
	Mon, 09 Jun 2025 14:05:46 +0000
Received: by mail-qt1-x82b.google.com with SMTP id d75a77b69052e-4a58c2430edso47644441cf.1;
        Mon, 09 Jun 2025 07:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749477944; x=1750082744; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5em0HjCiCNml+pK7wkeftBLKShhy+xkQwHSxQRlfmBI=;
        b=ccPUNQ/IIb90AhlXRpd1amrPl7ruZjmgELr8gnw3xpIqAUWYF4VVHa86WaU2Op7hRC
         g/jPN6buMCJS/lT9CDeVz1KF6Og+0mXDhN0tsuPPYw3ZL5V0CinOkY7o5dODu8DdQnzq
         mTQx1J3vNH6+PcRGYek9i+8Md6Fz+XjxiB3JC9H+Ug3beKodmmos0/nleJ/1HmgZ3w91
         AI4D71KqmN3gofOzzb11AC5cSITkZrYKUibcigxC6tM82lYkbCxqrLGNNo7nZ0WcZNEX
         JvgAfpawhTTMh+bVIjq/ExK19ccJQxHjlkm1LBItSKa/Hfe4/M9P3DP6buZuLfkEoETS
         lo0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749477944; x=1750082744;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5em0HjCiCNml+pK7wkeftBLKShhy+xkQwHSxQRlfmBI=;
        b=IlVyHvnRnHxC6oxI3oRsIMJnUR7PGT4af+Xd8Hp0I9moI+hhiu/INNt9rIZ/kKg/jq
         nXrxVMG/dvNyyLub3HaXRwd05++0fQJrEUqj5+shU9kkwuE2l5SdmgHCS9A/9WU8V8Fc
         mEslRf2IBZzlGGw9O6BqzlArabm1GvmiuFKJ3AuKprXLEdaT2USf8IaiymWg8vcYEYY0
         MHRau+YffeHlgnu4XWjRFdnBtfB4pQWAx+KYeZRJMjmKiGoGkIaRtkmbyaL7aN+d7InL
         dvr9Sksklu51NOL0WUQIWZUSXYyYbrdOFoY4HSLyqOiDEHC3Bd7oMWF7u0uZ0F5vI3Oq
         A34A==
X-Forwarded-Encrypted: i=1; AJvYcCVUNbPKDqf6oYgPJxpGZ9kJW2/mh/p1aHkpwzmlzh0HWFLXiI37vQuOo/zTd3aRw4TmCDjn858zhwOa1X/agM0O@lists.infradead.org, AJvYcCWTtfFlpFtvUN9s7Ecv4xZ1FXh3YwMQ3Y7+PRh9//XgizXUCCJCrWnWmViFjrL3RkdnwHXnMIWzoMAyRsB9poc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxkWJGD1uq8bQ7rP6QZ2aRIpRkw0Pw3w60dKcVgTrcVTN6ugOZ/
	UMsqX2Ph7wAJlept130Gy+Sty1V5sbfaWJ7RtNRe9jzCzD7HICQkArk9AppvyW+3NGXeiMBfshj
	eUW/R1SlalPXNWrV9zzFmnujgZwzIMkA=
X-Gm-Gg: ASbGnct7OZStCqe8otkUMBuoZzPixVQ2ef4KamNElZixxAcAFyHfTkjxDogjC+M/79a
	Z9OwilkdFMTrNPJDE1OIlz/tNONH8I8KsyA+s4OSp47tMgEjMNOCPM5iGV6ggKHMClo+LZxv8SU
	w6M3ktZWj2m1qsWrKGX5AJnVh5an0rCYY=
X-Google-Smtp-Source: AGHT+IElRSJZYvwLgNDSXxeUFeCJ4WGpztDtPuM0pyb0/v8zrLeTq6YP4S0P3QPuP0k+uFuxoBLonx/Q+SmnlY/xFZw=
X-Received: by 2002:a05:622a:4d08:b0:4a5:99a8:eb21 with SMTP id
 d75a77b69052e-4a6f054f796mr16515991cf.22.1749477943641; Mon, 09 Jun 2025
 07:05:43 -0700 (PDT)
MIME-Version: 1.0
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <20250603-sige5-updates-v1-1-717e8ce4ab77@gmail.com> <6656934.DvuYhMxLoT@workhorse>
 <CABjd4Yx05SCm+03jWbsEP-A5AuhL14wLj=+VdKyQgqMbnxi3xQ@mail.gmail.com>
 <512E950E-E8CB-443B-8E47-79F073D217E8@gmail.com> <CABjd4YxGQP=rH15EX12w36b7+82Dedf+rVH3v5V6gBwNv3V3iw@mail.gmail.com>
 <90218D7B-0CF5-4F5D-969A-909A44E6044F@gmail.com>
In-Reply-To: <90218D7B-0CF5-4F5D-969A-909A44E6044F@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 9 Jun 2025 18:05:32 +0400
X-Gm-Features: AX0GCFuWBU5QiUTtg-6bvXrLknfduxLhtbNHfqrkbx632DneSAm8rotxzSeH1rs
Message-ID: <CABjd4Yw3FyVS0MBk2WdWKb24vkqrb09Tx3tj6B-xsmG1-Csk7w@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: list all CPU supplies on ArmSoM Sige5
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_070545_117903_D080CE1C 
X-CRM114-Status: GOOD (  23.72  )
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

T24gU3VuLCBKdW4gOCwgMjAyNSBhdCAxMToyNOKAr0FNIFBpb3RyIE9uaXN6Y3p1awo8cGlvdHIu
b25pc3pjenVrQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiBXaWFkb21vxZvEhyBuYXBpc2FuYSBwcnpl
eiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+IHcgZG5pdSA1IGN6ZSAyMDI1LCBv
IGdvZHouIDE1OjQyOgo+ID4+IEFsZXhleSwKPiA+PiBJIHNlZSB5b3UgYXJlIHVzaW5nIHJrMzU3
NiBib2FyZCBsaWtlIG1lIChuYW5vcGktbTUpCj4gPj4gSGF2ZSB5b3Ugb24geW91ciBib2FyZCBj
b3JyZWN0bHkgd29ya2luZyBjcHUgZHZmcz8KPiA+PiBJIG1lYW46IFsxXVtkZXNpcmVkIGNsb2Nr
cyByZXBvcnRlZCBieSBrZXJuZWwgc3lzZnMgYXJlIGluIHBhaXIgd2l0aCBbMltdY3VyIGNsb2Nr
cz8KPiA+PiBJbiBteSBjYXNlIGkgc2VlIG1pbmUgY3B1IGxpdmVzIHRvdGFsbHkgb24gaXTigJlz
IG93biB3aXRoIGR2ZnM6Cj4gPgo+ID4gSGkgUGlvdHIsCj4gPgo+ID4gSSBoYXZlbid0IHRyaWVk
IHRvIHZhbGlkYXRlIGFjdHVhbCBydW5uaW5nIGZyZXF1ZW5jaWVzIHZzLiByZXF1ZXN0ZWQKPiA+
IGZyZXF1ZW5jaWVzLCBidXQgc3ViamVjdGl2ZSBwZXJmb3JtYW5jZSBhbmQgcG93ZXIgY29uc3Vt
cHRpb24gc2VlbSB0bwo+ID4gYmUgaW4gbGluZSB3aXRoIHdoYXQgSSBleHBlY3QuCj4KPiB3ZWxs
IC0gbXkgc3ViamVjdGl2ZSBsJmYgaXMgdGhhdCAgLSBjdXJyZW50bHkgLSBteSByazM1NzYgc2Vl
bXMg4oCec2xvd2VyIiB0aGFuIGkuZS4gNHhBNTMgaDYxOC4KCkluIG15IGV4cGVyaWVuY2UsIG5h
dGl2ZSBjb21waWxhdGlvbiBvZiBHQ0MgMTQgdXNpbmcgOCB0aHJlYWRzIG9uClJLMzU3NiAobWFp
bmxpbmUgd2l0aCBwYXNzaXZlIGNvb2xpbmcgYW5kIHRocm90dGxpbmcgZW5hYmxlZCk6IDIgaG91
cnMKNiBtaW51dGVzLCBvbiBSSzM1ODggKG1haW5saW5lIHdpdGggcGFzc2l2ZSBjb29saW5nIHZp
YSBSYWR4YSBSb2NrIDVCCmNhc2UgYW5kIHRocm90dGxpbmcgZW5hYmxlZCBidXQgbmV2ZXIga2lj
a2luZyBpbik6IDEgaG91ciAxMCBtaW51dGVzCgo+IFRoaXMgZGlyZWN0ZWQgbWUgdG8gaW52ZXN0
aWdhdGUgdGhpcyBpc3N1ZS4KPiBUZXN0IHJ1biB3YXMgbWVkaWEgcGxheWVyIChteXRodHYpIHdo
ZXJlIHVpIGhhcyBnbCBlZmZlY3RzIGFuZCB1aSBnbCB0cmFuc2l0aW9ucyDigJ5zcGVlZOKAnSBh
cmUgcXVpdGUgcHJvcG9ydGlvbmFsIHRvIGNwdSBzcGVlZCAoYW5kIGdwdSkuCj4gTXkgb3ZlcmFs
bCBmZWVsaW5nIGlzOiB1eCBpcyBjb21wYXJhYmxlIHRvIHNsb3cgc29jcyA0eEE1M0AxLjRHSHov
RzMxLiBUaGlzIGlzIHdpdGggbWFpbmxpbmUgYXRmICsgY29sbGFib3JhIHVib290IFsxXSBhbmQg
b24tZGVtYW5kIGdvdi4KPiBJIGRvbmUgdGVzdCB3aXRoIHJlcGxhY2luZyB1Ym9vdCBmcm9tIG1h
aW5saW5lIGF0ZiArIGNvbGxhYm9yYSB1Ym9vdCB0byBiaW4uIGR1bXAgb2YgdmVuZG9yIHVib290
ICgyMDE3LjA5KSBhbmQgd2l0aCB0aGlzIHV4IGJlY29tZSBhbG1vc3QgYXMgZXhwZWN0ZWQgKGkg
bWVhbiBjb21wYXJhYmxlIHdpdGggaS5lLiByazMzOTkpLgo+Cj4gSSBkb25lIHRlc3Qgd2l0aCBw
ZXJmIGdvdi4gYW5kCj4KPiAxLmNvbGxhYm9yYSB1Ym9vdFsxXSArIG1haW5saW5lIGF0ZiAyLjEz
Cj4gMi5jb2xsYWJvcmEgdWJvb3RbMV0gKyByb2NrY2hpcCBya2JpbiBibDMxIGJsb2IgWzJdCj4g
My52ZW5kb3IgdWJvb3QgKGJpbiBkdW1wIGZyb20gZnJpZW5kbHllbGVjIHVidW50dSBpbWFnZSkK
Pgo+IFthXSBvbiB2ZW5kb3IgdWJvb3Q6Cj4gUmVxdWVzdGVkIENQVTQ6IDIzMDQgTUh6Cj4gUmVx
dWVzdGVkIENQVTA6IDIyMDggTUh6Cj4gUnVubmluZyBDUFU0OiAxMDA4IE1Iego+IFJ1bm5pbmcg
Q1BVMDogMTAwOCBNSHoKPiBNZWFzdXJlZCBvbiBIVzogMTU4MC4xMSBNSHoKPgo+IFtiXSBvbiBj
b2xsYWJvcmEgdWJvb3QgKyBtYWlubGluZSBhdGY6Cj4gUmVxdWVzdGVkIENQVTQ6IDIzMDQgTUh6
Cj4gUmVxdWVzdGVkIENQVTA6IDIyMDggTUh6Cj4gUnVubmluZyBDUFU0OiA4MTYgTUh6Cj4gUnVu
bmluZyBDUFUwOiA4MTYgTUh6Cj4gTWVhc3VyZWQgb24gSFc6IDgwOC43MiBNSHoKPgo+IFtjXSBv
biBjb2xsYWJvcmEgdWJvb3QgKyByb2NrY2hpcCBya2JpbiBibDMxIGJsb2I6Cj4gUmVxdWVzdGVk
IENQVTQ6IDIzMDQgTUh6Cj4gUmVxdWVzdGVkIENQVTA6IDIyMDggTUh6Cj4gUnVubmluZyBDUFU0
OiA4MTYgTUh6Cj4gUnVubmluZyBDUFUwOiA4MTYgTUh6Cj4gTWVhc3VyZWQgb24gSFc6IDgxMi40
OSBNSHoKPgo+IGluIGFsbCBjYXNlcyBhbGwgY2xvY2tzIGFyZSBjb25zdGFudCBhcyB0aGV5IHNo
b3VsZAo+IEludGVyZXN0aW5nIHRoYXQgb24gY29sbGFib3JhIHVib290IFtiXVtjXSBtZWFzdXJl
ZCBjbG9jayBpcyA4MDggdnMgMTU4MCBvbiB2ZW5kb3IgdWJvb3QgW2FdLi4uCj4gc3cgdmlkZW8g
ZGVjb2RlIGNvbmZvcm1zIHRoaXMgZGlmZjogaGQgaDI2NCBnZXRzIGNwdSBsb2FkOiAxNzIlW2Jd
W2NdIHZzIDg3JVthXQoKQ2FuJ3Qgc2VlIGhvdyB1LWJvb3Qgd291bGQgYWZmZWN0IENQVSBzcGVl
ZCBpbiBMaW51eCwgYXMgbG9uZyBhcyB5b3UKdXNlIGNvbXBhcmFibGUgQVRGIGltYWdlcy4gRG8g
eW91IHVzZSB0aGUgc2FtZSBrZXJuZWwgYW5kIGR0YiBpbiBhbGwKdGhlc2UgY2FzZXM/IEFsc28s
IHdoYXQncyB5b3VyIHRoZXJtYWwgc2V0dXA/Cgo+IFNvIHN1bW1hcmlzaW5nOgo+Cj4gMS4gaSBz
ZWUga2luZCBvZiBpc3N1ZSB3aXRoIGNsb2NrIHZhbHVlcyAoZS5nLiBwZXJmIGdvdiBnaXZlcyA4
MDBNSHogb24gbWFpbmxpbmUgYXRmKS4KPiBpbWhvIHJvdCBjYXVzZSBzZWVtcyB0byBiZSBpbiBj
b2xsYWJvcmEgdWJvb3QKPgo+IDIuIG9uLWRlbWFuZCBnb3YuIHNlZW1zIGJlaGF2ZSBtdWNoIG1v
cmUgbGlrZSBwb3dlcnNhdmUuCj4gdGhpcyBzZWVtcyB0byBiZSAzNTc2IHNwZWNpZmljOgo+IC1v
biAzNTg4IGNoYW5nZSBmcm9tIHBlcmYgdG8gb25fZGVtYW5kIGlzIGhhcmRseSBub3RpY2VhYmxl
IGluIHV4CgpOb3Qgc3VyZSBVWCBpcyBhIHBhcnRpY3VsYXJseSBnb29kIG1lYXN1cmUgb2YgQ1BV
IHBlcmZvcm1hbmNlLCBhcyBsb25nCmFzIHlvdSd2ZSBnb3QgYSBwcm9wZXJseSBhY2NlbGVyYXRl
ZCBEUk0gZ3JhcGhpY3MgcGlwZWxpbmUuIE1vcmUKbGlrZWx5IDJELzNEIGFuZCBtZW1vcnkuCgpC
eSB0aGUgd2F5LCBJJ2QgcmF0aGVyIGdvIGZvciB0aGUgInNjaGVkdXRpbCIgZ292ZXJub3IsIGFz
IGl0IGlzIG1vcmUKZm9yd2FyZC1sb29raW5nIHRoYW4gIm9uZGVtYW5kIiwgdGh1cyBzaG91bGQg
YmUgbW9yZSByZXNwb25zaXZlIHRvCmxvYWQgY2hhbmdlcy4gSXQncyBhbHNvIHRoZSBkZWZhdWx0
IGluIG1vZGVybiBkaXN0cm9zIEFGQUlSLgoKPiAtb24gMzU3NiBzdWNoIGNoYW5nZSBtYWtlcyB1
eCBmZWVsaW5nIG5vdGljZWFibGUgc2xvdyAobGlrZSA0eEE1MyBzb2MpCj4gaSB0aGluayB0aGlz
IGlzIG1vcmUgcmVsYXRlZCB0byBkaWZmIGJldHdlZW4gc2NtaSBtY3UgZ292IGFsZ28gaW4gMzU3
NiB2cy4gMzU4OAo+IChpbWhvIDM1NzYgYWxnbyBoYXMgaGlnaCBsYXRlbmN5IGluIGNsb2NrIGlu
Y3JlYXNlcyB3aGVuIGRlbWFuZCBoYXBwZW5zICsgdG9vIHNob3J0IGRlbGF5IGZvciAgY2xvY2tz
IGRlY3JlYXNlcyB0byBzYXZlIHBvd2VyKQoKVGhlcmUgbWlnaHQgYmUgc29tZSBkaWZmZXJlbmNl
IGluIGhvdyBQVlRQTEwgYmVoYXZlcyBvbiBSSzM1NzYgdnMuClJLMzU4OC4gQnV0IGZyYW5rbHkg
Zmlyc3QgSSB3b3VsZCBjaGVjayBpZiB5b3UgYXJlIHVzaW5nIGNvbXBhcmFibGUKQVRGIGltcGxl
bWVudGF0aW9ucyAoZS5nLiB1cHN0cmVhbSBURi1BIGluIGJvdGggY2FzZXMpLCBrZXJuZWxzIGFu
ZAp0aGVybWFsIGVudmlyb25tZW50IDopCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
