Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2BD3CA0FF2
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Aug 2025 14:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MPW/OfbQE5eVKhgNaeV0yOVh6nqXSjj0kTZR3smxfJ4=; b=2ggiwPJRNuzmSQ
	QYumiqGuBvo+GNT1XM9lpuA0Uwzyx8ryxS67T7cRDPWK/ZTiBmk5dG3TiPwnyhxFT809VbrQuHxFS
	twpKSUy+fJ9xF26rM60Cb8hCfV7tPWxoScXHKBho7hMhIElZkO3gwnQuuyxKpfkxyVmmpgce2Xn7X
	gTsO1XSDDLBs3OteL6uqYaC31fKAkG5SJA1us4IBS/zXHhyIo0CpdVhZ2iF1rhSo3ZEVq57BUGJyh
	/xq4jb06bwHPoqhqte2Fb0ZM6rEFx8f4IqyAOczveBEZ9EBFYTF1lR7aGjCN6ICTZHNLr6p3QKmy+
	9b7peVCZI2wZgHmGdMbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usjP3-0000000AImM-1Mq8;
	Sun, 31 Aug 2025 14:51:33 +0000
Received: from chumsalmon.baetis.net ([2001:19f0:5:5b58:5400:5ff:fe17:97e8])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usjMI-0000000AIcQ-2jtD;
	Sun, 31 Aug 2025 14:48:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tahomasoft.com;
	s=default; t=1756651720;
	bh=yjP8Q67gJ8paeMTc0Y4T9nY+2o85Zvxpki0vD4SYeOk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=fWf9ipaq00vZUxq/dTf2JtUZL10xEi1Y+KpE+y1VHQyODXE2Y+fzvb+ML9Xi2Bjrp
	 l1E48TJYZc+tfp7pyL8pL/x4ict/9uLUT8n73SHugBA5II3sSYR2nLuu82UoeE2REs
	 iPpDyjX++d+r7iJLrm+Y1DJsTxDIEgtox5MuHsvggotH9CKdx6qKgnTHN5TuMe6x7A
	 d7x2CPSqSoazj+jJIjbR+HmO4yoP06KONwTeg1MMBovuwqxfIPfkmOCqZcqj5RY2zu
	 vN7jGth3kexhm5aNok/9gkAohriJBghqo+Ll3IoB2iWc6Hyj3KAby5dE+2bkCR6WjE
	 82/why8OE8naQ==
