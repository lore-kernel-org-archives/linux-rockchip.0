Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90D9FD19514
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jan 2026 18:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25SaUZ+VkT/t+0hhhOjs/gELilhF95EauT+xBGLGo8M=; b=N1JT73DiN1bCW4
	xUBvONtgRVugj9MYStnBQOAFKCPkpx/FMPYD2bBBm7wmhCNsCJOnhvkukocx1Jy63puko5Ly6MmNF
	x725do9kclJc3nMWV56d2X4iqH9GCNsYRXjplruGdWhp9fOKR7gh723Skws5RsABGHwxAOGtpL8Dx
	kV1wqvmeNEE06KnMqrNDxBat2QI5bUhO1dPmtTrN6TIdznVf7TqXE1wlqAG5LckR/U6GCEFSVn279
	hGEfSNQna7FmpbAVj7/lEaKWumRC22qeoi1HSCttTbeg/0a8qq5kv3TAM0Bm8/VyizaqfKDHDdN+x
	zlM6pNSgWm0WkiPdavDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkRhj-0000000D6Ww-3bRO;
	Mon, 26 Jan 2026 18:52:51 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkRhg-0000000D6WO-3NgM;
	Mon, 26 Jan 2026 18:52:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1769453565;
	bh=h8IB/J037qzfODb/AKC4Cviqt5GuYeUYBXKiOfbv9X8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iKRb7ZDXk27k1R3CpuO6ivYT4IXiFvBbnWpQX+Ad12rE11s4qMSHr1Vb6PEIQA3hK
	 SZO8+hUnkff/ndlJuoXtxPlZQvHW/3MIoo3891YyT70Py833ryXyh1358QOc8S03Te
	 occ+5JoSA/YQFwAJEvR3G/Cq/wBRQLRzKVkAuCLVrba6qmXSWlX+bYr2fS2T0OBE3e
	 v7Kn+usA8ImRxqXhe729EE5WIKH27QepcHrXH6SnViIv6HInNoOVt04WICvw3E2BGy
	 joPCGnCh8m0hw9+moQ4lVIr4pPzcQYJCKyb5IAhIZ9e3hQSYYr+3cRf+sFgFNhM79H
	 B6ZxqyoQfOnqA==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 08D3F17E0342;
	Mon, 26 Jan 2026 19:52:45 +0100 (CET)
Message-ID: <6de0071f-a442-44b3-9ba2-13271cb1f246@collabora.com>
Date: Mon, 26 Jan 2026 20:52:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] drm/rockchip: vop2: Support setting custom
 background color
To: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>,
 Haneen Mohammed <hamohammed.sa@gmail.com>,
 Melissa Wen <melissa.srw@gmail.com>
Cc: Robert Mader <robert.mader@collabora.com>, kernel@collabora.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20251219-rk3588-bgcolor-v4-0-2ff1127ea757@collabora.com>
 <20251219-rk3588-bgcolor-v4-4-2ff1127ea757@collabora.com>
 <d85cf4b299e929770a1b7f5be7ae61d76306e7d1.camel@collabora.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <d85cf4b299e929770a1b7f5be7ae61d76306e7d1.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_105249_001234_4D87ADD5 
X-CRM114-Status: GOOD (  17.37  )
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

