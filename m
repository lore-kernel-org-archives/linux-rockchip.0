Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82720C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 10:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2fYaRd5iU+6w3kyBdhyQq0/YwN2mkAMK1MUmHPs63s=; b=rKalExKmOkdxz5
	E8jgpBKHML1EX5iM9+T77pZOvajaYfSM4OGLWBKuhdZADit0Ry1UiHhG0bxupMteQXTc0HN7n6cPw
	ogDKC3BjgAGXjzXfFCzWMFK3AIfbA9O/GRn7m9bkHYQk3CTrPeXwmHhxDu8FAekXEnEwOAe+8HA91
	1nRSnY8Ku7K2imiCBni5BEBEaujXdhsMjD8qEDtpOBNs9CJc3NsYkPSWb7+Gbcx1k/R9BICX7xd+1
	oQtGEZOlF6YzHURS1jGO9hddyojB1Xxr25SaIsGkW1nM8jJkPQseH3Z5pSmZqlQ84b+ZUS9QN6OB5
	qFduZjdaZYo0AGARAsmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11vX-005rX5-2a;
	Thu, 09 Nov 2023 10:06:19 +0000
Received: from mail-m49201.qiye.163.com ([45.254.49.201])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11vU-005rVT-2L;
	Thu, 09 Nov 2023 10:06:18 +0000
DKIM-Signature: a=rsa-sha256;
	b=PobSEOGIS9lPsDVpgl5L4VgjJF2twsVrPB+k5DLkehUUM/5a/qCNjTn7sWoj7AcO3H1MUOmDdp+TpajML6W3MakeMhxjsEaVYsm8C98KgvddQUy9Yy3q4roYsl45UUUBZMQlAU/u83VMXyNkaOrey4K7Kkw1rKRCCpXIMDmO6zs=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=+o1lwrhYekZaebnXtEiZSTT6cTUQnls9uE9T48+orDQ=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.49] (unknown [58.22.7.114])
	by mail-m11877.qiye.163.com (Hmail) with ESMTPA id 39D6A4002B7;
	Thu,  9 Nov 2023 18:05:52 +0800 (CST)
Message-ID: <f013df81-670e-37c4-c1a7-e1302352ca20@rock-chips.com>
Date: Thu, 9 Nov 2023 18:05:51 +0800
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
From: zhangqing <zhangqing@rock-chips.com>
In-Reply-To: <dee8031f-d739-442c-988c-3df61d92c0d3@linaro.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx1MT1YfSE5IShpPGRoaHk9VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5MSUpJVUpLS1VKQl
	kG
X-HM-Tid: 0a8bb38b9aa12eb3kusn39d6a4002b7
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MAg6MDo*Gjw4Fw4JKU8pFClP
	Mx4aC0JVSlVKTUJCTklPSE5ISEJOVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU1ITEI3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_020617_442058_BDC9B33D 
X-CRM114-Status: GOOD (  13.86  )
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

