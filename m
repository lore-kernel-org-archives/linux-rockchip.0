Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 029EDC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Nov 2023 01:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78On0Ry99t3km7T/Ax/P5VEVvkX+2D2joYYQTQLhrBU=; b=ABKydxeWs//zcz
	8RxFOYdMHQGXSb5MhMmsI8zUEiLputJqh5+jolrFMuEVcftCGPpmpjNZ3jotvPbOh3kAtPwu82nrE
	Snf/lIcZ5ujEAdXIDaFxFET7TGJuYEboW+NjBpmQd8+0wVuCUt1ewU8VzBpuZZQk1t/ivT8lfxqgp
	xf6jAOChV2s3ZeGu3YKdroFfhQbSH1cSqY/C0OuHlKZcOI0ywH9OgABRhjFX7SJPZsNzg8qtpA3qM
	ixgh3XhAmqNvgUqRTs85Eps++NTe4YxxwgzMxo9wuqA+ZTc+AtHMcx70mjd4jLRlT2nccJ78Rn40R
	D9BnyyZ4JqbZ+X3B1Dqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1GM0-007alL-1D;
	Fri, 10 Nov 2023 01:30:36 +0000
Received: from mail-m1287.netease.com ([103.209.128.7])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1GLx-007ahf-2O;
	Fri, 10 Nov 2023 01:30:35 +0000
DKIM-Signature: a=rsa-sha256;
	b=Rdm9QD4yO6LRbZBNE1A/b+RLokMwSHSQFNyKUAJYTpR4K9xUU8zLPUZ5xR2J69Hxh5A0rXeerIurDn+8czNto4RCBLRqAHgX00bVVDTTD9FXb6CpWOWOHChw2uUyUEgO1exOq+Sf/pstX5QlCHztlp7pu5XOyhEmIdKHwx5I/FI=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=P0GaHyRA5mwU4r4OqdCotWnXqFS5RSLvYdfU/GQ9YsU=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.49] (unknown [58.22.7.114])
	by mail-m11877.qiye.163.com (Hmail) with ESMTPA id C3D5D4001CD;
	Fri, 10 Nov 2023 09:23:39 +0800 (CST)
Message-ID: <53059eca-5c55-6dde-6246-40ed9f2dca91@rock-chips.com>
Date: Fri, 10 Nov 2023 09:23:39 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 3/4] dt-bindings: clock: rk3588: export PCLK_VO1GRF clk
 id
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Conor Dooley <conor.dooley@microchip.com>
Cc: Conor Dooley <conor@kernel.org>, mturquette@baylibre.com,
 sboyd@kernel.org, kever.yang@rock-chips.com, heiko@sntech.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
 andy.yan@rock-chips.com, Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20231108061822.4871-1-zhangqing@rock-chips.com>
 <20231108061822.4871-4-zhangqing@rock-chips.com>
 <20231108-donation-uncertain-c4d0f560c420@spud>
 <2e520a06-0ff1-76ef-2a72-ab6663738b45@rock-chips.com>
 <20231109-send-pushchair-45b37551102a@wendy>
 <a11c847c-4f95-ea7b-3497-6ada0586c486@rock-chips.com>
 <dee8031f-d739-442c-988c-3df61d92c0d3@linaro.org>
 <f013df81-670e-37c4-c1a7-e1302352ca20@rock-chips.com>
 <f58c8f3f-7b34-47e7-a33a-bddb6106fec7@linaro.org>
From: zhangqing <zhangqing@rock-chips.com>
In-Reply-To: <f58c8f3f-7b34-47e7-a33a-bddb6106fec7@linaro.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkxMH1ZOHRhLTRgYHxgaQhpVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5MSUpJVUpLS1VKQl
	kG
X-HM-Tid: 0a8bb6d3dea32eb3kusnc3d5d4001cd
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PzY6Qww6Czw0IQ01E0IcMxxC
	GCJPCT1VSlVKTUJCTkxCT0lKS0tNVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUxLTkI3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_173033_959297_28BDD59F 
