Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D353C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Apr 2024 23:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BE26Knhw2Ctz8AvI+UVQ/YkMKWHVAdz8LuM/88zWWJU=; b=XK6k4+SSuD/L5z
	vzU0kuYbZV1jaVyuwa/kpWKqKvcgpAkRdTQtGg3y3k1MLbqJeTQ3Bvs30OQrM12ye+BdKPR824lTC
	LEpJ2fRUYFfhbqyo61OaIYrm2hjepmAdBfWzsIM7C5BDv5VX5520KeekMuJUHK1o1klv+gHwCAiaY
	xuYitW/GhPpypd9XWa/CMNAnNFf2paH6L2UEHrXIXvakm6Ykd05kZbWQmqalTn42KngAXzQm4Eyai
	EdYHLZDNvND/E+AZUv84PaWnfuzG3QOzKQc3Qhm4lzfMEuA3w9lszkB8v7spSKMqubkAdPwjT3Saw
	HCxbvqFWIZjTQMeKAAAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrncW-0000000DBvz-4Ash;
	Tue, 02 Apr 2024 23:32:51 +0000
Received: from mail-4018.proton.ch ([185.70.40.18])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrncK-0000000DBqX-2F7o
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Apr 2024 23:32:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thefossguy.com;
	s=protonmail; t=1712100746; x=1712359946;
	bh=eYfJr8KvAv/8O8BAWI9vNpWVyP4tpL6uvttbF+aIVu4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=jiJebc2iTvQ7DqOGLbq51xyXRi2Fq7r/KJfvy/87mOd0Q3kz5GOdh5yR0T5/6r0xt
	 9/eNq3T+lJk4ongASmJANrlCUliuVgdo3nKQn6TFJ4j09ZJF927p0HVx5Y/g6qsrr8
	 4gpXnqaAealF68SfLtAH5CFJQ99uRiwHG9RSTjqjLJ6G7m9J33/vh6W1bAC+3O7iy6
	 GRet7xPum1GiyuF+pHJ4HhLW5XqkJfUTZoOA3bRrY0yNn9OMw7/Q9OeKIZh/u8HmJn
	 rhaZRUfbMjYtMApSBWSv+yAnqxU6RoPO46G1xtHwkFjtVqO9tVQyD4hp0ZQKS1J9qn
	 /XfTWWMaA7CxQ==
Date: Tue, 02 Apr 2024 23:32:19 +0000
To: Saravana Kannan <saravanak@google.com>, Dragan Simic <dsimic@manjaro.org>
From: Pratham Patel <prathampatel@thefossguy.com>
Cc: sebastian.reichel@collabora.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, regressions@lists.linux.dev, stable@vger.kernel.org
Subject: Re: Fixing the devicetree of Rock 5 Model B (and possibly others)
Message-ID: <D0A122WK7CB9.33B2TP6UCMJBJ@thefossguy.com>
In-Reply-To: <CAGETcx89V5CJrAq6XwuGiusQnkR804pTgYAtS94v7Q+v=Cv+qA@mail.gmail.com>
References: <tQ0L3-34g4t-mzfQIP6KDe5OYelGnEo6Udzq6Kb_nEcljppSQUXOktpE__nL-CdLOu9gW-4tIIbjtSbqrdCrjEkdhZLPiiHTqRcCB6WORuM=@thefossguy.com> <ac4246bf3786230eb9ca85b329e7d0df@manjaro.org> <CAGETcx89V5CJrAq6XwuGiusQnkR804pTgYAtS94v7Q+v=Cv+qA@mail.gmail.com>
Feedback-ID: 104309535:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_163237_424985_3BA4DE8B 
X-CRM114-Status: GOOD (  16.21  )
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

