Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C26CE9D828
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Apr 2026 23:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ad6Ydt0jyylrU526Wve38+0EifPPcVxf1RICMZ+BN6s=; b=SJ+Kw2KFE2Q1V7
	DFMTJXXoTMFTb/5ag7Hc+ehxYWfWV9Ap6QikzAUxrVn45s7O5/SC5pfPL+92dXbuZtqRq3Ao0T4np
	8WS8RdTYfQ6lGKcr4RwvzBbBIfpVbv3ckMQlSzfWYMjnq0qtmMQY5D5djaJSS4Rqe2ry0Ldi/4Xks
	q0kevxpQiH99lbse1p/aPVbgxQl0+lALWRHshlTN6ehpIBueaFS861GGRJDRXskKOKH+oLD77DeHi
	X95XfW8m86UzJ7+fOZ/EK2fflIDJLo5dH7JcHuPmJTwpFxTsNxU01v2YioUxjjGupZO+0vjqHb1yV
	CGObmIxUpOXRdaLt39PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9Wue-00000004Ydo-15N7;
	Sun, 05 Apr 2026 23:29:52 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9Wub-00000004Yd6-2ccl
	for linux-rockchip@lists.infradead.org;
	Sun, 05 Apr 2026 23:29:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: Cc:
 References: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1775431788;
 bh=j+3GpbRroDEsaYbjyzLr+o1XWCEL4kj4mK45WwiU6FI=;
 b=TywV+CuWptsi73ktFARMKnd84mWxKHO5Z4VIM2bVqvzUqPE+hvyLA3hgeUMbtB/LOpgxhHsJT
 sFpJ+4efxF3OZdRW/vvwzbLnKavOh20hz2jciI+xMgFrdc0xxNTNJQkl+Yo1DS/yQky8tK5VkK0
 TKqJQ3fAnJcmwl3um/ErF4zL5S9uwvDgTx/+fwgblnNDAXPf+OKG8xbQimDF44GPsinzWqoSaaJ
 yWOcW3Mg53RnDjfecoFlrFzDBalUVh/jA8SRff/aSPTGyBvfawstX9h1awoWBP/LD0xxCRdsqI1
 Vas7ZxiTRrE9bsLaVriuZF3e6zzw+kCLSquF5WBZuDzQ==
X-Forward-Email-ID: 69d2f061e23c9321167a0c52
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.6.68
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <693c6c27-6ff2-4ab0-994f-3821e5ffcec8@kwiboo.se>
Date: Mon, 6 Apr 2026 01:29:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] pmdomain/rockchip: skip QoS operations for idle-only
 domains
To: Shawn Lin <shawn.lin@rock-chips.com>, Daniel Bozeman <daniel@orb.net>,
 "finley.xiao@rock-chips.com" <finley.xiao@rock-chips.com>
References: <20260331180223.1682283-1-daniel@orb.net>
 <5c8732a3-6cc9-5d02-f56b-fc7ba29c7ce0@rock-chips.com>
 <fbf16b5a-1565-39c9-0d92-33a7a577212f@rock-chips.com>
 <adAwtiaU-32qjRRE@claude-dev>
 <f1b9a97a-f1f9-0757-5dc7-33960318be61@rock-chips.com>
Content-Language: en-US
Cc: "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <f1b9a97a-f1f9-0757-5dc7-33960318be61@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260405_162949_972784_0AA0423D 
X-CRM114-Status: GOOD (  22.94  )
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

