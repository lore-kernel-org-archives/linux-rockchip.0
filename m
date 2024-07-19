Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EA02C3DA5D
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jul 2024 21:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3TjYIAw38TGJL37se0C5L9ErFTprDnOcqtz5j9gohJw=; b=Fasu+ySnEXlO93
	8iy4c5r7a85wNycW5bakFcsTVTUR5/RGFMxufJYVvI5Gfboj27lfXeD9dxO4v1VibapUSonrVq8jQ
	8h0WcsBV5XUEkDJzc3YSu7lUCdNdXlh0urIvbfwAl4akkSCLr4VkFYx3MW6104glN5Hdc+ePq24ge
	Ybf3WP8JUB9Wx5HEb/p8w5tBevA++yU2Pqo+OACNZhJnp4GdnCKQCtbhGm4JqMzSVN+CIWNeguZxz
	Xmn+/qbeHJfqNTpB48pd1SKYT2xh//kqd+1bvfBdNLoAgIE/DQfnzI7YnYMJaVNUeZzlWzHn3Vs6g
	hQDDJDZ1zgq+bGoaFnfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUvdZ-00000003rso-0o3K;
	Fri, 19 Jul 2024 21:59:37 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUvdU-00000003rsG-3p6b
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Jul 2024 21:59:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1721426362;
 bh=jzx7v1yYS7XEcLUo5OWbcCcit0pq0czWKq4AncgrZzs=;
 b=FOvtx8MeWIq4P7TQztOVEdL2qqPDwusQcSxXVMFibWOhjcLZsPbyrQAQanRJS1okmT0vhPVLx
 rgnIyOsz9h6JrBi31v77kVS7th5asypByOjeHzvEjftmcYaYWmwBCXqriRlRV/UzzwfD2CsapdC
 SqfF+xsYM8Bh1l+XSX7/7XKaeglO0hojDQEnWJwZmh9h338tfD4l9WG+EC0nh8Iuo4O3Xu0IQkB
 fXYOV7oBk+HCcLchbgy2JI42mO+JHcw7CURaB0n5TedeTxJUO6ri/GGQnBl7b3zuHcOLz9KRg/w
 USwrQGUlXhUEaZUFPIFdFqDRZDfVCUKcE6lm1KYrwXdw==
Message-ID: <d060ec49-9d48-44a3-8f90-5cee5fe29b75@kwiboo.se>
Date: Fri, 19 Jul 2024 23:59:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] Enumerate all pixels formats
To: Nicolas Dufresne <nicolas@ndufresne.ca>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>, mchehab@kernel.org,
 ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20240717131430.159727-1-benjamin.gaignard@collabora.com>
 <07f62fbb-d1eb-41c3-86a8-13a082a8374f@xs4all.nl>
 <743e2589-c0df-461d-97d4-fafe78c334ea@collabora.com>
 <98f5cd5c-cb9c-45ca-a7c7-a546f525c393@xs4all.nl>
 <2eec786d-f2b6-4445-87f4-4b6d162a2d9a@collabora.com>
 <dc423e4144e1c9ea32f6adbaa8319e38f1443896.camel@ndufresne.ca>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <dc423e4144e1c9ea32f6adbaa8319e38f1443896.camel@ndufresne.ca>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 669ae1b7e37ad464ebb10862
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240719_145933_319247_23785D05 
X-CRM114-Status: GOOD (  22.26  )
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

