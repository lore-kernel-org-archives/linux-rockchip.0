Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00B0210775F9
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Mar 2026 18:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6viaNzF9hTVA5iVBBD8HAK8JVx+ND/pROGFZzIJJCoM=; b=fqTrZfmvncZTTO
	g0jpsLux2wljAriHahk77vpQ1FdVqwj8XI4P8xV4R4lNbzbsM/isPArXJ2dNO5h35Xg0AyDYn9bhY
	FbnJzfLtLGXqsNQDH74ajoGRlGv5G5vOlVFivcIKH8KbvgLXtAkAx68evTWgPMKP/u9X0f4QTy6wd
	iPsSp/xdgUFZoUb0o1B6xYRnqGSBffB0Bh4PiGQklv+0dlXlnBnWyJVf9G//cIuxKjEIK7XgFVGPj
	iWLfz7ObydchXB52FyEmOqXpDBEltCgIPqfp/Txf9ynwTAK5KfqiETjneMBnpaQL5D8ceph0aAlVC
	rReQo496a9OQ6favSMHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2vNx-000000098wY-1UtR;
	Wed, 18 Mar 2026 18:12:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2vNu-000000098wR-39WC
	for linux-rockchip@bombadil.infradead.org;
	Wed, 18 Mar 2026 18:12:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Riw5jy8IOHfKfVf4bkalxpzuhQ9e9ZH2jG0EajkKhPM=; b=DTNr0dB3g/5eg0G4Q2C01bO3Hd
	cHW9fuMYKrH6v8+ByJlJ35z9cvxIYSckvH46mHxB2hFW3OgcNeW1JzSbGtf+DdxebTEd3lp4HWSeM
	2pat6f7mikgFkwA2eU/euCga1FwT+ZqFteRyd4mOBxQScRwdegZcm5D0KeYpZPN1V/HBdkPsZN5NZ
	4FNCgwSA1uy37/1fNTpYx1qyjb1DGb2D/FtvkQSLh9GNgFslutZR0aLJJy8vlRHb5IK2yHJzwUg/q
	zMRpTVkpXXg8eiT+CxW7Qt97GSbRaaj4AvdQ45njofewSevBwvGGEv/lrtob9rlykpyy+38VEnOZG
	PGEjYiIw==;
Received: from bali.collaboradmins.com ([148.251.105.195])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2vNq-0000000Bzq2-3vh4
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Mar 2026 18:12:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773857556;
	bh=0UrZRLkimMDCcD2T3nHPvaaxC017oNtzYkFihTplPZg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eJ7e38SLJwx0CvRCMIqYzBnZpiwRHLdICvBTEYXxTx0u+ZM72avUXVBd/s1M+pK2Z
	 BD8tH2jG1UbJ0JqlA4EwnHyT0Mz1bUSqa1iQ0MdI+9St5y58zBZMOgq+8+Z+M3Cjfo
	 dGveAdC9BfDQIBXWWaoBTvMABj3KxsFWD6xXGjxhOjS89NT/xJRzsAP8RMZ05a5Ik+
	 NIIL3erXZdw0pEo9PLOBxI0Ul1MsRxWA1+K/FfFdqzOsLSstB3e1ip2RrXqwafpP0r
	 EKbJEjVOPrbGz1uotCbVCuhLleTufJSah55GnFjxpDNidDjIArYFJr8wZmcMut9jnv
	 xxg0Xn6N7c7tQ==
