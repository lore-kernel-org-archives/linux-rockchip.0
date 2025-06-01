Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8857C5B552
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Jun 2025 21:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w66Vwfj2SMGG2tGaFdKpN//VJoeBzSXIGQ3PwKhGde8=; b=rerOlxuDo3eOOW
	sNpefY5cvG+Hvn49NDGca8jsIkojuF1EjdiWy73BpoGK/QaRq9xatWt1XPKpNn49dqETI11MoErTM
	pf+gx6PfiBEpe7pCaJQXgorcCh79sUS2xBmdXpNMzej/ELEdlelHzEZ1AuTNDx0QgfYH85XcHi9z5
	J5XR7IjK4p3VUx6ICmvcPGo7fivcMPGlrSWuLyZfCLYdeFn94S6YkxtVy/NqrwC6vu+G3y4qTxdDO
	KjTqTgOQC/f4E8jy/pfy8vQYdMMEuPeTA7l6Co1sly1mAI7DHIhwNjuavMKSweYkcXCvdVCylXtqh
	nMuhKDYnat6bLYZ7wv6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLpyN-00000005yJ1-2pRH;
	Sun, 01 Jun 2025 21:12:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLpyK-00000005yIW-2n03
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Jun 2025 21:12:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=gjRwiNVifzzXYS/IunqbGUl7mVoklD2ladBp/Z1hHSY=; b=mnirmXO2nQf7V1YJlriPWhuuN3
	Z6jVsGs1ac/ccpjYvPRtoZaEjvaM7a3WRAkC0TSj1FpPuWo6Estg6MLIctAiRvgBDda3WvFdyuJ5V
	31urXLpzTQABME05kJ0kU+gGrtRZyIwnmIdBU2WcOBWOyNZyMV3MKcTy0QkvrrhoVAK/vSzfkad1u
	OnKMLJklroTbvrQXn/I5LhOffPVa3FbcRm6eK/0VlVkIhRpTha0jB1wyPhB083MalzJHCELif7cbQ
	qnw0/ZpM9IqzBx9H6Euni+JNvQ06QhEanT8XXbuESpjoDPmI2ixaiAxzODvjz+UPo8T5KvvOObmfK
	Ff58GA6g==;
Received: from i53875a2b.versanet.de ([83.135.90.43] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uLpyH-0004zq-DF; Sun, 01 Jun 2025 23:11:57 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Erik Beck <xunil@tahomasoft.com>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: Searching for forum for help on dts devel for RK3568 board
Date: Sun, 01 Jun 2025 23:11:56 +0200
Message-ID: <3153832.CbtlEUcBR6@diego>
In-Reply-To: <20250601163901.7e3ca4dc.xunil@tahomasoft.com>
References: <20250601163901.7e3ca4dc.xunil@tahomasoft.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250601_141200_724909_15E0568F 
X-CRM114-Status: GOOD (  15.15  )
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

SGkgRXJpaywKCkFtIFNvbm50YWcsIDEuIEp1bmkgMjAyNSwgMjI6Mzk6MDEgTWl0dGVsZXVyb3DD
pGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBFcmlrIEJlY2s6Cj4gSSBhbSB3b3JraW5nIG9uIGlu
aXRpYWwgc3VwcG9ydCBmb3IgYW4gUkszNTY4IGJvYXJkLCB0aGUgTGlua1N0YXIKPiBINjhLLTE0
MjF2MS4gSSd2ZSBtYWRlIHNvbWUgcHJvZ3Jlc3MsIGJ1dCBjYW4ndCBnZXQgcGFzdCB0dXJuaW5n
IG9uIG9uZQo+IG9mIHRoZSB0d28gUENJZTMgSG9zdCBicmlkZ2VzIChwY2llM3gxIHBjaWVAZmUy
NzAwMDApIHdpdGhvdXQgYnJlYWtpbmcKPiB0aGUgYm9vdC4KPiAKPiBJcyB0aGlzIHRoZSByaWdo
dCBsb2NhdGlvbiB0byBhc2sgZm9yIGhlbHA/IElmIG5vdCwgd2hlcmUgbWlnaHQgYmU/CgpUaGUg
bWFpbGluZ2xpc3QgbW9zdGx5IGhhcyBwYXRjaGVzIG9uIGl0LCBzbyBJIGRvbid0IHJlYWxseSBr
bm93IGlmCnBlb3BsZSBhcmUgZXhwZWN0aW5nIG5vbi1wYXRjaCBtYWlscy4KCklmIGluIGRvdWJ0
IHRoZSAjbGludXgtcm9ja2NoaXAgY2hhbm5lbCBvbiB0aGUgbGliZXJhLmNoYXQgSVJDIG5ldHdv
cmsgWzBdCm1pZ2h0IGhlbHAgbW9yZS4gKHBlb3BsZSBpbiBkaWZmZXJlbnQgdGltZXpvbmVzLCBz
byBwcm9iYWJseSBubyBpbW1lZGlhdGUKYW5zd2VycykKCgoKRm9yIHRoZSBtdWx0aS1wY2kgY2Fz
ZSBJIGd1ZXNzIHlvdSBjb3VsZCBzdGFydCBieSBsb29raW5nIGF0IG90aGVyIHJrMzU2OApib2Fy
ZCBkb2luZyBzaW1pbGFyIHRoaW5ncywgbGlrZSB0aGUgUW5hcC1UUzQzMyBbMV0sIFJhZHhhIEUy
NSBbMl0gb3IKTmFub3BpLVI1UyBbM10uCgpHZW5lcmFsbHkgYm9hcmQgZGVzaWduZXJzIG9mdGVu
IGZvbGxvdyByZWZlcmVuY2UgZGVzaWducywgc28gdGhpbmdzIG1pZ2h0CmJlIHNpbWlsYXIuCgpT
aW1pbGFybHksIHlvdSBtaWdodCB3YW50IHRvIHB1c2ggeW91ciBjdXJyZW50IGluIHByb2dyZXNz
IHdvcmsgb24gc29tZQpnaXRodWIgdGhpbmcsIHNvIHBlb3BsZSBjYW4gdGFrZSBhIGxvb2suCgoK
SXQgYWxzbyBsb29rcyBsaWtlIHRoZSBINjhLVjIgdmFyaWFudCBvZiB0aGUgZGV2aWNlIGhhcyBz
Y2hlbWF0aWNzCmF2YWlsYWJsZSBhcyBsaW5rZWQgZnJvbSB0aGUgYm90dG9tIG9mIFs0XSwgbm90
IHN1cmUgaG93IHRoYXQgcmVsYXRlcwp0byB5b3VyIGRldmljZSB0aG91Z2guCgoKSGVpa28KCgpb
MF0gaHR0cHM6Ly9saWJlcmEuY2hhdC8KWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzClsyXSBodHRwczovL2dpdC5rZXJu
ZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yYWR4YS1lMjUuZHRzClszXSBodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51
eC5naXQvdHJlZS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1uYW5vcGktcjVz
LmR0cwpbNF0gaHR0cHM6Ly9naXRodWIuY29tL1NlZWVkLVN0dWRpby93aWtpLWRvY3VtZW50cy9i
bG9iL2RvY3VzYXVydXMtdmVyc2lvbi9kb2NzL05ldHdvcmsvUktfRGV2aWNlcy9INjhLX1YyL0g2
OEtWMl9pbnN0YWxsX3N5c3RlbS5tZAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
