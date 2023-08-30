Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F894C83F01
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Aug 2023 19:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLH4fTAyv6YB3LP7G9mzbQOQNUco4HbhA9LlZs5QaJI=; b=nkkbcWiOLDRnB0
	q1PL3EG8mTakCAylKEK/HaC4+UiWpn/QxtImKmDprwHXEWGQaKJoybjvG54rpxJ9qXOMSAIPGrXHg
	IooFd31NaD6hlzCs2Zo5zptHZAViLNy+8Q88qKybB0itlSgT5efWTuiRTVfY/lsl8huTGOvHa/r1S
	jXqONLVl+CyVJISEXg7PQgDbsV2ccN4Spum1Izpmhic7qc1kwELU1FG3n3WM1efcC0+eYh6x8dtlf
	mOfMZPYhchxiG9KjIj3LC3QRa/6OFzJGUOcsWlmtcaq9ogAuijDuPi5VsK7ODz+YQGw4BOG2xvWYg
	V0s5Dwos24eWnXvRC98A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbQcw-00E35W-0M;
	Wed, 30 Aug 2023 19:13:18 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbQct-00E34v-1Y
	for linux-rockchip@lists.infradead.org;
	Wed, 30 Aug 2023 19:13:17 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id C40FF8653E;
	Wed, 30 Aug 2023 21:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1693422794;
	bh=iJcxC90YyG5/9K2N2+mHTpn6H9rjmnVg9+CaTDZAAEo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=i5xMegFR3yNwi9oxKopJn1G8iPZSOxqStFrozyNYTMt3ts6kQ59pzg69TZkH6jVYL
	 LbISxAC35Zv5cRnmfe74eI16Qm8CLS2XRA22ehhiXeeXjrFzqAfp9y7iPWN71shmgR
	 ztW/x1e2QEG2QCfdEmvtzxVb0Lvf8RHdEEjFfVBDv1ANkwXK0uoqiTRxPG3o+lq6GG
	 AxNj/skIbsAkSG4i0YqO5AdtUWM1j+7fLknv4uUbb+c3u6f3HMu1LYbAUVkXtSU6C6
	 cyzmuUczX0UWmPScOiGMQM6+6KDQo1ALca9OH+ojxWDLJfgG6chzvNwGoKI+aWMbhE
	 gKulGasEGnWZA==
Message-ID: <3a5ef85d-ee82-a1aa-1bf0-9fcb5efec833@denx.de>
Date: Wed, 30 Aug 2023 21:13:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] media: hantro: Check whether reset op is defined before
 use
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Adam Ford <aford173@gmail.com>, linux-media@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org
References: <20230824013858.303105-1-marex@denx.de>
 <CAHCN7xLDmMv7T_fT7vY3iq+KMWuPM9tBP_2AJ-X04L7ZTRWPOw@mail.gmail.com>
 <80d9a66f-c703-6057-e084-1a6d2214d775@denx.de>
 <CAGXv+5GQFtCAYbfSbEJeHA4Os0O6WuD64V-xcZ9uDD33HbuhhQ@mail.gmail.com>
 <f6f55f46-bd6e-4dde-4484-86d1c385c8fe@denx.de>
 <CAGXv+5EJ1asWymfjNcyLANSgQdJPcjT6MXUVwTYOEQ3PtVtXBQ@mail.gmail.com>
 <a445f1fc-6b38-e58b-a3ca-81c05e19f66e@denx.de>
 <CAGXv+5ESeqzzGAooMUFLiwJEzLneTRDbLggyzTFeq32NzDDUiw@mail.gmail.com>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <CAGXv+5ESeqzzGAooMUFLiwJEzLneTRDbLggyzTFeq32NzDDUiw@mail.gmail.com>
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_121315_808844_8D79835D 
X-CRM114-Status: GOOD (  24.03  )
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

