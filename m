Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D36EC7618A
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Mar 2023 10:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAZiddyp3il0c7Hr/+L8p33lxOib0kTqk0zZI2X9Iuk=; b=F+JXCKVCEo4i+j
	gDgdclY+IM1ayBMRlB14JRzp89JZRFDkPyl7kdx9YTOD41GkKij2wjKaeopEshOBdY+ftR5Ee3Tz0
	nqSNZCMjZdQT1ySLJIvObxghuj2XWC/tTH/wzcfgmj8uR1Fh0yLwiAHickCn51siGcqHRVwq9YxUq
	Z/9P8E9J6cextaZtoHD3yLAXljyliV3pzeHhjFK16GX78SWRJeNT9eapd+59sDAZ+L86FTzU3wp41
	AJAt8nZ4b0ddDeulmSTaWQAdnzrBH08M0TPKS313X4309V0Jac9Rtllg8FBCrdQaWgnhdSEG+EhIN
	DS6u7eH+/RDBZFLdiRPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peCQO-008Ze0-0J;
	Mon, 20 Mar 2023 10:07:32 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peCQG-008ZZo-3D;
	Mon, 20 Mar 2023 10:07:27 +0000
Received: from [192.168.0.192] (unknown [194.146.248.75])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7A20B660304E;
	Mon, 20 Mar 2023 10:07:21 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679306841;
	bh=Wl5qVlGzkeOW7u76GSCEXhtv9RYTkqoyWQbHGR31C3k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jW/1mOmA6Pe9shReCSCPgVZasYx+RAr+ZisdnYzDNTVuoXX6SmeOhfi4SSvHXOPdR
	 Q9QWY9rU1n89nmju4Au6qRDkK0bNKfdm1jpzgXQioQU97jpOeqzkCstPuqS3WYaOO3
	 he95TJ4/Y1r4lIf/6+m8OzFJeDWmPx7IuK062Zqey/dTXGauAdLUqJKZlsPLBCtlYO
	 4yXs5BaMKLaMkM6fzfj/XMeHtfZ1tjEYhQNojybQ4H1xggHlk35tuWzCqn02RpgGCJ
	 qdKl/yw4webPGxrsPnzwI9mpENU5+0D4Sm8nykaHazipkopagu9KCH2Bb+JIor8tKx
	 V21TD9VxT5pqg==
Message-ID: <b6468072-834b-c948-3a27-e34fc80d203f@collabora.com>
Date: Mon, 20 Mar 2023 11:07:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC 0/2] VP8 stateless V4L2 encoding uAPI + driver
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 kernel@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
References: <20230309125651.23911-1-andrzej.p@collabora.com>
 <4586871.LvFx2qVVIh@archbox>
Content-Language: en-US
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <4586871.LvFx2qVVIh@archbox>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_030725_186498_6F52B404 
X-CRM114-Status: GOOD (  24.07  )
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