CuWcqCAyMDIzLzExLzkgMTc6MjEsIEtyenlzenRvZiBLb3psb3dza2kg5YaZ6YGTOgo+IE9uIDA5
LzExLzIwMjMgMDk6MDYsIHpoYW5ncWluZyB3cm90ZToKPj4g5ZyoIDIwMjMvMTEvOSAxNToyOSwg
Q29ub3IgRG9vbGV5IOWGmemBkzoKPj4+IE9uIFRodSwgTm92IDA5LCAyMDIzIGF0IDAyOjI3OjM4
UE0gKzA4MDAsIHpoYW5ncWluZyB3cm90ZToKPj4+PiBIaToKPj4+Pgo+Pj4+IOWcqCAyMDIzLzEx
LzggMjA6MDEsIENvbm9yIERvb2xleSDlhpnpgZM6Cj4+Pj4+IE9uIFdlZCwgTm92IDA4LCAyMDIz
IGF0IDAyOjE4OjIxUE0gKzA4MDAsIEVsYWluZSBaaGFuZyB3cm90ZToKPj4+Pj4+IGV4cG9ydCBQ
Q0xLX1ZPMUdSRiBmb3IgRFQuCj4+Pj4+Pgo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogRWxhaW5lIFpo
YW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+Cj4+Pj4+PiAtLS0KPj4+Pj4+ICAgICBpbmNs
dWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU4OC1jcnUuaCB8IDMgKystCj4+Pj4+
PiAgICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4+
Pj4KPj4+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlw
LHJrMzU4OC1jcnUuaCBiL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTg4
LWNydS5oCj4+Pj4+PiBpbmRleCA1NzkwYjEzOTEyMDEuLjUwYmE3Mjk4MDE5MCAxMDA2NDQKPj4+
Pj4+IC0tLSBhL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTg4LWNydS5o
Cj4+Pj4+PiArKysgYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU4OC1j
cnUuaAo+Pj4+Pj4gQEAgLTczMyw4ICs3MzMsOSBAQAo+Pj4+Pj4gICAgICNkZWZpbmUgQUNMS19B
VjFfUFJFCQkJNzE4Cj4+Pj4+PiAgICAgI2RlZmluZSBQQ0xLX0FWMV9QUkUJCQk3MTkKPj4+Pj4+
ICAgICAjZGVmaW5lIEhDTEtfU0RJT19QUkUJCQk3MjAKPj4+Pj4+ICsjZGVmaW5lIFBDTEtfVk8x
R1JGCQkJNzIxCj4+Pj4+PiAtI2RlZmluZSBDTEtfTlJfQ0xLUwkJCShIQ0xLX1NESU9fUFJFICsg
MSkKPj4+Pj4+ICsjZGVmaW5lIENMS19OUl9DTEtTCQkJKFBDTEtfVk8xR1JGICsgMSkKPj4+Pj4g
VGhpcyBkZWZpbml0aW9uIGlzIHBhcnQgb2YgdGhlIEFCSSwgaWYgaXQgaXMgc2FmZSB0byBjaGFu
Z2UgaXQsIHRoZW4gaXQKPj4+Pj4gaXMgc2FmZSB0byBkZWxldGUgaXQuCj4+Pj4gVGhlIG5ldyBJ
RCBpcyB0byBzb2x2ZSB0aGUgbml1IGNsb2NrIGRlcGVuZGVuY3kgcHJvYmxlbShVc2VkIGluIFBB
VENIIFY1Cj4+Pj4gNC80KS5UaGlzIG5ldyBJRCB3aWxsIGFsc28gYmUgdXNlZCBpbiBEVFMgaW4g
dGhlIGZ1dHVyZS4KPj4+Pgo+Pj4+IENMS19OUl9DTEtTIHJlcHJlc2VudHMgdGhlIG51bWJlciBv
ZiBjbG9ja3MgdXNlZCBieSB0aGUKPj4+PiBkcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmt4eHgu
Yy4gSXQgaXMgc2FmZSB0byBtb2RpZnkgaXQsIGJ1dCBjYW5ub3QgZGVsZXRlCj4+Pj4gaXQuCj4+
PiBUaGVuIGRlbGV0ZSBpdCBmcm9tIHRoZSBoZWFkZXIgYW5kIG1vdmUgaXQgdG8gY2xrLXJreHh4
LmMKPj4gSSBkb24ndCB0aGluayBpdCdzIG1vcmUgYXBwcm9wcmlhdGUgdG8gbW92ZSB0byBjbGst
cmt4eHguYy4KPj4gQmVjYXVzZSBpZiB0aGVyZSBhcmUgbmV3IHJlcXVpcmVtZW50cyBsYXRlciwg
YW5kIGFkZCBuZXcgY2xrIGlkLCBpdCBpcwo+PiBub3QgaW4gdGhlIHNhbWUgZmlsZSwgbWF5YmUg
Zm9yZ2V0IHRvIG1vZGlmeSBDTEtfTlJfQ0xLUy4KPiBUaGVuIHlvdSBhcmUgbm90IGFsbG93ZWQg
dG8gY2hhbmdlIGl0LiBJdCdzIHBhcnQgb2YgQUJJLgoKSWYgeW91IGp1c3QgZG9uJ3Qgd2FudCBt
ZSB0byBtb2RpZnkgQ0xLX05SX0NMS1MsIGNhbiBJIHVzZSBhbiB1bnVzZWQgSUQsIApsaWtlIFtQ
QVRDSCBWNCAzLzRdOgoKLSNkZWZpbmUgTUJJU1RfTUNMS19QRE0xwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAyNAorI2RlZmluZSBQQ0xLX1ZPMUdSRsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDI0Cgo+Cj4gQmVzdCByZWdhcmRzLAo+
IEtyenlzenRvZgo+Ci0tIArlvKDmmbQK55Ge6Iqv5b6u55S15a2Q6IKh5Lu95pyJ6ZmQ5YWs5Y+4
ClJvY2tjaGlwIEVsZWN0cm9uaWNzIENvLixMdGQK5Zyw5Z2A77ya56aP5bu655yB56aP5bee5biC
6ZOc55uY6Lev6L2v5Lu25aSn6YGTODnlj7fova/ku7blm61B5Yy6MjHlj7fmpbwKQWRkOk5vLjIx
IEJ1aWxkaW5nLCBBIERpc3RyaWN0LCBOby44OSBTb2Z0d2FyZSBCb3VsZXZhcmQgRnV6aG91LCBG
dWppYW4gMzUwMDAzLCBQLlIuQ2hpbmEKVGVsOis4Ni0wNTkxLTgzOTkxOTA2LTg2MDEK6YKu57yW
77yaMzUwMDAzCkUtbWFpbDplbGFpbmUuemhhbmdAcm9jay1jaGlwcy5jb20KKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKgrkv53lr4bmj5DnpLrvvJrmnKzpgq7ku7blj4rlhbbpmYTku7blkKvmnInmnLrlr4bk
v6Hmga/vvIzku4Xlj5HpgIHnu5nmnKzpgq7ku7bmiYDmjIfnibnlrprmlLbku7bkurrjgILoi6Xp
nZ7or6XnibnlrprmlLbku7bkurrvvIzor7fli7/lpI3liLbjgIHkvb/nlKjmiJbmiqvpnLLmnKzp
gq7ku7bnmoTku7vkvZXlhoXlrrnjgILoi6Xor6/mlLbmnKzpgq7ku7bvvIzor7fku47ns7vnu5/k
uK3msLjkuYXmgKfliKDpmaTmnKzpgq7ku7blj4rmiYDmnInpmYTku7bvvIzlubbku6Xlm57lpI3p
gq7ku7bmiJblhbbku5bmlrnlvI/ljbPliLvlkYrnn6Xlj5Hku7bkurrjgILnpo/lt57nkZ7oiq/l
vq7nlLXlrZDmnInpmZDlhazlj7jmi6XmnInmnKzpgq7ku7bkv6Hmga/nmoTokZfkvZzmnYPlj4ro
p6Pph4rmnYPvvIznpoHmraLku7vkvZXmnKrnu4/mjojmnYPorrjlj6/nmoTkvrXmnYPooYzkuLrj
gIIKCklNUE9SVEFOVCBOT1RJQ0U6IFRoaXMgZW1haWwgaXMgZnJvbSBGdXpob3UgUm9ja2NoaXAg
RWxlY3Ryb25pY3MgQ28uLCBMdGQgLlRoZSBjb250ZW50cyBvZiB0aGlzIGVtYWlsIGFuZCBhbnkg
YXR0YWNobWVudHMgbWF5IGNvbnRhaW4gaW5mb3JtYXRpb24gdGhhdCBpcyBwcml2aWxlZ2VkLCBj
b25maWRlbnRpYWwgYW5kL29yIGV4ZW1wdCBmcm9tIGRpc2Nsb3N1cmUgdW5kZXIgYXBwbGljYWJs
ZSBsYXcgYW5kIHJlbGV2YW50IE5EQS4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lw
aWVudCwgeW91IGFyZSBoZXJlYnkgbm90aWZpZWQgdGhhdCBhbnkgZGlzY2xvc3VyZSwgY29weWlu
ZywgZGlzdHJpYnV0aW9uLCBvciB1c2Ugb2YgdGhlIGluZm9ybWF0aW9uIGlzIFNUUklDVExZIFBS
T0hJQklURUQuIFBsZWFzZSBpbW1lZGlhdGVseSBjb250YWN0IHRoZSBzZW5kZXIgYXMgc29vbiBh
cyBwb3NzaWJsZSBhbmQgZGVzdHJveSB0aGUgbWF0ZXJpYWwgaW4gaXRzIGVudGlyZXR5IGluIGFu
eSBmb3JtYXQuIFRoYW5rIHlvdS4KCioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
