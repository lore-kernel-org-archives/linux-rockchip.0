Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB278CCD199
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 15:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yL+rM+5Ik6zx6pWaR1vYi7JrW8HSbLvUyH0HBHhizig=; b=Lty0c7eg7KUYCC
	7pUUxU18plK0D1oS0LvsqtuuWMsw7Wi5MP/lsI6hU+NPjyyWrqdICxa1WHV7leIQ/k+rvbby9a4lt
	qs/DiM9Xe0EfIAx+YF/GNFzfAZnBsm1Q+InYxNyabAv3NOPJL49RwrInGTuyPtftUb5iZMoHrc/0F
	mgqynlL2DCe4nHGtMHx6ZDAIdV2UrA6j8xOtvAVnrGtCkYoa9gJesHjWJjlo8+mv/UJtYGDLYNFOE
	xQZ4JinKBgHZNeCw20gCxXkI1g/EiEhwIgbz78MctwSAQBPMHz/+4mycWmWmaVE3J3SRKfLAV/z42
	bKt7L0XiXFTNksqPX9Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAs5r-0000000EByn-21My;
	Mon, 20 Oct 2025 15:46:43 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAs5o-0000000EBx9-46AK;
	Mon, 20 Oct 2025 15:46:42 +0000
Received: from pendragon.ideasonboard.com (87-94-110-32.bb.dnainternet.fi [87.94.110.32])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id A5C8782E;
	Mon, 20 Oct 2025 17:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1760975093;
	bh=sNxXee+W1+T0QQqYoZjUQPLYVU/MxS9aOZB5QdQS9ek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EUmFc3rrfBxKRn2+DXvEc1xUEtm8JTz1bNCs9ssWuUL1dWVnQywDAlGX2ql3aBA1U
	 SNSkDg/T6rRFd/A8NI4HjvZ6yjfafbIPjhU3J41NHmMcHDuVnBtaNXDvuVB74UxgQH
	 sNLxo2Fk+KZB6IHjDVZbRrKQX6I+Oo/yyGq7T8rA=
Date: Mon, 20 Oct 2025 18:46:25 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 0/5] arm64: dts: rockchip: Add device tree for the
 Orange Pi CM5 Base board
Message-ID: <20251020154625.GB6159@pendragon.ideasonboard.com>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
 <2328202.iZASKD2KPV@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2328202.iZASKD2KPV@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_084641_145922_D8442FF9 