SGkgTmljb2xhcywKCitDYyBCZW5qYW1pbgoKVyBkbml1IDE4LjAzLjIwMjMgb8KgMTA6MjAsIE5p
Y29sYXMgRnJhdHRhcm9saSBwaXN6ZToKPiBPbiBUaHVyc2RheSwgOSBNYXJjaCAyMDIzIDEzOjU2
OjQ5IENFVCBBbmRyemVqIFBpZXRyYXNpZXdpY3ogd3JvdGU6Cj4+IERlYXIgQWxsLAo+Pgo+PiBU
aGlzIHR3by1wYXRjaCBzZXJpZXMgYWRkcyB1QVBJIGZvciBzdGF0ZWxlc3MgVlA4IGVuY29kaW5n
Cj4+IGFuZCBhbiBhY2NvbXBhbnlpbmcgZHJpdmVyIHVzaW5nIGl0Lgo+Pgo+PiBJdCBoYXMgYmVl
biB0ZXN0ZWQgb24gYW4gcmszMzk5IGJvYXJkIGFuZCB0aGVyZSBleGlzdHMKPj4gYSBnc3RyZWFt
ZXIgdXNlcjoKPj4KPj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2dzdHJlYW1lci9n
c3RyZWFtZXIvLS9tZXJnZV9yZXF1ZXN0cy8zNzM2Cj4+Cj4+IGV4YW1wbGUgcGlwZWxpbmU6Cj4+
Cj4+IGdzdC1sYXVuY2gtMS4wIHZpZGVvdGVzdHNyYyBudW0tYnVmZmVycz01MDAgIQo+PiB2aWRl
by94LXJhdyx3aWR0aD02NDAsaGVpZ2h0PTQ4MCBcICEgdjRsMnNsdnA4ZW5jICEgcXVldWUgISBt
YXRyb3NrYW11eCAhCj4+IGZpbGVzaW5rIGxvY2F0aW9uPXRlc3RfdnA4Lm1rdgo+Pgo+PiBJIGtp
bmRseSBhc2sgZm9yIGNvbW1lbnRzLgo+Pgo+PiBOb3RhYmx5LCB0aGUgZG9jdW1lbnRhdGlvbiBm
b3IgdGhlIGFkZGVkIHVBUEkgaXMgbWlzc2luZywKPj4gdGhhdCBpcyB0byBiZSBhZGRyZXNzZWQg
d2hlbiBzZW5kaW5nIGEgcGF0Y2ggc2VyaWVzIHByb3BlciAobm90IFJGQykuCj4+Cj4+IEZvciB0
aGUgUkZDIEkgYWxzbyBkaWQgbm90IGNhcmUgdG8gcmVwbGFjZSBhIEJVR19PTigpIGluIHRoZSBi
b29sZWFuCj4+IGVuY29kZXIuCj4+Cj4+IFJlYmFzZWQgb250byB2Ni4yLgo+Pgo+PiBSZWdhcmRz
LAo+Pgo+PiBBbmRyemVqCj4gCj4gSGVsbG8sCj4gCj4gSSBjYW4ndCBvZmZlciBtdWNoIGluIHRl
cm1zIG9uIHRlY2huaWNhbCBjb21tZW50cyBvbiB0aGUgaW1wbGVtZW50YXRpb24sCj4gYnV0IHRo
YW5rIHlvdSBmb3IgeW91ciB3b3JrIG9uIHRoaXMuIEEgbW9yZSBnZW5lcmFsIHF1ZXN0aW9uOiBJ
cyB0aGUKPiByYXRlIGNvbnRyb2wgZG9uZSBieSB0aGUgdXNlcnNwYWNlIGNvbXBvbmVudCBvciB0
aGUga2VybmVsIG9yIGV2ZW4gdGhlCj4gaGFyZHdhcmU/Cj4gCj4gSSB0cmllZCB0aGlzIHBhdGNo
c2V0IChhbmQgdGhlIGdzdHJlYW1lciBtZXJnZSByZXF1ZXN0KSBvdXQgbGFzdCBuaWdodAo+IGFu
ZCByYW4gaW50byBxdWl0ZSBub3RpY2FibGUgaS1mcmFtZSBwdWxzaW5nLCBhbmQgYW0gd29uZGVy
aW5nIHdobyB0aGUKPiBjdWxwcml0IG9mIHRoYXQgaXMuIExvb2tpbmcgYXQgdGhlIHZwOCBlbmNv
ZGUgcGFyYW1zIGluIHRoZSB1QVBJLCBpdAo+IGxvb2tzIGxpa2UgaXQnbGwgYmUgdXNlcnNwYWNl
IGluIGNoYXJnZSBvZiByYXRlIGNvbnRyb2w/Cj4gCgpZZXMsIHJhdGUgY29udHJvbCBpcyBlbnRp
cmVseSBvbiB1c2Vyc3BhY2UuCgpNb2Rlcm4gY29kZWMgc3BlY3MgKG5vdCBqdXN0IHZwOCkgb25s
eSBtYW5kYXRlIHdoYXQgY29uc3RpdHV0ZXMgYSB2YWxpZApiaXRzdHJlYW0gYW5kIGhvdyBkbyBk
ZWNvZGUgaXQuIE5vIHdvcmQgYWJvdXQgZW5jb2RpbmcsIHdoaWNoIG1lYW5zIHRoYXQKYWN0dWFs
bHkgbWFueSBkaWZmZXJlbnQgc3RyYXRlZ2llcyBjYW4gYmUgYXBwbGllZCB0byBwcm9kdWNlIGEg
dmFsaWQKYml0c3RyZWFtLiBBcyBzdWNoLCB0aGVzZSBzdHJhdGVnaWVzIGxvb2sgYSBsb3QgbGlr
ZSBwb2xpY2llcyB3aGljaCBkbyBub3QKYmVsb25nIHRvIHRoZSBrZXJuZWwgYW5kIEknZCByYXRo
ZXIgcHJvdmlkZSBhIHRvb2wgdGhhbiBhIHBvbGljeS4KCkFzIGZhciBhcyBJIGtub3cgdGhlIHJh
dGUgY29udHJvbCBtZWNoYW5pc20gdXNlZCBpbiB0aGUgZ3N0IGVsZW1lbnQgaXMKbm90aGluZyBz
b3BoaXN0aWNhdGVkLCBub3QgZXZlbiBhIChmdWxsKSBQSUQgYWxnb3JpdGhtLiBXaGljaCwgSSB0
aGluaywKd2FzIGV4YWN0bHkgaW50ZW5kZWQgdG8gZ2V0IHRoZSB0aGluZyBydW5uaW5nIGluIHRo
ZSBmaXJzdCBwbGFjZS4gSSB3b3VsZAphc3N1bWUgdGhhdCB0aGUgZXhwZWN0ZWQgYWxnb3JpdGht
IHdvdWxkIGJlIFBJRCBwcm9wZXIgaW4gdGhpcyBjYXNlLgpTcGVjaWZpY2FsbHksIFBJRCBiZWlu
ZyBQSUQgd2lsbCBub3QgcHJldmVudCB0aGUgZW5jb2Rpbmcgc3RhY2sgZnJvbQpvdmVycnVubmlu
ZyB0aGUgc2V0IGJhbmR3aWR0aCBmb3Igc2hvcnQgcGVyaW9kcyBvZiB0aW1lLCBidXQgZXhhY3Rs
eQpiZWNhdXNlIHJhdGUgY29udHJvbCBiZWxvbmdzIHRvIHVzZXJzcGFjZSBhbnlvbmUgaXMgd2Vs
Y29tZSB0byBkZXZlbG9wCmEgc29sdXRpb24gd2hpY2ggcHJvdmlkZXMgaGFyZCBiYW5kd2lkdGgg
Z3VhcmFudGVlcy4KCj4gT24gYSByZWxhdGVkIHNpZGUgbm90ZSwgc2luY2UgSSBsZXQgdGhpcyBy
dW4gYWxsIG5pZ2h0IHdpdGggZGlmZmVyZW50Cj4gcGFyYW1ldGVycyBJIGNhbiBoYXBwaWx5IHJl
cG9ydCB0aGF0IGl0IHNlZW1zIHRvIGJlIHF1aXRlIHN0YWJsZSwgbm8KPiBwcm9ibGVtcyBlbmNv
dW50ZXJlZCBhdCBhbGwuCgpUaGFuayB5b3UgZm9yIHJlcG9ydGluZy4gSW4gdGhlIChleHBlY3Rl
ZCkgY2FzZSB0aGlzIHR1cm5zIGludG8gYQpwYXRjaHNldCBwcm9wZXIgSSB3b3VsZCBraW5kbHkg
YXNrIGZvciB5b3VyIFRlc3RlZC1ieSB0aGVuLgoKQ2FuIHlvdSBzaGFyZSB3aGF0IHlvdSB1c2Vk
IGZvciB0aGUgbmlnaHRseSB0ZXN0cywgYm90aCBpbiB0ZXJtcyBvZgp0ZXN0aW5nIGhhcm5lc3Mg
YW5kIHVuZW5jb2RlZCB2aWRlbyBtYXRlcmlhbD8KClJlZ2FyZHMsCgpBbmRyemVqCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