Received: from WahpenayoPeak.tahoma.link (unknown [IPv6:2600:4040:50be:5a04:7b87:89ea:8410:bae3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by chumsalmon.baetis.net (Postfix) with ESMTPSA id 21D4427E468;
	Sun, 31 Aug 2025 14:48:40 +0000 (UTC)
Date: Sun, 31 Aug 2025 10:48:39 -0400
From: Erik Beck <xunil@tahomasoft.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>, Rob
 Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add HINLINK H68K
Message-ID: <20250831104839.7b71f2fc.xunil@tahomasoft.com>
In-Reply-To: <5285B176-5178-4F6F-8FB6-B898AC0EC939@tahomasoft.com>
References: <021c2e76-cbde-4a2e-a165-a61223cdff93@lunn.ch>
	<5285B176-5178-4F6F-8FB6-B898AC0EC939@tahomasoft.com>
Organization: Tahoma Soft
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250831_074842_851006_44D60F31 
X-CRM114-Status: GOOD (  14.82  )
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

T24gU2F0LCAzMCBBdWcgMjAyNSAxODoyMToxOCAtMDQwMApFcmlrIEJlY2sgPHh1bmlsQHRhaG9t
YXNvZnQuY29tPiB3cm90ZToKCj4gPiBPbiBBdWcgMzAsIDIwMjUsIGF0IDE3OjM4LCBBbmRyZXcg
THVubiA8YW5kcmV3QGx1bm4uY2g+IHdyb3RlOgo+ID4gCj4gPiDvu78gIAo+ID4+ICAgCj4gPj4+
ICsmZ21hYzAgewo+ID4+PiArICAgIGFzc2lnbmVkLWNsb2NrcyA9IDwmY3J1IFNDTEtfR01BQzBf
UlhfVFg+LCA8JmNydSBTQ0xLX0dNQUMwPjsKPiA+Pj4gKyAgICBhc3NpZ25lZC1jbG9jay1wYXJl
bnRzID0gPCZjcnUgU0NMS19HTUFDMF9SR01JSV9TUEVFRD47Cj4gPj4+ICsgICAgYXNzaWduZWQt
Y2xvY2stcmF0ZXMgPSA8MD4sIDwxMjUwMDAwMDA+Owo+ID4+PiArICAgIGNsb2NrX2luX291dCA9
ICJvdXRwdXQiOwo+ID4+PiArICAgIHBoeS1oYW5kbGUgPSA8JnJnbWlpX3BoeTA+Owo+ID4+PiAr
ICAgIHBoeS1tb2RlID0gInJnbWlpLWlkIjsgIAo+ID4+IAo+ID4+IFBsZWFzZSBjaGFuZ2UgcGh5
LW1vZGUgaGVyZSB0byAicmdtaWkiLiBUaGlzIGNoYW5nZSB3aWxsIHlpZWxkIGFuCj4gPj4gZXRo
ZXJuZXQgc3BlZWQgdGhyb3VnaHB1dCBjaGFuZ2Ugb2YgYSBmYWN0b3Igb2YgMTAwKy4gIAo+ID4g
Cj4gPiBSb2NrY2hpcCBieSBkZWZhdWx0IGRvIGJhZCB0aGluZ3Mgd2l0aCBSR01JSSBkZWxheXMu
Cj4gPiAKPiA+ICB0eF9kZWxheToKPiA+ICAgIGRlc2NyaXB0aW9uOiBEZWxheSB2YWx1ZSBmb3Ig
VFhEIHRpbWluZy4KPiA+ICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25z
L3VpbnQzMgo+ID4gICAgbWluaW11bTogMAo+ID4gICAgbWF4aW11bTogMHg3Rgo+ID4gICAgZGVm
YXVsdDogMHgzMAo+ID4gCj4gPiAgcnhfZGVsYXk6Cj4gPiAgICBkZXNjcmlwdGlvbjogRGVsYXkg
dmFsdWUgZm9yIFJYRCB0aW1pbmcuCj4gPiAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9k
ZWZpbml0aW9ucy91aW50MzIKPiA+ICAgIG1pbmltdW06IDAKPiA+ICAgIG1heGltdW06IDB4N0YK
PiA+ICAgIGRlZmF1bHQ6IDB4MTAKPiA+IAo+ID4gVHJ5IHNldHRpbmcgYm90aCBvZiB0aGVzZSB0
byAwLiBBbmQgdGhlbiB1c2UgJ3JnbWlpLWlkJy4KPiA+IAo+ID4gICAgQW5kcmV3ICAKU2V0dGlu
ZyBib3RoIGdtYWMwIGFuZCBnbWFjMSB0byBwaHktbW9kZT1yZ21paS1pZCB3aXRoIHR4L3J4IGRl
bGF5IHNldCB0bwo8MHgwPiB5aWVsZHMgYWJvdXQgYSA3eCBpbXByb3ZlbWVudCBmcm9tIH42IE1i
cyAod2l0aCBwaHktbW9kZT1yZ21paS1pZCBhbmQKdHgvcnggZGVsYXkgdW5zZXQpIHRvIGFib3V0
IDQzIE1icHMsIHdoaWNoIGlzIHN0aWxsIHdlbGwgYmVsb3cgdGhlIH45NTAgTWJzCndpdGggcGh5
LW1vZGU9cmdtaWkgYW5kIHR4L3J4IGRlbGF5IHVuc2V0LgoKUmVnYXJkcywKCkVyaWsKCj4gCj4g
VGhhbmsgeW91IQo+ID4gCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gPiBMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwICAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
