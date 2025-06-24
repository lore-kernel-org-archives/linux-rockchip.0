Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35158C77B7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Jun 2025 08:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0WCTR088UoBcvMtp5qRLrM7c9fXTVuZnrqtPemvjJ0=; b=G9YVNYDMPAplMv
	xZvuDBnvwlYxf1df5ArODseqHCE8smQyM0F9RvUK69Sf93QMDV15Om/iJr6xA4b6vmbk5GkPWJqXa
	BVSEPFwPZv4UDEM/o54tWSpbtE+Jy2p0Oo6KIPWYHnuw/8GjDndUs12u2koNihIYJW4qx3rsEMuo4
	cJkXTT8C1y4u1TCXkFvA2j5jw9SF7XypuBIQgiRUeFmRNCFL1rYhJdHEDc2Ufn7aIauVS/CsFvJn9
	fGsHeL8MbpamtJLObVzN9pb6YBrSpH44oSsknM8assIwyEfb7nPPisulmBl9Owkodfycn4N2A5I8L
	kZRKkwS1YLyjR1pLK+PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTyq0-00000004zEw-08iw;
	Tue, 24 Jun 2025 08:17:04 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTyHj-00000004uSU-1eru;
	Tue, 24 Jun 2025 07:41:40 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-4a442a3a2bfso81659801cf.1;
        Tue, 24 Jun 2025 00:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750750898; x=1751355698; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HKNKAUPnt7D/QJNedcSSo/8QP0aEMGnpdAtG+3MkOOo=;
        b=ixssTTxHFDVFrXy0LYW2zURzKz063shpVoA6NJIJ3+d0VfzLnssDKWIzaKhdH1OPtj
         njN60ZVSBye2KNKEXbFwQCre/jOCkCBx25PVJAWzI8P6kl++Zc0SMnzH3lqelt+6zaa7
         jJF7Gim21BLaYCO6577UVBffHHaae0zj0zrJSGBSN9EPe3elUmmHJv9L2yFZFGT3g2Sa
         teNLvKihqxudkGDg2C8qePbcV7UODRBkJhRHRegeSA8NHVuzv46Dudqx/p3VNnez4Lrz
         AJdZKI34kWEfUBXdXfMGBmVHZ5W9W9u7wAUFj+a2UK4bzO6qdtvVM6Fehwi02h80D2n7
         7NTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750750898; x=1751355698;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HKNKAUPnt7D/QJNedcSSo/8QP0aEMGnpdAtG+3MkOOo=;
        b=CEoi6RtyGju+yYdKyj1Cg99Bj5thbW+P9iOzEMFIENpd3BHpQVoLPZg/vbE1PtUoa0
         ryw+HUlN7ju0jIaL6JtSAAjBj3Nu65wLXL/35o1raMkC1ttLkv1jcD/M5n8fenxkymDF
         oHX4rhhk8EAhCmRIfqm6AiUrIysAAuf3lM9/4oZ3tjKNHnP9aXBMrZ5a8/o2UvvXjjyj
         grFgx0c1/JD+FPCa0d5wC7XozQjQ+J4UosuqO02Vsq0L+wjl7dHXUtPG/Y3cApypof8T
         ctj/wd+F4XMSl2bGOxHQHc8d9rKArte5Wh9cNu9UrJGjb37UO1Yue7UryOwclQXWmc7L
         X7Ng==
X-Forwarded-Encrypted: i=1; AJvYcCU8nOmvJMxsNnMuQ84b/U0+BKJ5ByRDCQ5toSGrzfIu6uhTUK01om0p2lkyaSZDEawC04b9A8GvlSdx3G0wevM=@lists.infradead.org, AJvYcCWqmAefETXwVT7vvsBj+G0x62cJLe4dZaqeYrMIpHZeYEf+j6ElXR1e/NI8oZnPNWMmmDSKq08EeXa8a+Vo2I0j@lists.infradead.org
X-Gm-Message-State: AOJu0YzRidUG9RibmB1kpWOvD4W4XvbNfTeMoDfUgonBhLwq1rPJBYH3
	9fkG5YfJ5w7UPVnYHwaF8I3st7k1MefV46iYbhCAzjcutA8rfyxKUIA4VGLKfIiLaQ+mLQ8g3d8
	a8j7yJ5VA9wCJ4eVbDv+KXzXsZMat0tA=
X-Gm-Gg: ASbGncvbVenZQvhq3aCEalXfITEUy3rumK0MvYPsyK/+nn23cJke8sQeIaXWcK1BxYh
	4PLtZZBy93d3/l04XEdZDiwhowz4STR70eFi36c/7MR0BNB8/4qFBHX4B6N4/EVLQnmvcA6zf/d
	GxYRZx1Kr6RVNFKu4ZaKVPM+gYJItJgKEdqsiDFZyy3OO2
