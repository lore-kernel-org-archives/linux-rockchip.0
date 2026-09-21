Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 787BCC982E6
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 16:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZBGIupL9MfE/4kan/55iRAzPXwPSV6cdmkdRvphMso=; b=rSPeebFAn13EAm
	SJgPURRKH9BrahNtj9+OAefods97CUc1yWaNLmJsSX4fKT+/fpp4+EHQg54ybd+GNhw71VOoV1/F2
	ofqCzslqGkwdG3ApUu4b5URCn+sC78Epgo6Y8up+MIY3Dwv3xmAdWaWUImFMY2NwwXNa3a4jJgc+F
	lW0v1ofSAdQB4Q53fH50/OfyMYdTUY71AqN8VJpREJ1Nj5UtEulft2tgBS//xaVNuFtbNfCyj/uuV
	qECAtj1dlpm2RRLQkxRrZSxeP3A78x/3G/x2tpUvG6nwkzqT25bagQoR9u4sfdo8R8jvzjHzMTQ+v
	WKPXpemL25ypZuVf9b/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8gdr-00000002nIN-1Wpg;
	Mon, 21 Sep 2026 16:13:19 +0000
Received: from [95.181.193.9] (helo=mail.auroraos.dev)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8gdn-00000002nH9-3w6u;
	Mon, 21 Sep 2026 16:13:17 +0000
Received: from [192.168.2.104] (91.79.36.28) by exch16.corp.auroraos.dev
 (10.189.209.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1847.3; Mon, 21 Sep
 2026 19:13:04 +0300
Message-ID: <140e4538-d493-40a7-a682-00be091332f0@auroraos.dev>
Date: Mon, 21 Sep 2026 19:13:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] pmdomain: rockchip: fix domain check in
 rockchip_pm_add_one_domain()
To: Shawn Lin <shawn.lin@rock-chips.com>, Ulf Hansson <ulfh@kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, <linux-pm@vger.kernel.org>,
	<linux-rockchip@lists.infradead.org>
CC: Caesar Wang <wxt@rock-chips.com>, Kevin Hilman <khilman@linaro.org>,
	<linux-arm-kernel@lists.infradead.org>
References: <20260920175928.42566-1-s.shtylyov@auroraos.dev>
 <ee8bf4cf-b2bd-4cbd-ba8c-2e7a871203e1@rock-chips.com>
Content-Language: en-US
From: Sergey Shtylyov <s.shtylyov@auroraos.dev>
In-Reply-To: <ee8bf4cf-b2bd-4cbd-ba8c-2e7a871203e1@rock-chips.com>
X-Originating-IP: [91.79.36.28]
X-ClientProxiedBy: exch16.corp.auroraos.dev (10.189.209.38) To
 exch16.corp.auroraos.dev (10.189.209.38)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_091315_981390_BB6C98DC 
X-CRM114-Status: GOOD (  14.34  )
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

