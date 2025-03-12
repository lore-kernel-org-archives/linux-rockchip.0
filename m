Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DEA8C28B28
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 23:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WrvBzOIRbI9Cc318doelXM4Oi9sMWMJHCf/nmbVotqA=; b=S+hKt12zMaV0Se
	F6W5soH0SdG5lfPlFpLvNMeVKsgYCQCJr02YGV8CuCB0OmoNw3INj3K14JJqluIGRQ/WvkyF8Ig/i
	WPl8huHAxTnQJF6gMbDqfYARWP+MNPDSLEU6ZvT+yGw7OwY2+iAXaK+5hKxyGL6sXLZmK2v9TuE+G
	SMbhYjJTpVHG3NMjz5wwV6FYvLvagJY5mwsdHF0G1omztE0722Rs5UvZXpDvvYK8mLtJXMyw1jgFA
	R6kPATKRs93dmYLGCgDVSVu6VzHmmM3qYO73O43IPe09u6RVoQXuMmDM+iXUuqpCmA1FHuKIH9+1E
	rVDVFgM1me5c9KPGlbZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsVJy-00000009hed-0HHM;
	Wed, 12 Mar 2025 23:17:06 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsVJv-00000009hdn-1L3U
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Mar 2025 23:17:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 492F8A43B15;
	Wed, 12 Mar 2025 23:11:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFDBFC4CEDD;
	Wed, 12 Mar 2025 23:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741821421;
	bh=wqg9zUtWmVpF6JzOb+JkHva2UgAbpiTGxmzAbHTOhuk=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=qLB8YGlDoAxC9HiQ57QktFZPg3r7oWUMovsr6+YkytP5AyMV05LkV0+3FQ70vLC+6
	 fyViw6+XuaIZgXeNBoePnB8YddiUVeEOK5eoTynIre7kP9rlPE7QEQn/HtvauAU7yo
	 AX1mCioV8c6R4s6ZeKOKdsFqHaN3kvaQeVrAqwyG6qdbzePQ9aaKoLANzyA8AQIh6F
	 FEZ/pj0AxRb/Zrs06996kmp7BlcS+bDHRdAjuQMHfX7im4Ep7C/uBbQnON+A46IU0j
	 1yZPBFWDdiHzAkIWkmLC0M2Kqt7Eb0o7mOg9Ab6qMqTfNGWjD12/wO5giT65WhWcsy
	 KLN3TGslQp3VA==
Message-ID: <166bb0476a377d8159ce669007e49689.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <2216284.irdbgypaU6@phil>
References: <8574162.T7Z3S40VBb@phil> <33a5e73e9c3919dd0554f9dcbee8b733.sboyd@kernel.org> <2216284.irdbgypaU6@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.15 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, kever.yang@rock-chips.com, mturquette@baylibre.com
Date: Wed, 12 Mar 2025 16:16:59 -0700
User-Agent: alot/0.12.dev8+g17a99a841c4b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_161703_422588_E46BCD68 
X-CRM114-Status: GOOD (  13.03  )
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

