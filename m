Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B35E5D2CDF2
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Dec 2025 01:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cqP3wGBo3oS33H+5IPES734e6jKQp7LpZc2rspjV77Q=; b=Gc9+7jp2Xlf2o5
	7ESs2FB9uUf0j2MbzcQ+U9NePSC2oFEqqUySiE6B1eSPLaEKVuwoKBbU9DRRBQmYztLj3wChHUWxX
	j435DtVdSOB5iLKJDadR8p7cRU9tj0aA0wt9DvZ7CWe3LaulG0hMJdWjUkAO9/JrToAGYh0KllUbw
	M+404LPC8JLwfVCsshBXyKzdtEThuT9CnbjFU9rQ8EGFgPmgf5JrizfOgLGYi1kh/a7B7SeXDJtOv
	nJ/MH6NFdnMjJAfLHrSIkJy7MVvMz7cWo/FOhMJR1DEPxUli5al1MttWnLYXCjuOEMqU/gjr2PafH
	UE8ZsTxfu/y7m5QrBO3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRL1c-00000008t0J-1Ryf;
	Fri, 05 Dec 2025 01:54:24 +0000
Received: from mail-m3285.qiye.163.com ([220.197.32.85])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRL1Z-00000008szd-3FmN
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Dec 2025 01:54:23 +0000
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2c0f58c0a;
	Fri, 5 Dec 2025 09:54:09 +0800 (GMT+08:00)
Message-ID: <faa325bb-d125-408c-abb7-d92dcf8664be@rock-chips.com>
Date: Fri, 5 Dec 2025 09:54:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/4] drm/mcde: Create custom commit tail
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Linus Walleij <linusw@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Vicente Bergas <vicencb@gmail.com>,
 Marek Vasut <marek.vasut+renesas@mailbox.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Aradhya Bhatia <a-bhatia1@ti.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Linus Walleij
 <linus.walleij@linaro.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
References: <20251202-mcde-drm-regression-thirdfix-v6-0-f1bffd4ec0fa@kernel.org>
 <20251202-mcde-drm-regression-thirdfix-v6-2-f1bffd4ec0fa@kernel.org>
 <c3c5f62f-98fd-49a7-9b39-c4c4f798ad2c@rock-chips.com>
 <CAD++jLmzkmZAgwbahKDnasj3dDpG4RBggoZfhPiEHj9rb09+eQ@mail.gmail.com>
 <1284bf23-1069-4d54-b259-7b40271f8e0e@rock-chips.com>
 <2661e992-2233-4c30-b636-a21ad9c21f30@ideasonboard.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <2661e992-2233-4c30-b636-a21ad9c21f30@ideasonboard.com>
X-HM-Tid: 0a9aec37773b03abkunme2a62080ad2250
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUxKSFZDGhlPSBgdGBlMTUJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=SNA1Cp/VZ1H65lYkBYspZlH9roiRSva5ImnkFVtkIQLe7xfRiKRl2in3HtfpWctJb64GANgnD78SSp4d+6u2YQrAEwUnom/aGwmcHjpkvjPhkTIQ2Tt/RfuzeHBT0dSTZFJg8TRZYCbArfwi6U0Q0alrjqhmAqGUWxfNNP79/a0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=WdIcGVZuDZpRKCryOJSz8AXGPZWNBLXoc9OkD9ecEe8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_175422_284338_DF436682 
X-CRM114-Status: GOOD (  30.91  )
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