SGksCgpPbiA0LzQvMjAyNiAxOjQwIFBNLCBTaGF3biBMaW4gd3JvdGU6Cj4gKyBKb25hcwo+IAo+
IOWcqCAyMDI2LzA0LzA0IOaYn+acn+WFrSA1OjI3LCBEYW5pZWwgQm96ZW1hbiDlhpnpgZM6Cj4+
IEkgcmFuIGJvdGggdGVzdHMgeW91IHJlcXVlc3RlZDoKPj4KPj4gVGVzdCAxOiBBZGRlZCBwcl9l
cnIgdG8gcm9ja2NoaXBfcGRfcG93ZXJfb24vb2ZmIHRvIGlkZW50aWZ5Cj4+IHRoZSBjcmFzaGlu
ZyBkb21haW4uIFdpdGggcGF0Y2ggMiBvbmx5IChza2lwIEVQUk9CRV9ERUZFUiksCj4+IHRoZSBj
cmFzaCBvY2N1cnMgb24gUERfVk86Cj4gCj4gVGhhbmtzIGZvciBmaW5nIHRoZSBQRF9WTywgYW5k
IEknbSBzdGlsbCByZXF1ZXN0aW5nIG1vcmUgZG9jcyBpbnRlcm5hbGx5Cj4gdG8gY2hlY2sgd2hh
dCdzIGdvaW5nIG9uLiBJIHNlZSB0aGVyZSBhcmUgc2V2ZXJhbCBxb3Mgbm9kZXMgdW5kZXIgUERf
Vk8sCj4gYnV0IEknbSBub3Qgc3VyZSBpZiB0aGV5IGFsbCBiZWxvbmcgdG8gUERfVk8gYW5kIGV2
ZW4gbm90IHN1cmUgaWYgdGhlaXIKPiByZWdpc3RlcnMgYXJlIGRlZmluZSBjb3JyZWN0bHkuCj4g
Cj4gUGVyaGFwcywgY291bGQgeW91IGhlbHAgZGlnIG1vcmUgYnkgcmVtb3ZpbmcgdGhlIHFvcyBv
bmUgYnkgb25lIGZyb20KPiBQRF9WTyB0byBuYXJyb3cgZG93biB0aGUgYnJva2VuIHFvcz8KPiAK
PiBJIGFsc28gbG9vcCBpbiBKb25hcyB3aG8gc3VibWl0ZWQgdGhlIGNvZGUsIHRvIGhhdmUgYSBs
b29rLihJJ20gIGFsc28KPiBzdXJwcmlzZWQgdG8gc2VlIHRoZXJlIGFyZW4ndCBhbnkgUW9zIG5v
ZGVzIHVuZGVyIFBEX1ZPIGluIHZlbmRvcgo+IGtlcm5lbCBmb3IgcmVmZXJlbmNlLCBidXQgdXBz
dHJlYW0gY29kZSBoYXMuLi4pCgpVcHN0cmVhbSBpbmNsdWRlZCBhbGwgUW9TIHRoYXQgc2VlbWVk
IHRvIGJlIHJlbGF0ZWQgdG8gZWFjaCBwb3dlciBkb21haW5zCmJhc2VkIG9uIGUuZy4gdmVuZG9y
IERUcywgY2xvY2sgZHJpdmVyIGFuZCBvdGhlciBoaW50cy4KClZlbmRvciBrZXJuZWwgbW9zdGx5
IHNlZW1lZCB0byB0YWtlIHRoZSBlYXN5IHdheSBvdXQgYW5kIGZsYWdnZWQgYWxsCnJrMzUyOCBw
b3dlciBkb21haW5zIGFzIGFsd2F5cyBvbiBvciBzaW1pbGFyLCBpZiBJIHJlY2FsbCBjb3JyZWN0
bHkuCgpGb3IgdXBzdHJlYW0gd2UgaGF2ZSBpbnN0ZWFkIHRyaWVkIHRvIGRlc2NyaWJlIGFsbCBw
b3dlciBkb21haW5zIHdpdGhvdXQKYW55IGFsd2F5cyBvbiBmbGFnIGFuZCBpbnN0ZWFkIGVuc3Vy
ZSBhbGwgZGV2aWNlcyBiZWxvbmcgdG8gYSBwb3dlcgpkb21haW4uCgpJIGRvIG5vdCBoYXZlIGFj
Y2VzcyB0byBhbnkgcmszNTI4IFRSTSBvciBzaW1pbGFyLCBzbyBJIHdvdWxkIG5vdCBiZQpzdXJw
cmlzZWQgaWYgdGhlcmUgY291bGQgYmUgc29tZSB3cm9uZyBkZXRhaWxzLiBIb3dldmVyLCBydW50
aW1lCnRlc3RpbmcgYXQgdGltZSBvZiBwYXRjaGVzIHdhcyBzZW50IHVwc3RyZWFtIGRpZCBub3Qg
c2hvdyBhbnkgaXNzdWVzLgoKSSB3YXMgaG93ZXZlciBhYmxlIHRvIHJlcHJvZHVjZSBhIGNyYXNo
IHVzaW5nIG5leHQtMjAyNjA0MDMgKyByazM1MjggdXNiCnNlcmllcyBbMV1bMl0uIFN1Y2ggY3Jh
c2ggd2FzIG5vdCBoYXBwZW5pbmcgYXQgdGhlIG9yaWdpbmFsIHN1Ym1pc3Npb24Kb2YgdGhlIHBt
ZG9tYWluIG9yIHVzYiBzZXJpZXMuCgpMb29raW5nIGF0IHBtZG9tYWluIGNvcmUgYW5kIHJrIHBt
ZG9tYWluIGRyaXZlciBjaGFuZ2VzIHNpbmNlIHJrMzUyOAptZXJnZSBJIHNlZSB0aGF0IHRoZXJl
IGFyZSBzb21lIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBjaGFuZ2VkIGJlaGF2aW9yCm9mIHRoZSBk
cml2ZXIgc2luY2UgaW5pdGlhbCByazM1MjggbWVyZ2UuIEkuZS4gR0VOUERfRkxBR19OT19TVEFZ
X09OLgoKRm9sbG93aW5nIHF1aWNrIGRpZmYgc2VlbSB0byByZW1vdmUgYW55IGNoYW5nZWQgYmVo
YXZpb3IgaW50cm9kdWNlZCBpbgpjb21taXQgMmJjMTJhODE5OWEwICgicG1kb21haW46IHJvY2tj
aGlwOiBGaXggcmVndWxhdG9yIGRlcGVuZGVuY3kgd2l0aApHRU5QRF9GTEFHX05PX1NUQVlfT04i
KSwgYW5kIGZpeGVzIHRoZSBjcmFzaCBmb3IgbWUuCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbWRv
bWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgYi9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3Bt
LWRvbWFpbnMuYwppbmRleCA0OTBiYmIxZDFkOGUuLjRkNjliOWY2ODg4NiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKKysrIGIvZHJpdmVycy9wbWRv
bWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKQEAgLTg5Miw3ICs4OTIsOSBAQCBzdGF0aWMgaW50
IHJvY2tjaGlwX3BtX2FkZF9vbmVfZG9tYWluKHN0cnVjdCByb2NrY2hpcF9wbXUgKnBtdSwKIAlw
ZC0+Z2VucGQucG93ZXJfb24gPSByb2NrY2hpcF9wZF9wb3dlcl9vbjsKIAlwZC0+Z2VucGQuYXR0
YWNoX2RldiA9IHJvY2tjaGlwX3BkX2F0dGFjaF9kZXY7CiAJcGQtPmdlbnBkLmRldGFjaF9kZXYg
PSByb2NrY2hpcF9wZF9kZXRhY2hfZGV2OwotCXBkLT5nZW5wZC5mbGFncyA9IEdFTlBEX0ZMQUdf
UE1fQ0xLIHwgR0VOUERfRkxBR19OT19TVEFZX09OOworCXBkLT5nZW5wZC5mbGFncyA9IEdFTlBE
X0ZMQUdfUE1fQ0xLOworCWlmIChwZC0+aW5mby0+cHdyX21hc2sgfHwgcGQtPmluZm8tPnN0YXR1
c19tYXNrKQorCQlwZC0+Z2VucGQuZmxhZ3MgfD0gR0VOUERfRkxBR19OT19TVEFZX09OOwogCWlm
IChwZF9pbmZvLT5hY3RpdmVfd2FrZXVwKQogCQlwZC0+Z2VucGQuZmxhZ3MgfD0gR0VOUERfRkxB
R19BQ1RJVkVfV0FLRVVQOwogCXBtX2dlbnBkX2luaXQoJnBkLT5nZW5wZCwgTlVMTCwKCkNvdWxk
IGFsc28gYmUgdGhhdCBHRU5QRF9GTEFHX05PX1NUQVlfT04gb25seSBuZWVkIHRvIGJlIGFwcGxp
ZWQgdG8KbmVlZF9yZWd1bGF0b3IgZG9tYWlucz8KClsxXSBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9yLzIwMjUwNzIzMTIyMzIzLjIzNDQ5MTYtMS1qb25hc0Brd2lib28uc2UvClsyXSBodHRwczov
L2dpdGh1Yi5jb20vS3dpYm9vL2xpbnV4LXJvY2tjaGlwL2NvbW1pdHMvbmV4dC0yMDI2MDQwMy1y
azM1MjgvCgpSZWdhcmRzLApKb25hcwoKPiAKPj4KPj4gICAgcm9ja2NoaXBfcGRfcG93ZXJfb2Zm
OiB2byBwd3JfbWFzaz0weDAKPj4gICAgSW50ZXJuYWwgZXJyb3I6IHN5bmNocm9ub3VzIGV4dGVy
bmFsIGFib3J0OiAwMDAwMDAwMDk2MDAwMDEwCj4+ICAgIFdvcmtxdWV1ZTogcG0gZ2VucGRfcG93
ZXJfb2ZmX3dvcmtfZm4KPj4gICAgQ2FsbCB0cmFjZToKPj4gICAgIHJlZ21hcF9tbWlvX3JlYWQz
MmxlKzB4OC8weDIwCj4+ICAgICBfcmVnbWFwX2J1c19yZWdfcmVhZCsweDZjLzB4YWMKPj4gICAg
IF9yZWdtYXBfcmVhZCsweDYwLzB4ZDgKPj4gICAgIHJlZ21hcF9yZWFkKzB4NGMvMHg3Ywo+PiAg
ICAgcm9ja2NoaXBfcG11X3NldF9pZGxlX3JlcXVlc3QuaXNyYS4wKzB4OTgvMHgxNmMKPj4gICAg
IHJvY2tjaGlwX3BkX3Bvd2VyKzB4MTMwLzB4NDhjCj4+ICAgICByb2NrY2hpcF9wZF9wb3dlcl9v
ZmYrMHgzOC8weDQ4Cj4+ICAgICBnZW5wZF9wb3dlcl9vZmYuaXNyYS4wKzB4MWYwLzB4MmYwCj4+
ICAgICBnZW5wZF9wb3dlcl9vZmZfd29ya19mbisweDM0LzB4NTQKPj4KPj4gVGVzdCAyOiBTYW1l
IGRlYnVnIGJ1aWxkLCBib290ZWQgd2l0aCBjbGtfaWdub3JlX3VudXNlZAo+PiBhZGRlZCB0byBr
ZXJuZWwgY21kbGluZSB2aWEgVS1Cb290LiBTYW1lIGNyYXNoLCBzYW1lIGRvbWFpbjoKPj4KPj4g
ICAgcm9ja2NoaXBfcGRfcG93ZXJfb2ZmOiB2byBwd3JfbWFzaz0weDAKPj4gICAgSW50ZXJuYWwg
ZXJyb3I6IHN5bmNocm9ub3VzIGV4dGVybmFsIGFib3J0OiAwMDAwMDAwMDk2MDAwMDEwCj4+ICAg
IChpZGVudGljYWwgY2FsbCB0cmFjZSkKPj4KPj4gVGhlIGNyYXNoIG9jY3VycyBldmVuIHdpdGgg
Y2xrX2lnbm9yZV91bnVzZWQuIFRoZSBRb1MKPj4gcmVnaXN0ZXJzIGZvciBQRF9WTyBhcmUgaW5h
Y2Nlc3NpYmxlIHdoZW4gZ2VucGQgYXR0ZW1wdHMKPj4gdG8gcG93ZXIgb2ZmIHRoaXMgaWRsZS1v
bmx5IGRvbWFpbi4KPj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
