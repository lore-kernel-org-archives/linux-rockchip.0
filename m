Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F187AF46456
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Mar 2026 11:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXmdSRCcz3v1ikIlJ3KV5jNdpSpVs0wVGcGBWrtJHO0=; b=0OagLdDCWmJQ1v
	i1dfZlU+XuQJrlfnsQETqMIJOEvNZLekoWJptjpyJzjiX6xmsAk8fxCalsEi7HBvVlf36+qYsAnFO
	YRTDHqBq/hCdXWcf2dHxBx+N9Ly8MKcnqCV6CBvrZ6xhuDoJYZBG1j0JgW8q/wmq6ahvc6jEwqoVO
	GVSRo4m2XLxOBW7/77TWx7B2p07ZqDL/pbdDFDE4LOppYN1QvL9mGAoPbLFrsHjqhqYN9Rx2I4nt1
	tInD6ZmftOj88PNWglRVNLWYyvwVDEnpwRNHGXT7d2UNQFcUrWIeEdgUTLTS8ILS/EnBw3nUrsZdN
	8YrVElmWrzg/3fkjX6Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w26IW-00000003qf9-0qJS;
	Mon, 16 Mar 2026 11:39:48 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w26IR-00000003qeP-3BTa
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Mar 2026 11:39:45 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 97AA04E426C1;
	Mon, 16 Mar 2026 11:39:38 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 4EB815FC4A;
	Mon, 16 Mar 2026 11:39:38 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7DF5310369E73;
	Mon, 16 Mar 2026 12:39:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773661176; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=9LLjJ8Qd6wNXbg06pYIRYcPmRb/RcOo68671SJw5PZI=;
	b=YrywEDwd/DzMcHZz4wMx/qDUUpvovYoTrhVPGEOmyWw/GimO4aRGWgjfaRUp096SdfisEu
	fL7fyiN9g5ShHiC0bJ1HLcSiRmmromhJMWEGykRppDiKWCfJyd8CE9upne8c7MS4veJl9C
	F2567Jh16wPZp2rva8ZWs5sa/ktvOyV7GgKVD1l9lwwqvogkfchCWNn0uiaK9l1+o4CsY/
	8XM9Y78ODDYhIPF3fR5xInhUpzGGiyzeH9/8xsONdMXOwnDHMCWJaUzPBNzQ9Pm/aZwkh+
	4jh1gU77n4mMk8A8bpwAPpZU8p6RPatwWYKsvXQsYdR0qnmwUDqWFz4JFrOonQ==
Mime-Version: 1.0
Date: Mon, 16 Mar 2026 12:39:24 +0100
Message-Id: <DH46EQM1PED9.2BVW9DWVIMEJZ@bootlin.com>
Subject: Re: [PATCH v10 11/18] drm/bridge: analogix_dp: Apply
 drm_bridge_connector helper
Cc: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
 <mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
 <simona@ffwll.ch>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <kernel@pengutronix.de>, <festevam@gmail.com>, <inki.dae@samsung.com>,
 <sw0312.kim@samsung.com>, <kyungmin.park@samsung.com>, <krzk@kernel.org>,
 <alim.akhtar@samsung.com>, <jingoohan1@gmail.com>,
 <p.zabel@pengutronix.de>, <hjc@rock-chips.com>, <heiko@sntech.de>,
 <andy.yan@rock-chips.com>, <dmitry.baryshkov@oss.qualcomm.com>,
 <dianders@chromium.org>, <m.szyprowski@samsung.com>,
 <jani.nikula@intel.com>, <linux-kernel@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <imx@lists.linux.dev>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-samsung-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
To: "Damon Ding" <damon.ding@rock-chips.com>, <andrzej.hajda@intel.com>,
 <neil.armstrong@linaro.org>, <rfoss@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260310012458.169272-1-damon.ding@rock-chips.com>
 <20260310012458.169272-12-damon.ding@rock-chips.com>
 <DH1TKWREZMFK.3BY4NY36BXLXG@bootlin.com>
 <bebadd3b-2fd1-404e-bc64-205c8b44880c@rock-chips.com>
In-Reply-To: <bebadd3b-2fd1-404e-bc64-205c8b44880c@rock-chips.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_043943_949910_3D1986F8 
X-CRM114-Status: GOOD (  13.35  )
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

