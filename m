Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C6ABD1D478
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 17:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2VK6iymPkDfDJr2g2kt7ldnJ7j8h2+ulHjQVuSZe4M=; b=vAg9NTzlPPyrAC
	uaaZtClGye/VIPJlrPtKeYMQFOooEGxLQtEIp5b3w7u42P4DMUb+I6qIjHvuxDeuQ+QRtA+I/tc9x
	YqU/b5gyJnM+W2/5l/0fLdt3PmaKRLoIa3+gn72Tnpu7sp9haXa2tOARyzjNO8tpY/m9OMmdshzjW
	Rc4OMlsLwg0VrmDa/s7pgqX/D1+qqVoES7TkGnU99y7xPtSsCpTz7thdzWiU4e4awB6b41ApDpoBf
	O7QNJWRj7/o8KRb1GK1rWzNdqiR8db3E0libbtSiXCysIwp5tYg6EmTygtbEjMJQ04UvNMEnCBAt5
	DgcauS3Z5MGmXemgZITg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdtS1-00000000IAC-2NZK;
	Thu, 08 Jan 2026 17:05:33 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdtRq-00000000I8J-3Lr5
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Jan 2026 17:05:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1824A4072B;
	Thu,  8 Jan 2026 17:05:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5701C116C6;
	Thu,  8 Jan 2026 17:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767891922;
	bh=W9EI4lwWgFH3ZRQXYjHd1qk8c3nYDntHmab2DuzB4qk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AwQrtVcURzGnyMsAlhfouXp/qB2AN7dH4fqnsbAn+p7gcJAXMQygp7j3LH+PHQSqI
	 aUpeciEq24+9Bd6LDFUmLEfyKlxwInDIveXjmOeMmOwcN+NLoauzLpJtdEuHAOKnAF
	 cYki8bc6Kd7O1PWxEptCSFjWzOp9AXNvLUabLtqRxbmbHvO5C1NYs8hsJ/1gv9WKmB
	 LzBvrtbdrXgYYyWJ8G4JEKSKyu5NKfm6fnQzZlcvbPwAugV5vj/z/+ktbUiGdNPrXW
	 t/ALyfLTuBwcILYONJLNdExutGUHnClePHNH+bohqQNbdBCc1FnxACr76dYnmJaE+/
	 mLIEM4yaYjxDA==
Date: Thu, 8 Jan 2026 22:35:15 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/2] PCI: dwc: Add LTSSM tracing support to debugfs
Message-ID: <ym435w3ltwc7vln7g6j3ijswsarubwjazux65ttcqtrbr3i5fu@gig3qlzdkopf>
References: <1767691119-28287-1-git-send-email-shawn.lin@rock-chips.com>
 <cudy2lfd7q7tujfivampgciziuho7izkpvmabj3qa2udvzkvfh@lw5vasqcrs6c>
 <2e1a3eff-5d4d-4e3a-a076-ef8a76e08d4c@rock-chips.com>
 <lhshuxj4aztwbernypwgaxkdtxzonzydzipu63mspbqfygyrvy@nggpj7vwsw7n>
 <70b6e8c9-8dbe-484a-b8a8-aeb7380b6ca2@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70b6e8c9-8dbe-484a-b8a8-aeb7380b6ca2@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_090529_249983_DB7F185A 
X-CRM114-Status: GOOD (  25.91  )
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

