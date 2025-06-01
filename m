Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 437EEC54FB3
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Jun 2025 21:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gv6grje18clI23W2LvNCKFlhoqEcJezDh+V0G7zBnPU=; b=A6c/16AulN3yYc
	VBdc7cpNXjS86dsA5bLdMXJZZaB8sXbrJ2L6z5l+mCLqF+ipZCtNGbcNxq2E0auD/wMDcr2lEzntm
	K1dpENOwQsToNKYzSaA8RaqUWyQkeNhcQCxloTYbqxnPFRiiGN5TzO+L2GZOoeqDljyT0/S4GCQMM
	g3rMr+LeOBXXzHNZGm67aN6J7NQuCVIHhmg8JRq+EK8slE6Y7N7/JhYjYeOZO8T048GyDFo96KZEr
	Uy0eyVR/wwzBR4BoZH5KTTbvHTMHzDzBDIWj+zFOwKuTXSt2qYerJM+yky6QXdwap3OB5NrO30Rjd
	EjPyf4s49+nTpVcgI93w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLqbM-00000005zEq-2uBu;
	Sun, 01 Jun 2025 21:52:20 +0000
Received: from chumsalmon.baetis.net ([209.222.21.150])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLqbK-00000005zEV-3J2w
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Jun 2025 21:52:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tahomasoft.com;
	s=default; t=1748814735;
	bh=zicn/cfLN1CiVYF7A469ZH4CbLa6gpclMmVC9eNH0Hg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=oyNtXd2CheTFBuXwtTLBYwl1vfZ8KWgGFXifM/tMu0hpxGgZzDEqY3MAFormb+/jP
	 4KQrWhhkL8FFR9skeKZdjmfln1mOGHNL53dFzrkNjmuAcJ5ieXs872rCnQzQgDZ/kx
	 4gPVqoY7NsDeVMOpig9jzDC0nL1CUnakc9HMQ0WrHFQQCBsaakFtfSBYBLCw4Zq6j1
	 c0JjXgf0m6k6VUVuhZqnCoVrVIAMppCzzVIqluuFV7WvQ8o7r7WpxJ2hoc4zFV7M1Z
	 H53+jvg3gZTdDdv6BSaBr3JNSKJ0Om2Pa222hetixs56kdl30gDfPoGwSOq6SsH9iR
	 FZ9fnoxY4LguA==
