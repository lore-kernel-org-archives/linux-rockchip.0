Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF55CC83F03
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Jul 2025 10:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVGh+QGPsDiDB2iOuheavZ4HtB7aMCfoo7ybWqtiWZ8=; b=4glLQU6XhVhFRG
	Kr3nWqyxufBUmXNz/t01jDpQ9amtBq/CDWl7MbNWhVhQohnmXwO1CL13c1dFd0dHOaxeTDsJofkyH
	EQ1QrqxtBL5kmd+TEIjcJ6Ta43Rcg3X4VOcUCbgcpwA8zAJegXHoR4ciPrgk9soy9kjU3+zJZ+dWq
	WVwc9K8zt5i0DDhLVN+jnBLsmfffSDyK5VOe0qd6Q25av4J1OI1gJjPX8Lrz4agsiyrpO+A04JUVw
	rg3jBmwAaX8a77PbINbrkj3BvBEoFn4BLICYYAzLCA8HbIem1gHu7ytBFNovxGxpGjXi4jYnsIYYQ
	jL5Ecg4r5Ilva9Lv+mgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYMZj-0000000081c-3dL0;
	Sun, 06 Jul 2025 10:26:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYMXP-000000007r4-1st3;
	Sun, 06 Jul 2025 10:24:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ulGSgijGk7YC4OX2ohfRWb9ZlHPzonSC7Ykb9+yR8PE=; b=bIhsV5Rx1JReBI9s0QhcdYeFOr
	2A06OeQ6hmRD+/EoF6jfCAXR6MuqjNvAKN84SjrW0l03TQPhYgBsdVXPUdvySFjUBVJn+Iq3SUJy2
	rgQT6RvuAR/L0nuvAPdkCRv+0m44QJs8cw7k1yj1493jDGA62tqBO9n55Ll+VW3h0X1/bvIxwtFmO
	CeGOJ8QzRP1nOoc8IY44p/4lj7Xg6HoWcvdH3N7iQqpe58GRc76NPDUi3LrAheSFXYnqEtqgrQ9UB
	pYF8oUVNwkMlzJMyD5lt0K94x/GWsIyYMcJjM5uENGeDQfSwBHgBL+hOrVgyNGvcytiWimKBT3HZH
	mJzVYP/w==;
