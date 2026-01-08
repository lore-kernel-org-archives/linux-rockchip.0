Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B5CDCF6A84
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 08:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4UpMj3vdP3MaFrWuREFAjean4a76MWItBcCUaMFXtI=; b=UuKhtuOzH5QZYz
	H0EaZOI9TTjNv9s6/CUc5bM8nEIdzhMyc2F621/6t/OFrSQYi8GF8JU31SMNZfSkQiUSKLG9yJL77
	9YO0Lo9aQJcdyVAHoFFQ0vsSeNf5cFZkOvchxshbWxs2ItUY903jAU2oUxdpyt/Fy7wMxF/LVcByJ
	YULzsuDJ8nIBvMKRyzsKJnFyacG2BgABX1sNDo3+4LX3v22SaqHzHAJ1MwH2v6IBMATcqoLFKiFxW
	3k0dFuaGp+4YDRczvVIkyUVJBQAkBh+014kBAfLBaRw9edXxt2FOvA/7h9XZp+gMxp0VdkQpxUB2v
	1MZD37v8BuX/xdQ7VtOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdlS1-0000000GIWU-0pPr;
	Thu, 08 Jan 2026 08:33:01 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdlRx-0000000GIVf-2KLP;
	Thu, 08 Jan 2026 08:32:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D06564418C;
	Thu,  8 Jan 2026 08:32:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74378C116C6;
	Thu,  8 Jan 2026 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767861176;
	bh=ltY6mc7NU7aREJqbvN6dWGD7GfTdXZD+6vLY1vjaX3g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=K/8GWXsLWXhvg+q7onRuZRXHMqahq4RaBcTacESC7Jh93809wGXQm7rhE5jcgEyVR
	 yYRgJlBP6ngSgoQEZjKlwL5uKeA//m6lEonatZ1FlLU6PPbzlKAsxrvEgYY3MCQG9e
	 NcOahYgvhveBjgtjzUYlqirwMEbF/wT0ezYQ/nb6bdwpcP4Z2NdHd/p0pAvbBeI+E3
	 p91TdjTSkd/UBWCRx7TKhUbTIxuRVFixjhZJ9BcaFUaaedWjqQsvhAKxpUgJRzIq47
	 6+S9CvTO84Pf9CwL/yOrvOCAORy51UTF4kW5bI9D47UG4W/Se+7AQhWMU1rqAl4ySf
	 2RN40IMWsIadw==
Message-ID: <ee3d4cf0-dccb-4ce0-9e69-a95507168e6a@kernel.org>
Date: Thu, 8 Jan 2026 09:32:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/3] usb: typec: fusb302: Switch to threaded interrupt
 handler
To: Anand Moon <linux.amoon@gmail.com>
References: <20260103083232.9510-1-linux.amoon@gmail.com>
 <20260103083232.9510-4-linux.amoon@gmail.com>
 <6f30a01c-8fc4-4368-88ef-7c513c505515@kernel.org>
 <CACpCAL0GLMV-2p1tKAXe6R+N2c4YadH9vpEG3GdPoHTNTQSuow@mail.gmail.com>
 <080d9ed6-18f9-437e-89d4-aba8f69120fb@kernel.org>
 <CANAwSgRqpAopSGcZ=isLxALFcuPW0E4DBZzMhQvwRBhHMK0thg@mail.gmail.com>