X-CRM114-Status: GOOD (  26.62  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Algea Cao <algea.cao@rock-chips.com>, Muhammed Efe Cetin <efectn@6tel.net>, Rob Herring <robh@kernel.org>, Jimmy Hon <honyuenkwun@gmail.com>, Ondrej Jirman <megi@xff.cz>, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Cenk Uluisik <cenk.uluisik@googlemail.com>, Alexey Charkov <alchark@gmail.com>, Maxime Ripard <mripard@kernel.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBPY3QgMjAsIDIwMjUgYXQgMDQ6NDQ6MjFQTSArMDIwMCwgSGVpa28gU3R1ZWJuZXIg
d3JvdGU6Cj4gQW0gTW9udGFnLCA2LiBPa3RvYmVyIDIwMjUsIDAxOjU1OjM2IE1pdHRlbGV1cm9w
w6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgTGF1cmVudCBQaW5jaGFydDoKPiA+IEhlbGxvLAo+
ID4gCj4gPiBUaGlzIHBhdGNoIHNlcmllcyBhZGRzIGEgZGV2aWNlIHRyZWUgZm9yIHRoZSBPcmFu
Z2UgUGkgQ001IEJhc2UgYm9hcmQKPiA+IGZyb20gWHVubG9uZy4gVGhpcyBpcyBhIGNvbWJpbmF0
aW9uIG9mIGEgY29tcHV0ZSBtb2R1bGUgYW5kIGEgY2Fycmllcgo+ID4gYm9hcmQsIHNvIHRoZSBk
ZXZpY2UgdHJlZSBpcyBzcGxpdCBpbiB0d28gZmlsZXMuCj4gPiAKPiA+IFRoZSB3b3JrIGlzIGJh
c2VkIG9uIGEgY29tYmluYXRpb24gb2YgdXBzdHJlYW0gZGV2aWNlIHRyZWVzIGZvciBvdGhlcgo+
ID4gUkszNTg4LWJhc2VkIE9yYW5nZSBQaSBib2FyZHMgYW5kIHRoZSBkb3duc3RyZWFtIGRldmlj
ZSB0cmVlLCBhbGwKPiA+IGNoZWNrZWQgYWdhaW5zdCB0aGUgYXZhaWxhYmxlIHNjaGVtYXRpY3Mg
Zm9yIHRoZSBjYXJyaWVyIGJvYXJkLiBUaGUKPiA+IGNvbXB1dGUgbW9kdWxlIHNjaGVtYXRpY3Mg
aXMgdW5mb3J0dW5hdGVseSBub3QgYXZhaWxhYmxlLgo+ID4gCj4gPiBUaGUgc2VyaWVzIHN0YXJ0
cyB3aXRoIHRocmVlIHBhdGNoZXMgdGhhdCBhZGQgYSBuZXcgdG1kcy1lbmFibGUtZ3Bpb3MKPiA+
IHByb3BlcnR5IHRvIHRoZSByazM1ODgtZHctaGRtaS1xcCBEVCBiaW5kaW5nICgxLzUpIGFuZCB1
cGRhdGUgdGhlIGRyaXZlcgo+ID4gYWNjb3JkaW5nbHkgKDIvNSBhbmQgMy81KS4gVGhvc2UgcGF0
Y2hlcyBoYXZlIGJlZW4gYXV0aG9yZWQgYnkgQ3Jpc3RpYW4KPiA+IENpb2NhbHRlYSBhcyBwYXJ0
IG9mIGEgbGFyZ2VyIHNlcmllcywgSSBoYXZlIGluY29ycG9yYXRlZCB0aGVtIGhlcmUKPiA+IGFz
LWlzLgo+ID4gCj4gPiBQYXRjaCA0LzUgdGhlbiBhZGQgYSBuZXcgY29tcGF0aWJsZSBmb3IgdGhl
IGJvYXJkIHRvIGFybS9yb2NrY2hpcC55YW1sLgo+ID4gVGhlIGxhc3QgcGF0Y2ggKDUvNSkgYWRk
cyB0aGUgZGV2aWNlIHRyZWUgZm9yIHRoZSBib2FyZC4KPiA+IAo+ID4gUGF0Y2hlcyAyLzUgYW5k
IDMvNSBjb3VsZCBiZSBtZXJnZWQgc2VwYXJhdGVseSB0aHJvdWdoIHRoZSBEUk0gdHJlZSwKPiA+
IGJ1dCBwYXRjaCAxLzUgbmVlZHMgdG8gYmUgbWVyZ2VkIHdpdGggdGhlIGRldmljZSB0cmVlIGlu
IDUvNSB0byBhdm9pZAo+ID4gaW50cm9kdWNpbmcgRFQgdmFsaWRhdGlvbiB3YXJuaW5ncy4gSSdk
IGFwcHJlY2lhdGUgYWR2aWNlIGZyb20gdGhlIERUCj4gPiBtYWludGFpbmVycyByZWdhcmRpbmcg
aG93IHRvIGhhbmRsZSB0aGlzLCBhcyBJIGhhdmUgYmVlbiB0b2xkIGJlZm9yZQo+ID4gdGhhdCBE
VCBiaW5kaW5ncyBhbmQgRFQgc291cmNlcyBjYW4ndCBiZSBtZXJnZWQgdGhyb3VnaCB0aGUgc2Ft
ZSB0cmVlLgo+IAo+IEkgdGhpbmsgd2UgZ2VuZXJhbGx5IG9ubHkgY2FyZSBhYm91dCBiaW5kaW5n
IHdhcm5pbmdzIGhhcHBlbmluZwo+IGluIGxpbnV4LW5leHQuCj4gCj4gSS5lLiBpbiBtb3N0IGNh
c2VzLCB0aGUgYmluZGluZyBpcyBtZXJnZWQgd2l0aCB0aGUgZHJpdmVyIGFuZAo+IHRoZSBkdHMg
dGhlbiBpbnRvIGEgc2VwYXJhdGUgdHJlZSAtIHNvcnQgb2YgaWdub3JpbmcgdGhlIGxvY2FsCj4g
YmluZGluZyBlcnJvciwgYmVjYXVzZSBldmVyeXRoaW5nIHdpbGwgYmUgZmluZSBvbmNlIHN0dWZm
IGNvbWVzCj4gdG9nZXRoZXIgaW4gbGludXgtbmV4dC4KCkFzc3VtaW5nIHRoZXkgZ2V0IG1lcmdl
ZCB0b2dldGhlciBpbiBsaW51eC1uZXh0LiBJZiB0aGVyZSdzIGEgZGVsYXksCmxpbnV4LW5leHQg
d2lsbCBleGhpYml0IHdhcm5pbmdzIGZvciBzb21lIHRpbWUuIEkgZG9uJ3Qga25vdyB3aGF0IHRo
ZQpydWxlIGlzIHJlZ2FyZGluZyB0aGF0LgoKPiBTcGVha2luZyBvZiBiaW5kaW5ncywgZG9lcyB5
b3VyIGJvYXJkIF9uZWVkXyB0aGUgZnJsLWdwaW8gdG8gcHJvZHVjZQo+IGFueSBoZG1pIG91dHB1
dD8gTGlrZSBjb3VsZCB3ZSBtZXJnZSB0aGUgYm9hcmQgd2l0aG91dCB0aGUgKG9wdGlvbmFsKQo+
IGdwaW8gYW5kIHRoZW4gYWRkIGl0IGxhdGVyLCBvbmNlIHRoZSBiaW5kaW5nK2RyaXZlciBoYXZl
IG1hZGUgaXQgaW4/CgpXaXRoIGEgc3VpdGFibGUgcHVsbC11cCBJIHRoaW5rIHNvLiBJIGNhbiBz
dWJtaXQgYSB2MyB3aXRoIHRoYXQuCgo+IEp1c3QgbWUgdHJ5aW5nIHRvIGdyYWIgdGhlIGJpZyBj
aHVua3MgZWFybGllciBpbiB0aGUgY3ljbGUuCgotLSAKUmVnYXJkcywKCkxhdXJlbnQgUGluY2hh
cnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