Received: from [192.168.1.90] (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BDEF717E0ED6;
	Wed, 18 Mar 2026 19:12:35 +0100 (CET)
Message-ID: <0895dfa0-9527-41b1-b991-a2bd6e0c549b@collabora.com>
Date: Wed, 18 Mar 2026 20:12:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/bridge: dw-hdmi-qp: fix multi-channel audio output
To: Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Christian Hewitt <christianshewitt@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Douglas Anderson <dianders@chromium.org>, Andy Yan
 <andy.yan@rock-chips.com>, Sugar Zhang <sugar.zhang@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260228112822.4056354-1-christianshewitt@gmail.com>
 <DH56X74P9GC9.1O123S92J60RG@bootlin.com>
 <00EE3E21-F614-429B-ACB6-19AF64CF74B3@gmail.com>
 <DH58MAETGDMM.2QS6VJDQ7UXIV@bootlin.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <DH58MAETGDMM.2QS6VJDQ7UXIV@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_181243_049297_4B9696C8 
X-CRM114-Status: GOOD (  21.47  )
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

SGkgTHVjYSwKCk9uIDMvMTcvMjYgNzozNSBQTSwgTHVjYSBDZXJlc29saSB3cm90ZToKPiBIZWxs
byBDaHJpc3RpYW4sIENyaXN0aWFuLCBKb25hcywKPiAKPiBPbiBUdWUgTWFyIDE3LCAyMDI2IGF0
IDU6NDkgUE0gQ0VULCBDaHJpc3RpYW4gSGV3aXR0IHdyb3RlOgo+Pj4gT24gMTcgTWFyIDIwMjYs
IGF0IDg6MTbigK9wbSwgTHVjYSBDZXJlc29saSA8bHVjYS5jZXJlc29saUBib290bGluLmNvbT4g
d3JvdGU6Cj4+Pgo+Pj4gSGVsbG8gQ2hyaXN0aWFuLAo+Pj4KPj4+IE9uIFNhdCBGZWIgMjgsIDIw
MjYgYXQgMTI6MjggUE0gQ0VULCBDaHJpc3RpYW4gSGV3aXR0IHdyb3RlOgo+Pj4+IEZyb206IEpv
bmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KPj4+Pgo+Pj4+IENoYW5uZWwgQWxsb2NhdGlv
biAoUEI0KSBhbmQgTGV2ZWwgU2hpZnQgSW5mb3JtYXRpb24gKFBCNSkgYXJlCj4+Pj4gY29uZmln
dXJlZCB3aXRoIHZhbHVlcyBmcm9tIFBCMSBhbmQgUEIyIGR1ZSB0byB0aGUgd3Jvbmcgb2Zmc2V0
Cj4+Pj4gYmVpbmcgdXNlZC4gVGhpcyByZXN1bHRzIGluIG1pc3NpbmcgYXVkaW8gY2hhbm5lbHMg
b3IgaW5jb3JyZWN0Cj4+Pj4gc3BlYWtlciBwbGFjZW1lbnQgd2hlbiBwbGF5aW5nIG11bHRpLWNo
YW5uZWwgYXVkaW8uCj4+Pj4KPj4+PiBVc2UgdGhlIGNvcnJlY3Qgb2Zmc2V0IHRvIGZpeCBtdWx0
aS1jaGFubmVsIGF1ZGlvIG91dHB1dC4KPj4+Pgo+Pj4+IEZpeGVzOiBmZDAxNDFkMWE4YTIgKCJk
cm0vYnJpZGdlOiBzeW5vcHN5czogQWRkIGF1ZGlvIHN1cHBvcnQgZm9yIGR3LWhkbWktcXAiKQo+
Pj4+IFJlcG9ydGVkLWJ5OiBDaHJpc3RpYW4gSGV3aXR0IDxjaHJpc3RpYW5zaGV3aXR0QGdtYWls
LmNvbT4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+
Cj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEhld2l0dCA8Y2hyaXN0aWFuc2hld2l0dEBn
bWFpbC5jb20+Cj4+Pj4gUmV2aWV3ZWQtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4u
Y2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4+Pgo+Pj4gV2hpbGUgYXBwbHlpbmcgdGhpcyBwYXRj
aCB0byBkcm0tbWljcy1maXhlcywgY2hlY2twYXRjaCBjb21wbGFpbnM6Cj4+Pgo+Pj4gIC06MTQ6
IFdBUk5JTkc6QkFEX1JFUE9SVEVEX0JZX0xJTks6IFJlcG9ydGVkLWJ5OiBzaG91bGQgYmUgaW1t
ZWRpYXRlbHkgZm9sbG93ZWQgYnkgQ2xvc2VzOiB3aXRoIGEgVVJMIHRvIHRoZSByZXBvcnQKPj4+
Cj4+PiBZb3UgY2FuIHNlbmQgdjMgd2l0aCB0aGUgbGluaywgb3IganVzdCByZXBseSB3aXRoIHRo
ZSBsaW5rIGFuZCBJJ2xsIHRha2UKPj4+IGNhcmUgb2YgYWRkaW5nIGl0IHRvIHRoZSBjb21taXQg
bWVzc2FnZS4KPj4KPj4gQXBvbG9naWVzLCBpdCBsb29rcyBsaWtlIHVzZSBvZiBSZXBvcnRlZC1i
eSB3YXMgdGlnaHRlbmVkIHNpbmNlIEkgbGFzdAo+PiB1c2VkIGl0LCBhbmQgdGhlcmXigJlzIG5v
IG9mZmljaWFsIHJlcG9ydCBhbnl3aGVyZSBJIGNhbiBsaW5rIHRvIChpdCB3YXMKPj4gYWxsIGRv
bmUgaW4gcHJpdmF0ZSBjaGFubmVscykgc28gYmV0dGVyIHRvIGp1c3QgZHJvcCBpdCBmcm9tIHRo
ZSB2MiBwYXRjaAo+PiBpZiB0aGF04oCZcyBwb3NzaWJsZT8gLSBpZiBub3QgSSBjYW4gc2VuZCBh
IHYzIHdpdGhvdXQgaXQuCj4gCj4gVGhhbmtzIGZvciB0aGUgcXVpY2sgZmVlZGJhY2suCj4gCj4g
SSBhcHBsaWVkIGtlZXBpbmcgdGhlIGNvbW1pdCBtZXNzYWdlIGFzIGlzLiBJbiBsYWNrIG9mIGEg
cHVibGljIGRpc2N1c3Npb24KPiBJIGd1ZXNzIHRoZSAnUmVwb3J0ZWQtYnknIGlzIHNvbWV3aGF0
IGluZm9ybWF0aXZlIGFueXdheS4gSSByZWFkIHRoZQo+IGNoZWNrcGF0Y2ggYXMgYSBnZW5lcmFs
IHN1Z2dlc3Rpb24sIG5vdCBhIGhhcmQgcnVsZS4KPiAKPiBTbyBub3cgdGhpcyBwYXRjaCBpcyBv
biBkcm0tbWlzYy1maXhlcywgYnV0IGRybS1taXNjLWZpeGVzIGFuZAo+IGRybS1taXNjLW5leHQg
YXJlIG5vdyBjb25mbGljdGluZyBiZWNhdXNlIG9mIG90aGVyIGNoYW5nZXMgYnkgQ3Jpc3RpYW4K
PiBDaW9jYWx0ZWEgYXBwbGllZCBpbiB0aGUgbWVhbndoaWxlIHRvIGRybS1taXNjLW5leHQsIGFu
ZCBwYXJ0aWN1bGFybHkKPiBjb21taXQgM2VhNjk5YjU2ZDMxICgiZHJtL2JyaWRnZTogZHctaGRt
aS1xcDogUmV3b3JrIEF1ZGlvIEluZm9GcmFtZQo+IGhhbmRsZXIiKS4KPiAKPiBDcmlzdGlhbiwg
Q2hyaXN0aWFuIChoZWgpLCBKb25hcywgY291bGQgeW91IHBsZWFzZSBjaGVjayB3aGV0aGVyIHRo
ZSBjb2RlCj4gb24gZHJtLW1pc2MtbmV4dCBoYXMgb3Igbm90IHRoZSBidWcgdGhhdCBpcyBmaXhl
ZCBoZXJlPyBBbmQgaWYgaXQgc3RpbGwKPiBoYXMsIHNlbmQgYSBmaXggYmFzZWQgb24gY3VycmVu
dCBkcm0tbWlzYy1uZXh0PwoKVGhlIGNvbmZsaWN0aW5nIGNvbW1pdCBpbiBkcm0tbWlzYy1uZXh0
IChpLmUuIDNlYTY5OWI1NmQzMSkgaW1wbGljaXRseSByZXNvbHZlcwp0aGlzIGF1ZGlvIHJlbGF0
ZWQgaXNzdWUgYXMgd2VsbCwgaGVuY2UgdGhlcmUgaXMgbm8gbmVlZCBmb3IgYW55IGZ1cnRoZXIg
YWN0aW9uLgoKUmVnYXJkcywKQ3Jpc3RpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