T24gOS8yMS8yNiA5OjM2IEFNLCBTaGF3biBMaW4gd3JvdGU6CgpbLi4uXQoKPj4gSW4gcm9ja2No
aXBfcG1fYWRkX29uZV9kb21haW4oKSwgdGhlcmUncyB0aGUgY2hlY2sgKG1vc3QgcHJvYmFibHkg
Zm9yCj4+IHRoZSBjYXNlIHdoZXJlIHRoZSAicmVnIiBwcm9wIGhhcyBhbiB1bmV4cGVjdGVkIHZh
bHVlPykgd2hpY2ggZG9lc24ndAo+IAo+IEFncmVlZCB0aGF0IGNoZWNrIGluZGVlZCBtYWtlcyBs
aXR0bGUgc2Vuc2UuIEJ1dCAibW9zdCBwcm9iYWJseSBmb3IgdGhlCj4gY2FzZSB3aGVyZSB0aGUg
cmVnIHByb3AgaGFzIGFuIHVuZXhwZWN0ZWQgdmFsdWUiIGRvZXMgbm90IGhvbGQ6IGFuCgogICBJ
IHRyaWVkIHRvIGd1ZXNzIHdoYXQgdGhlIGNoZWNrIGluIHF1ZXN0aW9uIHdhcyBhY3R1YWxseSBp
bnRlbmRlZCBmb3IKKGRlc3BpdGUgbWFraW5nIGEgbGl0dGxlIHNlbnNlIGFzIGl0IGlzIG5vdyku
Li4KCj4gb3V0LW9mLXJhbmdlIHJlZyB2YWx1ZSBpcyBhbHJlYWR5IHJlamVjdGVkIGJ5IHRoZSAi
aWQgPj0gcG11LT5pbmZvLQo+Pm51bV9kb21haW5zIiBjaGVjayBhYm92ZSwgYW5kIG51bV9kb21h
aW5zIGVxdWFscwoKICAgSSBub3RpY2VkLiA6LSkKCj4gQVJSQVlfU0laRShkb21haW5faW5mbykg
Zm9yIGV2ZXJ5IFNvQywgc28gdGhlcmUgYXJlIG5vIGhvbGVzIGluIHRoZQo+IHRhYmxlIHRoYXQg
dGhlIG5ldyBjaGVjayBjb3VsZCBjYXRjaCB3aXRoIHRoZSBjdXJyZW50IGRhdGEuIEFGQUlDVCwg
dGhpcwoKICAgT2gsIHRoZXJlIGFyZSBob2xlcyEgOi0pCiAgIElmIHlvdSBsb29rIGF0IChhbmQg
YmVoaW5kKSB0aGUgaW5kZXhlZCBpbml0aWFsaXplcnMgb2YgKl9wbV9kb21haW5zW10sCnlvdSds
bCBzZWUgdGhhdCB0aGUgaW5kZXhlcyBkb24ndCBhbHdheXMgc3RhcnQgYXQgMCwgYW5kIHNvIHRo
ZSBhcnJheXMgYXJlCmFjdHVhbGx5IHNwYXJzZS4uLgoKPiBwYXRjaCBkb2VzIG5vdCBjaGFuZ2Ug
YW55IHJ1bnRpbWUgYmVoYXZpb3VyOyBpdCBvbmx5IHR1cm5zIGRlYWQgY29kZQo+IGludG8gYSBk
ZWZlbnNpdmUgY2hlY2sgb24gdGhlIG1hdGNoLWRhdGEgdGFibGVzLgoKICAgSSBob3BlIHlvdSBz
ZWUgbm93IHRoYXQgdGhpcyBkZWZlbnNpdmUgY2hlY2sgbWFrZXMgYSBiaXQgbW9yZSBzZW5zZS4u
LgoKPj4gbWFrZSBtdWNoIHNlbnNlIGFzIHRoZSB2YXJpYWJsZSBwZF9pbmZvIHdpbGwgYmUgTlVM
TCBpZmYgcG11LT5pbmZvLT4KPj4gZG9tYWluX2luZm8gaXMgTlVMTCBhbmQgdGhlIHZhcmlhYmxl
IGlkIGlzIDAuwqAgV2hhdCBkb2VzIG1ha2Ugc2Vuc2UKPj4gdGhlcmUgaXMgY2hlY2tpbmcgcGRf
aW5mby0+cHdyX21hc2sgYW5kIHBkX2luZm8tPnJlcV9tYXNrIHdoaWNoIChhcwo+PiBzZWVtcyB0
byBmb2xsb3cgZnJvbSB0aGUgY29kZSkgY2FuJ3QgYm90aCBiZSAwIGZvciBhIHZhbGlkIGRvbWFp
bi4uLgo+IAo+IFRoYXQgbWVhbnMgdGhlcmUgaXMgbm8gYnVnIGJlaW5nIGZpeGVkIGhlcmUsIHNo
b3VsZCB3ZSBkcm9wIHRoZSBmaXhlcyB0YWc/CgogICBJJ2QgbGlrZSB0byBrZWVwIGl0IChidXQg
dGhhdCdzIHVwIHRvIHRoZSBtYWludGFpbmVycywgb2YgY291cnNlKS4uLgoKPj4gRm91bmQgYnkg
TGludXggVmVyaWZpY2F0aW9uIENlbnRlciAobGludXh0ZXN0aW5nLm9yZykgd2l0aCB0aGUgU3Zh
Y2UKPj4gc3RhdGljIGFuYWx5c2lzIHRvb2wuCj4+Cj4+IEZpeGVzOiA3YzY5NjY5M2E0ZjUgKCJz
b2M6IHJvY2tjaGlwOiBwb3dlci1kb21haW46IEFkZCBwb3dlciBkb21haW4gZHJpdmVyIikKPj4g
U2lnbmVkLW9mZi1ieTogU2VyZ2V5IFNodHlseW92IDxzLnNodHlseW92QGF1cm9yYW9zLmRldj4K
ClsuLi5dCgpNQlIsIFNlcmdleQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
