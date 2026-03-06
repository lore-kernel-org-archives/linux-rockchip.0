Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 023B8F01825
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Mar 2026 10:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctXYL19rp25MjWkE85rrMtCmfBtpCQGXcpgoxnwxkRU=; b=JFJJ2ECwDMluCZ
	KkH6atIZooVTjaV0y9r6uAQ8bku/IVjLHX1Ns+I4Xnh2Sf5sZC4P5oN6exa4HXrv7q7zHKBDxBVEw
	yM1p5k0zDohwyqNyX/kS/mYoaqrfmbD1xCIaGxyvdcwUVNhs1+SNjtdIbOe20cHkRZYzL4rmv6qKB
	C+1BLhINGpacgfaWFSDb2KE9VqxN2Iavt36MVv4mgYZeJkxHjq+hZnaTFYCJNIDsMlA65XfJEx31g
	jwRyLA6vhrQpBxsMc4fIOzoJdI8RDodzHo/j0W7+3JLJOtdLvSWpKFmuWCcR41VTvQUjYMdJOiYRC
	/g60hCA2KZyRPI67rF+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySef-00000003Ui5-1tIw;
	Fri, 06 Mar 2026 10:43:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySee-00000003Uhj-09Dh
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Mar 2026 10:43:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=++ucNMjBOa630Tlk3DsPoQqLDeAf1p8NVy9HyGd5DO0=; b=lkmJ02CSN+PDutmGJj0dHUPOy2
	uZQU5+5epoMNlbbufR1KtbjJCNQ4NnefOwfhM4UK4hnIs0Wwe2nLUcl+uXrPXNH4hRokv7XTt+fMd
	JJGT+Wp70sUys55MRh1dkB8BnYFdcLOaYKywgsZ+sMokbx8abw0K+13FAyuL/FUt7yzaXGXOCPgbj
	YHakj/kgeZUxITPjAx0W1TVGVBYVeT4HXbg0ApWCIDylR6ukHe0E2krwmXI0UPVRv86nlgy+ftO6l
	IcN0c/9uJtWsWKTk6b2GwV/cCCBSzHV2Wn7dcpZM1HuguiC36IkKBnjQf6sPmsk0WvBhnh9RAz3NC
	BF8r/TgQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH 0/3] Add shaping support for Rockchip platforms
Date: Fri, 06 Mar 2026 11:43:13 +0100
Message-ID: <4490342.ejJDZkT8p0@phil>
In-Reply-To: <1772782832-216867-1-git-send-email-shawn.lin@rock-chips.com>
References: <1772782832-216867-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_024336_120020_DBBCC4D3 
X-CRM114-Status: GOOD (  12.61  )
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

SGkgU2hhd24sCgpBbSBGcmVpdGFnLCA2LiBNw6RyeiAyMDI2LCAwODo0MDoyOSBNaXR0ZWxldXJv
cMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFNoYXduIExpbjoKPiBwbV9zaGFwaW5nIGlzIGlu
dHJvZHVjZWQgZm9yIHNvbWUgcGxhdGZvcm1zIHRvIHRocm90dGxlIHRoZSBvdXRzdGFuZGluZwo+
IGJ1cnN0IHJlcXVlc3RzIG9mIGVhY2ggSVAgdG8gcHJldmVudCBidXMgbW9ub3BvbGl6YXRpb24u
IEl0IHNob3VsZCBiZQo+IHNhdmVkIGFuZCByZXN0b3JlZCBhbG9uZyB3aXRoIHRoZSBvbi9vZmYg
b2YgcG1kb21haW4sIHRoZSBzYW1lIGFzIHBtX3Fvcy4KPiBUaGlzIHBhdGNoc2V0IGFkZHMgc3Vw
cG9ydCBmb3IgaXQuCgpDYW4gd2UgZ2V0IHNvbWUgbW9yZSBkZXNjcmlwdGl2ZSBuYW1pbmcgZm9y
IHRoZSBmZWF0dXJlIHBsZWFzZT8KSW4gdGhlIGNvbW1pdCBtZXNzYWdlcywgZHQtYmluZGluZyBh
bmQgYWxzbyBub2RlLW5hbWVzIGluIHRoZSBzb2MgZHRzaS4KQmVjYXVzZSBhbnlvbmUgZ2xhbmNp
bmcgYXQgZWl0aGVyIHRoZSBiaW5kaW5nIG9yIGR0c2kgd2lsbCBub3QgdW5kZXJzdGFuZAp3aGF0
IHRoaXMgaXMsIGFuZCB3b3VsZCBldmVuIG5lZWQgdG8gY29uc3VsdCB0aGUgZ2l0IGhpc3Rvcnkg
Zm9yIGFueQpleHBsYW5hdGlvbi4KClRoZSBmdWxsIGludGVyY29ubmVjdCBpcyBub3QgcGFydCBv
ZiB0aGUgVFJNIEkgaGF2ZSwgYnV0IHRoZSBiaXRzIGFuZApwaWVjZXMgaW4gb3RoZXIgcGFydHMg
b2YgdGhlIFRSTSBzcGVhayBvZiB0cmFmZmljLXNoYXBpbmcuCgpTbyBmb3IgdGhlIG5vZGUgSSdk
IGdvIGZvcjoKCXNoYXBpbmdfdmVwdTE6IHRyYWZmaWMtc2hhcGluZ0AyN2YwNjA4OAoKYW5kIGlu
IHRoZSBiaW5kaW5nIHNvbWV0aGluZyBsaWtlOgoJcm9ja2NoaXAscG0tdHJhZmZpYy1zaGFwaW5n
ID0gPC4uLi4+CgpJIHRoaW5rIHRoZSB3aG9sZSBwbV9xb3MgdGhpbmcgaXMgYW4gb3ZlcnNpZ2h0
IG9mIHRoZSBwYXN0LCBiZWNhdXNlOgoKLSBwcm9wZXJ0aWVzIHNob3VsZCB1c2UgZGFzaGVzICIt
IiBub3QgdW5kZXJzY29yZXMKLSB0aGUgcHJvcGVydHkgbmFtZSBpcyBSb2NrY2hpcCBzcGVjaWZp
Yywgc28gc2hvdWxkIGxpa2VseSBnZXQgYSBwcmVmaXgKCgpIZWlrbwoKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