Received: from i53875a35.versanet.de ([83.135.90.53] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uYMWu-0002nC-9F; Sun, 06 Jul 2025 12:23:28 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: display: vop2: Add VP clock resets
Date: Sun, 06 Jul 2025 12:23:26 +0200
Message-ID: <5453371.fEcJ0Lxnt5@diego>
In-Reply-To: <20241115162120.83990-2-detlev.casanova@collabora.com>
References: <20241115162120.83990-1-detlev.casanova@collabora.com>
 <20241115162120.83990-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250706_032359_479896_9D68B636 
X-CRM114-Status: GOOD (  15.29  )
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
Cc: dri-devel@lists.freedesktop.org, Conor Dooley <conor.dooley@microchip.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Heiko Stuebner <heiko.stuebner@cherry.de>, linux-arm-kernel@lists.infradead.org, Jianfeng Liu <liujianfeng1994@gmail.com>, Sandy Huang <hjc@rock-chips.com>, Alexey Charkov <alchark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRnJlaXRhZywgMTUuIE5vdmVtYmVyIDIwMjQsIDE3OjIwOjQwIE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRGV0bGV2IENhc2Fub3ZhOgo+IEFkZCB0aGUgZG9jdW1lbnRh
dGlvbiBmb3IgVk9QMiB2aWRlbyBwb3J0cyByZXNldCBjbG9ja3MuCj4gT25lIHJlc2V0IGNhbiBi
ZSBzZXQgcGVyIHZpZGVvIHBvcnQuCj4gCj4gUmV2aWV3ZWQtYnk6IENvbm9yIERvb2xleSA8Y29u
b3IuZG9vbGV5QG1pY3JvY2hpcC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRGV0bGV2IENhc2Fub3Zh
IDxkZXRsZXYuY2FzYW5vdmFAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgLi4uL2Rpc3BsYXkvcm9j
a2NoaXAvcm9ja2NoaXAtdm9wMi55YW1sICAgICAgIHwgNDAgKysrKysrKysrKysrKysrKysrKwo+
ICAxIGZpbGUgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC12
b3AyLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2Nr
Y2hpcC9yb2NrY2hpcC12b3AyLnlhbWwKPiBpbmRleCAyNTMxNzI2YWYzMDZiLi41YjU5ZDkxZGU0
N2JkIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNw
bGF5L3JvY2tjaGlwL3JvY2tjaGlwLXZvcDIueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLXZvcDIueWFtbAo+IEBA
IC02NSw2ICs2NSwyNiBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAtIGNvbnN0OiBkY2xrX3ZwMwo+
ICAgICAgICAtIGNvbnN0OiBwY2xrX3ZvcAo+ICAKPiArICByZXNldHM6Cj4gKyAgICBtaW5JdGVt
czogNQo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEFYSSBjbG9jayByZXNl
dC4KPiArICAgICAgLSBkZXNjcmlwdGlvbjogQUhCIGNsb2NrIHJlc2V0Lgo+ICsgICAgICAtIGRl
c2NyaXB0aW9uOiBQaXhlbCBjbG9jayByZXNldCBmb3IgdmlkZW8gcG9ydCAwLgo+ICsgICAgICAt
IGRlc2NyaXB0aW9uOiBQaXhlbCBjbG9jayByZXNldCBmb3IgdmlkZW8gcG9ydCAxLgo+ICsgICAg
ICAtIGRlc2NyaXB0aW9uOiBQaXhlbCBjbG9jayByZXNldCBmb3IgdmlkZW8gcG9ydCAyLgo+ICsg
ICAgICAtIGRlc2NyaXB0aW9uOiBQaXhlbCBjbG9jayByZXNldCBmb3IgdmlkZW8gcG9ydCAzLgo+
ICsKPiArICByZXNldC1uYW1lczoKPiArICAgIG1pbkl0ZW1zOiA1Cj4gKyAgICBpdGVtczoKPiAr
ICAgICAgLSBjb25zdDogYWNsawo+ICsgICAgICAtIGNvbnN0OiBoY2xrCgp0aGUgdm9wMSB1c2Vz
ICJheGkiIGFuZCAiYWhiIiAoYW5kICJkY2xrIikgZm9yIHRoZXNlIHJlc2V0IG5hbWVzLgoKVGhl
IHZlbmRvciB2b3AyIGNvZGUgYWxzbyB1c2VzIHRoYXQgbmFtZSBpbiBjb21tZW50cywgbGlrZQov
KgogKiBSZXNldCBBWEkgdG8gZ2V0IGEgY2xlYW4gc3RhdGUsIHdoaWNoIGlzIGNvbmR1Y2l2ZSB0
byByZWNvdmVyaW5nCiAqIGZyb20gZXhjZXB0aW9ucyB3aGVuIGVuYWJsZSBhdCBuZXh0IHRpbWUo
c3VjaCBhcyBpb21tdSBwYWdlIGZhdWx0KQogKi8KClNvIGZvciB0aGVzZSB0d28gd2UncmUgbm90
IHJlc2V0dGluZyBjbG9ja3MsIGJ1dCB0aGUgcGFydHMgb2YgdGhlCnZvcDIgLi4uIHNvIEknZCBz
dHJvbmdseSB3aXNoIGZvciBtYXRjaGluZyBuYW1lcyBmb3IgdGhlIHZvcDIgOi0pCgpUaGFua3MK
SGVpa28KCgoKPiArICAgICAgLSBjb25zdDogZGNsa192cDAKPiArICAgICAgLSBjb25zdDogZGNs
a192cDEKPiArICAgICAgLSBjb25zdDogZGNsa192cDIKPiArICAgICAgLSBjb25zdDogZGNsa192
cDMKPiArCj4gICAgcm9ja2NoaXAsZ3JmOgo+ICAgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFt
bCMvZGVmaW5pdGlvbnMvcGhhbmRsZQo+ICAgICAgZGVzY3JpcHRpb246Cj4gQEAgLTEyOCw2ICsx
NDgsMTEgQEAgYWxsT2Y6Cj4gICAgICAgICAgY2xvY2stbmFtZXM6Cj4gICAgICAgICAgICBtaW5J
dGVtczogNwo+ICAKPiArICAgICAgICByZXNldHM6Cj4gKyAgICAgICAgICBtaW5JdGVtczogNgo+
ICsgICAgICAgIHJlc2V0LW5hbWVzOgo+ICsgICAgICAgICAgbWluSXRlbXM6IDYKPiArCj4gICAg
ICAgICAgcG9ydHM6Cj4gICAgICAgICAgICByZXF1aXJlZDoKPiAgICAgICAgICAgICAgLSBwb3J0
QDAKPiBAQCAtMTUyLDYgKzE3NywxMSBAQCBhbGxPZjoKPiAgICAgICAgICBjbG9jay1uYW1lczoK
PiAgICAgICAgICAgIG1heEl0ZW1zOiA1Cj4gIAo+ICsgICAgICAgIHJlc2V0czoKPiArICAgICAg
ICAgIG1heEl0ZW1zOiA1Cj4gKyAgICAgICAgcmVzZXQtbmFtZXM6Cj4gKyAgICAgICAgICBtYXhJ
dGVtczogNQo+ICsKPiAgICAgICAgICBwb3J0czoKPiAgICAgICAgICAgIHJlcXVpcmVkOgo+ICAg
ICAgICAgICAgICAtIHBvcnRAMAo+IEBAIC0xODMsNiArMjEzLDE2IEBAIGV4YW1wbGVzOgo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiZGNsa192cDAiLAo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAiZGNsa192cDEiLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAiZGNsa192cDIiOwo+ICsgICAgICAgICAgICAgICAgcmVzZXRzID0gPCZjcnUgU1JTVF9B
X1ZPUD4sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICA8JmNydSBTUlNUX0hfVk9QPiwKPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgIDwmY3J1IFNSU1RfVk9QMD4sCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICA8JmNydSBTUlNUX1ZPUDE+LAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgPCZjcnUgU1JTVF9WT1AyPjsKPiArICAgICAgICAgICAgICAgIHJlc2V0LW5hbWVzID0gImFj
bGsiLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiaGNsayIsCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICJkY2xrX3ZwMCIsCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICJkY2xrX3ZwMSIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJk
Y2xrX3ZwMiI7Cj4gICAgICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzM1
NjhfUERfVk8+Owo+ICAgICAgICAgICAgICAgICAgaW9tbXVzID0gPCZ2b3BfbW11PjsKPiAgICAg
ICAgICAgICAgICAgIHZvcF9vdXQ6IHBvcnRzIHsKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
