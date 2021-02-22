Return-Path: <SRS0=vRnG=HY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC228C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 16:28:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A163964E2F
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 16:28:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A163964E2F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KCK1Zn+JMGnc0q+WZzi4BLxIbGH0XRuBsGngk1CIPg0=; b=VK9BMGOcJNGRe/669CK3xgzC9
	6Jjriw4Og6okU3KxWAmcswsvLsZT/dOH64IWNLJeV/vUvaXafXAHwxLdixaxZxrtA12Z2Jd8VhI0S
	Hye4H4YAQUH7UsntZm2BadeyD7oP9hrOE6pgBQuaudkK3yOOVfYRQq8nSj8bkQ5wzibIo3WmKu0me
	1barrJmg9XuRkOOr4tZZ1n+7u9oGwGfU+VkAClVTwfgi8wAEEg/tqlP1QpqWh6IIzMagE39dLWK5Z
	EBu58Z4F3uVZPmaUnoqFtj8YlLLAa/Gl8h2o0RyX4YiRJmJE308kwkdBUZdZE6rvtYP7KbCeYrGTT
	b3GYnr95Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEE4e-0002rT-SE; Mon, 22 Feb 2021 16:28:40 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEE4a-0002qN-Np; Mon, 22 Feb 2021 16:28:37 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:5956:412c:4850:9073] (unknown
 [IPv6:2a01:e0a:4cb:a870:5956:412c:4850:9073])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E845C1F450A3;
 Mon, 22 Feb 2021 16:28:33 +0000 (GMT)
Subject: Re: [PATCH v2 4/9] media: uapi: Add a control for HANTRO driver
To: John Cox <jc@kynesim.co.uk>
References: <20210218191844.297869-1-benjamin.gaignard@collabora.com>
 <20210218191844.297869-5-benjamin.gaignard@collabora.com>
 <9ql73glgbnjaqqsp8ulqenae5n82kfk0o3@4ax.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <6364fa8a-db6a-af43-3660-7f0a7a3e0b79@collabora.com>
