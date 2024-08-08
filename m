Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 279CFC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 01:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zvrl7MFI9u2oXV1Se8nuwVS52e8fX0Kyi3JvJwgc4OA=; b=1YNIX0kUDXSzHn
	OjNoj/ip+K4BbZFTFLtKE+/NAkBH8/y5faM57mjJaiWgup4D4CyfUHSeQA/KWR7FLhSfTAbKM+rac
	g5JtI1AwsSU3GSacFw9+UDW/pBSyRsd6K/6YHvgYFhX0+qUoDZznEwbTDmYXejb5voqKRAPcW5QHu
	FFQVV6nI0SmQVrdFe72HMfj/WF1Gqfq0lx6zwkjRR30sylTmlw33Ini+7m3ox2t7QATQllxn0U5E+
	qECnp8gjJ70LzBk8ITaiWRg+wI1di5BVaTn7QMHi0ZQ9RiLgThUROzgjXlepYEZ9rr5xjSWel+AB2
	2C7RScWGVwfxN2Eih8EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbrfZ-00000006ilt-0773;
	Thu, 08 Aug 2024 01:10:21 +0000
Received: from mail-m6019.netease.com ([210.79.60.19])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbrfU-00000006ilC-1PVN
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 01:10:19 +0000
DKIM-Signature: a=rsa-sha256;
	b=YUIm9eJd8vgxIDtf5OwCf7W46znutQw3GqwfC1dBeHC7zswhnuw0jGQnanPc2phYovI5/QtNqUmrFEsplTI+CJQZ6SK61eS6khTe+Uhz6aI752QJIckZMBX8CDy3MYg7H3Md/96BD0rKaCdhv3VLlShAuFvWhZBCR/qfli/t98o=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=uqG3/IZXzJ43M58oVjKKr6TZYE+/bhrYky3foWhb+w8=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.49] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 8EA23A025A;
	Thu,  8 Aug 2024 09:09:54 +0800 (CST)
Message-ID: <e407b8ba-e72a-4b53-af8e-7dbb58420b07@rock-chips.com>
Date: Thu, 8 Aug 2024 09:09:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] clk: gate: export clk_gate_endisable
To: Stephen Boyd <sboyd@kernel.org>, heiko <heiko@sntech.de>,
 mturquette <mturquette@baylibre.com>, =?UTF-8?B?5p2o5Yev?=
 <kever.yang@rock-chips.com>
Cc: linux-clk <linux-clk@vger.kernel.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 huangtao <huangtao@rock-chips.com>, =?UTF-8?B?5byg5a2m5bm/?=
 <sugar.zhang@rock-chips.com>
References: <20240806073832.13568-1-zhangqing@rock-chips.com>
 <cca491b4b4f5716e634f7c0ce0c574af.sboyd@kernel.org>
 <2024080709283455745026@rock-chips.com>
 <d673b1539ad5d4abfff29900461f9209.sboyd@kernel.org>
From: zhangqing <zhangqing@rock-chips.com>
In-Reply-To: <d673b1539ad5d4abfff29900461f9209.sboyd@kernel.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUhDGlZMTRlOS05CHUwaHRlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a912f89073c03a8kunm8ea23a025a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nj46NRw*GTI9HxRJSioDLhIy
	ORMwCiNVSlVKTElIS0xCSEJOTUhNVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhCTkk3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_181016_913185_827DC388 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
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

