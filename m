Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70FB6C54734
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 10:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKdwkUhXIuPCbfN1P3vBU1SdrIFjK0frNSc+SdnNxSk=; b=JyHDgQnejtRhA0
	mdkMTC72/4s+CW2qi8HKkXw1MHGDvNE0t5CsPLrWQ8qOKjMDfPkJrB/YEQWdebdT2WWPQ8LUcUDqG
	GoWHDTHLoj9NmL389no2t2IVdMFuuZ44aKSGv5OmrFY4CD8dzU/ndkFens1ChKCHHlv5Omktm1O+b
	RZkOGVv39MU1QP9uYQAev69yXoyufw6CuAya0hgETaNGsi4lrWPWArObJFBkwvBlOkSUVBFU8oBRd
	TKdEAXeZBHYFeHYknK7HelADGLu1dCBdFoYVMHLT4/r9qTi4g3lhDqzLkirSBayeWMP4ZQ0xGjx7q
	386aShWTtjZBuxsZmc6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitsv-0000000Atw5-1bqq;
	Tue, 27 Aug 2024 10:57:13 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitrr-0000000AthB-04dO
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 10:56:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=L3Jgg0c7le4QBEi0OFoVOPgyYZjcfhP5Q6d24PTKW90=; b=o
	gj1buG5u/zhoRmi8kIF3fWD3aqDQ/mHCreOb31Yfv7xqztz8UVuR9+QKIne9OFon
	6oJhXkwO0HAehFRHZq/9t+zDGZtM+tA5OOt4sVLWrGihuWpzOmeRX1xkm1HlKyh7
	i/D4RWy0UbB2f8naKi2mZB+tCqIn+9Z2qROz9Qfv1w=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-140 (Coremail) ; Tue, 27 Aug 2024 18:55:53 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Tue, 27 Aug 2024 18:55:53 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Piotr Oniszczuk" <piotr.oniszczuk@gmail.com>
Cc: detlev.casanova@collabora.com, "Heiko Stuebner" <heiko@sntech.de>, 
	"Sascha Hauer" <s.hauer@pengutronix.de>, 
	"Sandy Huang" <hjc@rock-chips.com>, 
	"Sebastian Reichel" <sebastian.reichel@collabora.com>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	sjoerd@collabora.com, "Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH 0/5] VOP Support for rk3576
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <64099F5F-214F-416B-907A-B1154B911555@gmail.com>
References: <20240827103211.3132728-1-andyshrk@163.com>
 <64099F5F-214F-416B-907A-B1154B911555@gmail.com>
X-NTES-SC: AL_Qu2ZBvueuUku5SGRYulS3DJg3rRhGr3u/oxOhPkoTewBvyfz4hsEfXh9LEDR8PkcbR7SQUHw6rBQa+FlS1LA
MIME-Version: 1.0
Message-ID: <2cfafe40.98b1.191937a5372.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: _____wC3_9i5sM1mX7NFAA--.24638W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0h1IXmWXz+w9jAABs4
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_035607_397419_82793AAE 
X-CRM114-Status: GOOD (  11.72  )
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