T24gVHVlIEFwciAyLCAyMDI0IGF0IDQ6NTQgQU0gSVNULCBTYXJhdmFuYSBLYW5uYW4gd3JvdGU6
Cj4gT24gU2F0LCBNYXIgMjMsIDIwMjQgYXQgMTA6MTDigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1p
Y0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4gPgo+ID4gSGVsbG8gUHJhdGhhbSwKPiA+Cj4gPiBPbiAy
MDI0LTAzLTIzIDE4OjAyLCBQcmF0aGFtIFBhdGVsIHdyb3RlOgo+ID4gPiBJIGxvb2tlZCBhdCB0
aGUgcGF0Y2ggYW5kIHRyaWVkIHNldmVyYWwgdGhpbmdzLCBuZWl0aGVyIHJlc3VsdGVkIGluCj4g
PiA+IGFueXRoaW5nIHRoYXQgd291bGQgcG9pbnQgbWUgdG8gdGhlIGNvcmUgaXNzdWUuIFRoZW4g
SSB0cmllZCB0aGlzOgo+ID4KPiA+IENvdWxkIHlvdSwgcGxlYXNlLCBjbGFyaWZ5IGEgYml0IHdo
YXQncyB0aGUgYWN0dWFsIGlzc3VlIHlvdSdyZQo+ID4gZXhwZXJpZW5jaW5nIG9uIHlvdXIgUm9j
ayA1Qj8KPgo+IFByYXRoYW0sIGNhbiB5b3UgcmVwbHkgdG8gdGhpcyBwbGVhc2U/IEkgZG9uJ3Qg
cmVhbGx5IHVuZGVyc3RhbmQgd2hhdAo+IHlvdXIgaXNzdWUgaXMgZm9yIG1lIHRvIGJlIGFibGUg
dG8gaGVscC4KCkhpLAoKSSBhcG9sb2dpemUgZm9yIG5vdCByZXBseWluZy4gU29tZWhvdywgSSBk
aWQgbm90IG5vdGljZSB0aGUgcmVwbHkgZnJvbQpEcmFnYW4uIDooCgpTaW5jZSB0aGlzIHBhdGNo
IHdhcyBhcHBsaWVkLCBhbiBpc3N1ZSBpbiB0aGUgUm9jayA1QidzIERUIGhhcyBiZWVuCnVuZWFy
dGhlZCB3aGljaCBub3cgcmVzdWx0cyBpbiB0aGUga2VybmVsIGJlaW5nIHVuYWJsZSB0byBib290
IHByb3Blcmx5LgoKRm9sbG93aW5nIGlzIHRoZSByZWxldmFudCBjYWxsIHRyYWNlIGZyb20gdGhl
IFVBUlQgY2FwdHVyZToKClsgICAyMS41OTUwNjhdIENhbGwgdHJhY2U6ClsgICAyMS41OTUyODhd
ICBzbXBfY2FsbF9mdW5jdGlvbl9tYW55X2NvbmQrMHgxNzQvMHg1ZjgKWyAgIDIxLjU5NTcyOF0g
IG9uX2VhY2hfY3B1X2NvbmRfbWFzaysweDJjLzB4NDAKWyAgIDIxLjU5NjEwOV0gIGNwdWlkbGVf
cmVnaXN0ZXJfZHJpdmVyKzB4Mjk0LzB4MzE4ClsgICAyMS41OTY1MjRdICBjcHVpZGxlX3JlZ2lz
dGVyKzB4MjQvMHgxMDAKWyAgIDIxLjU5Njg3NV0gIHBzY2lfY3B1aWRsZV9wcm9iZSsweDJlNC8w
eDQ5MApbICAgMjEuNTk3MjQ3XSAgcGxhdGZvcm1fcHJvYmUrMHg3MC8weGQwClsgICAyMS41OTc1
NzVdICByZWFsbHlfcHJvYmUrMHgxOGMvMHgzZDgKWyAgIDIxLjU5NzkwNV0gIF9fZHJpdmVyX3By
b2JlX2RldmljZSsweDg0LzB4MTgwClsgICAyMS41OTgyOTRdICBkcml2ZXJfcHJvYmVfZGV2aWNl
KzB4NDQvMHgxMjAKWyAgIDIxLjU5ODY2OV0gIF9fZGV2aWNlX2F0dGFjaF9kcml2ZXIrMHhjNC8w
eDE2OApbICAgMjEuNTk5MDYzXSAgYnVzX2Zvcl9lYWNoX2RydisweDhjLzB4ZjAKWyAgIDIxLjU5
OTQwOF0gIF9fZGV2aWNlX2F0dGFjaCsweGE0LzB4MWMwClsgICAyMS41OTk3NDhdICBkZXZpY2Vf
aW5pdGlhbF9wcm9iZSsweDFjLzB4MzAKWyAgIDIxLjYwMDExOF0gIGJ1c19wcm9iZV9kZXZpY2Ur
MHhiNC8weGMwClsgICAyMS42MDA0NjJdICBkZXZpY2VfYWRkKzB4NjhjLzB4ODg4ClsgICAyMS42
MDA3NzVdICBwbGF0Zm9ybV9kZXZpY2VfYWRkKzB4MTljLzB4MjcwClsgICAyMS42MDExNTRdICBw
bGF0Zm9ybV9kZXZpY2VfcmVnaXN0ZXJfZnVsbCsweGRjLzB4MTc4ClsgICAyMS42MDE2MDJdICBw
c2NpX2lkbGVfaW5pdCsweGEwLzB4YzgKWyAgIDIxLjYwMTkzNF0gIGRvX29uZV9pbml0Y2FsbCsw
eDYwLzB4MjkwClsgICAyMS42MDIyNzVdICBrZXJuZWxfaW5pdF9mcmVlYWJsZSsweDIwYy8weDNl
MApbICAgMjEuNjAyNjY0XSAga2VybmVsX2luaXQrMHgyYy8weDFmOApbICAgMjEuNjAyOTc5XSAg
cmV0X2Zyb21fZm9yaysweDEwLzB4MjAKCj4gQWxzbywgY2FuIHlvdSBnaXZlIHRoZSBvdXRwdXQg
b2YgPGRlYnVnZnM+L2RldmljZXNfZGVmZXJyZWQgZm9yIHRoZQo+IGdvb2QgdnMgYmFkIGNhc2U/
CgpJIGNhbid0IHByb3ZpZGUgeW91IHdpdGggcmVxdWVzdGVkIG91dHB1dCBmcm9tIHRoZSBiYWQg
Y2FzZSwgc2luY2UgdGhlCmtlcm5lbCBuZXZlciBtb3ZlcyBwYXN0IHRoaXMgdG8gYW4gaW5pdHJh
bWZzIHJlc2N1ZSBzaGVsbCwgYnV0IGZvbGxvd2luZwppcyB0aGUgb3V0cHV0IGZyb20gdjYuOC4x
ICgqKndpdGggYWZvcmVtZW50aW9uZWQgcGF0Y2ggcmV2ZXJ0ZWQqKikuCgojIGNhdCAvc3lzL2tl
cm5lbC9kZWJ1Zy9kZXZpY2VzX2RlZmVycmVkCmZjNDAwMDAwLnVzYiAgICBwbGF0Zm9ybTogd2Fp
dCBmb3Igc3VwcGxpZXIgL3BoeUBmZWQ5MDAwMC91c2IzLXBvcnQKMS0wMDIyICB0eXBlY19mdXNi
MzAyOiBjYW5ub3QgcmVnaXN0ZXIgdGNwbSBwb3J0CmZjMDAwMDAwLnVzYiAgICBwbGF0Zm9ybTog
d2FpdCBmb3Igc3VwcGxpZXIgL3BoeUBmZWQ4MDAwMC91c2IzLXBvcnQKCkl0IHNlZW1zIHRoYXQg
djYuOC4yIHdvcmtzIF93aXRob3V0IG5lZWRpbmcgdG8gcmV2ZXJ0IHRoZSBwYXRjaF8uIEkgd2ls
bApoYXZlIHRvIGxvb2sgaW50byB0aGlzIHNvbWV0aW1lIHRoaXMgd2VlayBidXQgaXQgc2VlbXMg
bGlrZQphODAzN2NlYjg5NjQgKGFybTY0OiBkdHM6IHJvY2tjaGlwOiBkcm9wIHJvY2tjaGlwLHRy
Y20tc3luYy10eC1vbmx5IGZyb20gcmszNTg4IGkycykKc2VlbXMgdG8gYmUgdGhlIG9uZSB0aGF0
IGZpeGVkIHRoZSByb290IGlzc3VlLiBJIHdpbGwgaGF2ZSB0byB0ZXN0IGl0CnNvbWV0aW1lIGxh
dGVyIHRoaXMgd2Vlay4KCiAtLSBQcmF0aGFtIFBhdGVsCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