SGksCgrlnKggMjAyNC84LzggNDo1NywgU3RlcGhlbiBCb3lkIOWGmemBkzoKPiBRdW90aW5nIHpo
YW5ncWluZ0Byb2NrLWNoaXBzLmNvbSAoMjAyNC0wOC0wNiAxODoyODozNCkKPj4gSGnvvIwKPj4K
Pj4gU29tZSBtb2R1bGVzLCB3aGljaCBuZWVkIHRvIGRvIHdvcmthcm91bmQsIG5lZWQgdG8gZGlz
YWJsZWQgdGhlIGNsb2NrIGRpcmVjdGx5LAo+PiBpbmRlcGVuZGVudCBvZiB0aGUgcmVmZXJlbmNl
IGNvdW50Lgo+IFdlIGRvbid0IHdhbnQgY2xrIGNvbnN1bWVycyBnb2luZyBiZWhpbmQgdGhlIGNs
ayBwcm92aWRlciBhbmQgdHVybmluZyBpdAo+IG9mZiBhbmQgb24uIFlvdSdsbCBuZWVkIHRvIGZp
Z3VyZSBvdXQgc29tZSBvdGhlciB3YXkgdG8gZG8gdGhpcy4gQXJlCj4gdGhlcmUgcmVhbGx5IG90
aGVyIGNvbnN1bWVycyBiZXNpZGVzIHRoZSBvbmUgY2hhbmdpbmcgdGhlIHBpbiB0byBhIGdwaW8/
Cj4gSWYgdGhlcmUncyBvbmx5IG9uZSB1c2VyIHRoZW4gaXQgc2VlbXMgbGlrZSBjbGtfZGlzYWJs
ZSgpIHNob3VsZCB3b3JrPwpXZWxsLCB0aGVuIEkgdXNlIG90aGVyIHdheXMgdG8gd29ya2Fyb3Vu
ZCBtb2R1bGUgcHJvYmxlbXMuCgotLSAK5byg5pm0CueRnuiKr+W+rueUteWtkOiCoeS7veaciemZ
kOWFrOWPuApSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sTHRkCuWcsOWdgO+8muemj+W7uuecgeem
j+W3nuW4gumTnOebmOi3r+i9r+S7tuWkp+mBkzg55Y+36L2v5Lu25ZutQeWMujIx5Y+35qW8CkFk
ZDpOby4yMSBCdWlsZGluZywgQSBEaXN0cmljdCwgTm8uODkgU29mdHdhcmUgQm91bGV2YXJkIEZ1
emhvdSwgRnVqaWFuIDM1MDAwMywgUC5SLkNoaW5hClRlbDorODYtMDU5MS04Mzk5MTkwNi04NjAx
CumCrue8lu+8mjM1MDAwMwpFLW1haWw6ZWxhaW5lLnpoYW5nQHJvY2stY2hpcHMuY29tCioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioK5L+d5a+G5o+Q56S677ya5pys6YKu5Lu25Y+K5YW26ZmE5Lu25ZCr5pyJ
5py65a+G5L+h5oGv77yM5LuF5Y+R6YCB57uZ5pys6YKu5Lu25omA5oyH54m55a6a5pS25Lu25Lq6
44CC6Iul6Z2e6K+l54m55a6a5pS25Lu25Lq677yM6K+35Yu/5aSN5Yi244CB5L2/55So5oiW5oqr
6Zyy5pys6YKu5Lu255qE5Lu75L2V5YaF5a6544CC6Iul6K+v5pS25pys6YKu5Lu277yM6K+35LuO
57O757uf5Lit5rC45LmF5oCn5Yig6Zmk5pys6YKu5Lu25Y+K5omA5pyJ6ZmE5Lu277yM5bm25Lul
5Zue5aSN6YKu5Lu25oiW5YW25LuW5pa55byP5Y2z5Yi75ZGK55+l5Y+R5Lu25Lq644CC56aP5bee
55Ge6Iqv5b6u55S15a2Q5pyJ6ZmQ5YWs5Y+45oul5pyJ5pys6YKu5Lu25L+h5oGv55qE6JGX5L2c
5p2D5Y+K6Kej6YeK5p2D77yM56aB5q2i5Lu75L2V5pyq57uP5o6I5p2D6K645Y+v55qE5L615p2D
6KGM5Li644CCCgpJTVBPUlRBTlQgTk9USUNFOiBUaGlzIGVtYWlsIGlzIGZyb20gRnV6aG91IFJv
Y2tjaGlwIEVsZWN0cm9uaWNzIENvLiwgTHRkIC5UaGUgY29udGVudHMgb2YgdGhpcyBlbWFpbCBh
bmQgYW55IGF0dGFjaG1lbnRzIG1heSBjb250YWluIGluZm9ybWF0aW9uIHRoYXQgaXMgcHJpdmls
ZWdlZCwgY29uZmlkZW50aWFsIGFuZC9vciBleGVtcHQgZnJvbSBkaXNjbG9zdXJlIHVuZGVyIGFw
cGxpY2FibGUgbGF3IGFuZCByZWxldmFudCBOREEuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRl
ZCByZWNpcGllbnQsIHlvdSBhcmUgaGVyZWJ5IG5vdGlmaWVkIHRoYXQgYW55IGRpc2Nsb3N1cmUs
IGNvcHlpbmcsIGRpc3RyaWJ1dGlvbiwgb3IgdXNlIG9mIHRoZSBpbmZvcm1hdGlvbiBpcyBTVFJJ
Q1RMWSBQUk9ISUJJVEVELiBQbGVhc2UgaW1tZWRpYXRlbHkgY29udGFjdCB0aGUgc2VuZGVyIGFz
IHNvb24gYXMgcG9zc2libGUgYW5kIGRlc3Ryb3kgdGhlIG1hdGVyaWFsIGluIGl0cyBlbnRpcmV0
eSBpbiBhbnkgZm9ybWF0LiBUaGFuayB5b3UuCgoqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