SGksCgpPbiAyMDI0LTA3LTE5IDE3OjM2LCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+IEhpLAo+
IAo+IExlIHZlbmRyZWRpIDE5IGp1aWxsZXQgMjAyNCDDoCAxNTo0NyArMDIwMCwgQmVuamFtaW4g
R2FpZ25hcmQgYSDDqWNyaXTCoDoKPj4+IFdoYXQgZXhhY3RseSBpcyB0aGUgcHJvYmxlbSB5b3Ug
d2FudCB0byBzb2x2ZT8gQSByZWFsLWxpZmUgcHJvYmxlbSwgbm90IGEgdGhlb3JldGljYWwKPj4+
IG9uZSA6LSkKPj4KPj4gT24gcmVhbC1saWZlOiBvbiBhIGJvYXJkIHdpdGggMiBkaWZmZXJlbnQg
c3RhdGVsZXNzIGRlY29kZXJzIGJlaW5nIGFibGUgdG8gZGV0ZWN0IHRoZQo+PiBvbmUgd2hpY2gg
Y2FuIGRlY29kZSAxMCBiaXRzIGJpdHN0cmVhbXMgd2l0aG91dCB0ZXN0aW5nIGFsbCBjb2RlYy1k
ZXBlbmRlbnQgY29udHJvbHMuCj4gCj4gVGhhdCBsZWFucyB0b3dhcmQgZ2l2aW5nIGFuIGFuc3dl
ciBmb3IgdGhlIHNlbGVjdGVkIGJpdHN0cmVhbSBmb3JtYXQgdGhvdWdoLAo+IHNpbmNlIHRoZSBz
YW1lIGRyaXZlciBtYXkgZG8gMTBiaXQgSEVWQyB3aXRob3V0IDEwYml0IEFWMS4KPiAKPiBGb3Ig
dGhlIHVzZSBjYXNlLCBib3RoIENocm9taXVtIGFuZCBHU3RyZWFtZXIgaGF2ZSBhIG5lZWQgdG8g
Y2F0ZWdvcml6ZWQKPiBkZWNvZGVycyBzbyB0aGF0IHdlIGF2b2lkIHRyeWluZyB0byB1c2UgZGVj
b2RlciB0aGF0IGNhbid0IGRvIHRoYXQgdGFzay4gTW9yZQo+IHBsYXRmb3JtcyBhcmUgZ2V0dGlu
ZyBtdWx0aXBsZSBkZWNvZGVycywgYW5kIHdlIGFsc28gbmVlZCB0byB0YWtlIGludG8gYWNjb3Vu
dAo+IHRoZSBhdmFpbGFibGUgc29mdHdhcmUgZGVjb2RlcnMuCj4gCj4gSnVzdCBsb29raW5nIGF0
IHRoZSBjb2RlYyBzcGVjaWZpYyBwcm9maWxlIGlzIGluc3VmZmljaWVudCBzaW5jZSB3ZSBuZWVk
IHR3bwo+IGNvbmRpdGlvbnMgdG8gYmUgbWV0Lgo+IAo+IDEuIFRoZSBkcml2ZXIgbXVzdCBzdXBw
b3J0IDEwYml0IGZvciB0aGUgc3BlY2lmaWMgQ09ERUMgKGZvciBtb3N0IGNvZGVjIHRoaXMgaXMK
PiBwcm9maWxlIHZpc2libGUpCj4gMi4gVGhlIHByb2R1Y2VkIDEwYml0IGNvbG9yIGZvcm1hdCBt
dXN0IGJlIHN1cHBvcnRlZCBieSB1c2Vyc3BhY2UKPiAKPiBJbiB0b2RheSdzIGltcGxlbWVudGF0
aW9uLCBpbiBvcmRlciB0byB0ZXN0IHRoaXMsIHdlJ2QgbmVlZCB0byBzaW11bGF0ZSBhIDEwYml0
Cj4gaGVhZGVyIGNvbnRyb2wsIHNvIHRoYXQgd2hlbiBlbnVtZXJhdGluZyB0aGUgZm9ybWF0cyB3
ZSBnZXQgYSBsaXN0IG9mIDEwYml0Cj4gKG9wdGlvbmFsbHkgOGJpdCB0b28sIHNpbmNlIHNvbWUg
ZGVjb2RlciBjYW4gZG93bnNjYWxlIGNvbG9ycykgYW5kIGZpbmFsbHkKPiB2ZXJpZnkgdGhhdCB0
aGVzZSBwaXhlbCBmb3JtYXRzIGFyZSBrbm93IGJ5IHVzZXJzcGFjZS4gVGhpcyBpcyBub3QgaW1w
b3NzaWJsZSwKPiBidXQgdmVyeSB0ZWRpb3VzLCB0aGlzIHByb3Bvc2FsIHdlIHRvIHRyeSBhbmQg
bWFrZSB0aGlzIGVhc2llci4KCkkgaGF2ZSBhbHNvIGJlZW4gd29uZGVyaW5nIHdoYXQgdGhlIHVz
ZS1jYXNlIG9mIHRoaXMgd291bGQgYmUsIGFuZCBpZiBpdAppcyBzb21ldGhpbmcgdG8gY29uc2lk
ZXIgYmVmb3JlIGEgRkZtcGVnIHY0bDItcmVxdWVzdCBod2FjY2VsIHN1Ym1pc3Npb24uCgpJIGFt
IGd1ZXNzaW5nIEdTdHJlYW1lciBtYXkgbmVlZCB0byBkZWNpZGUgd2hhdCBkZWNvZGVyIHRvIHVz
ZSBwcmlvciB0bwpiaXRzdHJlYW0gcGFyc2luZy9kZWNvZGluZyBoYXMgc3RhcnRlZD8KCkZvciBt
eSByZS13b3JrZWQgRkZtcGVnIHY0bDItcmVxdWVzdCBod2FjY2VsIHNlcmllcywgc2hvdWxkIGhp
dApmZm1wZWctZGV2ZWwgbGlzdCBhbnkgZGF5IG5vdywgd2UgdHJ5IHRvIHByb2JlIGVhY2ggdmlk
ZW8gZGV2aWNlIG9uZQpieSBvbmUgdHJ5aW5nIHRvIGlkZW50aWZ5IGlmIGl0IHdpbGwgYmUgY2Fw
YWJsZSB0byBkZWNvZGUgY3VycmVudCBzdHJlYW0KaW50byBhIGtub3duL3N1cHBvcnRlZCBjYXB0
dXJlIGZvcm1hdCBbMV0sIHRoaXMgdHlwaWNhbGx5IGhhcHBlbiB3aGVuCmhlYWRlciBmb3IgZmly
c3Qgc2xpY2UvZnJhbWUgaGFzIGJlZW4gcGFyc2VkIGFuZCBpcyB1c2VkIHRvIGxldCBkcml2ZXIK
c2VsZWN0IGl0cyBwcmVmZXJyZWQvb3B0aW1hbCBjYXB0dXJlIGZvcm1hdC4gVGhlIGZpcnN0IGRl
dmljZSB3aGVyZSBhbGwKdGVzdCBwYXNzZXMgd2lsbCBiZSB1c2VkIGFuZCBpZiBub25lIHdvcmtz
IEZGbXBlZyB2aWRlbyBwbGF5ZXJzIHdpbGwKdHlwaWNhbGx5IGZhbGxiYWNrIHRvIHVzZSBzb2Z0
d2FyZSBkZWNvZGluZy4KClRoaXMgdHlwZSBvZiBwcm9iaW5nIG1heSBiZSBhIGxpdHRsZSBiaXQg
bGltaXRpbmcgYW5kIGRlcGVuZCB0b28gaGVhdnkKb24gdGhlIE0yTSBTdGF0ZWxlc3MgVmlkZW8g
RGVjb2RlciBJbnRlcmZhY2UgIkl0IGlzIHN1Z2dlc3RlZCB0aGF0IHRoZQpkcml2ZXIgY2hvb3Nl
cyB0aGUgcHJlZmVycmVkL29wdGltYWwgZm9ybWF0IGZvciB0aGUgY3VycmVudApjb25maWd1cmF0
aW9uLiIuCgpXb3VsZCB5b3Ugc3VnZ2VzdCBJIGNoYW5nZSBob3cgdGhpcyBwcm9iaW5nIGlzIGhh
cHBlbmluZyB0byBtYWtlIHNvbWUKbW9yZSBjbGV2ZXIgZGV0ZWN0aW9uIG9mIHdoYXQgbWVkaWEr
dmlkZW8gZGV2aWNlIHNob3VsZCBiZSB1c2VkIGZvciBhCnNwZWNpZmljIHN0cmVhbSB3aXRoIGhl
bHAgb2YgdGhpcyBuZXcgZmxhZz8KClsxXSBodHRwczovL2dpdGh1Yi5jb20vS3dpYm9vL0ZGbXBl
Zy9ibG9iL3Y0bDJyZXF1ZXN0LTIwMjQtdjIvbGliYXZjb2RlYy92NGwyX3JlcXVlc3RfcHJvYmUu
YyNMMzczLUw0MjQKClJlZ2FyZHMsCkpvbmFzCgo+IAo+IE5pY29sYXMKPiAKPiAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
