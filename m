Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D422DC46CD4
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Dec 2023 11:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IpvVUp7m70FXNzkIAo29kb2UdYhoYitJ+QpNz7j0Bvw=; b=ETSRicMUz432D3
	h7gIAUKDnnE2w4QI2Jdmpz+APh3F3seQLuxVYB7z6zrshC9TkkXFuyj28EcbQOZXTJUrYvFSQCDbq
	bkvXuFV316nJRl2OF6iN9mz81Ev0jD1PXY42i3kZDYylCwNdLMAnhhnq05nyOALZb6o/s9H4QFLqd
	Ol+A5e1LLxG1vMFTYH3+5Ysh5NsTVnLVt/GVEPtabs8xzmF6gZAIMf3WfuuDC0q6Lve3BE7oFKMxJ
	GYbfQHV4qBDjneLRrpXLdwQEF8AUMx6rERH9/xCI/74d6q5RbcZv7SCKZUlDKUALqAuxEElH3DTOE
	0JHRHickF01/Xe7kCODQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rI5WU-00CBBI-2X;
	Tue, 26 Dec 2023 11:22:58 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rI5WR-00CB8q-1v
	for Linux-rockchip@lists.infradead.org;
	Tue, 26 Dec 2023 11:22:57 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2ccc34a9f90so10961961fa.0
        for <Linux-rockchip@lists.infradead.org>; Tue, 26 Dec 2023 03:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703589769; x=1704194569; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aypPoG/QLcqDXOXyGvtPYMmCLQUdksQxR8ayqCjT0pA=;
        b=atJA/uGonHbM5SKTaPIzFXNMRMqDx0mjBVtTFt2im9mQhkiNhSFI0ARRNEtl1UrO7k
         lbrQkSyiDoCBtK7ReKHwWoh+niUvZsEGgDO97c6Pj4r/UO62GGyNUBvzMJT81aafv77L
         CajnLB/xeNzD1DeP6ANtyqCKN4MOcYCUQAe6nFiS0p6PgsOxm2L9Cel8SZB4Oceo569o
         /qobHZAw4omOBV7XBfOXbR9LcqloqFMhvb/W3a+Euc9RvEe6M2vTUl1DEK+FxfL3pRH3
         o7XQloU27/lTDCzj8UlC9KjGubHMD3UCVmQVlH+xuIDL4+EgU+9Sqh8emFmpdmSGNDWH
         fQeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703589769; x=1704194569;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aypPoG/QLcqDXOXyGvtPYMmCLQUdksQxR8ayqCjT0pA=;
        b=FQYGbVrBNTDaRwhamCCKIA0nE4QyOQ+xKLARNuRx/SEd7GkZT+V3CLDAOTZELieS/3
         t4SM+ZzuXCvltfLEh8POiLgb96G+GdOBhEGFgX0h5H7IDZA/TEEp0LNJcPXoE4x69lN+
         8AdtyiEv3efisGmP2drHATa9Px112O3v9SnCSgjzyIO0Kwx7OsvsYPh1gc+XaWPcStsb
         /ddlMX3/eB8mSD9RKfrpuszAlPZyUP1CTCQvykaCgFeNLrM/Uv0K5lloiKTBBIhQgbLq
         o8cKmO12bjWJA7nyNjg0BK56QBNAy9mmCMn+Df9fCp9WIlg3516ip7py2Xd64Dl+sAaj
         C7mQ==
X-Gm-Message-State: AOJu0YzK0npazxIptpniJ2cWJ9jjp48orwaKyw8fMOOJ8YlZBd85oT4T
	URJ4MAumSymPJjO1NOQ1LVBN4q1ZcqE=
X-Google-Smtp-Source: AGHT+IHq4blC8o0xDuY3QOGhWOfHpYg9wnyMvxV/xpA9kpstlxQWVdqd1KWGSsb2SE09yNq3upu1eA==
X-Received: by 2002:a2e:b8d2:0:b0:2cc:69e4:6fe7 with SMTP id s18-20020a2eb8d2000000b002cc69e46fe7mr3248493ljp.33.1703589768762;
        Tue, 26 Dec 2023 03:22:48 -0800 (PST)
Received: from smtpclient.apple (84-10-101-169.static.chello.pl. [84.10.101.169])
        by smtp.gmail.com with ESMTPSA id d3-20020a05651c01c300b002cccdd2d5c5sm506357ljn.11.2023.12.26.03.22.48
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Dec 2023 03:22:48 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.15\))
Subject: Re: vop2: 3566 vs 3568: green screen on 3566; on 3568 all ok... 
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <ef6186aa-f600-4d3a-be0d-155ff3336a27@rock-chips.com>
Date: Tue, 26 Dec 2023 12:22:47 +0100
Cc: Linux-rockchip@lists.infradead.org
Message-Id: <DEF50A27-6DF2-4B83-8F30-A47AA3878BC6@gmail.com>
References: <7408CE66-E110-4DB2-8B73-856E71E16754@gmail.com>
 <b1381668-9561-4b69-9183-3ec582b4c0df@rock-chips.com>
 <15DF99D4-D626-4C3A-B25A-C713E5264C7C@gmail.com>
 <ef6186aa-f600-4d3a-be0d-155ff3336a27@rock-chips.com>