T24gOC8zMC8yMyAwNTozOCwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+IE9uIFN1biwgQXVnIDI3LCAy
MDIzIGF0IDU6NDTigK9BTSBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4gd3JvdGU6Cj4+Cj4+
IE9uIDgvMjUvMjMgMTA6NTIsIENoZW4tWXUgVHNhaSB3cm90ZToKPj4+IE9uIEZyaSwgQXVnIDI1
LCAyMDIzIGF0IDQ6MzPigK9QTSBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4gd3JvdGU6Cj4+
Pj4KPj4+PiBPbiA4LzI1LzIzIDA5OjA5LCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4+Pj4+IE9uIFRo
dSwgQXVnIDI0LCAyMDIzIGF0IDk6MDjigK9QTSBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4g
d3JvdGU6Cj4+Pj4+Pgo+Pj4+Pj4gT24gOC8yNC8yMyAxMjozOSwgQWRhbSBGb3JkIHdyb3RlOgo+
Pj4+Pj4+IE9uIFdlZCwgQXVnIDIzLCAyMDIzIGF0IDg6MznigK9QTSBNYXJlayBWYXN1dCA8bWFy
ZXhAZGVueC5kZT4gd3JvdGU6Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFRoZSBpLk1YOE1NL04vUCBkb2Vz
IG5vdCBkZWZpbmUgdGhlIC5yZXNldCBvcCBzaW5jZSByZXNldCBvZiB0aGUgVlBVIGlzCj4+Pj4+
Pj4+IGRvbmUgYnkgZ2VucGQuIENoZWNrIHdoZXRoZXIgdGhlIC5yZXNldCBvcCBpcyBkZWZpbmVk
IGJlZm9yZSBjYWxsaW5nIGl0Cj4+Pj4+Pj4+IHRvIGF2b2lkIE5VTEwgcG9pbnRlciBkZXJlZmVy
ZW5jZS4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gTm90ZSB0aGF0IHRoZSBGaXhlcyB0YWcgaXMgc2V0IHRv
IHRoZSBjb21taXQgd2hpY2ggcmVtb3ZlZCB0aGUgcmVzZXQgb3AKPj4+Pj4+Pj4gZnJvbSBpLk1Y
OE0gSGFudHJvIEcyIGltcGxlbWVudGF0aW9uLCB0aGlzIGlzIGJlY2F1c2UgYmVmb3JlIHRoaXMg
Y29tbWl0Cj4+Pj4+Pj4+IGFsbCB0aGUgaW1wbGVtZW50YXRpb25zIGRpZCBkZWZpbmUgdGhlIC5y
ZXNldCBvcC4KPj4+Pj4+Pgo+Pj4+Pj4+IEkgYW0gc3VycHJpc2VkIEkgZGlkbid0IGhhdmUgaXNz
dWVzIHdoZW4gSSB3YXMgdGVzdGluZyB0aGUgOE1RIGFuZAo+Pj4+Pj4+IDhNTSwgYnV0IHRoaXMg
bWFrZXMgc2Vuc2UuCj4+Pj4+Pgo+Pj4+Pj4gWW91IG5lZWQgdG8gdHJpZ2dlciB0aGUgVlBVIHdh
dGNoZG9nIHRvIHRyaWdnZXIgdGhlIGNyYXNoLCB0aGF0IG1lYW5zCj4+Pj4+PiB5b3UgaGF2ZSB0
byBnZXQgdGhlIFZQVSBpbnRvIHNvbWUgd2VpcmQgc3RhdGUgd2hlcmUgaXQgZmFpbHMgdG8gZGVj
b2RlCj4+Pj4+PiBmcmFtZS4gVGhlbiBpdCB0cmlnZ2VycyB0aGUgcmVzZXQgYW5kIC4uLiBib29t
Lgo+Pj4+Pj4KPj4+Pj4+IFNlZSB0aGlzIHBhdGNoLCB0aGF0IGNvbnRhaW5zIGEgZ3N0cmVhbWVy
IGludm9jYXRpb24gdG8gZ2VuZXJhdGUgc3VjaAo+Pj4+Pj4gdHJpZ2dlciBjb25kaXRpb24gaW5w
dXQgZGF0YToKPj4+Pj4+Cj4+Pj4+PiBbUEFUQ0hdIG1lZGlhOiB2ZXJpc2lsaWNvbjogRG8gbm90
IGVuYWJsZSBHMiBwb3N0cHJvYyBkb3duc2NhbGUgaWYKPj4+Pj4+IHNvdXJjZSBpcyBuYXJyb3dl
ciB0aGFuIGRlc3RpbmF0aW9uCj4+Pj4+Pgo+Pj4+Pj4gIgo+Pj4+Pj4gVG8gZ2VuZXJhdGUgaW5w
dXQgdGVzdCBkYXRhIHRvIHRyaWdnZXIgdGhpcyBidWcsIHVzZSBlLmcuOgo+Pj4+Pj4gJCBnc3Qt
bGF1bmNoLTEuMCB2aWRlb3Rlc3RzcmMgIQo+Pj4+Pj4gdmlkZW8veC1yYXcsd2lkdGg9MjcyLGhl
aWdodD0yNTYsZm9ybWF0PUk0MjAgISBcCj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgICB2cDll
bmMgISBtYXRyb3NrYW11eCAhIGZpbGVzaW5rIGxvY2F0aW9uPS90bXAvdGVzdC52cDkKPj4+Pj4+
IFRvIHRyaWdnZXIgdGhlIGJ1ZyB1cG9uIGRlY29kaW5nIChub3RlIHRoYXQgdGhlIE5WMTIgbXVz
dCBiZSBmb3JjZWQsIGFzCj4+Pj4+PiB0aGF0IGFzc3VyZXMgdGhlIG91dHB1dCBkYXRhIHdvdWxk
IHBhc3MgdGhlIEcyIHBvc3Rwcm9jKToKPj4+Pj4+ICQgZ3N0LWxhdW5jaC0xLjAgZmlsZXNyYyBs
b2NhdGlvbj0vdG1wL3Rlc3QudnA5ICEgbWF0cm9za2FkZW11eCAhCj4+Pj4+PiB2cDlwYXJzZSAh
IFwKPj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgIHY0bDJzbHZwOWRlYyAhIHZpZGVvL3gtcmF3
LGZvcm1hdD1OVjEyICEgdmlkZW9jb252ZXJ0Cj4+Pj4+PiAhIGZiZGV2c2luawo+Pj4+Pj4gIgo+
Pj4+Pgo+Pj4+PiBEb2VzIGl0IGNvbXBsZXRlbHkgcmVjb3ZlciBhZnRlcndhcmRzPyBJbiBteSBw
cmV2aW91cyB0cmlhbHMgdGhlIGhhcmR3YXJlCj4+Pj4+IGVuZGVkIHVwIGluIHNvbWUgYml6emFy
ZSBzdGF0ZTogd2hpbGUgZGVjb2Rpbmcgc3VjY2VlZHMsIHRoZSBvdXRwdXQncyBtZDVzdW0KPj4+
Pj4gZGlkbid0IG1hdGNoIHVwLgo+Pj4+Cj4+Pj4gSGF2ZSB5b3UgZ290IGEgdGVzdGNhc2UgdGhh
dCB0cmlnZ2VycyB0aGlzLCBvbmUgSSBjYW4gdHJ5ID8KPj4+Pgo+Pj4+IEkgYW0gbm90IGVudGly
ZWx5IHN1cmUgd2hldGhlciB0aGlzIGlzIGhhcHBlbmluZyBoZXJlIGFzIHdlbGwgb3Igbm90LAo+
Pj4+IGJ1dCBJIGNhbiBpbWFnaW5lIHRoYXQgdGhlIHBvd2VyIGRvbWFpbiB3ZW50IGRvd24gYW5k
IGJhY2sgdXAgYmV0d2Vlbgo+Pj4+IHRlc3RzLCBzbyB0aGUgVlBVIHdvdWxkIGJlIHBvd2VyIGN5
Y2xlZCAoYW5kIHRoZXJlZm9yZSByZXNldCkgdGhhdCB3YXkuCj4+Pj4gU28sIEkgdGhpbmsgaXQg
aXMgd29ydGggdGVzdGluZyB0aGF0Lgo+Pj4KPj4+IFRoaXMgd2FzIGxhc3QgeWVhciB3aGlsZSBJ
IHdhcyB3cml0aW5nIEhFVkMgZGVjb2RpbmcgY29kZSBmb3IgQ2hyb21pdW0uCj4+PiBJSVJDIHRo
ZSBTQU9EQkxLX0FfTWFpbkNvbmNlcHRfNCB0ZXN0IHZlY3RvciBmcm9tIHRoZSBvZmZpY2lhbCBI
RVZDIHRlc3QKPj4+IHN1aXRlIGRvZXMgY2F1c2Ugb3VyIHN0YWNrIHRvIGNyYXNoLCBidXQgR3N0
cmVhbWVyIHNlZW1lZCB0byBoYW5kbGUgaXQKPj4+IE9LLiBJdCBjb3VsZCBiZSB0aGF0IHRoZSBD
aHJvbWl1bSBkZWNvZGVyIHN0YWNrIGlzIHBhc3NpbmcgYmFkIHZhbHVlcyB0bwo+Pj4gdGhlIGRl
Y29kZXIuCj4+Cj4+IFRoYXQgY2FuIGJlIGVhc2lseSB0ZXN0ZWQgd2l0aCBmdHJhY2UgZW5hYmxl
ZC4gSSB3YXMganVzdCB0cmFja2luZyBkb3duCj4+IGFuIGlzc3VlIHdpdGggZ3N0cmVhbWVyIGFu
ZCBhZGRlZCB0aGUgZm9sbG93aW5nIHBhdGNoIHRvIHRoZSBoYW50cm8KPj4gZHJpdmVyLiBUaGVu
Ogo+Pgo+PiBlY2hvID4gL3N5cy9rZXJuZWwvZGVidWcvdHJhY2luZy90cmFjZQo+PiA8cnVuIGZh
aWwgdGVzdD4KPj4gY2F0IC9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvdHJhY2UgPiAvdG1wL2Zh
aWwudHJhY2UKPj4gZWNobyA+IC9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvdHJhY2UKPj4gPHJ1
biBwYXNzIHRlc3Q+Cj4+IGNhdCAvc3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL3RyYWNlID4gL3Rt
cC9wYXNzLnRyYWNlCj4+ICMgcmVtb3ZlIHRpbWUgc3RhbXBzIGV0Yy4KPj4gZGlmZiAvdG1wL3tm
YWlsLHBhc3N9LnRyYWNlCj4+Cj4+IFlvdSBzaG91bGQgc2VlIHdoZXRoZXIgc29tZSByZWdpc3Rl
ciBwcm9ncmFtbWluZyBkaWZmZXJzIGJldHdlZW4KPj4gZ3N0cmVhbWVyIGFuZCBjaHJvbWl1bS4K
PiAKPiBJIGVuZGVkIHVwIHVzaW5nIFZJU0wgdG8gY29tcGFyZSB0aGUgY29udHJvbHMgc2V0LiBJ
IGRpZCBmaW5kIGEgYnVnLgo+IEl0IHN0aWxsIGhhcmQgaGFuZ3MgYWZ0ZXIgYSBjb3VwbGUgZnJh
bWVzLCBzbyBJIGd1ZXNzIEknZCBuZWVkIHRvIHVzZQo+IHlvdXIgbWV0aG9kLCBidXQgZG8gcHJp
bnRrIGluc3RlYWQuCj4gCj4gQlRXLCBJIHdvbmRlciBpZiB3ZSBzaG91bGRuJ3QgYWRkIGEgcmVz
ZXQgb3AsIGlmIG9ubHkganVzdCB0byBzdG9wIHRoZQo+IGhhcmR3YXJlPyBUaGF0IGlzLCBkbyB0
aGUgc2FtZSB0d28gcmVnaXN0ZXIgd3JpdGVzIGFzIGluIHRoZSBIYW50cm8gRzIKPiBpbnRlcnJ1
cHQgaGFuZGxlci4KCllvdSBtZWFuIHRoZXNlIHR3byA/CgozOCAgICAgICAgIHZkcHVfd3JpdGUo
dnB1LCAwLCBHMl9SRUdfSU5URVJSVVBUKTsKMzkgICAgICAgICB2ZHB1X3dyaXRlKHZwdSwgRzJf
UkVHX0NPTkZJR19ERUNfQ0xLX0dBVEVfRSwgRzJfUkVHX0NPTkZJRyk7CgpBcyBmYXIgYXMgSSB1
bmRlcnN0YW5kIHRoaXMsIHRoYXQgb25seSBjbGVhcnMgSVJRIGFuZCBnYXRlcyB0aGUgY2xvY2sg
Cm9mZiwgYnV0IGl0IGRvZXNuJ3QgcmVzZXQgdGhlIElQIHN0YXRlLCBkb2VzIGl0ID8KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