X-Google-Smtp-Source: AGHT+IEDGLS37RdVuVTLyiWi72882P6Ur66vSqt4x922siqznIehdApjnUNKJjUln2CWaZvCSrI3sSbQZbrzM/jeJS8=
X-Received: by 2002:a05:622a:134b:b0:4a4:2ffb:5482 with SMTP id
 d75a77b69052e-4a77a2cc1a2mr265925901cf.38.1750750898031; Tue, 24 Jun 2025
 00:41:38 -0700 (PDT)
MIME-Version: 1.0
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <3286000.Y6S9NjorxK@phil> <CABjd4YyaNF1zosFFi6hEsZanPDxoaa1h4Dpd6uTPRwA3BZn0=w@mail.gmail.com>
 <5897576.DvuYhMxLoT@phil> <CABjd4Yy8WeXKmmxh2-TjjF5-ABy-NzzJsWpt1KvSjJqTHh0Xwg@mail.gmail.com>
 <CABjd4Yz4NbqzZH4Qsed3ias56gcga9K6CmYA+BLDBxtbG915Ag@mail.gmail.com>
 <36711B65-DD45-4539-BD9C-0382936FD0A3@gmail.com> <dd1d0676-4eaa-4df7-b557-676b3de9a52e@kwiboo.se>
