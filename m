Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5377CCD1288
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 13:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l6NA6JkeQ4upqeg/+trGAgKXrgUCYIfY3XRoO86zXrU=; b=Vspjs9rxWNKVFQ/ulwIcwwKxBI
	pWX+haQXvxDQuE1YNttj5wlSYPIBvYzdooSgbkBbFxlW1RudXF/V3I+wWitVU4NbCTgDId9RB1OXa
	ZkVO4z9DaqqX8tysMS/DzW8cwuUychPQu2/W4P1i+xMfpXVDuUiYQsk9Lpv3itujimFfYIlvHtjbi
	Ce8FBhE9opIc+9UNi4UkYw3ub7mxP/QrEEBzXi1HylFd88LiplfQeWzYeVd0xYtm1cXWjAuzsHFDy
	zC2I81GFjc/VkOLTaJBp2r8M+HOC3tmeoCSkIVNLU1opxvQCzjoXIIbjmRByvZCYNunMK+NIIH4zi
	tjtPdE6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs11d-0000000GJ9f-1dad;
	Wed, 03 Apr 2024 13:51:37 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs11Z-0000000GJ6i-26ql;
	Wed, 03 Apr 2024 13:51:35 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1712152288;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nG+giMXCItEPgMBqHyNixdKSn5F1WOll+iAb1XwFvHo=;
	b=GiS2zBBTYOl+k7jg3WvYCBgfq3wdoGR6VfB6hX8A5ejjfLhB0KkKtX0YgNLGLyaJcngEV5
	4GnPQ5SDj3QlLbF3AzrYfJavWLNADOc3g7ZB9JVlCpHOAcC3X35/Ex/vy7tIy4OoSyPRSl
	fLXc3sHfJl1cuoWv8fvAqWK4mg+8LcGVpwBVbmv1/ps0c7tNJHfj/Ual2sVy81QAle6J4i
	gH8DqM41H8hP+FbpDvTgWVpgHOsPp8h7EudBv5Ii2q9uYnmVwb0jWLaojgkjNMKdEYJeQk
	yEH5ELQNdi6ZhMv7Q6y6MUDZYLtvxH/k4PKaQFZ0YQ4eQwHJ7QGBMTkO9b8xeQ==
Date: Wed, 03 Apr 2024 15:51:28 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Pratham Patel <prathampatel@thefossguy.com>
Cc: Saravana Kannan <saravanak@google.com>, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 regressions@lists.linux.dev, stable@vger.kernel.org
Subject: Re: Fixing the devicetree of Rock 5 Model B (and possibly others)
In-Reply-To: <D0A122WK7CB9.33B2TP6UCMJBJ@thefossguy.com>
References: <tQ0L3-34g4t-mzfQIP6KDe5OYelGnEo6Udzq6Kb_nEcljppSQUXOktpE__nL-CdLOu9gW-4tIIbjtSbqrdCrjEkdhZLPiiHTqRcCB6WORuM=@thefossguy.com>
 <ac4246bf3786230eb9ca85b329e7d0df@manjaro.org>
 <CAGETcx89V5CJrAq6XwuGiusQnkR804pTgYAtS94v7Q+v=Cv+qA@mail.gmail.com>
 <D0A122WK7CB9.33B2TP6UCMJBJ@thefossguy.com>
