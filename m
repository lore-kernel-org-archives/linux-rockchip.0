Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E55C4C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 09:59:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A300A61B5E
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 09:59:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A300A61B5E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1PWEwJbig25nlQXjQpAWGkZnrripzepNd62M6sngyeI=; b=vri6+newA7s8px9cfDhaqwo3H2
	Lu+bs/0zB7WYVo7FKLSYTqBPzWKhAdp9qyFWIeHiZanAqzUmGVKY7ugItT+PlKDDChvjMW2K7jp5M
	Qe30t3yMnD5mr3E3CjsleZF7FzZsua0HDOyXQtPErfyqyKxcfh0vEIwUKOI/30OxDV6ZglidjN6Eg
	SHVkRk2AX5cIeHQQVNf3uwrr7cq5seX/M71ORvzfUUQDX5d3Xms8DrU7OrJHqnMa6IreNgaaraVDd
	zhayjuAUJHNgp8AQDTwnpt4vwAxXnInJBFyFMhO/cVJ8kkokiYAh8ffPHmM/SO5Gr5FeYufxbQqPL
	gNZ08rzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnHjM-004NiH-3i; Wed, 17 Nov 2021 09:59:52 +0000
Received: from lb2-smtp-cloud9.xs4all.net ([2001:888:0:108::2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnHj8-004NeQ-P8; Wed, 17 Nov 2021 09:59:40 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id nHirmNgQd1HGJnHiumpHcJ; Wed, 17 Nov 2021 10:59:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1637143169; bh=Q57bTarpphqLLfnykx8xjliEzWZFY1oyWctGEoHcx4c=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=MoB2V/5js2Vzzg6hnXQTnSWGihk1rbOrBzXqUlU/qoXelomDUu1MMkbtSui95NMMk
 TAQCevcQ2IZ6gwaWgRGSCYirBOa4FalCkpT2q6m5Zh3EV+vCeTFJfizWcJu/jc+HYz
 z634GrynK8HBFVh8VI5hqoenE8ly0adrtVu33dKJb1hUhbly+swJ5EjttzpBu9DM2s
 +zu2Mvy5uJGGu+ST+/0jWy5XMkymp7xpFphT3yKbLTUTHLOHWlYYj0Ovw8NdilpdGK
 jK2PfyHZ8GAri7PeUhHGgGVri4FDywsmN1RY2DRQom4DOd64ntdOnMWlO0EpQ3NpDT
 zieXyq1vQlW6Q==
Subject: Re: [PATCH v7 00/11] VP9 codec V4L2 control interface
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com
References: <20210929160439.6601-1-andrzej.p@collabora.com>
 <9db47ebc-cb95-872d-feb4-d6432a74f2cb@xs4all.nl>
 <29f27bad-28ae-12ff-eed6-79902bd5b722@collabora.com>
 <b8f8ee2e-ea98-4700-f4ca-f0af68c9de5c@xs4all.nl>
 <cdbbe5e6-0811-1276-1f62-fc7ad2628a30@collabora.com>
 <4da113ef-7b12-3729-0186-f746901c892a@xs4all.nl>
 <69f16bb0-4b5a-18b3-e244-60deb029d239@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <2cd7a7f0-72d6-1a0e-b5d2-87ff809c2acd@xs4all.nl>
Date: Wed, 17 Nov 2021 10:59:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <69f16bb0-4b5a-18b3-e244-60deb029d239@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfJfoI4N+VQeaXH3/XH5UsnvheyRxmRBR+FkxY+czh5yv1C5Bw3BQJm94bvBkiLAIy5gW2fB5PqOM//YNmZMfKRK9FpVOCe7+BSPBpf25mylyVsFFfknS
 q7MB71BmvNKuVBxkxU86PXjxtG+hAyggsUFRECUt4JEe9z0CFbMh5lQ0YhhW1toItPrJHbaZ+asxItagcq4namTUFNtMi9hRfJ+F1cW2qD60Mmccu7thd9PL
 TGJjFABdepRojBLVIz1zK70tQx+HKYa7ad7m0JuO8muAH4OnqgoI5NrU6Pw+YGwdlAOoy6iVaO6kw/+PDqMUrtmzbu7xfa5asa0FOaXxcc667q7lmfsNtuwp
 fwPxeffRqurCj/PH2q3+ns48PGkPXyqSws3IRCxNSz3d63E0qsuKDnDNJGs/bepYf27FYU7kHp7sowcuUVHgLn3mkijuMD8IvEUbNnsu2iBXN+Ukn0BUzziQ
 qwhaJzeGaX+RFYfjSZExFnFquIV+6KFUf+x/uKK3Hu4gvmyRVy8RVn1tSg+etGgqKZm59NIbSF39zajF39LiDIr9XblIergyEG232PhjJooXETzNLg2W3kTm
 bTBqFGycSsXIZe5OVjYRlUxHyyu7JyLPjzDFzVtbF5uHvBJ0ZozRvxwy/mrlpPDzog+b70Tvmpn1rBccscpdKEa5afszo2BaQRaDsSf05jvexJMMHd3mPQ3Z
 rJAWEsAhPzvlAv1173jln8TXMejkLKAut2xWgpvMo3rFftXmSSgbdS/GgkAnPXSxO3VzyMPHDcseL3LvHgrXhV/MnB9vnENVsHHB4d7ztGhacja2zorj+VEf
 FJ6K7gDuUtm483T3PJ0p/l/PLY92gUKBCTUQmFuwfDh3zrzuWQSpkxmUDJlyRh/b0zHNQwRm+7ZTwz8FE3VTxsdaSB48fdo4wKDQDoNFdbq7fQjftNHl8s5H
 eL6NHxm75mk3T5JP8JFvUGTyrGQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_015938_993096_7DB3A72C 
X-CRM114-Status: GOOD (  19.71  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gMTYvMTEvMjAyMSAxNDoxNCwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+IEhpLAo+
IAo+IFcgZG5pdSAxNi4xMS4yMDIxIG/CoDA5OjIxLCBIYW5zIFZlcmt1aWwgcGlzemU6Cj4+IE9u
IDE2LzExLzIwMjEgMDk6MDksIEFuZHJ6ZWogUGlldHJhc2lld2ljeiB3cm90ZToKPj4+IEhpIEhh
bnMsCj4+Pgo+Pj4gVyBkbml1IDE1LjExLjIwMjEgb8KgMjI6MTYsIEhhbnMgVmVya3VpbCBwaXN6
ZToKPj4+PiBPbiAxNS8xMS8yMDIxIDE4OjE0LCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6
Cj4+Pj4+IEhpIEhhbnMsCj4+Pj4+Cj4+Pj4+IFcgZG5pdSAxNS4xMS4yMDIxIG/CoDE2OjA3LCBI
YW5zIFZlcmt1aWwgcGlzemU6Cj4+Pj4+PiBBbmRyemVqLAo+Pj4+Pj4KPj4+Pj4+IENhbiB5b3Ug
cmViYXNlIHRoaXMgc2VyaWVzIG9uIHRvcCBvZiB0aGUgbWFzdGVyIGJyYW5jaCBvZgo+Pj4+Pj4g
aHR0cHM6Ly9naXQubGludXh0di5vcmcvbWVkaWFfc3RhZ2UuZ2l0LyA/IFVuZm9ydHVuYXRlbHkg
dGhpcyB2NyBubyBsb25nZXIKPj4+Pj4+IGFwcGxpZXMuIFNwZWNpZmljYWxseSAicmt2ZGVjOiBB
ZGQgdGhlIFZQOSBiYWNrZW5kIiBmYWlsZWQgaW4gYSBub24tdHJpdmlhbAo+Pj4+Pj4gbWFubmVy
Lgo+Pj4+Pgo+Pj4+PiBUaGlzIGlzIGEgYnJhbmNoIGZvciB5b3U6Cj4+Pj4+Cj4+Pj4+IGh0dHBz
Oi8vZ2l0bGFiLmNvbGxhYm9yYS5jb20vbGludXgvZm9yLXVwc3RyZWFtLy0vdHJlZS92cDktdWFw
aQo+Pj4+Cj4+Pj4gSSdtIGdldHRpbmcgYSBidW5jaCBvZiBzcGFyc2Uvc21hdGNoIHdhcm5pbmdz
Ogo+Pj4+Cj4+Pgo+Pj4gVGhhbmtzIGZvciBmaW5kaW5nIHRoaXMsIEkgd2lsbCByZS1jcmVhdGUg
dGhlIGJyYW5jaCBhbmQgbGV0IHlvdSBrbm93IG9uIGlyYy4KPj4+IFNvbWUgb2YgdGhlIGJlbG93
IGFyZSAiZmFsc2UgcG9zaXRpdmVzLCBuYW1lbHk6Cj4+Pgo+Pj4gZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9vbWFwM2lzcC9vbWFwM2lzcC5oCj4+PiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20v
dmVudXMvY29yZS5oCj4+Cj4+IEFoLCBzb3JyeSwgSSB0aG91Z2ggSSBoYWQgZmlsdGVyZWQgdGhv
c2Ugb3V0LiBPYnZpb3VzbHkgeW91IGNhbiBpZ25vcmUgdGhvc2UuCj4+Cj4+IFBsZWFzZSBwb3N0
IGEgdjguIFRoYXQgd2F5IHRoZSBzZXJpZXMgaXMgYXJjaGl2ZWQgb24gbG9yZS4gQW5kIGl0IHdv
cmtzIGJldHRlcgo+PiB3aXRoIHBhdGNod29yay4KPiAKPiBTdXJlLCBubyBwcm9ibGVtLiBBbHNv
IHBsZWFzZSBzZWUgYmVsb3cuCj4gCj4+Cj4+IFJlZ2FyZHMsCj4+Cj4+IAlIYW5zCj4+Cj4+Pgo+
Pj4gd2hpY2ggYXJlIG5vdCB0b3VjaGVkIGJ5IHRoZSBzZXJpZXMuCj4+Pgo+Pj4gUmVnYXJkcywK
Pj4+Cj4+PiBBbmRyemVqCj4+Pgo+Pj4+IHNwYXJzZToKPj4+PiBya3ZkZWMvcmt2ZGVjLXZwOS5j
OjE5MDo0Mzogd2FybmluZzogdmFyaWFibGUgJ2RlY19wYXJhbXMnIHNldCBidXQgbm90IHVzZWQg
Wy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCj4+Pj4gcmt2ZGVjL3JrdmRlYy12cDkuYzoyNDU6
NDM6IHdhcm5pbmc6IHZhcmlhYmxlICdkZWNfcGFyYW1zJyBzZXQgYnV0IG5vdCB1c2VkIFstV3Vu
dXNlZC1idXQtc2V0LXZhcmlhYmxlXQo+Pj4+IFNQQVJTRTpoYW50cm8vaGFudHJvX3Bvc3Rwcm9j
LmMgaGFudHJvL2hhbnRyb19wb3N0cHJvYy5jOjM3OjM1OiB3YXJuaW5nOiBzeW1ib2wgJ2hhbnRy
b19nMV9wb3N0cHJvY19yZWdzJyB3YXMgbm90IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGlj
Pwo+Pj4+Cj4+Pj4gc21hdGNoOgo+Pj4+IHJrdmRlYy9ya3ZkZWMtdnA5LmM6MTkwOjQzOiB3YXJu
aW5nOiB2YXJpYWJsZSAnZGVjX3BhcmFtcycgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0
LXNldC12YXJpYWJsZV0KPj4+PiBya3ZkZWMvcmt2ZGVjLXZwOS5jOjI0NTo0Mzogd2FybmluZzog
dmFyaWFibGUgJ2RlY19wYXJhbXMnIHNldCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQt
dmFyaWFibGVdCj4+Pj4gcmt2ZGVjL3JrdmRlYy12cDkuYzogcmt2ZGVjL3JrdmRlYy12cDkuYzoy
MzYgaW5pdF9pbnRyYV9vbmx5X3Byb2JzKCkgZXJyb3I6IGJ1ZmZlciBvdmVyZmxvdyAncHRyJyA5
MCA8PSA5MQo+IAo+IHRoaXMgbG9va3MgYSBmYWxzZSBwb3NpdGl2ZS4KPiAKPiBBIHBvcnRpb24g
b2YgbWVtb3J5IHBvaW50ZWQgdG8gYnkgcHRyIGlzIGluZGV4ZWQgd2l0aCBpICogMjMgKyBtLAo+
IHdoZXJlIGkgcmFuZ2VzIGZyb20gMCB0byAzLCBpbmNsdXNpdmUsIGFuZCBtIHJhbmdlcyBmcm9t
IDAgdG8gMjIsCj4gaW5jbHVzaXZlIGlmIGkgPCAzLCBvdGhlcndpc2UgbSByYW5nZXMgZnJvbSAw
IHRvIDIwLCBpbmNsdXNpdmUuCj4gU28gdGhlIGxhcmdlc3QgaW5kZXggdmFsdWUgd2UgY29tcHV0
ZSBlcXVhbHMgODkgKDMgKiAyMyArIDIwKS4KPiBCZWNhdXNlIHB0ciBwb2ludHMgdG8gc29tZXRo
aW5nIHRoYXQgaXMgYXQgbGVhc3QgOTAgYnl0ZXMgbGFyZ2UsCj4gODkgaXMgYSB2YWxpZCBpbmRl
eCBhbmQgbm8gZ3JlYXRlciBpbmRleCB3aWxsIGJlIGV2ZXIgY29tcHV0ZWQuCgpCdXQgd2UgZG8g
bmVlZCB0byBnZXQgcmlkIG9mIHRoaXMgc21hdGNoIHdhcm5pbmcsIG90aGVyd2lzZSBpdCB3aWxs
IHBvbGx1dGUgdGhlCmxpc3Qgb2Ygc21hdGNoIHdhcm5pbmdzLgoKSSB3YXMgbG9va2luZyBhdCB0
aGUgY29kZSBhbmQgd29uZGVyIGlmIGl0IHdvdWxkbid0IG1ha2UgbW9yZSBzZW5zZSB0bwptb3Zl
IHdyaXRpbmcgdG8gcmtwcm9icy0+aW50cmFfbW9kZVtpXS51dl9tb2RlW10gaW50byBhIHNlcGFy
YXRlIGZvciBsb29wOgoKICAgICAgICBmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRSh2NGwyX3Zw
OV9rZl91dl9tb2RlX3Byb2IpOyBpKyspCiAgICAgICAgICAgICAgICBya3Byb2JzLT5pbnRyYV9t
b2RlW2kgLyAyM10udXZfbW9kZVtpICUgMjNdID0gdjRsMl92cDlfa2ZfdXZfbW9kZV9wcm9iW2ld
OwoKV291bGRuJ3QgdGhhdCBkbyB0aGUgc2FtZSBhcyB0aGUgY3VycmVudCBjb2RlPyBJdCBsb29r
cyBzaW1wbGVyIGFzIHdlbGwuCgpSZWdhcmRzLAoKCUhhbnMKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