X-CRM114-Status: GOOD (  17.49  )
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

CuWcqCAyMDIzLzExLzkgMTg6MjQsIEtyenlzenRvZiBLb3psb3dza2kg5YaZ6YGTOgo+IE9uIDA5
LzExLzIwMjMgMTE6MDUsIHpoYW5ncWluZyB3cm90ZToKPj4g5ZyoIDIwMjMvMTEvOSAxNzoyMSwg
S3J6eXN6dG9mIEtvemxvd3NraSDlhpnpgZM6Cj4+PiBPbiAwOS8xMS8yMDIzIDA5OjA2LCB6aGFu
Z3Fpbmcgd3JvdGU6Cj4+Pj4g5ZyoIDIwMjMvMTEvOSAxNToyOSwgQ29ub3IgRG9vbGV5IOWGmemB
kzoKPj4+Pj4gT24gVGh1LCBOb3YgMDksIDIwMjMgYXQgMDI6Mjc6MzhQTSArMDgwMCwgemhhbmdx
aW5nIHdyb3RlOgo+Pj4+Pj4gSGk6Cj4+Pj4+Pgo+Pj4+Pj4g5ZyoIDIwMjMvMTEvOCAyMDowMSwg
Q29ub3IgRG9vbGV5IOWGmemBkzoKPj4+Pj4+PiBPbiBXZWQsIE5vdiAwOCwgMjAyMyBhdCAwMjox
ODoyMVBNICswODAwLCBFbGFpbmUgWmhhbmcgd3JvdGU6Cj4+Pj4+Pj4+IGV4cG9ydCBQQ0xLX1ZP
MUdSRiBmb3IgRFQuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEVsYWluZSBaaGFu
ZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgo+Pj4+Pj4+PiAtLS0KPj4+Pj4+Pj4gICAgICBp
bmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU4OC1jcnUuaCB8IDMgKystCj4+
Pj4+Pj4+ICAgICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9j
ay9yb2NrY2hpcCxyazM1ODgtY3J1LmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tj
aGlwLHJrMzU4OC1jcnUuaAo+Pj4+Pj4+PiBpbmRleCA1NzkwYjEzOTEyMDEuLjUwYmE3Mjk4MDE5
MCAxMDA2NDQKPj4+Pj4+Pj4gLS0tIGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hp
cCxyazM1ODgtY3J1LmgKPj4+Pj4+Pj4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9y
b2NrY2hpcCxyazM1ODgtY3J1LmgKPj4+Pj4+Pj4gQEAgLTczMyw4ICs3MzMsOSBAQAo+Pj4+Pj4+
PiAgICAgICNkZWZpbmUgQUNMS19BVjFfUFJFCQkJNzE4Cj4+Pj4+Pj4+ICAgICAgI2RlZmluZSBQ
Q0xLX0FWMV9QUkUJCQk3MTkKPj4+Pj4+Pj4gICAgICAjZGVmaW5lIEhDTEtfU0RJT19QUkUJCQk3
MjAKPj4+Pj4+Pj4gKyNkZWZpbmUgUENMS19WTzFHUkYJCQk3MjEKPj4+Pj4+Pj4gLSNkZWZpbmUg
Q0xLX05SX0NMS1MJCQkoSENMS19TRElPX1BSRSArIDEpCj4+Pj4+Pj4+ICsjZGVmaW5lIENMS19O
Ul9DTEtTCQkJKFBDTEtfVk8xR1JGICsgMSkKPj4+Pj4+PiBUaGlzIGRlZmluaXRpb24gaXMgcGFy
dCBvZiB0aGUgQUJJLCBpZiBpdCBpcyBzYWZlIHRvIGNoYW5nZSBpdCwgdGhlbiBpdAo+Pj4+Pj4+
IGlzIHNhZmUgdG8gZGVsZXRlIGl0Lgo+Pj4+Pj4gVGhlIG5ldyBJRCBpcyB0byBzb2x2ZSB0aGUg
bml1IGNsb2NrIGRlcGVuZGVuY3kgcHJvYmxlbShVc2VkIGluIFBBVENIIFY1Cj4+Pj4+PiA0LzQp
LlRoaXMgbmV3IElEIHdpbGwgYWxzbyBiZSB1c2VkIGluIERUUyBpbiB0aGUgZnV0dXJlLgo+Pj4+
Pj4KPj4+Pj4+IENMS19OUl9DTEtTIHJlcHJlc2VudHMgdGhlIG51bWJlciBvZiBjbG9ja3MgdXNl
ZCBieSB0aGUKPj4+Pj4+IGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1ya3h4eC5jLiBJdCBpcyBz
YWZlIHRvIG1vZGlmeSBpdCwgYnV0IGNhbm5vdCBkZWxldGUKPj4+Pj4+IGl0Lgo+Pj4+PiBUaGVu
IGRlbGV0ZSBpdCBmcm9tIHRoZSBoZWFkZXIgYW5kIG1vdmUgaXQgdG8gY2xrLXJreHh4LmMKPj4+
PiBJIGRvbid0IHRoaW5rIGl0J3MgbW9yZSBhcHByb3ByaWF0ZSB0byBtb3ZlIHRvIGNsay1ya3h4
eC5jLgo+Pj4+IEJlY2F1c2UgaWYgdGhlcmUgYXJlIG5ldyByZXF1aXJlbWVudHMgbGF0ZXIsIGFu
ZCBhZGQgbmV3IGNsayBpZCwgaXQgaXMKPj4+PiBub3QgaW4gdGhlIHNhbWUgZmlsZSwgbWF5YmUg
Zm9yZ2V0IHRvIG1vZGlmeSBDTEtfTlJfQ0xLUy4KPj4+IFRoZW4geW91IGFyZSBub3QgYWxsb3dl
ZCB0byBjaGFuZ2UgaXQuIEl0J3MgcGFydCBvZiBBQkkuCj4+IElmIHlvdSBqdXN0IGRvbid0IHdh
bnQgbWUgdG8gbW9kaWZ5IENMS19OUl9DTEtTLCBjYW4gSSB1c2UgYW4gdW51c2VkIElELAo+PiBs
aWtlIFtQQVRDSCBWNCAzLzRdOgo+Pgo+PiAtI2RlZmluZSBNQklTVF9NQ0xLX1BETTHCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDI0Cj4+ICsjZGVmaW5lIFBD
TEtfVk8xR1JGwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMjQKPiBZb3Ug
Y2Fubm90IGNoYW5nZSB0aGUgQUJJLgo+Cj4gSSBkb24ndCB1bmRlcnN0YW5kIHdoeSBkbyB5b3Ug
aW5zaXN0IG9uIHRoaXMgcGF0aC4gWW91IGdvdCBjbGVhcgo+IGNvbW1lbnRzOiBlaXRoZXIgdGhp
cyBpcyBBQkksIHNvIGl0IGNhbm5vdCBiZSBjaGFuZ2VkLCBvciBpdCBoYXMgdG8gYmUKPiBkcm9w
cGVkLiBZb3Uga25vdyBpbnNpc3Qgb24gc29tZSB0aGlyZCBwYXRoLiBUaGVyZSBpcyBubyBzdWNo
LgpPayAsIEknbGwgZHJvcCB0aGlzIGNoYW5nZSBpbiBQQVRDSCBWNi4KPgo+IEJlc3QgcmVnYXJk
cywKPiBLcnp5c3p0b2YKPgotLSAK5byg5pm0CueRnuiKr+W+rueUteWtkOiCoeS7veaciemZkOWF
rOWPuApSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sTHRkCuWcsOWdgO+8muemj+W7uuecgeemj+W3
nuW4gumTnOebmOi3r+i9r+S7tuWkp+mBkzg55Y+36L2v5Lu25ZutQeWMujIx5Y+35qW8CkFkZDpO
by4yMSBCdWlsZGluZywgQSBEaXN0cmljdCwgTm8uODkgU29mdHdhcmUgQm91bGV2YXJkIEZ1emhv
dSwgRnVqaWFuIDM1MDAwMywgUC5SLkNoaW5hClRlbDorODYtMDU5MS04Mzk5MTkwNi04NjAxCumC
rue8lu+8mjM1MDAwMwpFLW1haWw6ZWxhaW5lLnpoYW5nQHJvY2stY2hpcHMuY29tCioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioK5L+d5a+G5o+Q56S677ya5pys6YKu5Lu25Y+K5YW26ZmE5Lu25ZCr5pyJ5py6
5a+G5L+h5oGv77yM5LuF5Y+R6YCB57uZ5pys6YKu5Lu25omA5oyH54m55a6a5pS25Lu25Lq644CC
6Iul6Z2e6K+l54m55a6a5pS25Lu25Lq677yM6K+35Yu/5aSN5Yi244CB5L2/55So5oiW5oqr6Zyy
5pys6YKu5Lu255qE5Lu75L2V5YaF5a6544CC6Iul6K+v5pS25pys6YKu5Lu277yM6K+35LuO57O7
57uf5Lit5rC45LmF5oCn5Yig6Zmk5pys6YKu5Lu25Y+K5omA5pyJ6ZmE5Lu277yM5bm25Lul5Zue
5aSN6YKu5Lu25oiW5YW25LuW5pa55byP5Y2z5Yi75ZGK55+l5Y+R5Lu25Lq644CC56aP5bee55Ge
6Iqv5b6u55S15a2Q5pyJ6ZmQ5YWs5Y+45oul5pyJ5pys6YKu5Lu25L+h5oGv55qE6JGX5L2c5p2D
5Y+K6Kej6YeK5p2D77yM56aB5q2i5Lu75L2V5pyq57uP5o6I5p2D6K645Y+v55qE5L615p2D6KGM
5Li644CCCgpJTVBPUlRBTlQgTk9USUNFOiBUaGlzIGVtYWlsIGlzIGZyb20gRnV6aG91IFJvY2tj
aGlwIEVsZWN0cm9uaWNzIENvLiwgTHRkIC5UaGUgY29udGVudHMgb2YgdGhpcyBlbWFpbCBhbmQg
YW55IGF0dGFjaG1lbnRzIG1heSBjb250YWluIGluZm9ybWF0aW9uIHRoYXQgaXMgcHJpdmlsZWdl
ZCwgY29uZmlkZW50aWFsIGFuZC9vciBleGVtcHQgZnJvbSBkaXNjbG9zdXJlIHVuZGVyIGFwcGxp
Y2FibGUgbGF3IGFuZCByZWxldmFudCBOREEuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCBy
ZWNpcGllbnQsIHlvdSBhcmUgaGVyZWJ5IG5vdGlmaWVkIHRoYXQgYW55IGRpc2Nsb3N1cmUsIGNv
cHlpbmcsIGRpc3RyaWJ1dGlvbiwgb3IgdXNlIG9mIHRoZSBpbmZvcm1hdGlvbiBpcyBTVFJJQ1RM
WSBQUk9ISUJJVEVELiBQbGVhc2UgaW1tZWRpYXRlbHkgY29udGFjdCB0aGUgc2VuZGVyIGFzIHNv
b24gYXMgcG9zc2libGUgYW5kIGRlc3Ryb3kgdGhlIG1hdGVyaWFsIGluIGl0cyBlbnRpcmV0eSBp
biBhbnkgZm9ybWF0LiBUaGFuayB5b3UuCgoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