SGkgTsOtY29sYXMsCgpPbiAxLzI2LzI2IDg6MzAgUE0sIE7DrWNvbGFzIEYuIFIuIEEuIFByYWRv
IHdyb3RlOgo+IE9uIEZyaSwgMjAyNS0xMi0xOSBhdCAyMzo0NyArMDIwMCwgQ3Jpc3RpYW4gQ2lv
Y2FsdGVhIHdyb3RlOgo+PiBUaGUgUm9ja2NoaXAgVk9QMiBkaXNwbGF5IGNvbnRyb2xsZXIgYWxs
b3dzIGNvbmZpZ3VyaW5nIHRoZQo+PiBiYWNrZ3JvdW5kCj4+IGNvbG9yIG9mIGVhY2ggdmlkZW8g
b3V0cHV0IHBvcnQuCj4+Cj4+IFNpbmNlIGEgcHJldmlvdXMgcGF0Y2ggaW50cm9kdWNlZCB0aGUg
QkFDS0dST1VORF9DT0xPUiBDUlRDIHByb3BlcnR5LAo+PiB3aGljaCBkZWZhdWx0cyB0byBzb2xp
ZCBibGFjaywgbWFrZSB1c2Ugb2YgaXQgd2hlbiBwcm9ncmFtbWluZyB0aGUKPj4gaGFyZHdhcmUu
Cj4+Cj4+IE5vdGUgdGhlIG1heGltdW0gcHJlY2lzaW9uIGFsbG93ZWQgYnkgdGhlIGRpc3BsYXkg
Y29udHJvbGxlciBpcwo+PiAxMGJwYywKPj4gd2hpbGUgdGhlIGFscGhhIGNvbXBvbmVudCBpcyBu
b3Qgc3VwcG9ydGVkLCBoZW5jZSBpZ25vcmVkLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDcmlzdGlh
biBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4g
IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIHwgMTMgKysrKysr
KysrKysrLQo+PiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmgg
fCAgNCArKysrCj4+ICAyIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9kcm1fdm9wMi5jCj4+IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92
b3AyLmMKPj4gaW5kZXggNDk4ZGYwY2U0NjgwLi4zYTIzMmQwZDRhY2IgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+IEBAIC0xNTU0LDYg
KzE1NTQsNyBAQCBzdGF0aWMgdm9pZCB2b3AyX3Bvc3RfY29uZmlnKHN0cnVjdCBkcm1fY3J0Ywo+
PiAqY3J0YykKPj4gIAlzdHJ1Y3Qgdm9wMl92aWRlb19wb3J0ICp2cCA9IHRvX3ZvcDJfdmlkZW9f
cG9ydChjcnRjKTsKPj4gIAlzdHJ1Y3Qgdm9wMiAqdm9wMiA9IHZwLT52b3AyOwo+PiAgCXN0cnVj
dCBkcm1fZGlzcGxheV9tb2RlICptb2RlID0gJmNydGMtPnN0YXRlLT5hZGp1c3RlZF9tb2RlOwo+
PiArCXU2NCBiZ2NvbG9yID0gY3J0Yy0+c3RhdGUtPmJhY2tncm91bmRfY29sb3I7Cj4+ICAJdTE2
IHZ0b3RhbCA9IG1vZGUtPmNydGNfdnRvdGFsOwo+PiAgCXUxNiBoZGlzcGxheSA9IG1vZGUtPmNy
dGNfaGRpc3BsYXk7Cj4+ICAJdTE2IGhhY3Rfc3QgPSBtb2RlLT5jcnRjX2h0b3RhbCAtIG1vZGUt
PmNydGNfaHN5bmNfc3RhcnQ7Cj4+IEBAIC0xNTk5LDcgKzE2MDAsMTEgQEAgc3RhdGljIHZvaWQg
dm9wMl9wb3N0X2NvbmZpZyhzdHJ1Y3QgZHJtX2NydGMKPj4gKmNydGMpCj4+ICAJCXZvcDJfdnBf
d3JpdGUodnAsIFJLMzU2OF9WUF9QT1NUX0RTUF9WQUNUX0lORk9fRjEsCj4+IHZhbCk7Cj4+ICAJ
fQo+PiAgCj4+IC0Jdm9wMl92cF93cml0ZSh2cCwgUkszNTY4X1ZQX0RTUF9CRywgMCk7Cj4+ICsJ
LyogQmFja2dyb3VuZCBjb2xvciBpcyBwcm9ncmFtbWVkIHdpdGggMTAgYml0cyBvZiBwcmVjaXNp
b24KPj4gKi8KPj4gKwl2YWwgPSBGSUVMRF9QUkVQKFJLMzU2OF9WUF9EU1BfQkdfX0RTUF9CR19S
RUQsCj4+IERSTV9BUkdCNjRfR0VUUihiZ2NvbG9yKSA+PiA2KTsKPj4gKwl2YWwgfD0gRklFTERf
UFJFUChSSzM1NjhfVlBfRFNQX0JHX19EU1BfQkdfR1JFRU4sCj4+IERSTV9BUkdCNjRfR0VURyhi
Z2NvbG9yKSA+PiA2KTsKPj4gKwl2YWwgfD0gRklFTERfUFJFUChSSzM1NjhfVlBfRFNQX0JHX19E
U1BfQkdfQkxVRSwKPj4gRFJNX0FSR0I2NF9HRVRCKGJnY29sb3IpID4+IDYpOwo+IAo+IFdoeSBh
cmVuJ3QgdGhlIERSTV9BUkdCNjRfR0VUKl9CUEMoKSBoZWxwZXJzIHVzZWQgaGVyZSB0byBnZXQg
dGhlCj4gdmFsdWVzIHdpdGggYSBjdXN0b20gcHJlY2lzaW9uPwoKVGhhdCdzIGZvciBwZXJmb3Jt
YW5jZSByZWFzb25zLCBwbGVhc2Ugc2VlICJDaGFuZ2VzIGluIHY0IiBzZWN0aW9uIGluIHRoZSBj
b3ZlcgpsZXR0ZXIuICBJIHNob3VsZCBoYXZlIHByb2JhYmx5IGFkZGVkIGEgY29tbWVudCBoZXJl
IChub3RlZCBmb3IgdjUpLgoKVGhhbmtzIGZvciB0aGUgcmV2aWV3IQoKUmVnYXJkcywKQ3Jpc3Rp
YW4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
