Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BBF60A260B
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 10:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=cYEH1Tij;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=Vhl8EtaG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nHQ0EVUXcxROqO5hbxEIEZQLUZSES4lFqpIjwvlP17k=; b=cYEH1Tij2zxduWrhhNLc11nBVa
	XA1LG0jH0IAwqGzQdaYxudZSfYrVcrtMupQUAkkg9Sm/+Kb4ROpUjAJs5gKw9OLElIX4wY+SAYeyM
	MXee77Z2PUP8rmFB/MMlWV7GVy4pZ0BKRci8DqTEQ8yKVmij9cU0msAUBM8Kw6iMPit1kMdQsRlzp
	+ClP6u3hOF1b0vIg9pKDmS9LwKlIijgFih5WJlsSng056kQEGZML0RpHdcyEQJD/CFWD2G406hjvt
	PexksC2FUJg0tvttybGXbWCiv5dk/SI1WhW1Bovz8SUnxmbNLj5EXlaDIL0GvvzU8oj5pUJaZcyny
	tFJQl75w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMNDN-00000008wXf-3myC;
	Thu, 29 Oct 2026 10:18:33 +0000
Received: from mail-m81136.xmail.ntesmail.com ([156.224.81.136])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMNDH-00000008wWz-09Yz;
	Thu, 29 Oct 2026 10:18:31 +0000
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 52cbb8f47;
	Thu, 29 Oct 2026 18:18:12 +0800 (GMT+08:00)
Message-ID: <503d1a69-4e9b-4039-9e6e-3f1cc14cb493@rock-chips.com>
Date: Thu, 29 Oct 2026 18:18:11 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 00/18] Add HPD support for Rockchip Analogix DP
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jingoo Han <jingoohan1@gmail.com>, Inki Dae <inki.dae@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Peter Griffin <peter.griffin@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Heiko Stuebner <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <CGME20261027133735eucas1p217fbce1514e5d83c14e64d8d0b1ae867@eucas1p2.samsung.com>
 <20261027132810.1746118-1-damon.ding@rock-chips.com>
 <c451af42-2e79-43fd-b66e-08a2b01283c6@samsung.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <c451af42-2e79-43fd-b66e-08a2b01283c6@samsung.com>
