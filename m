Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CADA5D7494E
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Oct 2024 00:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gf7lOLJ/0ZRdFKY+tv3sTqO9EVBfIcg2+k0h/CJ9BD4=; b=ugO6w8q36Ne/+F
	PB1om/d6U9Y7qPYNrrQrJcKcBr1daoadilQt3OKvJ1KH+okP0iC8x/bvCZhCiJkDAKwk1Ud8cfgGl
	stEp09JhTKWPE52scwEvyB2XJ2aVzs1HayPRVPIlrr6RimfP+x4T5KwibvCKPDkXLEzfCp2Gvq70y
	jLSRDvUwG8p5y/XPo0FTC997EQ7atECAW7rbtGSpKU9uv+Fxi45TW1EVQVaQJOqJb7mjC1Ecwa16v
	PqOTv7uwuPARLxMIrTU4CaIKOsYoqKpjNKRBCIWVzvg3YfgRCHD6GJCiOONn1n4qWf4USLpEtQIX8
	bv5xiOhrO6TOKzTInENA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5wR0-0000000GJqn-3HT0;
	Wed, 30 Oct 2024 00:19:38 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5wQx-0000000GJnj-1yVc
	for linux-rockchip@lists.infradead.org;
	Wed, 30 Oct 2024 00:19:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=+tKkG1OC9t/mmIgZYEEd18Rt/ZMzad35JICYVd1wwFc=; b=l
	szRm25PSneYfYAlb3IuW787Q1TUTpVLDmuybK6dr6kQ3fQwcV8kTEAJtsY/tV2r4
	4W8oTMqyyioRBkkjCKraQ2kOdApRnvHxv91/Iyw3482f3L1kgoBpKeMZXPy//76B
	Wx1ICrLrGpl/FdQoIW0PqgkOP30sWR9x/IFH3b9d98=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-117 (Coremail) ; Wed, 30 Oct 2024 08:19:03 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Wed, 30 Oct 2024 08:19:03 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Johan Jonker" <jbx6244@gmail.com>
Cc: "Andrew Lunn" <andrew@lunn.ch>, andy.yan@rock-chips.com, davem@davemloft.net, 
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
	david.wu@rock-chips.com, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re:Re: [PATCH v1 1/2] ethernet: arc: fix the device for
 dma_map_single/dma_unmap_single
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <f147c6c4-30e8-40cc-8a01-dc8df3913421@gmail.com>
References: <dcb70a05-2607-47dd-8abd-f6cf1b012c51@gmail.com>
 <86192630-e09f-4392-9aca-9cc7e577107f@lunn.ch>
 <f147c6c4-30e8-40cc-8a01-dc8df3913421@gmail.com>
X-NTES-SC: AL_Qu2YAv6fuE0v5SGQbelS/DNR+6hBMKv32aNaoMQOZ8UqqTHC6CwvbV1SBFDxyvqm2ZlpiLBFLC9L3ZwCE9fN
MIME-Version: 1.0
Message-ID: <83a1022.392.192daca499a.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: dSgvCgD334V3eyFnHD8aAA--.4263W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0g2IXmchbQ23JwABs+
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_171935_835093_527145AA 
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