CkhpIFBpb3Ry77yMCgrlnKggMjAyNC0wOC0yNyAxODo0Mjo0Oe+8jCJQaW90ciBPbmlzemN6dWsi
IDxwaW90ci5vbmlzemN6dWtAZ21haWwuY29tPiDlhpnpgZPvvJoKPgo+Cj4+IFdpYWRvbW/Fm8SH
IG5hcGlzYW5hIHByemV6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29tPiB3IGRuaXUgMjcuMDgu
MjAyNCwgbyBnb2R6LiAxMjozMjoKPj4gCj4+IEZyb206IEFuZHkgWWFuIDxhbmR5LnlhbkByb2Nr
LWNoaXBzLmNvbT4KPj4gCj4+IAo+PiBUaGFua3MgZm9yIHRoZSBiYXNpYyB3b3JrIGZyb20gQ29s
bGFib3JhLCBJIGNhbiBicmluZ3VwIGEgSERNSQo+PiBkaXNwbGF5IG91dCBvbiByazM1NzYuCj4+
IAo+PiBUaGlzIHBhdGNoIHNlcmllcyBhcmUgc3RpbGwgaW4gYSB2ZXJ5IGVhcmx5IHN0YWdlLCBz
b21lIGFyY2hpdGVjdHVyYWwKPj4gYWRqdXN0bWVudHMgYW5kIG1vcmUgc2VsZiB0ZXN0IGFyZSBu
ZWVkZWQsICBJIHBsYW4gdG8gYWRkIHNvbWUgU09DCj4+IHNwZWNpZmljIGNhbGxiYWNrcyBpbiBu
ZXh0IHZlcnNpb24uCj4+IEknbSBzZW5kaW5nIGl0IG91dCBhdCB0aGlzIG1vbWVudCBqdXN0IHdh
bnQgdG8gZmFjaWxpdGF0ZSBzb21lIHBlb3BsZQo+PiB3aG8gYXJlIGxvb2tpbmcgZm9yd2FyZCB0
byBkb2luZyBlYXJseSB0cnkuCj4+IAo+PiBUaGUgaGRtaSBkZXBlbmRzIG9uIFdJUCBwYXRjaCBm
cm9tIENyaXN0aWFuWzBdCj4+IAo+Cj5BbmR5LAo+Cj5JcyBpdCBtYWtlIHNlbnNlIHRvIHVzZSB0
aGlzIHNlcmllcyBqdXN0IF9hcyBndWlkZWxpbmVfIHRvIGFkZCB2ZXJ5IGJhc2ljIHN1cHBvcnQg
Zm9yIDM1Mjggdm9wMz8KPgo+Q3VycmVudGx5IHdpdGggMzUyOCBpIGdvdCBzdGF0ZSB3aGVyZSBo
ZG1pIHBoeSBkcml2ZXMgY29ycmVjdCBtb2RlIGJ1dCBzY3JlZW4gaXMgYmxhY2sgKGFzIG5vIHZv
cDMgY29ycmVjdCBzdXBwb3J0IHRvIGRyaXZlIHdvcmtpbmcgZHdfaGRtaSkKPgo+SWYgeW91IHdp
bGwgaGludCBtZSB3aGF0IG5lZWRzIHRvIGJlIGNoYW5nZWQgaW4geW91cnMgMzU3NiB2b3AyIHNl
cmllcyB0byBnZXQgYmFzaWMgdm9wMyB3b3JraW5nIC0gaSBjYW4gcGxheSB3aXRoIHRoaXMgb24g
bXkgdHdvIDM1MjggZGV2aWNlc+KApi4KPih3ZSBjYW4gc2tpcCBhbGwgZmFuY3kgdm9wMyBmZWF0
dXJlczsgaXQgd2lsbCBiZSBlaG91Z2ggdG8gc2VlIHByb21wdCArIGJhc2ljIGNvb3BlcmF0aW9u
IHdpdGggMzUyOCBtYWxpIGdwdSkKClRoZSBWT1Agb2YgcmszNTI4IGlzIGEgYml0IGxpa2UgYSBo
eWJyaWQgb2YgcmszNTg4IGFuZCByazM1NzYuIApUaGUgaW50ZXJmYWNlIG11eCAgYW5kIGlycSBh
cmUgbGlrZSByazM1NjgvODgKVGhlIG92ZXJsYXkgYXJlIHNpbWlsYXIgd2l0aCByazM1NzYuCkkg
dGhpbmsgeW91IGNhbiB1c2UgdGhpcyBzZXJpZXMgYXMgYSByZWZlcmVuY2UgdG8gYWRkIGJhc2Vp
YyBzdXBwb3J0IGZvciByazM1MjguCgo+Cj4KPgo+X19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+TGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