In-Reply-To: <dd1d0676-4eaa-4df7-b557-676b3de9a52e@kwiboo.se>
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 24 Jun 2025 11:41:29 +0400
X-Gm-Features: AX0GCFvp3PWrRWMHpH1qL680ohOJqKJ-nlrmN6zjVvYMRsQ73MM5PJ-3DQk0ZRQ
Message-ID: <CABjd4Yzj+fMoFRWVYBSvWTHHxs0Bx25dKaGn5Bo9QqHKOr0Wkw@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: list all CPU supplies on ArmSoM Sige5
To: Jonas Karlman <jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_004139_431914_65A6C27D 
X-CRM114-Status: GOOD (  22.52  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Piotr Oniszczuk <piotr.oniszczuk@gmail.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, XiaoDong Huang <derrick.huang@rock-chips.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSm9uYXMsCgpPbiBNb24sIEp1biAyMywgMjAyNSBhdCA5OjQw4oCvUE0gSm9uYXMgS2FybG1h
biA8am9uYXNAa3dpYm9vLnNlPiB3cm90ZToKPgo+IE9uIDIwMjUtMDYtMjMgMTc6MDIsIFBpb3Ry
IE9uaXN6Y3p1ayB3cm90ZToKPiA+Cj4gPgo+ID4+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6
IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4gdyBkbml1IDIzIGN6ZSAyMDI1LCBv
IGdvZHouIDE1OjU4Ogo+ID4+Cj4gPj4gT24gTW9uLCBKdW4gMjMsIDIwMjUgYXQgMToxOeKAr1BN
IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPj4+Cj4gPj4+Cj4g
Pj4KPiA+PiBPa2F5LCBJJ3ZlIGJpc2VjdGVkIHRoaXMuCj4gPj4KPiA+PiBUTERSOiBMaW51eCBh
bmQgdS1ib290IHNlZW0gdG8gaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggaXQsIG9wZW5zb3VyY2UK
PiA+PiBURi1BIGRvZXNuJ3Qgd29yaywgYmluYXJ5IEJMMzEgc3RhcnRpbmcgd2l0aCB2MS4wOSBk
byBub3Qgd29yay4gQkwzMQo+ID4+IHYxLjA4IGFuZCBlYXJsaWVyIHdvcmsgZmluZS4KPgo+IHYx
LjA5IGFkZGVkIHN1cHBvcnQgZm9yIDEgR0h6IGhydGltZXIgaW4gYWRkaXRpb24gdG8gdGhlIG5v
cm1hbCAyNCBNSHoKPiByYXRlLiBNYWlubGluZSBVLUJvb3QgbWF5IG9ubHkgc3VwcG9ydCB1c2Ug
b2YgMjQgTUh6IGhydGltZXIsIHVuc3VyZQo+IHdoYXQgaW1wYWN0IHRoZSBocnRpbWVyIHJhdGUg
aGFzLiBNaXhpbmcgYmxvYnMgd2l0aC93aXRob3V0IDEgR0h6Cj4gc3VwcG9ydCBpcyBrbm93biB0
byBjYXVzZSBpc3N1ZXMuIEF0IG9uZSBwb2ludCB0aGUgbGF0ZXN0IHJrYmluIHRyZWUgbWF5Cj4g
aGF2ZSBjb250YWluZWQgaW5jb21wYXRpYmxlIHJrMzU3NiBibG9icyAobWl4ZWQgMSBnaHogdnMg
MjQgbWh6IHJhdGUpLgo+Cj4gRGlkIHlvdSB0cnkgd2l0aCBuZXdlciBibG9icywgaS5lLiBkZHIg
aW5pdCB2MS4wOSwgYmwzMSB2MS4xOSBibG9icyBbMV0KPiBhbmQgbWFpbmxpbmUgVS1Cb290IFsy
XSA/Cj4KPiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL3JhZHhhL3JrYmluL2NvbW1pdHMvZGV2ZWxv
cC12MjAyNS4wNC8KPiBbMl0gaHR0cHM6Ly9zb3VyY2UuZGVueC5kZS91LWJvb3QvY29udHJpYnV0
b3JzL2t3aWJvby91LWJvb3QvLS9jb21taXRzL3JrMzU3NgoKVGhhbmtzIGZvciB0aGUgcG9pbnRl
cnMhIEkndmUganVzdCB0cmllZCB0aGUgc2FtZSB3aXRoIG5ld2VyIHJrYmluCmJsb2JzIGZyb20g
UmFkeGEncyByZXBvLCBhcyB3ZWxsIGFzIHRoZSB0aXAgb2YgeW91ciByazM1NzYgdS1ib290CmJy
YW5jaC4gU2FtZSByZXN1bHRzOiBuZXcgYmxvYnMgYWN0IHdlaXJkLCBvbGQgYmxvYnMgd29yayBm
aW5lICh1cCB0bwphbmQgaW5jbHVkaW5nIGJsMzEgdjEuMDgpLgoKPiBDbGFyaWZpY2F0aW9uOgo+
IEZvbGxvd2luZyBib290MSBwYXJhbWV0ZXIgYWN0aXZhdGVzIHVzZSBvZiAxIEdIeiBocnRpbWVy
LCBzZWUgWzNdLgo+Cj4gVGhpcyBwYXJhbWV0ZXIgd2FzIGFkZGVkIHRvIHJrYmluIHJlcG8gYmVm
b3JlIGFsbCBibG9icyB3YXMgdXBkYXRlZCB0bwo+IGZ1bGx5IHN1cHBvcnQgdXNlIG9mIHRoZSAx
IGdoeiBtb2RlLCBhbmQgaXMgdGhlIHNvdXJjZSBmb3IgaW5jb21wYXRpYmxlCj4gYmxvYnMgSSBy
ZWZlcmVuY2VkIGFib3ZlLgo+Cj4gICBbQk9PVDFfUEFSQU1dCj4gICBXT1JEXzI9MHgxMDAKPgo+
IFszXSBodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgvcmtiaW4vY29tbWl0L2NiYmM2
ODY4MjIxZmI0MTZkNGYwZDg2YTEwZTQ5M2RiYmJjMWYxMTcKCk5COiBJJ20gcHJlcGFyaW5nIHRo
ZSBjb21iaW5lZCBUUEwrU1BMK3UtYm9vdCtBVEYgaW1hZ2UKKHUtYm9vdC1yb2NrY2hpcC5iaW4p
IHVzaW5nIHRoZSBtYWlubGluZSB1LWJvb3QgYmlubWFuLWJhc2VkIGFwcHJvYWNoLApub3QgUm9j
a2NoaXAgYm9vdF9tZXJnZXIuIFNvIEkgZG9uJ3QgdGhpbmsgYm9vdDFfcGFyYW0gZ2V0cyBhcHBs
aWVkCmFueXdoZXJlIChmb3IgYmV0dGVyIG9yIHdvcnNlKS4KCj4gPiBJIHN1c3BlY3QgaXQgaGFz
IHNvbWV0aGluZyB0byBkbyB3aXRoIHRoZSB0b3Btb3N0IE9QUCBzb21laG93IGJlY29taW5nCj4g
PiB1bnNlbGVjdGFibGUgaW4gQVRGIHN0YXJ0aW5nIGZyb20gYmluYXJ5IEJMMzEgdjEuMDkgKGFu
ZCBzaW1pbGFybHkgaW4KPiA+IG9wZW5zb3VyY2UgVEYtQSkuIFRoaXMgdGltZSBJIGNvdWxkbid0
IHJlcHJvZHVjZSB0aGUgInBlcm1hbmVudGx5Cj4gPiBzdHVjayIgQ1BVIGZyZXF1ZW5jaWVzIHRo
b3VnaC4KPgo+IE9wZW4tc291cmNlIFRGLUEgb25seSBzZWVtIHRvIHN1cHBvcnQgcmF0ZXMgdXAg
dG8gMjIwOCBNSHogZm9yIGNwdWIgYW5kCj4gMjAxNiBNSHogZm9yIGNwdWwsIHNlZSBbM10uIFRo
ZSBvcHAtMjMwNDAwMDAwMCBzaG91bGQgcHJvYmFibHkgYmUKPiByZW1vdmVkIGZyb20gcmszNTc2
LmR0c2kuCgpCdXQgYm90aCAyMjA4IGNwdWwgYW5kIDIzMDQgY3B1YiByYXRlcyB3b3JrIGZpbmUg
dXNpbmcgYmwzMSB2MS4wOCwgc28KbWF5YmUgdGhlIFRGLUEgbmVlZHMgYSBmaXggaW5zdGVhZD8g
T3IgaXMgdGhpcyBhbm90aGVyIGNhc2Ugb2YKIm92ZXJkcml2ZSBtb2RlIiBPUFBzIGFzIHdpdGgg
UkszNTg4aj8KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