Date: Mon, 22 Feb 2021 17:28:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <9ql73glgbnjaqqsp8ulqenae5n82kfk0o3@4ax.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210222_112836_895449_FF3FFBD6 
X-CRM114-Status: GOOD (  20.72  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: peng.fan@nxp.com, kernel@collabora.com, festevam@gmail.com,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 dan.carpenter@oracle.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, p.zabel@pengutronix.de, s.hauer@pengutronix.de,
 mripard@kernel.org, robh+dt@kernel.org, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 jernej.skrabec@siol.net, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDIyLzAyLzIwMjEgw6AgMTc6MTYsIEpvaG4gQ294IGEgw6ljcml0wqA6Cj4+IFRoZSBIRVZD
IEhBTlRSTyBkcml2ZXIgbmVlZHMgdG8ga25vdyB0aGUgbnVtYmVyIG9mIGJpdHMgdG8gc2tpcCBh
dAo+PiB0aGUgYmVnaW5uaW5nIG9mIHRoZSBzbGljZSBoZWFkZXIuCj4+IFRoYXQgaXMgYSBoYXJk
d2FyZSBzcGVjaWZpYyByZXF1aXJlbWVudCBzbyBjcmVhdGUgYSBkZWRpY2F0ZWQgY29udHJvbAo+
PiB0aGF0IHRoaXMgcHVycG9zZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25h
cmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+PiBpbmNsdWRlL3Vh
cGkvbGludXgvaGFudHJvLXY0bDItY29udHJvbHMuaCB8IDIwICsrKysrKysrKysrKysrKysrKysr
Cj4+IGluY2x1ZGUvdWFwaS9saW51eC92NGwyLWNvbnRyb2xzLmggICAgICAgIHwgIDUgKysrKysK
Pj4gMiBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspCj4+IGNyZWF0ZSBtb2RlIDEwMDY0
NCBpbmNsdWRlL3VhcGkvbGludXgvaGFudHJvLXY0bDItY29udHJvbHMuaAo+Pgo+PiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L2hhbnRyby12NGwyLWNvbnRyb2xzLmggYi9pbmNsdWRl
L3VhcGkvbGludXgvaGFudHJvLXY0bDItY29udHJvbHMuaAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjMwYjE5OTliN2FmMwo+PiAtLS0gL2Rldi9udWxsCj4+
ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9oYW50cm8tdjRsMi1jb250cm9scy5oCj4+IEBAIC0w
LDAgKzEsMjAgQEAKPj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wIFdJVEgg
TGludXgtc3lzY2FsbC1ub3RlICovCj4+ICsKPj4gKyNpZm5kZWYgX19VQVBJX0hBTlRST19WNEwy
X0NPTllUUk9MU19IX18KPj4gKyNkZWZpbmUgX19VQVBJX0hBTlRST19WNEwyX0NPTllUUk9MU19I
X18KPj4gKwo+PiArI2luY2x1ZGUgPGxpbnV4L3Y0bDItY29udHJvbHMuaD4KPj4gKyNpbmNsdWRl
IDxtZWRpYS9oZXZjLWN0cmxzLmg+Cj4+ICsKPj4gKyNkZWZpbmUgVjRMMl9DSURfSEFOVFJPX0hF
VkNfRVhUUkFfREVDT0RFX1BBUkFNUwkoVjRMMl9DSURfVVNFUl9IQU5UUk9fQkFTRSArIDApCj4+
ICsKPj4gKy8qKgo+PiArICogc3RydWN0IGhhbnRyb19oZXZjX2V4dHJhX2RlY29kZV9wYXJhbXMg
LSBleHRyYSBkZWNvZGUgcGFyYW1ldGVycyBmb3IgaGFudHJvIGRyaXZlcgo+PiArICogQGhldmNf
aGRyX3NraXBfbGVuZ2h0OgloZWFkZXIgZmlyc3QgYml0cyBvZmZzZXQKPj4gKyAqLwo+PiArc3Ry
dWN0IGhhbnRyb19oZXZjX2V4dHJhX2RlY29kZV9wYXJhbXMgewo+PiArCV9fdTMyCWhldmNfaGRy
X3NraXBfbGVuZ2h0Owo+PiArCV9fdTgJcGFkZGluZ1s0XTsKPj4gK307Cj4gQ2FuIHlvdSBjbGFy
aWZ5IGhvdyBoZXZjX2hkcl9za2lwX2xlbmd0aCBkaWZmZXJzIGZyb20KPiB2NGwyX2N0cmxfaGV2
Y19zbGljZV9wYXJhbXMuZGF0YV9iaXRfb2Zmc2V0PyAgQXQgZmlyc3Qgc2lnaHQgdGhleSB3b3Vs
ZAo+IGFwcGVhciB0byBiZSB2ZXJ5IHNpbWlsYXIuCgpoZXZjX2hkcl9za2lwX2xlbmd0aCBpcyB0
aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZSBzdGFydCBwb3NpdGlvbnMgb2YgMiBuYWxzLgp2NGwy
X2N0cmxfaGV2Y19zbGljZV9wYXJhbXMuZGF0YV9iaXRfb2Zmc2V0IGlzIHRoZSBvZmZzZXQgb2Yg
dGhlIGRhdGEgaW4gdGhlIG5hbC4KCgpCZW5qYW1pbgoKPgo+IFJlZ2FyZHMKPgo+IEpvaG4gQ294
Cj4KPj4gKyNlbmRpZgo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L3Y0bDItY29u
dHJvbHMuaCBiL2luY2x1ZGUvdWFwaS9saW51eC92NGwyLWNvbnRyb2xzLmgKPj4gaW5kZXggMDM5
YzBkN2FkZDFiLi5jZWQ3NDg2YzdmNDYgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUvdWFwaS9saW51
eC92NGwyLWNvbnRyb2xzLmgKPj4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L3Y0bDItY29udHJv
bHMuaAo+PiBAQCAtMjA5LDYgKzIwOSwxMSBAQCBlbnVtIHY0bDJfY29sb3JmeCB7Cj4+ICAgKiBX
ZSByZXNlcnZlIDEyOCBjb250cm9scyBmb3IgdGhpcyBkcml2ZXIuCj4+ICAgKi8KPj4gI2RlZmlu
ZSBWNEwyX0NJRF9VU0VSX0NDU19CQVNFCQkJKFY0TDJfQ0lEX1VTRVJfQkFTRSArIDB4MTBmMCkK
Pj4gKy8qCj4+ICsgKiBUaGUgYmFzZSBmb3IgSEFOVFJPIGRyaXZlciBjb250cm9scy4KPj4gKyAq
IFdlIHJlc2VydmUgMzIgY29udHJvbHMgZm9yIHRoaXMgZHJpdmVyLgo+PiArICovCj4+ICsjZGVm
aW5lIFY0TDJfQ0lEX1VTRVJfSEFOVFJPX0JBU0UJCShWNEwyX0NJRF9VU0VSX0JBU0UgKyAweDEx
NzApCj4+Cj4+IC8qIE1QRUctY2xhc3MgY29udHJvbCBJRHMgKi8KPj4gLyogVGhlIE1QRUcgY29u
dHJvbHMgYXJlIGFwcGxpY2FibGUgdG8gYWxsIGNvZGVjIGNvbnRyb2xzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
