Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C10FBC19F32
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Mar 2025 07:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z2WjVdgrmD2gwDUpGv7PNBV5roFGONH26gI+pQnNTcw=; b=WBUJXNbkDIfo69yr/XbfnVX3Ed
	i+N6UWeBGg+W1Hq02bJ+w3raL2valUNRSD7vldfgDrzr/t07oJLU1P0dj06Ln7w8pUS7pE6/UI/Mh
	q8/SS15ILnab/Zfl9j1SFzkL+/TAvYfB9Ng2P9QwRUp6sVVSV1DddibS8Ws/LUnB8pWN4f1o0lLqi
	5boypfu+2n7yt1IupXi861PoFV/w9pyhgkucOHrukSDB2GZeh3HOY+GgYnjectnkhySGAv+Nws0pX
	2g/HOJ/cW56lxM11iLA9rBGY6T66GaIZ62nWTI1DYQyKLMxYYaD8KNFSMqDszWZEx/8RNW70Ir1MQ
	MubGX49Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1todYA-0000000FYiP-2llw;
	Sun, 02 Mar 2025 07:15:46 +0000
Received: from mail-m1973189.qiye.163.com ([220.197.31.89])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1todY7-0000000FYfb-1XxF;
	Sun, 02 Mar 2025 07:15:44 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id ca138e88;
	Sun, 2 Mar 2025 15:15:30 +0800 (GMT+08:00)
Message-ID: <f835a852-24b8-4279-8e4b-42517d694493@rock-chips.com>
Date: Sun, 2 Mar 2025 15:15:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 04/15] drm/bridge: analogix_dp: Remove the unnecessary
 calls to clk_disable_unprepare() during probing
To: Doug Anderson <dianders@chromium.org>
References: <20250224081325.96724-1-damon.ding@rock-chips.com>
 <20250224081325.96724-5-damon.ding@rock-chips.com>
 <CAD=FV=X7iWOyAvdfRDyFA9kdr+utU_aAaJ5F7nAsaHp2fMQgVw@mail.gmail.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <CAD=FV=X7iWOyAvdfRDyFA9kdr+utU_aAaJ5F7nAsaHp2fMQgVw@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUhPQlYZTx9PSh0YTx4ZSUJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9555b5c2df03a3kunmca138e88
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pjo6Lgw6CzIKHUsaFQsLF0tL
	OBUKCU9VSlVKTE9LQ0JCTEhKQ01CVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJS0hJNwY+
DKIM-Signature: a=rsa-sha256;
	b=Aqh6ofGacuT+B/WiOkyQRxEZYkd5NWw7bNn++OmrLNSFR5Y2zQSQ6S4knhbwrlYkwPve/ppWG4WrEx6B3hdO/jgE+1l3hEYxMT3Ah6BXdq2v3svwOMcgcj3L9US+GjHWVgNzBiTwKuNOceJpI6UFEEg1IWwgUjUnBrgLUK7S/mM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=8d5ejZu4ZY9Y9Zh2+eVlwxl7XvRzlgNDw9s/Y5LNOs0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250301_231543_552372_898B5B00 