T24gTW9uIE1hciAxNiwgMjAyNiBhdCA0OjE3IEFNIENFVCwgRGFtb24gRGluZyB3cm90ZToKPiBI
aSBMdWNhLAo+Cj4gT24gMy8xNC8yMDI2IDE6MTAgQU0sIEx1Y2EgQ2VyZXNvbGkgd3JvdGU6Cj4+
IEhlbGxvIERhbW9uLAo+Pgo+PiBPbiBUdWUgTWFyIDEwLCAyMDI2IGF0IDI6MjQgQU0gQ0VULCBE
YW1vbiBEaW5nIHdyb3RlOgo+Pj4gSW5pdGlhbGl6ZSBicmlkZ2VfY29ubmVjdG9yIGZvciBib3Ro
IFJvY2tjaGlwIGFuZCBFeHlub3MgZW5jb2RlciBzaWRlcy4KPj4+IFRoZW4sIG1ha2UgRFJNX0JS
SURHRV9BVFRBQ0hfTk9fQ09OTkVDVE9SIG1hbmRhdG9yeSBmb3IgQW5hbG9naXggYnJpZGdlCj4+
PiBzaWRlLCBhcyB0aGUgcHJpdmF0ZSAmZHJtX2Nvbm5lY3RvciBpcyBubyBsb25nZXIgY3JlYXRl
ZC4KPj4+Cj4+PiBUaGUgcHJldmlvdXMgJmRybV9jb25uZWN0b3JfZnVuY3MgYW5kICZkcm1fY29u
bmVjdG9yX2hlbHBlcl9mdW5jcyBBUElzCj4+PiBhcmUgcmVwbGFjZWQgYnkgdGhlIGNvcnJlc3Bv
bmRpbmcgJmRybV9icmlkZ2VfZnVuY3MgQVBJczoKPj4+Cj4+PiBhbmFsb2dpeF9kcF9hdG9taWNf
Y2hlY2soKSAtPiBhbmFsb2dpeF9kcF9icmlkZ2VfYXRvbWljX2NoZWNrKCkKPj4+IGFuYWxvZ2l4
X2RwX2RldGVjdCgpICAgICAgIC0+IGFuYWxvZ2l4X2RwX2JyaWRnZV9kZXRlY3QoKQo+Pj4gYW5h
bG9naXhfZHBfZ2V0X21vZGVzKCkgICAgLT4gYW5hbG9naXhfZHBfYnJpZGdlX2dldF9tb2Rlcygp
Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYW5hbG9naXhfZHBfYnJpZGdlX2Vk
aWRfcmVhZCgpCj4+Pgo+Pj4gQWRkaXRpb25hbGx5LCB0aGUgY29tcGF0aWJpbGl0aWVzIG9mIEFu
YWxvZ2l4IERQIGJyaWRnZSBiYXNlZCBvbiB3aGV0aGVyCj4+PiB0aGUgbmV4dCBicmlkZ2UgaXMg
YSAncGFuZWwnLiBJZiBpdCBpcywgT1BfTU9ERVMgYW5kIE9QX0RFVEVDVCBhcmUKPj4+IHN1cHBv
cnRlZDsgSWYgbm90ICh0aGUgbmV4dCBicmlkZ2UgaXMgYSAnbW9uaXRvcicgb3IgYSBicmlkZ2Ug
Y2hpcCksCj4+PiBPUF9FRElEIGFuZCBPUF9ERVRFQ1QgYXJlIHN1cHBvcnRlZC4KPj4+Cj4+PiBU
aGUgZGV2bV9kcm1fYnJpZGdlX2FkZCgpIGlzIHBsYWNlZCBpbiBhbmFsb2dpeF9kcF9iaW5kKCkg
aW5zdGVhZCBvZgo+Pj4gYW5hbG9naXhfZHBfcHJvYmUoKSwgYmVjYXVzZSB0aGUgdHlwZSBvZiBu
ZXh0IGJyaWRnZSAodGhlIHBhbmVsLCBtb25pdG9yCj4+PiBvciBicmlkZ2UgY2hpcCkgY2FuIG9u
bHkgYmUgZGV0ZXJtaW5lZCBhZnRlciB0aGUgcHJvYmUgcHJvY2VzcyBoYXMgZnVsbHkKPj4+IGNv
bXBsZXRlZC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJv
Y2stY2hpcHMuY29tPgo+Pj4gVGVzdGVkLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dz
a2lAc2Ftc3VuZy5jb20+Cj4+PiBUZXN0ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRl
Y2guZGU+IChvbiByazM1ODgpCj4+Cj4+IC4uLgo+Pgo+Pj4gQEAgLTczLDE1ICs3MiwxMiBAQCBz
dGF0aWMgaW50IGV4eW5vc19kcF9icmlkZ2VfYXR0YWNoKHN0cnVjdCBhbmFsb2dpeF9kcF9wbGF0
X2RhdGEgKnBsYXRfZGF0YSwKPj4+ICAgCQkJCSAgIHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2Up
Cj4+PiAgIHsKPj4+ICAgCXN0cnVjdCBleHlub3NfZHBfZGV2aWNlICpkcCA9IHRvX2RwKHBsYXRf
ZGF0YSk7Cj4+PiAtCWVudW0gZHJtX2JyaWRnZV9hdHRhY2hfZmxhZ3MgZmxhZ3MgPSAwOwo+Pj4g
ICAJaW50IHJldDsKPj4+Cj4+PiAgIAkvKiBQcmUtZW1wdCBEUCBjb25uZWN0b3IgY3JlYXRpb24g
aWYgdGhlcmUncyBhIGJyaWRnZSAqLwo+Pj4gICAJaWYgKHBsYXRfZGF0YS0+bmV4dF9icmlkZ2Up
IHsKPj4+IC0JCWlmIChkcC0+aGFzX29mX2JyaWRnZSkKPj4+IC0JCQlmbGFncyA9IERSTV9CUklE
R0VfQVRUQUNIX05PX0NPTk5FQ1RPUjsKPj4+IC0KPj4+IC0JCXJldCA9IGRybV9icmlkZ2VfYXR0
YWNoKCZkcC0+ZW5jb2RlciwgcGxhdF9kYXRhLT5uZXh0X2JyaWRnZSwgYnJpZGdlLCBmbGFncyk7
Cj4+PiArCQlyZXQgPSBkcm1fYnJpZGdlX2F0dGFjaCgmZHAtPmVuY29kZXIsIHBsYXRfZGF0YS0+
bmV4dF9icmlkZ2UsIGJyaWRnZSwKPj4+ICsJCQkJCURSTV9CUklER0VfQVRUQUNIX05PX0NPTk5F
Q1RPUik7Cj4+Cj4+IFNob3VsZCB0aGlzIGJlICdmbGFncyB8IERSTV9CUklER0VfQVRUQUNIX05P
X0NPTk5FQ1RPUicgdG8gYmUgZnV0dXJlLXByb29mPwo+Pgo+Cj4gQWhhLCB0aGUgZXh5bm9zX2Rw
X2JyaWRnZV9hdHRhY2goKSBhbmQgZXZlbgo+ICZhbmFsb2dpeF9kcF9wbGF0X2RhdGEuYXR0YWNo
KCkgaGF2ZSBiZWVuIHJlbW92ZWQgaW4gW1BBVENIIHYxMCAxNi8xOF0KPiBmb3IgY29uc2lzdGVu
Y3kgYW5kIHNpbXBsaWZpY2F0aW9uLiBTaW5jZSB0aGUgb25seSBicmlkZ2UgZmxhZyBzdXBwb3J0
ZWQKPiByaWdodCBub3cgaXMgRFJNX0JSSURHRV9BVFRBQ0hfTk9fQ09OTkVDVE9SLCBsZXTigJlz
IGxlYXZlIHRoaXMgYXMgaXMgZm9yCj4gbm93LiA7LSkKCkFzIHlvdSBhcmUgZ29pbmcgdG8gc2Vu
ZCB2MTEsIEknZCBkbyB0aGF0IGNoYW5nZS4gSXQgaXMgdGhlIHJpZ2h0IHRoaW5nIGRvCnRvLCBp
dCdzIGNoZWFwLCBhbmQgaW4gY2FzZSBwYXRjaGVzIHVwIHRvIDExLzE4IGJ1dCBub3QgKHlldCkg
dXAgdG8gMTYvMTgKd2UgYXZvaWQgZW5kaW5nIHVwIHdpdGggdW5vcHRpbWFsIGNvZGUgdW50aWwg
cGF0Y2ggMTYvMTggaXMgYXBwbGllZC4KCkx1Y2EKCi0tCkx1Y2EgQ2VyZXNvbGksIEJvb3RsaW4K
RW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29t
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
