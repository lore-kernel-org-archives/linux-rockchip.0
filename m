Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA58AC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 06:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ay+ci2NjwIOjWefWxhKDEOFlgcNpD6MnIZSiOnVLAE8=; b=Y/2FNueu9OP2P0
	4i93Sbmz5Os5zTx26boz37pPFK74leqrbgg0yQeIzUFzZYtWZ5JmOxpzivO/6qG7sCoa9pqkp08n+
	e6x3JlJmqfwbgCxvq7cihB8aMsIAf6Or7HOd8fnLPDi9wrssyw0G9tsf08dB7rBeePfN77iynzrFd
	ivnsHYuWjGEP3nxow3M/CCztHO/tml3CKfowgfPkHJGss86f8jrMX2I2fLsaWKq0u7GWJWYVcoyZJ
	n4ZVQ097ic0bykCNKLPo0kf7Bkg1o97pVrKHdvsiJzUd+ITZKznFb9tHxMwlnUnbvE+OntV1fbtGN
	oiYi8ux2s0fLhKJW4qNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0ydi-005Qdl-0B;
	Thu, 09 Nov 2023 06:35:42 +0000
Received: from mail-m1285.netease.com ([103.209.128.5])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0ydf-005Qca-0W;
	Thu, 09 Nov 2023 06:35:40 +0000
DKIM-Signature: a=rsa-sha256;
	b=AxRQSJZZFXK672SFkbVflogru0527w2+vt0KE1t5uOP5ctl5FD7nB9ydw+KvQQXN8QPE/SlzmKL0hWE8nsXOmZhwqdm7seJuZ4oMnWmNAjMp0z6mtLMCNHfUxurIphGWgbdH77WgeT2pp3D13SvKJlhmoGZDWysIPcVAo1KzPXc=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=deohqXdOgJExhg0RUCs+1qaAr3+jnJycAP22GqRuu7M=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.49] (unknown [58.22.7.114])
	by mail-m11877.qiye.163.com (Hmail) with ESMTPA id AB04F400396;
	Thu,  9 Nov 2023 14:27:38 +0800 (CST)
Message-ID: <2e520a06-0ff1-76ef-2a72-ab6663738b45@rock-chips.com>
Date: Thu, 9 Nov 2023 14:27:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 3/4] dt-bindings: clock: rk3588: export PCLK_VO1GRF clk
 id
To: Conor Dooley <conor@kernel.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, kever.yang@rock-chips.com,
 heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 huangtao@rock-chips.com, andy.yan@rock-chips.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20231108061822.4871-1-zhangqing@rock-chips.com>
 <20231108061822.4871-4-zhangqing@rock-chips.com>
 <20231108-donation-uncertain-c4d0f560c420@spud>
From: zhangqing <zhangqing@rock-chips.com>
In-Reply-To: <20231108-donation-uncertain-c4d0f560c420@spud>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0JMS1YaQ00aTUJNHUhCSxhVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5DTUtIVUpLS1VKQl
	kG
X-HM-Tid: 0a8bb2c3d02d2eb3kusnab04f400396
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OVE6NSo*AjwyVg8cPkMyGTAK
	GA0aC0pVSlVKTUJCTkpKSU5CTENIVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU9CSkk3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231108_223539_381377_1F606C94 
X-CRM114-Status: GOOD (  10.59  )
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