X-CRM114-Status: GOOD (  15.12  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, dmitry.baryshkov@linaro.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRG91ZywKCk9uIDIwMjUvMi8yNSA5OjQwLCBEb3VnIEFuZGVyc29uIHdyb3RlOgo+IEhpLAo+
IAo+IE9uIE1vbiwgRmViIDI0LCAyMDI1IGF0IDEyOjE04oCvQU0gRGFtb24gRGluZyA8ZGFtb24u
ZGluZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+Cj4+IFdpdGggdGhlIGNvbW1pdCBmMzc5NTIz
MzljYzIgKCJkcm0vYnJpZGdlOiBhbmFsb2dpeF9kcDogaGFuZGxlIGNsb2NrIHZpYQo+PiBydW50
aW1lIFBNIiksIHRoZSBQTSBvcGVyYXRpb25zIGNhbiBoZWxwIGVuYWJsZS9kaXNhYmxlIHRoZSBj
bG9jay4gVGhlCj4+IGVycl9kaXNhYmxlX2NsayBsYWJlbCBhbmQgY2xrX2Rpc2FibGVfdW5wcmVw
YXJlKCkgb3BlcmF0aW9ucyBhcmUgbm8KPj4gbG9uZ2VyIG5lY2Vzc2FyeSBiZWNhdXNlIHRoZSBh
bmFsb2dpeF9kcF9yZXN1bWUoKSB3aWxsIG5vdCBiZSBjYWxsZWQKPj4gZHVyaW5nIHByb2Jpbmcu
Cj4+Cj4+IEZpeGVzOiBmMzc5NTIzMzljYzIgKCJkcm0vYnJpZGdlOiBhbmFsb2dpeF9kcDogaGFu
ZGxlIGNsb2NrIHZpYSBydW50aW1lIFBNIikKPiAKPiBXaGVuIHBvc3NpYmxlICJGaXhlcyIgc2hv
dWxkIGJlIHB1c2hlZCB0byB0aGUgc3RhcnQgb2YgeW91ciBzZXJpZXMgc28KPiBpdCdzIG9idmlv
dXMgdGhleSBoYXZlIG5vIGRlcGVuZGVuY2llcyB3aGVuIGJlaW5nIHBpY2tlZCB0byBzdGFibGUK
PiBrZXJuZWxzLiBUaGF0IHNob3VsZCBiZSBwb3NzaWJsZSBoZXJlLgo+IAo+PiBTaWduZWQtb2Zm
LWJ5OiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hpcHMuY29tPgo+PiAtLS0KPj4gICAu
Li4vZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jIHwgMTggKysrKyst
LS0tLS0tLS0tLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTMgZGVs
ZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxv
Z2l4L2FuYWxvZ2l4X2RwX2NvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgv
YW5hbG9naXhfZHBfY29yZS5jCj4+IGluZGV4IGUyM2FmNjc0ZDkxYy4uZDlkYWZiMDM4ZTdhIDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2Rw
X2NvcmUuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4
X2RwX2NvcmUuYwo+PiBAQCAtMTYwOCwxMCArMTYwOCw4IEBAIGFuYWxvZ2l4X2RwX3Byb2JlKHN0
cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGFuYWxvZ2l4X2RwX3BsYXRfZGF0YSAqcGxhdF9kYXRh
KQo+PiAgICAgICAgICByZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2UocGRldiwgSU9SRVNPVVJD
RV9NRU0sIDApOwo+Pgo+PiAgICAgICAgICBkcC0+cmVnX2Jhc2UgPSBkZXZtX2lvcmVtYXBfcmVz
b3VyY2UoJnBkZXYtPmRldiwgcmVzKTsKPiAKPiBUaGVyZSBpcyBhIGNvbnRleHQgY29uZmxpY3Qg
d2hlbiBJIGFwcGx5IHRvIGRybS1taXNjLW5leHQgYmVjYXVzZSBvZgo+IGNvbW1pdCA0M2MwMGZi
MWE1MTggKCJkcm0vYnJpZGdlOiBhbmFsb2dpeF9kcDogVXNlCj4gZGV2bV9wbGF0Zm9ybV9pb3Jl
bWFwX3Jlc291cmNlKCkiKS4gWW91IHByb2JhYmx5IHNob3VsZCByZWJhc2UgYW5kCj4gcmUtYXBw
bHkuCj4gCj4gQXNpZGUgZnJvbSB0aGUgY29udGV4dCBjb25mbGljdCwgdGhpcyBsb29rcyBncmVh
dCB0byBtZToKPiAKPiBTdWdnZXN0ZWQtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNo
cm9taXVtLm9yZz4KPiBSZXZpZXdlZC1ieTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hy
b21pdW0ub3JnPgo+IAo+IAoKQWZ0ZXIgcmViYXNpbmcsIEkgZm91bmQgdGhlIGNvbmZsaWN0LiBJ
IHdpbGwgbW92ZSB0aGlzIHBhdGNoIHRvIGEgCnNlcGFyYXRlIHNlcmllcyBhbmQgZW5zdXJlIGl0
IGhhcyBubyBkZXBlbmRlbmNpZXMuCgpCZXN0IHJlZ2FyZHMKRGFtb24KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