T24gVGh1LCBKYW4gMDgsIDIwMjYgYXQgMTI6NTg6MjhQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IOWcqCAyMDI2LzAxLzA4IOaYn+acn+WbmyAxMjo0OSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFt
IOWGmemBkzoKPiA+IE9uIFRodSwgSmFuIDA4LCAyMDI2IGF0IDA5OjAxOjQzQU0gKzA4MDAsIFNo
YXduIExpbiB3cm90ZToKPiA+ID4g5ZyoIDIwMjYvMDEvMDcg5pif5pyf5LiJIDIwOjQxLCBNYW5p
dmFubmFuIFNhZGhhc2l2YW0g5YaZ6YGTOgo+ID4gPiA+IE9uIFR1ZSwgSmFuIDA2LCAyMDI2IGF0
IDA1OjE4OjM4UE0gKzA4MDAsIFNoYXduIExpbiB3cm90ZToKPiA+ID4gPiA+IFNvbWUgcGxhdGZv
cm1zIG1heSBwcm92aWRlIExUU1NNIHRyYWNlIGZ1bmN0aW9uYWxpdHksIHJlY29yZGluZyBoaXN0
b3JpY2FsCj4gPiA+ID4gPiBMVFNTTSBzdGF0ZSB0cmFuc2l0aW9uIGluZm9ybWF0aW9uLiBUaGlz
IGlzIHZlcnkgdXNlZnVsIGZvciBkZWJ1Z2dpbmcsIHN1Y2gKPiA+ID4gPiA+IGFzIHdoZW4gY2Vy
dGFpbiBkZXZpY2VzIGNhbm5vdCBiZSByZWNvZ25pemVkLiBBZGQgYW4gbHRzc21fdHJhY2Ugb3Bl
cmF0aW9uCj4gPiA+ID4gPiBub2RlIGluIGRlYnVnZnMgZm9yIHBsYXRmb3JtIHdoaWNoIGNvdWxk
IHByb3ZpZGUgdGhlc2UgaW5mb3JtYXRpb24gdG8gc2hvdwo+ID4gPiA+ID4gdGhlIExUU1NNIGhp
c3RvcnkuCj4gPiA+ID4gPiAKPiA+ID4gPiAKPiA+ID4gPiBXaHkgZG9uJ3QgeW91IGltcGxlbWVu
dCBpdCBhcyBhIHRyYWNlcG9pbnQgc2luY2UgeW91IHdhbnQgdG8gZXhwb3NlIHRyYWNlcz8KPiA+
ID4gPiAKPiA+ID4gCj4gPiA+IEkgZXZhbHVhdGVkIHRoaXMgb3B0aW9uIGJ1dCBkaWRuJ3QgY2hv
b3NlIHRvIGRvIGl0IGp1c3QgYXMgSSBkaWRuJ3QKPiA+ID4gd2FudCB0byBzZWxlY3QgQ09ORklH
X1RSQUNJTkdfU1VQUE9SVCBmb3IgZHdjIGRyaXZlciBiZWNhdXNlIG9mIHRoaXMKPiA+ID4gY2hl
YXAgZnVuY3Rpb24uIEJ1dCBJJ20gZmluZSB0byBpbXBsZW1lbnQgaXQgYXMgYSB0cmFjZXBvaW50
LiBKdXN0IHRvCj4gPiA+IG1ha2UgaXQgY2xlYXIsIGlmIGEgdHJhY2Vwb2ludCBpcyBwcmVmZXJy
ZWQsIHNob3VsZCBJIG5lZWQgdG8gY3JlYXRlIGEgbmV3Cj4gPiA+IGZpbGUgbGlrZSBwY2llLWRl
c2lnbndhcmUtdHJhY2U/Cj4gPiA+IAo+ID4gCj4gPiBJIHdvdWxkIHByZWZlciB0aGF0LCBiZWNh
dXNlIHRoYXQgd2lsbCBhbGxvdyB1cyB0byBhZGQgbW9yZSB0cmFjZXBvaW50cyBpbiB0aGUKPiA+
IGZ1dHVyZSBhbmQgbm90IG11ZGRsZSBwY2llLWRlc2lnbndhcmUuaC4gR2VuZXJhbCBjb252ZW50
aW9uIGlzIHRvIGRlZmluZQo+ID4gdHJhY2UgZXZlbnRzIGluIGEgc2VwYXJhdGUgaGVhZGVyLgo+
ID4gCj4gCj4gSSBkaWQgYSBxdWljayBjb252ZW50aW9uIGJ5IGFkZGluZyBpdCB0byB0aGUgZXhp
c3RpbmcKPiBpbmNsdWRlL3RyYWNlL2V2ZW50cy9wY2kuaAoKSXMgdGhpcyBhbiBleGlzdGluZyBm
aWxlPyBJIGNvdWxkbid0IHNlZSBpdC4gQnV0IGFueXdheSwgSSB0aGluayBpdCB3b3VsZCBiZQpi
ZXR0ZXIgdG8gY3JlYXRlIGEgc2VwYXJhdGUgZmlsZSBmb3IgY29udHJvbGxlciBkcml2ZXJzLiBQ
Q0kgY29yZSBtYXkgZW5kIHVwCmhhdmluZyBpdHMgb3duIHRyYWNlcG9pbnQgaW4gdGhlIGZ1dHVy
ZSBhbmQgbWl4aW5nIGJvdGggd2lsbCBsZWFkIHRvIGNvbmZ1c2lvbi4KCj4gCj4gVGhlIFRSQUNF
X0VWRU5UIGlzIGNhbGxlZCBwY2llX2x0c3NtX3N0YXRlX2NoYW5nZSwgbWFraW5nIGl0IG5vdCBq
dXN0Cj4gZm9yIGR3Yy1iYXNlZCBidXQgZm9yIGFsbCBwb3NzaWJsZSBjb21pbmcgaG9zdCBkcml2
ZXJzIGFuZCB0aGUgb3V0cHV0Cj4gbG9va3MgbGlrZSBiZWxvdy4gSXMgdGhhdCB0aGUgd2F5IHlv
dSBleHBlY3RlZD8KPiAKPiByb290QGRlYmlhbjovI2VjaG8gMSA+Cj4gL3N5cy9rZXJuZWwvZGVi
dWcvdHJhY2luZy9ldmVudHMvcGNpL3BjaWVfbHRzc21fc3RhdGVfY2hhbmdlL2VuYWJsZQoKL3N5
cy9rZXJuZWwvZGVidWcvdHJhY2luZy9ldmVudHMvcGNpX2NvbnRyb2xsZXIvcGNpZV9sdHNzbV9z
dGF0ZV90cmFuc2l0aW9uL2VuYWJsZQoKPiByb290QGRlYmlhbjovIyBjYXQgL3N5cy9rZXJuZWwv
ZGVidWcvdHJhY2luZy90cmFjZQo+ICMgdHJhY2VyOiBub3AKPiAjCj4gIyBlbnRyaWVzLWluLWJ1
ZmZlci9lbnRyaWVzLXdyaXR0ZW46IDU3Mi81NzIgICAjUDo4Cj4gIwo+ICMgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIF8tLS0tLT0+IGlycXMtb2ZmL0JILWRpc2FibGVkCj4gIyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAvIF8tLS0tPT4gbmVlZC1yZXNjaGVkCj4gIyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgLyBfLS0tPT4gaGFyZGlycS9zb2Z0aXJxCj4gIyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHx8IC8gXy0tPT4gcHJlZW1wdC1kZXB0aAo+ICMg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8fHwgLyBfLT0+IG1pZ3JhdGUtZGlzYWJsZQo+
ICMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8fHx8IC8gICAgIGRlbGF5Cj4gIyAgICAg
ICAgICAgVEFTSy1QSUQgICAgIENQVSMgIHx8fHx8ICBUSU1FU1RBTVAgIEZVTkNUSU9OCj4gIyAg
ICAgICAgICAgICAgfCB8ICAgICAgICAgfCAgIHx8fHx8ICAgICB8ICAgICAgICAgfAo+IAo+IC4u
Lgo+ICAgICAga3dvcmtlci8xOjEtMTA5ICAgICBbMDAxXSAuLi4uLiAgICAgNC43MTk5Njg6IGx0
c3NtX3N0YXRlX2NoYW5nZTogZGV2Ogo+IGE0MDAwMDAwMC5wY2llIHN0YXRlOiAweDBkIHJhdGU6
IDguMCBHVC9zIFBDSWUKCkNhbiB5b3UgcHJpbnQgdGhlIHN0YXRlIG5hbWUgdXNpbmcgZHdfcGNp
ZV9sdHNzbV9zdGF0dXNfc3RyaW5nKCkgd2l0aDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGlu
dXgtcGNpLzIwMjYwMTA3LXBjaS1kd2Mtc3VzcGVuZC1yZXdvcmstdjQtMi05YjVmM2M3MmRmMGFA
b3NzLnF1YWxjb21tLmNvbS8KCkFsc28geW91IGNhbiByZW1vdmUgJ1BDSWUnIGF0IHRoZSBlbmQu
CgpSZXN0IExHVE0sIHRoYW5rcyEKCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+Cu
qeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