X-HM-Tid: 0aa1872acf1203a8kunmcca4554e4f0ec9
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaTRpDVkhIGk0dS0MaTh5PQ1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5KVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=Vhl8EtaGol9ECLa9bh5/0LlcIkN4b9YV3O7/FJ/kRkU/+QfhM5JW1YSwP6V9ITwPs/JfioMrXCiT5XfHVNJAQI/oRMi6H8LUoKiOfV8FfeFLnZO4/6IzPyyv/zc+LQqKgD5UhCJpN4mLXMJdImAjVPpNlL1Pwc5IwDfZD4h6HUA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=rd623ZTzi7rpegKU0r+iCQY9Cdo6i2YNjY/ptU34dog=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_031828_608091_E45160E0 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgTWFyZWssCgpPbiAxMC8yOS8yMDI2IDQ6MjkgUE0sIE1hcmVrIFN6eXByb3dza2kgd3JvdGU6
Cj4gT24gMjcuMTAuMjAyNiAxNDoyNywgRGFtb24gRGluZyB3cm90ZToKPj4gVGhpcyBzZXJpZXMg
aW1wcm92ZXMgdGhlIEhQRCAoSG90cGx1ZyBEZXRlY3QpIGludGVycnVwdCBoYW5kbGluZyBpbgo+
PiB0aGUgQW5hbG9naXggRFAgZHJpdmVyIHRvIGVuYWJsZSByZWxpYWJsZSBuYXRpdmUgSFBEIHBp
biBkZXRlY3Rpb24gb24KPj4gUm9ja2NoaXAgcGxhdGZvcm1zLCBhbmQgaW50cm9kdWNlcyBwbGF0
Zm9ybS1zcGVjaWZpYyBIUEQgZGV0ZWN0aW9uCj4+IHNjaGVtZXMgd2l0aCBmaW5lLWdyYWluZWQg
aW50ZXJydXB0IGNvbnRyb2wuCj4+Cj4+IE9uIFJvY2tjaGlwIHBsYXRmb3JtcywgdGhlIEFuYWxv
Z2l4IERQIG5hdGl2ZSBIUEQgcGluIElSUSByZXF1aXJlcyB0aGUKPj4gRFAgY29udHJvbGxlciB0
byByZW1haW4gcG93ZXJlZCwgY2xvY2tlZCBhbmQgaW5pdGlhbGl6ZWQgdG8gZ2VuZXJhdGUKPj4g
cGx1Zy91bnBsdWcgaW50ZXJydXB0cy4gVGhlIHByZXZpb3VzIGRyaXZlciBlbmFibGVkL2Rpc2Fi
bGVkIElSUSBkdXJpbmcKPj4gYnJpZGdlIGVuYWJsZS9kaXNhYmxlLCB3aGljaCBsZWZ0IG5vIEhQ
RCBkZXRlY3Rpb24gd2hlbiB0aGUgZGlzcGxheQo+PiBwaXBlbGluZSB3YXMgaW5hY3RpdmUuIEFk
ZGl0aW9uYWxseSwgdGhlIGludGVycnVwdCBtdXRlL3VubXV0ZS9jbGVhcgo+PiByb3V0aW5lcyBv
cGVyYXRlZCBvbiBhbGwgSFBEIGludGVycnVwdCBiaXRzIHVuY29uZGl0aW9uYWxseSwgbGFja2lu
Zwo+PiB0aGUgZ3JhbnVsYXJpdHkgbmVlZGVkIGZvciBwZXItZXZlbnQgY29udHJvbC4KPj4KPj4g
VGhlIHNlcmllcyByZW9yZ2FuaXplcyBJUlEgYW5kIHBtX3J1bnRpbWUgbWFuYWdlbWVudCBpbnRv
IGJpbmQvdW5iaW5kLAo+PiBhZGRzIElSUUZfT05FU0hPVCB0byBlbGltaW5hdGUgcmVhZC1tb2Rp
Znktd3JpdGUgcmFjZXMgb24gaW50ZXJydXB0Cj4+IG1hc2sgcmVnaXN0ZXJzIGJldHdlZW4gaGFy
ZGlycSBhbmQgdGhyZWFkZWQgaGFuZGxlcnMsIGNvbnZlcnRzIHRoZQo+PiBpbnRlcnJ1cHQgdHlw
ZSBkZXRlY3Rpb24gdG8gYSBiaXRtYXNrLWJhc2VkIHNjaGVtZSBmb3IgZmluZS1ncmFpbmVkCj4+
IG11dGUvdW5tdXRlL2NsZWFyIG9wZXJhdGlvbnMsIGFuZCBjb25maWd1cmVzIFJvY2tjaGlwIHBs
YXRmb3JtcyB0byB1c2UKPj4gdGhlIEhPVFBMVUdfQ0hHIGludGVycnVwdCB3aXRoIGEgMm1zIEhQ
RCBkZWdsaXRjaCBzZXR0aW5nIGZvciBiZXR0ZXIKPj4gc3RhYmlsaXR5Lgo+Pgo+PiBGdXJ0aGVy
bW9yZSwgdGhlIG5leHQgYnJpZGdlIGlzIG5vdyByZXNvbHZlZCBpbnRvIGJyaWRnZS0+bmV4dF9i
cmlkZ2UKPj4gaW5zdGVhZCBvZiB0aGUgcGxhdGZvcm0gZGF0YSBmaWVsZCwgdGhlIGZvcmNlZCBj
b25uZWN0ZWQtc3RhdHVzIGxvZ2ljCj4+IGlzIHJlc3RyaWN0ZWQgdG8gcGFuZWwgZW5kcG9pbnRz
IGJhc2VkIG9uIHRoZSBicmlkZ2UgY2hhaW4sIGFuZCBIUEQKPj4gZXZlbnRzIGZyb20gZG93bnN0
cmVhbSBicmlkZ2VzIChlLmcuIGRpc3BsYXktY29ubmVjdG9yIHdpdGggaHBkLWdwaW9zKQo+PiBh
cmUgaGFuZGxlZCB0aHJvdWdoIHRoZSAuaHBkX25vdGlmeSBjYWxsYmFjay4KPj4KPj4gVGVzdGVk
IG9uIFJLMzU3NiB3aXRoIGJvdGggbmF0aXZlIEhQRCBwaW4gYW5kIEdQSU8gSFBEIGNvbmZpZ3Vy
YXRpb25zLgo+Pgo+PiBOYXRpdmUgSFBEIHBpbiBtb2RlOgo+Pgo+PiAgICAmZWRwIHsKPj4gICAg
ICAgIHN0YXR1cyA9ICJva2F5IjsKPj4gICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7
Cj4+ICAgICAgICBwaW5jdHJsLTAgPSA8JmVkcF90eG0wX3BpbnM+Owo+PiAgICB9Owo+Pgo+PiBH
UElPIEhQRCBtb2RlOgo+Pgo+PiAgICAmZWRwIHsKPj4gICAgICAgIHN0YXR1cyA9ICJva2F5IjsK
Pj4gICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ICAgICAgICBwaW5jdHJsLTAg
PSA8JmVkcDBfaHBkPjsKPj4gICAgICAgIGhwZC1ncGlvcyA9IDwmZ3BpbzQgUktfUEMxIEdQSU9f
QUNUSVZFX0hJR0g+Owo+PiAgICB9Owo+Pgo+PiAgICAmcGluY3RybCB7Cj4+ICAgICAgICBlZHAg
ewo+PiAgICAgICAgICAgIGVkcDBfaHBkOiBlZHAwLWhwZCB7Cj4+ICAgICAgICAgICAgICAgIHJv
Y2tjaGlwLHBpbnMgPSA8NCBSS19QQzEgMCAmcGNmZ19wdWxsX25vbmU+Owo+PiAgICAgICAgICAg
IH07Cj4+ICAgICAgICB9Owo+PiAgICB9Owo+Pgo+PiBEaXNwbGF5LWNvbm5lY3RvciBtb2RlIChE
UCBjb25uZWN0b3Igd2l0aG91dCBIUEQgR1BJTyk6Cj4+Cj4+ICAgICZlZHBfb3V0X2Nvbm4gewo+
PiAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZkcF9jb25faW4+Owo+PiAgICB9Owo+Pgo+PiAg
ICBkcC1jb24gewo+PiAgICAgICAgY29tcGF0aWJsZSA9ICJkcC1jb25uZWN0b3IiOwo+PiAgICAg
ICAgbGFiZWwgPSAiRFAgT1VUIjsKPj4gICAgICAgIHR5cGUgPSAiZnVsbC1zaXplIjsKPj4KPj4g
ICAgICAgIHBvcnQgewo+PiAgICAgICAgICAgIGRwX2Nvbl9pbjogZW5kcG9pbnQgewo+PiAgICAg
ICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JmVkcF9vdXRfY29ubj47Cj4+ICAgICAgICAg
ICAgfTsKPj4gICAgICAgIH07Cj4+ICAgIH07Cj4+Cj4+IERpc3BsYXktY29ubmVjdG9yIG1vZGUg
KERQIGNvbm5lY3RvciB3aXRoIEhQRCBHUElPKToKPj4KPj4gICAgZHAtY29uIHsKPj4gICAgICAg
IGNvbXBhdGlibGUgPSAiZHAtY29ubmVjdG9yIjsKPj4gICAgICAgIGxhYmVsID0gIkRQIE9VVCI7
Cj4+ICAgICAgICB0eXBlID0gImZ1bGwtc2l6ZSI7Cj4+ICAgICAgICBwaW5jdHJsLTAgPSA8JmVk
cDBfaHBkPjsKPj4gICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ICAgICAgICBo
cGQtZ3Bpb3MgPSA8JmdwaW80IFJLX1BDMSBHUElPX0FDVElWRV9ISUdIPjsKPj4KPj4gICAgICAg
IHBvcnQgewo+PiAgICAgICAgICAgIGRwX2Nvbl9pbjogZW5kcG9pbnQgewo+PiAgICAgICAgICAg
ICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JmVkcF9vdXRfY29ubj47Cj4+ICAgICAgICAgICAgfTsK
Pj4gICAgICAgIH07Cj4+ICAgIH07Cj4+Cj4+IEFsbCBmb3VyIGNvbmZpZ3VyYXRpb25zIGRldGVj
dCBjYWJsZSBwbHVnL3VucGx1ZyBldmVudHMgY29ycmVjdGx5Lgo+IAo+IFRlc3RlZC1ieTogTWFy
ZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgo+IAo+IFNub3csIFBlYWNo
LVBpdCBhbmQgUGVhY2gtUGkgQ2hyb21lYm9va3Mgc3RpbGzCoHdvcmsgZmluZSB3aXRoIHRoaXMg
cGF0Y2hzZXQuCj4gCgpUaGFua3MgZm9yIHlvdXIgdGVzdGluZyBhbmQgY29uZmlybWF0aW9uLgoK
QmVzdCByZWdhcmRzLApEYW1vbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