Message-ID: <0926eeecfec56fa9225a8aa2a319678a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_065134_159965_DED9B618 
X-CRM114-Status: GOOD (  22.00  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gUHJhdGhhbSwKCk9uIDIwMjQtMDQtMDMgMDE6MzIsIFByYXRoYW0gUGF0ZWwgd3JvdGU6
Cj4gT24gVHVlIEFwciAyLCAyMDI0IGF0IDQ6NTQgQU0gSVNULCBTYXJhdmFuYSBLYW5uYW4gd3Jv
dGU6Cj4+IE9uIFNhdCwgTWFyIDIzLCAyMDI0IGF0IDEwOjEw4oCvQU0gRHJhZ2FuIFNpbWljIDxk
c2ltaWNAbWFuamFyby5vcmc+IAo+PiB3cm90ZToKPj4gPiBPbiAyMDI0LTAzLTIzIDE4OjAyLCBQ
cmF0aGFtIFBhdGVsIHdyb3RlOgo+PiA+ID4gSSBsb29rZWQgYXQgdGhlIHBhdGNoIGFuZCB0cmll
ZCBzZXZlcmFsIHRoaW5ncywgbmVpdGhlciByZXN1bHRlZCBpbgo+PiA+ID4gYW55dGhpbmcgdGhh
dCB3b3VsZCBwb2ludCBtZSB0byB0aGUgY29yZSBpc3N1ZS4gVGhlbiBJIHRyaWVkIHRoaXM6Cj4+
ID4KPj4gPiBDb3VsZCB5b3UsIHBsZWFzZSwgY2xhcmlmeSBhIGJpdCB3aGF0J3MgdGhlIGFjdHVh
bCBpc3N1ZSB5b3UncmUKPj4gPiBleHBlcmllbmNpbmcgb24geW91ciBSb2NrIDVCPwo+PiAKPj4g
UHJhdGhhbSwgY2FuIHlvdSByZXBseSB0byB0aGlzIHBsZWFzZT8gSSBkb24ndCByZWFsbHkgdW5k
ZXJzdGFuZCB3aGF0Cj4+IHlvdXIgaXNzdWUgaXMgZm9yIG1lIHRvIGJlIGFibGUgdG8gaGVscC4K
PiAKPiBJIGFwb2xvZ2l6ZSBmb3Igbm90IHJlcGx5aW5nLiBTb21laG93LCBJIGRpZCBub3Qgbm90
aWNlIHRoZSByZXBseSBmcm9tCj4gRHJhZ2FuLiA6KAoKTm8gd29ycmllcywgSSBzYXcgdGhlIHNl
cmlhbCBjb25zb2xlIGxvZyBmaWxlIGluIG9uZSBvZiB5b3VyIG1lc3NhZ2VzLAp3aGljaCBhY3R1
YWxseSBwcm92aWRlZCB0aGUgYW5zd2VyIHRvIG15IHF1ZXN0aW9uLiA6KQoKPiBTaW5jZSB0aGlz
IHBhdGNoIHdhcyBhcHBsaWVkLCBhbiBpc3N1ZSBpbiB0aGUgUm9jayA1QidzIERUIGhhcyBiZWVu
Cj4gdW5lYXJ0aGVkIHdoaWNoIG5vdyByZXN1bHRzIGluIHRoZSBrZXJuZWwgYmVpbmcgdW5hYmxl
IHRvIGJvb3QgCj4gcHJvcGVybHkuCj4gCj4gRm9sbG93aW5nIGlzIHRoZSByZWxldmFudCBjYWxs
IHRyYWNlIGZyb20gdGhlIFVBUlQgY2FwdHVyZToKPiAKPiBbICAgMjEuNTk1MDY4XSBDYWxsIHRy
YWNlOgo+IFsgICAyMS41OTUyODhdICBzbXBfY2FsbF9mdW5jdGlvbl9tYW55X2NvbmQrMHgxNzQv
MHg1ZjgKPiBbICAgMjEuNTk1NzI4XSAgb25fZWFjaF9jcHVfY29uZF9tYXNrKzB4MmMvMHg0MAo+
IFsgICAyMS41OTYxMDldICBjcHVpZGxlX3JlZ2lzdGVyX2RyaXZlcisweDI5NC8weDMxOAo+IFsg
ICAyMS41OTY1MjRdICBjcHVpZGxlX3JlZ2lzdGVyKzB4MjQvMHgxMDAKPiBbICAgMjEuNTk2ODc1
XSAgcHNjaV9jcHVpZGxlX3Byb2JlKzB4MmU0LzB4NDkwCj4gWyAgIDIxLjU5NzI0N10gIHBsYXRm
b3JtX3Byb2JlKzB4NzAvMHhkMAo+IFsgICAyMS41OTc1NzVdICByZWFsbHlfcHJvYmUrMHgxOGMv
MHgzZDgKPiBbICAgMjEuNTk3OTA1XSAgX19kcml2ZXJfcHJvYmVfZGV2aWNlKzB4ODQvMHgxODAK
PiBbICAgMjEuNTk4Mjk0XSAgZHJpdmVyX3Byb2JlX2RldmljZSsweDQ0LzB4MTIwCj4gWyAgIDIx
LjU5ODY2OV0gIF9fZGV2aWNlX2F0dGFjaF9kcml2ZXIrMHhjNC8weDE2OAo+IFsgICAyMS41OTkw
NjNdICBidXNfZm9yX2VhY2hfZHJ2KzB4OGMvMHhmMAo+IFsgICAyMS41OTk0MDhdICBfX2Rldmlj
ZV9hdHRhY2grMHhhNC8weDFjMAo+IFsgICAyMS41OTk3NDhdICBkZXZpY2VfaW5pdGlhbF9wcm9i
ZSsweDFjLzB4MzAKPiBbICAgMjEuNjAwMTE4XSAgYnVzX3Byb2JlX2RldmljZSsweGI0LzB4YzAK
PiBbICAgMjEuNjAwNDYyXSAgZGV2aWNlX2FkZCsweDY4Yy8weDg4OAo+IFsgICAyMS42MDA3NzVd
ICBwbGF0Zm9ybV9kZXZpY2VfYWRkKzB4MTljLzB4MjcwCj4gWyAgIDIxLjYwMTE1NF0gIHBsYXRm
b3JtX2RldmljZV9yZWdpc3Rlcl9mdWxsKzB4ZGMvMHgxNzgKPiBbICAgMjEuNjAxNjAyXSAgcHNj
aV9pZGxlX2luaXQrMHhhMC8weGM4Cj4gWyAgIDIxLjYwMTkzNF0gIGRvX29uZV9pbml0Y2FsbCsw
eDYwLzB4MjkwCj4gWyAgIDIxLjYwMjI3NV0gIGtlcm5lbF9pbml0X2ZyZWVhYmxlKzB4MjBjLzB4
M2UwCj4gWyAgIDIxLjYwMjY2NF0gIGtlcm5lbF9pbml0KzB4MmMvMHgxZjgKPiBbICAgMjEuNjAy
OTc5XSAgcmV0X2Zyb21fZm9yaysweDEwLzB4MjAKPiAKPj4gQWxzbywgY2FuIHlvdSBnaXZlIHRo
ZSBvdXRwdXQgb2YgPGRlYnVnZnM+L2RldmljZXNfZGVmZXJyZWQgZm9yIHRoZQo+PiBnb29kIHZz
IGJhZCBjYXNlPwo+IAo+IEkgY2FuJ3QgcHJvdmlkZSB5b3Ugd2l0aCByZXF1ZXN0ZWQgb3V0cHV0
IGZyb20gdGhlIGJhZCBjYXNlLCBzaW5jZSB0aGUKPiBrZXJuZWwgbmV2ZXIgbW92ZXMgcGFzdCB0
aGlzIHRvIGFuIGluaXRyYW1mcyByZXNjdWUgc2hlbGwsIGJ1dCAKPiBmb2xsb3dpbmcKPiBpcyB0
aGUgb3V0cHV0IGZyb20gdjYuOC4xICgqKndpdGggYWZvcmVtZW50aW9uZWQgcGF0Y2ggcmV2ZXJ0
ZWQqKikuCj4gCj4gIyBjYXQgL3N5cy9rZXJuZWwvZGVidWcvZGV2aWNlc19kZWZlcnJlZAo+IGZj
NDAwMDAwLnVzYiAgICBwbGF0Zm9ybTogd2FpdCBmb3Igc3VwcGxpZXIgL3BoeUBmZWQ5MDAwMC91
c2IzLXBvcnQKPiAxLTAwMjIgIHR5cGVjX2Z1c2IzMDI6IGNhbm5vdCByZWdpc3RlciB0Y3BtIHBv
cnQKPiBmYzAwMDAwMC51c2IgICAgcGxhdGZvcm06IHdhaXQgZm9yIHN1cHBsaWVyIC9waHlAZmVk
ODAwMDAvdXNiMy1wb3J0Cj4gCj4gSXQgc2VlbXMgdGhhdCB2Ni44LjIgd29ya3MgX3dpdGhvdXQg
bmVlZGluZyB0byByZXZlcnQgdGhlIHBhdGNoXy4gSSAKPiB3aWxsCj4gaGF2ZSB0byBsb29rIGlu
dG8gdGhpcyBzb21ldGltZSB0aGlzIHdlZWsgYnV0IGl0IHNlZW1zIGxpa2UKPiBhODAzN2NlYjg5
NjQgKGFybTY0OiBkdHM6IHJvY2tjaGlwOiBkcm9wIHJvY2tjaGlwLHRyY20tc3luYy10eC1vbmx5
Cj4gZnJvbSByazM1ODggaTJzKQo+IHNlZW1zIHRvIGJlIHRoZSBvbmUgdGhhdCBmaXhlZCB0aGUg
cm9vdCBpc3N1ZS4gSSB3aWxsIGhhdmUgdG8gdGVzdCBpdAo+IHNvbWV0aW1lIGxhdGVyIHRoaXMg
d2Vlay4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