SGVsbG8gVG9taSwKCk9uIDEyLzQvMjAyNSA5OjU0IFBNLCBUb21pIFZhbGtlaW5lbiB3cm90ZToK
PiBIaSwKPiAKPiBPbiAwNC8xMi8yMDI1IDA0OjA3LCBDaGFveWkgQ2hlbiB3cm90ZToKPj4gT24g
MTIvNC8yMDI1IDc6MTMgQU0sIExpbnVzIFdhbGxlaWogd3JvdGU6Cj4+PiBPbiBXZWQsIERlYyAz
LCAyMDI1IGF0IDc6MjfigK9BTSBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5j
b20+IHdyb3RlOgo+Pj4KPj4+PiBUaGUgYnJpZGdlIGRvY3VtZW50IHNheXM6ICJUaGUgZGlzcGxh
eSBwaXBlIChpLmUuIGNsb2NrcyBhbmQgdGltaW5nCj4+Pj4gc2lnbmFscykgZmVlZGluZyB0aGlz
IGJyaWRnZSB3aWxsIG5vdCB5ZXQgYmUgcnVubmluZyB3aGVuIHRoZQo+Pj4+IEBhdG9taWNfcHJl
X2VuYWJsZSBpcyBjYWxsZWQuIgo+Pj4+Cj4+Pj4gVGhlcmVmb3JlLCB5b3VyIGFwcHJvYWNoIHNl
ZW1zIHRvIGJlIG1lcmVseSBhIHdvcmthcm91bmQgYW5kIGRvZXMgbm90Cj4+Pj4gbWVldCB0aGUg
Y3VycmVudCByZXF1aXJlbWVudHMgb2YgdGhlIGJyaWRnZS4KPj4+Pgo+Pj4+IEFuZCBkb2N1bWVu
dCBhbHNvIHNheXM6ICJUaGUgYnJpZGdlIGNhbiBhc3N1bWUgdGhhdCB0aGUgZGlzcGxheSBwaXBl
Cj4+Pj4gKGkuZS4gY2xvY2tzIGFuZCB0aW1pbmcgc2lnbmFscykgZmVlZGluZyBpdCBpcyBydW5u
aW5nIHdoZW4KPj4+PiBAYXRvbWljX2VuYWJsZSBjYWxsYmFjayBpcyBjYWxsZWQuIgo+Pj4+Cj4+
Pj4gSWYgRFNJIGNvbW1hbmRzIG5lZWQgdG8gd2FpdCBmb3IgdGhlIGRpc3BsYXkgcGlwZSAoQ1JU
QykgdG8gYmUgcmVhZHksCj4+Pj4gd2h5IG5vdCBwZXJmb3JtIHRoZW0gaW5zaWRlIEBhdG9taWNf
ZW5hYmxlIGluc3RlYWQgb2YgQGF0b21pY19wcmVfZW5hYmxlPwo+Pj4KPj4+IFRoYXQgd2FzIGV4
YWN0bHkgd2hhdCB0aGUgdjEgYW5kIHYyIHZlcnNpb25zIG9mIHRoaXMgcGF0Y2ggc2V0IHdhcwo+
Pj4gZG9pbmcsIGFuZCBpdCB3YXMgKHBvbGl0ZWx5KSBOQUNLZWQsIGFuZCB0aGF0IGlzIHdoeSB3
ZSBhcmUKPj4+IGhlcmUuCj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMjAy
NTEwMjMtZml4LW1jZGUtZHJtLXJlZ3Jlc3Npb24tdjEtMC1lZDlhOTI1ZGI4YzdAbGluYXJvLm9y
Zy8KPj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDI1MTAyNi1maXgtbWNk
ZS1kcm0tcmVncmVzc2lvbi12Mi0wLThkNzk5ZTQ4OGNmOUBsaW5hcm8ub3JnLwo+Pj4KPj4KPj4g
SG1tLCBJJ20gYWZyYWlkIHRoZXJlIHJlYWxseSBpc24ndCBhIGNvbW1vbiBzb2x1dGlvbiBhdCB0
aGlzIHBvaW50Lgo+Pgo+PiBUaGUgbG9naWNhbCBlbmFibGUgb3JkZXIgb2YgdGhlIENSVEMsIGJy
aWRnZSwgYW5kIHBhbmVsIG1heSBiZQo+PiBkaWZmZXJlbnQgZnJvbSB0aGUgYWN0dWFsIHBoeXNp
Y2FsIGVuYWJsZSBvcmRlci4gQW5kIHRoZXJlIGlzIG5vCj4+IG1lY2hhbmlzbSB0byBjaGFuZ2Ug
dGhpcyBvcmRlciA6KAo+IAo+IEknbSBub3Qgc3VyZSB3aGF0IHlvdSBtZWFuIHdpdGggbG9naWNh
bCBhbmQgcGh5c2ljYWwgZW5hYmxlIG9yZGVycy4uLgo+IEJ1dCB0aGUgZmFjdCBzZWVtcyB0byBi
ZSB0aGF0IGR1cmluZyBlbmFibGUgc2VxdWVuY2UgZGlmZmVyZW50Cj4gcGxhdGZvcm1zLCBicmlk
Z2VzIGFuZCBwYW5lbHMgZWl0aGVyIDEpIHNwZWNpZmljYWxseSByZXF1aXJlIGFuIGluY29taW5n
Cj4gc3RyZWFtIGZyb20gdGhlIGNydGMgMikgc3BlY2lmaWNhbGx5IHByb2hpYml0IHRoYXQsIG9y
IDMpIGRvbid0IGNhcmUuCj4gQW5kIHdlIGRvbid0IGhhdmUgYW55IG1lYW5zIHRvIGRlYWwgd2l0
aCB0aGlzLgo+CgpZZXMsIHRoYXQncyBleGFjdGx5IHdoYXQgSSBtZWFudC4gSSdtIHJlZmVycmlu
ZyB0byB0aGUgZmFjdCB0aGF0IHRoZQplbmFibGUgc2VxdWVuY2UgaXMgZml4ZWQgaW4gdGVybXMg
b2YgY29kZSBsb2dpYywgYnV0IGRpZmZlcmVudCAKaGFyZHdhcmUgbWF5IGhhdmUgZGlmZmVyZW50
IHJlcXVpcmVtZW50cy4KCj4gSW4gdGhpcyBzZXJpZXMgTGludXMgY2hhbmdlcyB0aGUgcGxhdGZv
cm1zJyBjcnRjIHRvIGJlaGF2ZSBpbiBhCj4gcGFydGljdWxhciB3YXkuIEJ1dCBpZiB5b3Ugd291
bGQgY29ubmVjdCBhIGJyaWRnZSBvciBwYW5lbCB0byB0aG9zZQo+IHBsYXRmb3Jtcywgd2hpY2gg
c3BlY2lmaWNhbGx5IGRvZXMgbm90IHdhbnQgaW5jb21pbmcgc3RyZWFtIGR1cmluZwo+IHByZV9l
bmFibGUsIHRob3NlIHdvdWxkbid0IHdvcmsuCj4gCj4gSW4gYW55IGNhc2UsIHdlIG5lZWQgdG8g
Z2V0IHRoZSBjdXJyZW50IHNldHVwcyB3b3JraW5nLiBJIG1hZGUgYSBxdWljawo+IHRlc3Qgc2Vy
aWVzIHdoaWNoOgo+IC0gUmV2ZXJ0cyBjOWIxMTUwYTY4ZDkzNjJhMDgyNzYwOWZjMGRjMTY2NGMw
ZDhiZmUxCj4gLSBBcHBsaWVzIHBhdGNoIDEgZnJvbSB0aGlzIHNlcmllcyAod2l0aCBzb21lIGNv
bmZsaWN0IGZpeGVzIGR1ZSB0byB0aGUKPiBhYm92ZSByZXZlcnQpCj4gLSBJbXBsZW1lbnRzICJw
cmUtZW5hYmxlLWJlZm9yZS1jcnRjLWVuYWJsZSIgZm9yIHRpZHNzCj4gCj4gVGhpcyB3b3JrcyBv
aywgYWZhaWNzLCBhbmQgcmVzZW1ibGVzIHZlcnkgbXVjaCB0aGUgcGxhdGZvcm0gcGF0Y2hlcyBp
bgo+IHRoaXMgc2VyaWVzLgo+IAo+IFRoYXQgaXMgYSBzbWFsbGVyIHNlcmllcywgYW5kIGhhcyB0
aGUgcG90ZW50aWFsIGJlbmVmaXQgdGhhdCBpZiB0aGVyZQo+IGFyZSBvdGhlciBwbGF0Zm9ybXMg
dGhhdCBoYXZlIGdvdHRlbiBicm9rZW4gYnV0IG5vIG9uZSBoYXMgbm90aWNlZCwgdGhleQo+IHdv
dWxkIGFnYWluIGdldCBmaXhlZC4KPiAKPiBUaG91Z2h0cz8gU2hhbGwgSSBzZW5kIGl0LCBvciBz
aGFsbCB3ZSBqdXN0IGdvIHdpdGggdGhpcyBzZXJpZXM/Cj4gCgpTb3VuZHMgZ29vZC4gSSB0aGlu
ayB3ZSBzaG91bGQgY29tcGFyZSB0aGUgdHdvIHRvIHNlZSB3aGljaCBvbmUgaXMKYmV0dGVyLiBT
byBwbGVhc2Ugc2VuZCBpdC4KCj4gT25lIG1vcmUgcG9pbnQ6IGV2ZW4gaWYgdGhlIHBsYXRmb3Jt
cyBpbiB0aGlzIHNlcmllcyBnZXQgZml4ZWQgYnkKPiBlbmFibGluZyB0aGUgY3J0YyBmaXJzdCwg
SSdtIG5vdCBzdXJlIGlmIGFueW9uZSBlbHNlIGJ1dCBMaW51cyBzdHVkaWVkCj4gdGhlIHBsYXRm
b3JtcyB0byBzZWUgaWYgaXQgd291bGQgYmUgcG9zc2libGUgZm9yIHRoZSBEU0kgKG9yIERQIGlu
IG9uZQo+IGNhc2UsIGlmIEkgcmVjYWxsIHJpZ2h0KSB0byB3b3JrIHdpdGhvdXQgZW5hYmxpbmcg
dGhlIERSTSBjcnRjLgo+IAo+IEkgdGhpbmsgb3B0aW1hbGx5IHRoZSBjb250cm9sIGJ1cyBzaG91
bGQgd29yayBpbmRlcGVuZGVudGx5IGZyb20gdGhlCj4gdmlkZW8gZGF0YSBidXMuIEUuZy4gb25l
IHNob3VsZCBiZSBhYmxlIHRvIGRvIERTSSBjb21tYW5kcyBhbnkgdGltZQo+IGFmdGVyIHRoZSBE
U0kgcGVyaXBoZXJhbCBoYXMgYmVlbiBhdHRhY2hlZCB0byB0aGUgYnJpZGdlLCBldmVuIG91dHNp
ZGUKPiB0aGUgZW5hYmxlIHNlcXVlbmNlLgo+IAo+IFRoaXMgY291bGQgYmUgcG9zc2libGUgYnkg
anVzdCBlbmFibGluZyBzb21lIGNsb2NrIG9uIHRoZSBjcnRjIHNpZGUsIG9yCj4gcGVyaGFwcyBl
bmFibGluZyBzb21lIGJ5cGFzcyBjbG9jayBtb2RlLgo+IAo+IE9mIGNvdXJzZSwgdGhlcmUgY291
bGQgYWxzbyBiZSBvdGhlciByZWFzb25zIHRvIHJlcXVpcmUvcHJvaGliaXQgdGhlCj4gdmlkZW8g
c3RyZWFtLi4uCgpZZXAsIGl0IGFsbCBjb21lcyBkb3duIHRvIHRoZSBoYXJkd2FyZSBkZXNpZ24u
IERpZmZlcmVudCBkZXNpZ25zIGNhbiAKbmF0dXJhbGx5IGhhdmUgZGlmZmVyZW50IHJlcXVpcmVt
ZW50cy4KCi0tIApCZXN0LCAKQ2hhb3lpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