CkhpIEpvaGFu77yMCgpBdCAyMDI0LTEwLTI5IDIyOjUzOjI2LCAiSm9oYW4gSm9ua2VyIiA8amJ4
NjI0NEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4KPk9uIDEwLzI4LzI0IDE0OjAzLCBBbmRyZXcgTHVu
biB3cm90ZToKPj4gT24gU3VuLCBPY3QgMjcsIDIwMjQgYXQgMTA6NDE6NDhBTSArMDEwMCwgSm9o
YW4gSm9ua2VyIHdyb3RlOgo+Pj4gVGhlIG5kZXYtPmRldiBhbmQgcGRldi0+ZGV2IGFyZW4ndCB0
aGUgc2FtZSBkZXZpY2UsIHVzZSBuZGV2LT5kZXYucGFyZW50Cj4+PiB3aGljaCBoYXMgZG1hX21h
c2ssIG5kZXYtPmRldi5wYXJlbnQgaXMganVzdCBwZGV2LT5kZXYuCj4+PiBPciBpdCB3b3VsZCBj
YXVzZSB0aGUgZm9sbG93aW5nIGlzc3VlOgo+Pj4KPj4+IFsgICAzOS45MzM1MjZdIC0tLS0tLS0t
LS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQo+Pj4gWyAgIDM5LjkzODQxNF0gV0FSTklORzog
Q1BVOiAxIFBJRDogNTAxIGF0IGtlcm5lbC9kbWEvbWFwcGluZy5jOjE0OSBkbWFfbWFwX3BhZ2Vf
YXR0cnMrMHg5MC8weDFmOAo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IERhdmlkIFd1IDxkYXZpZC53
dUByb2NrLWNoaXBzLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IEpvaGFuIEpvbmtlciA8amJ4NjI0
NEBnbWFpbC5jb20+Cj4+IAo+PiBBIGZldyBwcm9jZXNzIGlzc3VlczoKPj4gCj4+IEZvciBhIHBh
dGNoIHNldCBwbGVhc2UgYWRkIGEgcGF0Y2ggMC9YIHdoaWNoIGV4cGxhaW5zIHRoZSBiaWcgcGlj
dHVyZQo+PiBvZiB3aGF0IHRoZSBwYXRjaHNldCBkb2VzLiBGb3IgYSBzaW5nbGUgcGF0Y2gsIHlv
dSBkb24ndCBuZWVkIG9uZS4KPj4gCj4+IFBsZWFzZSByZWFkOgo+PiAKPj4gaHR0cHM6Ly93d3cu
a2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvcHJvY2Vzcy9tYWludGFpbmVyLW5ldGRldi5odG1s
Cj4+IAo+Cj4+IEl0IGlzIG5vdCBjbGVhciB3aGljaCB0cmVlIHlvdSBpbnRlbmQgdGhlc2UgcGF0
Y2hlcyB0byBiZSBhcHBsaWVkCj4+IHRvLiBUaGlzIG9uZSBsb29rcyBsaWtlIGl0IHNob3VsZCBi
ZSB0byBuZXQsIGJ1dCBuZWVkcyBhIEZpeGVzOgo+PiB0YWcuIFRoZSBNRElPIHBhdGNoIG1pZ2h0
IGJlIGZvciBuZXQtbmV4dD8gCj4KPkhpIEFuZHJldywgQW5keSwKPgo+TXkgZGVza3RvcCBzZXR1
cCBoYXMgYSBwcm9ibGVtIGNvbXBpbGluZyBvbGRlciBrZXJuZWxzIGZvciByazMwNjYgTUs4MDgg
dG8gdmVyaWZ5Lgo+Cj5BcmUgeW91IGFibGUgdG8gYmlzZWN0L2NvbXBpbGUgZm9yIHJrMzAzNiBi
ZWZvcmUgdGhpcyBvbmU6CgoKIEkgd2lsbCB0cnkgdG8gZG8gaXQgaW4gdGhlIGZvbGxvd2luZyBk
YXlzLgoKCj4KPj09PT0KPmNvbW1pdCBiYzBlNjEwYTZlYjBkNDZlNDEyM2ZhZmRiZTVlNjE0MWQ5
ZmZmM2JlIChIRUFEIC0+IHRlc3QxKQo+QXV0aG9yOiBKaWFuZ2xlaSBOaWUgPG5pZWppYW5nbGVp
MjAyMUAxNjMuY29tPgo+RGF0ZTogICBXZWQgTWFyIDkgMjA6MTg6MjQgMjAyMiArMDgwMAo+Cj4g
ICAgbmV0OiBhcmNfZW1hYzogRml4IHVzZSBhZnRlciBmcmVlIGluIGFyY19tZGlvX3Byb2JlKCkK
Pgo+PT09PQo+VGhpcyBpcyB0aGUgb2xkZXN0IEVNQUMgcmVsYXRlZCBjaGVja291dCBJIGNhbiBj
b21waWxlLgo+QXQgdGhhdCBwYXRjaCBpdCBzdGlsbCBnaXZlcyB0aGlzIHdhcm5pbmdzIGluIHRo
ZSBrZXJuZWwgbG9nLgo+Cj5bICAgMTYuNjc4OTg4XSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0t
LS0tLS0tLS0tLS0KPlsgICAxNi42ODQxODldIFdBUk5JTkc6IENQVTogMCBQSUQ6IDgwOSBhdCBr
ZXJuZWwvZG1hL21hcHBpbmcuYzoxNTEgZG1hX21hcF9wYWdlX2F0dHJzKzB4MmI0LzB4MzU4Cj4K
PlRoZSBkcml2ZXIgd2FzIG1haW50YWluZWQgb24gYXV0byBwaWxvdCByZWNlbnQgeWVhcnMgd2l0
aG91dCBhIGNoZWNrIGJ5IFJvY2tjaGlwIHVzZXJzIHNvbWVob3cuCj5DdXJyZW50bHkgSSBkb24n
dCBrbm93IHdoZXJlIGFuZCB3aGVuIHRoaXMgd2FzIGludHJvZHVjZWQuCj5QbGVhc2UgYWR2aXNl
IGhvdyB0byBtb3ZlIGZvcndhcmQuIFNob3VsZCB3ZSBqdXN0IG1hcmsgaXQgbmV0LW5leHQ/Cj4K
PkpvaGFuCj4KPj4gCj4+ICAgICBBbmRyZXcKPj4gCj4+IC0tLQo+PiBwdy1ib3Q6IGNyCj4+IAo+
PiAKPgo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwo+aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