To: Andy Yan <andy.yan@rock-chips.com>
X-Mailer: Apple Mail (2.3654.120.0.1.15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_032255_651785_BA748227 
X-CRM114-Status: GOOD (  18.42  )
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

QW5keSwKCnBscyBzZWUgaW5saW5lCgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFuZHkg
WWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4gdyBkbml1IDI2LjEyLjIwMjMsIG8gZ29kei4g
MDI6NDE6Cj4gCj4gSGkgUGlvdHIsCj4gCj4gT24gMTIvMjUvMjMgMjA6MTQsIFBpb3RyIE9uaXN6
Y3p1ayB3cm90ZToKPj4gQW5keSwKPj4gVGh4IGZvciBsb29raW5nIG9uIHRoaXMhCj4+IEJlZm9y
ZSBwYXNzaW5nIGRyaSBzdGF0ZSBsb2dzIC0gbGV0IG1lIGdpdmUgc29tZSBjb250ZXh0IHdoeSBp
4oCZbSBhc2tpbmcgaGVyZSBmb3IgaGVscC4KPj4gSeKAmW0gZGV2ZWxvcGluZyAyIGRpc3Ryb3Mg
d2l0aCBnb2FsIHRvIG9mZmVyIHVzZXIgY29udmVuaWVudCBydW4gb2YgbXVsdGltZWRpYSBwbGF5
ZXJzIChLb2RpIGFuZCBNeXRoVFYpOiBhcHBsaWFuY2UgYW5kIGdlbmVyYWwgZGlzdHJvLgo+PiBH
b2FsIGlzIG91dCBvZiBib3ggcnVuIG9mIEtvZGkvTXl0aFRWIGluIDIgcmVuZGVyaW5nIG1vZGVz
OiBFR0wgREFNQnVmIGFuZCBEUk0gZGlyZWN0IHBsYW5lcy4KPj4gQ3VycmVudGx5IGkgaGF2ZSBv
dXQtb2YtYm94IChubyBhbnkgU29DIHNwZWNpZmljIGNvbmZpZ3MgaW4gS29kaS9NeXRoVFYpIGZv
cjogcmszMzI4L3JrMzM5OS9INi9IMzEzL0g2MTYvcnBpMy9ycGk0Lgo+PiBJc3N1ZXMgaWEgaGF2
ZSBhcmUgd2l0aDogcmszNTY2IGFuZCByazM1NjgKPj4gIAo+IAo+IFllcywgaXQgaXMgYSBjb29s
IHByb2plY3QsIEkgcnVuIGl0IG9uIHJrMzU2Ni1ib3gtZGVtbyBmb3IgYSB3aGlsZSBsYXN0IHll
YXIuCgpNYW55IHRoeCBmb3Iga2luZCB3b3JkcyEgCgo+IAo+PiBWYW5pbGxhIDYuNi44IGtlcm5l
bCBvbiAzNTY4IG5vdCBvZmZlcnMgbWUgd2VsbCB3b3JraW5nIG91dC1vZi1ib3ggS29kaS9NeXRo
VFYgaW4gRFJNIGRpcmVjdCBwbGFuZXMgLSBidXQgaSB3YXMgYWJsZSB0byBwYXRjaCB2b3AyIHRv
IGdldCBzdWNoIG91dC1vZi1ib3ggb3BlcmF0aW9uIChwbHMgc2VlIHBhdGNoIGJlbG93KS4KPj4g
SSBoYXZlIGFsc28gaXNzdWUgd2l0aCAzNTY2IC0gd2hlcmUgaSBhbHNvIGRldmVsb3BlZCBwYXRj
aCAoYWxzbyBzZWUgYmVsb3cpIC0gYnV0IGnigJltIG5vdCBhYmxlIHRvIGdldCAzNTY2IGZ1bGx5
IHdvcmtpbmcgKEVHTCBETUFidWYgaXMgb2s7IGluIERSTSBQbGFuZXMgR1VJIGlzIG9rLCBidXQg
dmlkZW8gcGxheWJhY2sgZ2l2ZXMgcGFydCBzY3JlZW4gZ3JlZW4gcGFydCBibGFjazsgZ3JlZW4v
YmxhY2sgYm9yZGVyIGlzIHZpYnJhbnRseSBjaGFuZ2luZyBhdCBwbGF5YmFjaykKPj4gTG9nczoK
PiAKPiAKPiBUaGUgZHJpL3N0YXRlIGR1bXAgYWxyZWFkeSBpbmRpY2F0ZXMgdGhlIHJvb3QgY2Fz
ZSBvZiB0aGUgcHJvYmxlbToKPiAKPiBGb3IgcmszNTY2L3JrMzU2OCwgdGhlIENsdXN0ZXIgd2lu
ZG93cyBvbmx5IHN1cHBvcnQgQUZCQyBiYXNlZCBSR0Igb3IgWVVWIGZvcm1hdCwKPiBsaW5lYXIg
Zm9ybWF0cyhzdWNoIGFzIE5WMTIgeW91IHVzZWQgZm9yIENsdXN0ZXIwLXdpbjAgb24gcmszNTY2
KSBhcmUgbm90IHN1cHBvcnRlZCwgdGhlc2UKPiBsaW5lYXIgZm9ybWF0cyBhcmUgb25seSBzdXBw
b3J0IGJ5IEVzbWFydChSR0IvWVVWKSxzbWFydChSR0Igb25seSkgd2luZG93cy4KPiAKPiBDb21w
YXJlZCB3aXRoIHJrMzU2OCB5b3UgdXNlLCB0aGUgTlYxMiBpcyBjb21taXR0ZWQgdG8gRXNtYXJ0
MSwgYW5kIFhSR0IgVUkgaXMKPiBjb21taXR0ZWQgdG8gRXNtYXJ0MC4KPiBCdXQgb24gcmszNTY2
LCB0aGVyZSBhcmUgb25seSB0aHJlZSB3aW5kb3dzL3BsYW5lIHlvdSBjYW4gdXNlLCBpZiB5b3Ug
Y2FuIG9ubHkgZGVjb2Rlcgo+IGxpbmVhciBOVjEyLCBpdCBzaG91bGQgYmUgY29tbWl0dGVkIHRv
IEVzbWFydDAsIGFuZCB1c2UgU21hcnQwIGZvciBVSS4KPiAKPiAKPiBCdXQgd2hlbiB0aGUgdm9w
MiBkcml2ZXJzIGZpcnN0IGxhbmRzLCBpdCBtaXN0YWtlbmx5IGFkZCBsaW5lYXIgZm9ybWF0cyhO
VjEyL05WMTYpIHRvCj4gQ2x1c3RlciB3aW5kb3dzIGZvcm1hdCBsaXN0cywgdGhpcyB3aWxsIG1p
c2xlYWQgdXNlciBzcGFjZS4KPiAKPiBJIGhhdmUgYSBwYXRjaCBzZXJpZXMgdG8gZml4IHRoaXMg
dGhhdCBhbHJlYWR5IGJlIG1lcmdlZCBpbiBsaW51eCA2LjdbMF0KPiAKPiBGZWVsIGZyZWUgdG8g
bGV0IG1lIGtub3cgaWYgeW91IHN0aWxsIGhhdmUgcHJvYmxlbS4KPiAKPiBbMF0gaHR0cHM6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvc3RhYmxlL2xpbnV4LmdpdC9j
b21taXQvP2lkPTAxZDVhNzUzNzBhNjBjM2E4ZDY5MTM0N2FlNmViYjJhOWY4ZGM0NGEKClBlcmZl
Y3QuCgpBYm92ZSBwYXRjaCArIHZvcDJfd2luX2RhdGEgcmszNTY4X3ZvcF93aW5fZGF0YVtdIHJl
b3JkZXJpbmcgdG86CgpFc21hcnQxLXdpbjAKRXNtYXJ0MC13aW4wClNtYXJ0MC13aW4wClNtYXJ0
MS13aW4wCkNsdXN0ZXIwLXdpbjAKQ2x1c3RlcjEtd2luMAoKbWFrZXMgS29kaSBhbmQgTXl0aFRW
IHdvcmtpbmcgb3V0LW9mLWJveCB3aXRoIEVHTCBETUFidWYgYW5kIERSTSBwbGFuZXMgSFcgZGVj
b2RlZCB2aWRlbyByZW5kZXJpbmcgOi0pCgpTbyB3aXRoIHlvdXIgaGVscCB3ZSBoYXZlIHNpbmds
ZSA2LjYuOCBrZXJuZWwgb2ZmZXJpbmcgRUdMIERNQWJ1ZiBhbmQgRFJNIHBsYW5lcyBIVyBkZWNv
ZGVkIHZpZGVvIHJlbmRlcmluZyBvbiByazMzMjgvcmszMzk5L3JrMzU2Ni9yazM1NjgvSDYvSDMx
My9INjE2L0g2MTgvcnBpMy9ycGk0CgpvbmNlIGFnYWluOiBtYW55IHRoeAoKKHAuczogaXQgbG9v
a3MgbGlrZSBvbmx5IHRoaW5nIG1pc3NpbmcgaW4gMzU2eCB0byBiZSBwZXJmZWN0IG9wZW4tc291
cmNlIG11bHRpbWVkaWEgc29jIGlzOiBsYWNrIG9mIHJrdmRlYzIgZm9yIGhldmMvdnA5IGh3IGRl
Y29kaW5nLiBBcmUgdGhlcmUgYW55IHBsYW5zIGZyb20gcm9jay1jaGlwcyB0byBoZWxwIGZvc3Mg
dG8gYnJpbmctdXAgbWFpbmxpbmUga2VybmVsIHN1cHBvcnQgZm9yIHJrdmRlYzI/KQogICAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