From: Hans de Goede <hansg@kernel.org>
Content-Language: en-US, nl
In-Reply-To: <CANAwSgRqpAopSGcZ=isLxALFcuPW0E4DBZzMhQvwRBhHMK0thg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_003257_650972_17686467 
X-CRM114-Status: GOOD (  20.30  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "open list:USB TYPEC CLASS" <linux-usb@vger.kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, open list <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, FUKAUMI Naoki <naoki@radxa.com>, =?UTF-8?B?5byg5rC45rOi?= <giraffesnn123@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, "moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiA4LUphbi0yNiAwNzo1OCwgQW5hbmQgTW9vbiB3cm90ZToKPiBIaSBIYW5zLAo+IAo+
IE9uIFdlZCwgNyBKYW4gMjAyNiBhdCAxNjoyMiwgSGFucyBkZSBHb2VkZSA8aGFuc2dAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4+Cj4+IEhpLAo+Pgo+PiBPbiA3LUphbi0yNiAxMDo1Miwg5byg5rC45rOi
IHdyb3RlOgo+Pj4+IFN0aWxsIGlkZWFsbHkgd2Ugd291bGQgc29sdmUgdGhpcyBpbiBhbm90aGVy
IHdheSB0aGVuCj4+Pj4gc3dpdGNoaW5nIHRvIGEgdGhyZWFkZWQgSVJRIGhhbmRsZXIuCj4+Pj4K
Pj4+PiBBcyB0aGUgY29tbWl0IG1lc3NhZ2Ugb2YgdGhlIG1laS12c2MgZml4IG1lbnRpb25zCj4+
Pj4gdGhlIHJvb3QgY2F1c2Ugb2YgdGhlc2UgZXJyb3JzIGlzIHR5cGljYWxseSBhbiBpbnRlcnJ1
cHQKPj4+PiBjaGlwIGRyaXZlciB3aGljaCB1c2VzIElSUUZfTk9fVEhSRUFEIGRpc2FibGluZyB0
aGUgYXV0bwo+Pj4+IHRocmVhZGluZyBvZiBhbGwgaW50ZXJydXB0IGhhbmRsZXJzIGluIFJUIG1v
ZGUuCj4+Pj4KPj4+PiBTbyB0aGUgZmlyc3QgcXVlc3Rpb24gaGVyZSB3b3VsZCBiZSB0byBzZWUg
aWYgdGhhdCBmbGFnIGlzCj4+Pj4gdXNlZCBpbiB0aGUgaW50ZXJydXB0IGNoaXAgYW5kIGlmIHll
cywgaXMgdGhhdCBmbGFnIHJlYWxseQo+Pj4+IG5lY2Vzc2FyeSA/Cj4+PiBUaGlzIGlzIHZlcnkg
c2ltaWxhciB0byB0aGUgaXNzdWUgYWRkcmVzc2VkIGluIGNvbW1pdCAyNGIxNzZkODgyN2QKPj4+
ICgiZHJtL21zbS9kc2k6IFJlbW92ZSBzcHVyaW91cyBJUlFGX09ORVNIT1QgZmxhZyIpLgo+Pj4g
VGhlIElSUUZfT05FU0hPVCBmbGFnIGlzIHByZXZlbnRpbmcgZm9yY2VkIHRocmVhZGluZyBoZXJl
Lgo+Pj4KPj4+IEluIGlycV9zZXR1cF9mb3JjZWRfdGhyZWFkaW5nKCksIHRoZSBjb252ZXJzaW9u
IHRvIHRocmVhZGVkIGludGVycnVwdHMKPj4+IGlzIGV4cGxpY2l0bHkgc2tpcHBlZCBpZiBhbnkg
b2YgdGhlIElSUUZfTk9fVEhSRUFELCBJUlFGX1BFUkNQVSwKPj4+IG9yIElSUUZfT05FU0hPVCBm
bGFncyBhcmUgcHJlc2VudC4gSW4gdGhpcyBjYXNlLCBJUlFGX09ORVNIT1QKPj4+IGFwcGVhcnMg
dG8gYmUgdGhlIHJlYXNvbi4KPj4KPj4gQWgsIHdlbGwgdGhlIGNvZGUgZWZmZWN0aXZlbHkgZG9l
cyBpdHMgb3duIElSUUZfT05FU0hPVCBoYW5kbGluZywKPj4gc2luY2UgaXQgbmVlZHMgdG8gZG8g
aXRzIG93biB0aHJlYWRlZC1pcnEgbGlrZSBoYW5kbGluZyBmb3IKPj4gc3VzcGVuZC9yZXN1bWUg
cmVhc29ucy4gSXQgZGlzYWJsZXMgdGhlIElSUSB3aGVuIGl0IGZpcmVzIGFuZAo+PiB0aGVuIG9u
bHkgcmUtZW5hYmxlcyBpdCBvbmNlIHRoZSB3b3JrIGhhcyBkb25lIHByb2Nlc3NpbmcgdGhlIElS
US4KPj4KPj4gU28gaXQgc2hvdWxkIGJlIHBlcmZlY3RseSBzYWZlIHRvIGRyb3AgdGhlIElSUUZf
T05FU0hPVCBmbGFnLgo+Pgo+IFllcywgdGhlIHdhcm5pbmcgZGlzYXBwZWFycwo+PiBJZiB0aGF0
IGFsc28gd29ya3MgdG8gcmVzb2x2ZSB0aGUgbG9ja2RlcCBpc3N1ZSB0aGF0IHdvdWxkIGJlCj4+
IHRoZSBwcmVmZXJyZWQgd2F5IG9mIGZpeGluZyB0aGlzIElNSE8uCj4+Cj4gQWZ0ZXIgYXBwbHlp
bmcgdGhlc2UgY2hhbmdlcywgdGhlIGRldmljZSBpbml0aWFsbHkgdHJpZ2dlcmVkIGEgaGFyZCBy
ZXNldDsKPiBBbmQgdGhlIGJvYXJkIHJlYm9vdHMuIEkgbmVlZCB0byBmaW5kIGFub3RoZXIgd2F5
IHRvIGZpeCB0aGlzIHdhcm5pbmcuCgpIbW0sIEkgZ3Vlc3MgdGhhdCB3aXRob3V0IHRoZSBvbmVz
aG90IGZsYWcgZnVzYjMwMl9pcnFfaW50bigpIG1pZ2h0CnRyaWdnZXIgYSBzZWNvbmQgdGltZSBi
ZWZvcmUgaXQgZGlzYWJsZXMgdGhlIElSUSBjYXVzaW5nIGFuIElSUSBlbmFibGUKdW5iYWxhbmNl
IGlzc3VlLgoKU28gbGV0cyBqdXN0IGdvIHdpdGggeW91ciBvcmlnaW5hbCBmaXggb2YgbW92aW5n
IHRoaXMgdG8gYSB0aHJlYWRlZApJUlEgaGFuZGxlci4KClJlZ2FyZHMsCgpIYW5zCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