Received: from WahpenayoPeak.tahoma.link (unknown [IPv6:2600:4040:50b4:ed04:a495:6a34:82e3:bc73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by chumsalmon.baetis.net (Postfix) with ESMTPSA id DC64C27E48D;
	Sun,  1 Jun 2025 21:52:15 +0000 (UTC)
Date: Sun, 1 Jun 2025 17:52:14 -0400
From: Erik Beck <xunil@tahomasoft.com>
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: Searching for forum for help on dts devel for RK3568 board
Message-ID: <20250601175214.2b291457.xunil@tahomasoft.com>
In-Reply-To: <3153832.CbtlEUcBR6@diego>
References: <20250601163901.7e3ca4dc.xunil@tahomasoft.com>
	<3153832.CbtlEUcBR6@diego>
Organization: Tahoma Soft
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250601_145218_898004_B999DB0D 
X-CRM114-Status: GOOD (  25.47  )
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

SGkgSGVpa28sCgpUaGFua3MgZm9yIHRoZSBmYXN0IHJlc3BvbnNlIQoKSSdsbCBnaXZlIGxpYmVy
YS5jaGF0IGEgdHJ5LgoKSSd2ZSBiZWVuIGxvb2tpbmcgYXQgdGhlIHNjaGVtYXRpY3MsIGFuZCB0
aGV5IGhhdmUgaGVscGVkIHNvbWV3aGF0LCBidXQKbm90IGdldHRpbmcgbWUgdW5zdHVjayBhdCB0
aGUgbW9tZW50LiBUaGUgVjIgc2hvdWxkIGJlIHByZXR0eSBzaW1pbGFyCnRvIHRoZSBWMSwgYnV0
IHRoZXJlIG1pZ2h0IGJlIGFuIGltcG9ydGFudCBkaWZmZXJlbmNlIEknbSBvdmVybG9va2luZy4K
CkknbGwgZ2l2ZSBhIGxvb2sgYXQgdGhvc2UgYm9hcmRzIHlvdSBtZW50aW9uZWQuIEkndmUgYmVl
biB1c2luZyB0aGUKQlBJLVIyLVBybyBmb3IgaW5zcGlyYXRpb24uIEl0IGhhcyBhbHNvIGhlbHBl
ZCwgYnV0IHRoZXJlIG1pZ2h0IGJlCnNvbWV0aGluZyBpbiB0aGUgb3RoZXIgYm9hcmRzIHJlbGF0
aW5nIHRvIHRoZSBQQ0llIGJ1cyB0aGF0IG1pZ2h0IGhlbHAuCgpJJ3ZlIGJlZW4gcHV0dGluZyB0
aGUgd29yayB1cCBvbnRvIGdpdGh1YjsgY3VycmVudCBicmFuY2ggaXM6Cmh0dHBzOi8vZ2l0aHVi
LmNvbS9UYWhvbWFTb2Z0L29wZW53cnQtb3BlbndydC90cmVlL0V4cERldi1XSVA3CgpEaXJlY3Qg
bGluayB0byB0aGUgRFRTIGlzOgpodHRwczovL2dpdGh1Yi5jb20vVGFob21hU29mdC9vcGVud3J0
LW9wZW53cnQvYmxvYi9FeHBEZXYtV0lQNy90YXJnZXQvbGludXgvcm9ja2NoaXAvcGF0Y2hlcy02
LjYvMDM2LWFybTY0LWR0cy1yb2NrY2hpcC1saW5rc3Rhci1taW5pbWFsLnBhdGNoCgpUaGFuayB5
b3UvRGFua2UsCgpFcmlrCn5+fgpPbiBTdW4sIDAxIEp1biAyMDI1IDIzOjExOjU2ICswMjAwCkhl
aWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgoKPiBIaSBFcmlrLAo+IAo+IEFt
IFNvbm50YWcsIDEuIEp1bmkgMjAyNSwgMjI6Mzk6MDEgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1l
cnplaXQKPiBzY2hyaWViIEVyaWsgQmVjazoKPiA+IEkgYW0gd29ya2luZyBvbiBpbml0aWFsIHN1
cHBvcnQgZm9yIGFuIFJLMzU2OCBib2FyZCwgdGhlIExpbmtTdGFyCj4gPiBINjhLLTE0MjF2MS4g
SSd2ZSBtYWRlIHNvbWUgcHJvZ3Jlc3MsIGJ1dCBjYW4ndCBnZXQgcGFzdCB0dXJuaW5nIG9uCj4g
PiBvbmUgb2YgdGhlIHR3byBQQ0llMyBIb3N0IGJyaWRnZXMgKHBjaWUzeDEgcGNpZUBmZTI3MDAw
MCkgd2l0aG91dAo+ID4gYnJlYWtpbmcgdGhlIGJvb3QuCj4gPiAKPiA+IElzIHRoaXMgdGhlIHJp
Z2h0IGxvY2F0aW9uIHRvIGFzayBmb3IgaGVscD8gSWYgbm90LCB3aGVyZSBtaWdodCBiZT8KPiA+
ICAKPiAKPiBUaGUgbWFpbGluZ2xpc3QgbW9zdGx5IGhhcyBwYXRjaGVzIG9uIGl0LCBzbyBJIGRv
bid0IHJlYWxseSBrbm93IGlmCj4gcGVvcGxlIGFyZSBleHBlY3Rpbmcgbm9uLXBhdGNoIG1haWxz
Lgo+IAo+IElmIGluIGRvdWJ0IHRoZSAjbGludXgtcm9ja2NoaXAgY2hhbm5lbCBvbiB0aGUgbGli
ZXJhLmNoYXQgSVJDCj4gbmV0d29yayBbMF0gbWlnaHQgaGVscCBtb3JlLiAocGVvcGxlIGluIGRp
ZmZlcmVudCB0aW1lem9uZXMsIHNvCj4gcHJvYmFibHkgbm8gaW1tZWRpYXRlIGFuc3dlcnMpCj4g
Cj4gCj4gCj4gRm9yIHRoZSBtdWx0aS1wY2kgY2FzZSBJIGd1ZXNzIHlvdSBjb3VsZCBzdGFydCBi
eSBsb29raW5nIGF0IG90aGVyCj4gcmszNTY4IGJvYXJkIGRvaW5nIHNpbWlsYXIgdGhpbmdzLCBs
aWtlIHRoZSBRbmFwLVRTNDMzIFsxXSwgUmFkeGEgRTI1Cj4gWzJdIG9yIE5hbm9waS1SNVMgWzNd
Lgo+IAo+IEdlbmVyYWxseSBib2FyZCBkZXNpZ25lcnMgb2Z0ZW4gZm9sbG93IHJlZmVyZW5jZSBk
ZXNpZ25zLCBzbyB0aGluZ3MKPiBtaWdodCBiZSBzaW1pbGFyLgo+IAo+IFNpbWlsYXJseSwgeW91
IG1pZ2h0IHdhbnQgdG8gcHVzaCB5b3VyIGN1cnJlbnQgaW4gcHJvZ3Jlc3Mgd29yayBvbgo+IHNv
bWUgZ2l0aHViIHRoaW5nLCBzbyBwZW9wbGUgY2FuIHRha2UgYSBsb29rLgo+IAo+IAo+IEl0IGFs
c28gbG9va3MgbGlrZSB0aGUgSDY4S1YyIHZhcmlhbnQgb2YgdGhlIGRldmljZSBoYXMgc2NoZW1h
dGljcwo+IGF2YWlsYWJsZSBhcyBsaW5rZWQgZnJvbSB0aGUgYm90dG9tIG9mIFs0XSwgbm90IHN1
cmUgaG93IHRoYXQgcmVsYXRlcwo+IHRvIHlvdXIgZGV2aWNlIHRob3VnaC4KPiAKPiAKPiBIZWlr
bwo+IAo+IAo+IFswXSBodHRwczovL2xpYmVyYS5jaGF0Lwo+IFsxXQo+IGh0dHBzOi8vZ2l0Lmtl
cm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVl
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCj4gWzJd
Cj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFs
ZHMvbGludXguZ2l0L3RyZWUvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcmFk
eGEtZTI1LmR0cwo+IFszXQo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LW5hbm9waS1yNXMuZHRzCj4gWzRdCj4gaHR0cHM6Ly9naXRodWIuY29tL1Nl
ZWVkLVN0dWRpby93aWtpLWRvY3VtZW50cy9ibG9iL2RvY3VzYXVydXMtdmVyc2lvbi9kb2NzL05l
dHdvcmsvUktfRGV2aWNlcy9INjhLX1YyL0g2OEtWMl9pbnN0YWxsX3N5c3RlbS5tZAo+IAo+IAo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