SGk6CgrlnKggMjAyMy8xMS84IDIwOjAxLCBDb25vciBEb29sZXkg5YaZ6YGTOgo+IE9uIFdlZCwg
Tm92IDA4LCAyMDIzIGF0IDAyOjE4OjIxUE0gKzA4MDAsIEVsYWluZSBaaGFuZyB3cm90ZToKPj4g
ZXhwb3J0IFBDTEtfVk8xR1JGIGZvciBEVC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogRWxhaW5lIFpo
YW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+PiAgIGluY2x1ZGUvZHQtYmlu
ZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTg4LWNydS5oIHwgMyArKy0KPj4gICAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9p
bmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU4OC1jcnUuaCBiL2luY2x1ZGUv
ZHQtYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTg4LWNydS5oCj4+IGluZGV4IDU3OTBiMTM5
MTIwMS4uNTBiYTcyOTgwMTkwIDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Ns
b2NrL3JvY2tjaGlwLHJrMzU4OC1jcnUuaAo+PiArKysgYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Ns
b2NrL3JvY2tjaGlwLHJrMzU4OC1jcnUuaAo+PiBAQCAtNzMzLDggKzczMyw5IEBACj4+ICAgI2Rl
ZmluZSBBQ0xLX0FWMV9QUkUJCQk3MTgKPj4gICAjZGVmaW5lIFBDTEtfQVYxX1BSRQkJCTcxOQo+
PiAgICNkZWZpbmUgSENMS19TRElPX1BSRQkJCTcyMAo+PiArI2RlZmluZSBQQ0xLX1ZPMUdSRgkJ
CTcyMQo+PiAgIAo+PiAtI2RlZmluZSBDTEtfTlJfQ0xLUwkJCShIQ0xLX1NESU9fUFJFICsgMSkK
Pj4gKyNkZWZpbmUgQ0xLX05SX0NMS1MJCQkoUENMS19WTzFHUkYgKyAxKQo+IFRoaXMgZGVmaW5p
dGlvbiBpcyBwYXJ0IG9mIHRoZSBBQkksIGlmIGl0IGlzIHNhZmUgdG8gY2hhbmdlIGl0LCB0aGVu
IGl0Cj4gaXMgc2FmZSB0byBkZWxldGUgaXQuClRoZSBuZXcgSUQgaXMgdG8gc29sdmUgdGhlIG5p
dSBjbG9jayBkZXBlbmRlbmN5IHByb2JsZW0oVXNlZCBpbiBQQVRDSCBWNSAKNC80KS5UaGlzIG5l
dyBJRCB3aWxsIGFsc28gYmUgdXNlZCBpbiBEVFMgaW4gdGhlIGZ1dHVyZS4KCkNMS19OUl9DTEtT
IHJlcHJlc2VudHMgdGhlIG51bWJlciBvZiBjbG9ja3MgdXNlZCBieSB0aGUgCmRyaXZlcnMvY2xr
L3JvY2tjaGlwL2Nsay1ya3h4eC5jLiBJdCBpcyBzYWZlIHRvIG1vZGlmeSBpdCwgYnV0IGNhbm5v
dCAKZGVsZXRlIGl0LgoKPgo+PiAgIAo+PiAgIC8qIHNjbWktY2xvY2tzIGluZGljZXMgKi8KPj4g
ICAKPj4gLS0gCj4+IDIuMTcuMQo+Pgo+PgotLSAK5byg5pm0CueRnuiKr+W+rueUteWtkOiCoeS7
veaciemZkOWFrOWPuApSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sTHRkCuWcsOWdgO+8muemj+W7
uuecgeemj+W3nuW4gumTnOebmOi3r+i9r+S7tuWkp+mBkzg55Y+36L2v5Lu25ZutQeWMujIx5Y+3
5qW8CkFkZDpOby4yMSBCdWlsZGluZywgQSBEaXN0cmljdCwgTm8uODkgU29mdHdhcmUgQm91bGV2
YXJkIEZ1emhvdSwgRnVqaWFuIDM1MDAwMywgUC5SLkNoaW5hClRlbDorODYtMDU5MS04Mzk5MTkw
Ni04NjAxCumCrue8lu+8mjM1MDAwMwpFLW1haWw6ZWxhaW5lLnpoYW5nQHJvY2stY2hpcHMuY29t
CioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioK5L+d5a+G5o+Q56S677ya5pys6YKu5Lu25Y+K5YW26ZmE5Lu2
5ZCr5pyJ5py65a+G5L+h5oGv77yM5LuF5Y+R6YCB57uZ5pys6YKu5Lu25omA5oyH54m55a6a5pS2
5Lu25Lq644CC6Iul6Z2e6K+l54m55a6a5pS25Lu25Lq677yM6K+35Yu/5aSN5Yi244CB5L2/55So
5oiW5oqr6Zyy5pys6YKu5Lu255qE5Lu75L2V5YaF5a6544CC6Iul6K+v5pS25pys6YKu5Lu277yM
6K+35LuO57O757uf5Lit5rC45LmF5oCn5Yig6Zmk5pys6YKu5Lu25Y+K5omA5pyJ6ZmE5Lu277yM
5bm25Lul5Zue5aSN6YKu5Lu25oiW5YW25LuW5pa55byP5Y2z5Yi75ZGK55+l5Y+R5Lu25Lq644CC
56aP5bee55Ge6Iqv5b6u55S15a2Q5pyJ6ZmQ5YWs5Y+45oul5pyJ5pys6YKu5Lu25L+h5oGv55qE
6JGX5L2c5p2D5Y+K6Kej6YeK5p2D77yM56aB5q2i5Lu75L2V5pyq57uP5o6I5p2D6K645Y+v55qE
5L615p2D6KGM5Li644CCCgpJTVBPUlRBTlQgTk9USUNFOiBUaGlzIGVtYWlsIGlzIGZyb20gRnV6
aG91IFJvY2tjaGlwIEVsZWN0cm9uaWNzIENvLiwgTHRkIC5UaGUgY29udGVudHMgb2YgdGhpcyBl
bWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIG1heSBjb250YWluIGluZm9ybWF0aW9uIHRoYXQgaXMg
cHJpdmlsZWdlZCwgY29uZmlkZW50aWFsIGFuZC9vciBleGVtcHQgZnJvbSBkaXNjbG9zdXJlIHVu
ZGVyIGFwcGxpY2FibGUgbGF3IGFuZCByZWxldmFudCBOREEuIElmIHlvdSBhcmUgbm90IHRoZSBp
bnRlbmRlZCByZWNpcGllbnQsIHlvdSBhcmUgaGVyZWJ5IG5vdGlmaWVkIHRoYXQgYW55IGRpc2Ns
b3N1cmUsIGNvcHlpbmcsIGRpc3RyaWJ1dGlvbiwgb3IgdXNlIG9mIHRoZSBpbmZvcm1hdGlvbiBp
cyBTVFJJQ1RMWSBQUk9ISUJJVEVELiBQbGVhc2UgaW1tZWRpYXRlbHkgY29udGFjdCB0aGUgc2Vu
ZGVyIGFzIHNvb24gYXMgcG9zc2libGUgYW5kIGRlc3Ryb3kgdGhlIG1hdGVyaWFsIGluIGl0cyBl
bnRpcmV0eSBpbiBhbnkgZm9ybWF0LiBUaGFuayB5b3UuCgoqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