UXVvdGluZyBIZWlrbyBTdHVlYm5lciAoMjAyNS0wMy0xMSAyMzowMzowMCkKPiBBbSBEaWVuc3Rh
ZywgMTEuIE3DpHJ6IDIwMjUsIDE5OjA1OjUwIE1FWiBzY2hyaWViIFN0ZXBoZW4gQm95ZDoKPiA+
IAo+ID4gRGlkIHlvdSBzZWUgdGhpcyB3YXJuaW5nPwo+ID4gCj4gPiBkcml2ZXJzL2Nsay9yb2Nr
Y2hpcC9yc3QtcmszNTYyLmM6MjE6NTc6IGVycm9yOiBpbml0aWFsaXplZCBmaWVsZCBvdmVyd3Jp
dHRlbiBbLVdlcnJvcj1vdmVycmlkZS1pbml0XQo+ID4gICAgMjEgfCAjZGVmaW5lIFJLMzU2Ml9E
RFJDUlVfUkVTRVRfT0ZGU0VUKGlkLCByZWcsIGJpdCkgW2lkXSA9ICgweDIwMDAwKjQgKyByZWcg
KiAxNiArIGJpdCkKPiA+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBeCj4gPiBkcml2ZXJzL2Nsay9yb2NrY2hpcC9yc3Qtcmsz
NTYyLmM6MjY2Ojk6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnUkszNTYyX0REUkNSVV9S
RVNFVF9PRkZTRVQnCj4gPiAgIDI2NiB8ICAgICAgICAgUkszNTYyX0REUkNSVV9SRVNFVF9PRkZT
RVQoU1JTVF9QX0REUl9QSFksIDAsIDgpLAo+ID4gICAgICAgfCAgICAgICAgIF5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+Cj4gPiBkcml2ZXJzL2Nsay9yb2NrY2hpcC9yc3QtcmszNTYyLmM6MjE6
NTc6IG5vdGU6IChuZWFyIGluaXRpYWxpemF0aW9uIGZvciAncmszNTYyX3JlZ2lzdGVyX29mZnNl
dFsxNzNdJykKPiA+ICAgIDIxIHwgI2RlZmluZSBSSzM1NjJfRERSQ1JVX1JFU0VUX09GRlNFVChp
ZCwgcmVnLCBiaXQpIFtpZF0gPSAoMHgyMDAwMCo0ICsgcmVnICogMTYgKyBiaXQpCj4gPiAgICAg
ICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXgo+ID4gZHJpdmVycy9jbGsvcm9ja2NoaXAvcnN0LXJrMzU2Mi5jOjI2Njo5OiBub3RlOiBp
biBleHBhbnNpb24gb2YgbWFjcm8gJ1JLMzU2Ml9ERFJDUlVfUkVTRVRfT0ZGU0VUJwo+ID4gICAy
NjYgfCAgICAgICAgIFJLMzU2Ml9ERFJDUlVfUkVTRVRfT0ZGU0VUKFNSU1RfUF9ERFJfUEhZLCAw
LCA4KSwKPiA+ICAgICAgIHwgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+ID4g
Y2MxOiBhbGwgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKPiAKPiAKPiBpbnRlcmVz
dGluZ2x5LCB0aGlzIGRpZCBub3QgdHVybiB1cCBpbiBteSBidWlsZCB0ZXN0Lgo+IEJ1dCB0aGF0
IHNwbGF0IGlzIHJlYWxseSBoZWxwZnVsIHRvbywgYmVjYXVzZSBpdCBtYWRlIGl0IGVhc3kgdG8g
c2VlCj4gdGhhdCBvbmUgb2YgdGhlIGlkcyBpcyBkb3VibGVkIGluIHRoZSBkdC1iaW5kaW5nIGhl
YWRlci4KPiAKPiBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3JvY2tjaGlwLHJrMzU2Mi1jcnUu
aDoKPiAKPiAjZGVmaW5lIFNSU1RfUF9ERFJfSFdMUCAgICAgICAgIDE3Mwo+ICNkZWZpbmUgU1JT
VF9QX0REUl9QSFkgICAgICAgICAgICAgICAgICAxNzMKPiAKPiAKPiBJJ2xsIGZpeCB1cCB0aGUg
ZG91YmxlIGlkLgoKVGhhbmtzLgoKPiAKPiAKPiBPdXQgb2YgY3VyaW9zaXR5LCB3aGF0IHRvb2xj
aGFpbiB3YXMgdGhhdD8KPiAKCiQgfi9jb21waWxlcnMvZ2NjLTEyLjIuMC1ub2xpYmMvYWFyY2g2
NC1saW51eC9iaW4vYWFyY2g2NC1saW51eC1nY2MgLS12ZXJzaW9uCmFhcmNoNjQtbGludXgtZ2Nj
IChHQ0MpIDEyLjIuMApDb3B5cmlnaHQgKEMpIDIwMjIgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9u
LCBJbmMuClRoaXMgaXMgZnJlZSBzb2Z0d2FyZTsgc2VlIHRoZSBzb3VyY2UgZm9yIGNvcHlpbmcg
Y29uZGl0aW9ucy4gIFRoZXJlIGlzIE5PCndhcnJhbnR5OyBub3QgZXZlbiBmb3IgTUVSQ0hBTlRB
QklMSVRZIG9yIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
