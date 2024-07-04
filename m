Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3088C30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 17:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZn0j7ngE3uXfFg+WzRM6MRT9W8Gm0u4rAVGEB66mXE=; b=H5Z2zGQetvXoMO
	tz4c8n+pnblI40e3XW4au6c8dwHoyvRzqcdTZvv9EMa2qiV/qt/tSCrtEtdgQuFRzZ/frvK+Q7hqO
	eBZLADPY4QqsAwgkmZ4hZ7C4QHNylteo0D4LpZUGUjADfQn6xhJg0JeumGq3oqNThPU91E7uaEm0V
	47ktxDpYcbHL5pwoVNDTSMl92LwKbnQnmWqVrtXZAd8y26wI9RKoNsrv9O/W/Y+nQWydRHE2ps94z
	+RjhcgQhqangrdy3qVLoMp+wmEs6XbMPw8mHvU+RZoXU1xIlpCLidBngAliOpKDWhCNdotaoS/R1W
	dkQJ5TYE4zDso/vWptyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPPyy-0000000Dvtt-0P9u;
	Thu, 04 Jul 2024 17:10:56 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPPyi-0000000Dvoe-3Si5;
	Thu, 04 Jul 2024 17:10:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1720113037;
	bh=KPHOcd8xOVqXjxDDUIb/H8iK/xQwdrfcnmftClPv6B8=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=deRXnyC1lRbV3rtJxF/iWlseoOQZzKJXSCBMfUmwhbJWBZxId1PCN3xDjsc3bFNRu
	 97a80RlMeKWOS0LvINVcl4kPV7ENt5RxtOMUnkR17jffwZPGvU3eYWNNiQo2wTdycT
	 tLUF7N13u5Ly4tTo4tZUmSel6m0jRR6TGX51sYxv/iGEWI0L0wk4qWZLzU83Imj0n6
	 f60Z48JjUBboFN9w2boPz3tvRtXFswqcY+mXe5adpjFMEr4BwG3vGtJu5V4ai09fV7
	 WqtS1z/7enXA83qqpY8qRckT01ApHd0P8aDoaGMiIe2g0Dp5upsOrKh5Gy2th1mJHh
	 U5TGClBedyA5A==
Received: from [100.77.12.232] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1BD8F378219E;
	Thu,  4 Jul 2024 17:10:37 +0000 (UTC)
Message-ID: <81bd0794ff2731c8ca38069a872649e007340802.camel@collabora.com>
Subject: Re: [PATCH 00/13] rockchip: Enable 4K@60Hz mode on RK3228, RK3328,
 RK3399 and RK356x
From: Christopher Obbard <chris.obbard@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>, dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org, Diederik
 de Haas <didi.debian@cknow.org>, kernel <kernel@collabora.com>
Date: Thu, 04 Jul 2024 18:10:36 +0100
In-Reply-To: <20240615170417.3134517-1-jonas@kwiboo.se>
References: <20240615170417.3134517-1-jonas@kwiboo.se>
User-Agent: Evolution 3.52.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_101041_039733_A147BAE3 
X-CRM114-Status: GOOD (  22.75  )
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

SGkgSm9uYXMsCgpbICsgRGllZGVyaWsgd2hvIGhhcyBhbHJlYWR5IGRvbmUgc29tZSB0ZXN0aW5n
IF0KCk9uIFNhdCwgMjAyNC0wNi0xNSBhdCAxNzowMyArMDAwMCwgSm9uYXMgS2FybG1hbiB3cm90
ZToKPiBUaGlzIHByZXBhcmVzIGFuZCBlbmFibGUgdXNlIG9mIEhETUkyLjAgbW9kZXMsIGUuZy4g
NEtANjBIeiwgb24gUkszMjI4LAo+IFJLMzMyOCwgUkszMzk5IGFuZCBSSzM1NnguCj4gCj4gUGF0
Y2ggMS0zIGZpeGVzIHNvbWUgaXNzdWVzIHRvIGhlbHAgc3VwcG9ydCB1c2Ugb2YgaGlnaC1yZXNv
bHV0aW9uIG1vZGVzLgo+IAo+IFBhdGNoIDQgZml4ZXMgcmVhZGluZyBvZiBFRElEIG9uIFJLMzMy
OCB3aGVuIHVzaW5nIGEgZm9yY2VkIG1vZGUuCj4gCj4gUGF0Y2ggNS03IGFkZHMgaGRtaXBoeSBy
YXRlIHZhbGlkYXRpb24gaW4gbW9kZV92YWxpZCBzbyB0aGF0IEhETUkyLjAKPiBtb2RlcyBjYW4g
YmUgZW5hYmxlZCBvbiBSSzMyMjggYW5kIFJLMzMyOC4KPiAKPiBQYXRjaCA4LTExIG1vZGlmeSBw
aHksIGN1cnJlbnQgYW5kIG1wbGwgdGFibGVzIHRvIG1hdGNoIHdoYXQgQ2hyb21lT1MKPiBhbmQg
dmVuZG9yIGtlcm5lbCB1c2UuIFRoZXNlIHBhdGNoZXMgb3JpZ2luYXRlIGZyb20gb2xkIENocm9t
ZU9TIGFuZAo+IHZlbmRvciBrZXJuZWxzIGFuZCBoYXZlIHN1Y2Nlc3NmdWxseSBiZWVuIHVzZWQg
aW4gTGlicmVFTEVDIGRpc3RybyBmb3IKPiB0aGUgcGFzdCBmZXcgeWVhcnMuCj4gCj4gUGF0Y2gg
MTIgZW5hYmxlcyB1c2Ugb2YgSERNSTIuMCBtb2RlcyBvbiBSSzMzOTkgYW5kIFJLMzU2eC4KPiAK
PiBQYXRjaCAxMyBoZWxwIGZpeCB1c2Ugb2YgY29uc29sZSBhdCA0SyByZXNvbHV0aW9uIG9uIFJL
MzM5OS4KPiAKPiBUaGlzIHNlcmllcyBtYXkgbm90IGZ1bGx5IGRlcGVuZCBvbiBidXQgd2FzIG9u
bHkgdGVzdGVkIHRvZ2V0aGVyIHdpdGgKPiB0aGUgc2VyaWVzICJkcm06IGJyaWRnZTogZHdfaGRt
aTogTWlzYyBlbmFibGUvZGlzYWJsZSwgQ0VDIGFuZCBFRElECj4gY2xlYW51cCIgYXQgWzFdLgo+
IAo+IEkgaGF2ZSB0ZXN0ZWQgNEsgbW9kZXMgb24gZm9sbG93aW5nIGRldmljZXM6Cj4gLSBBc3Vz
IFRpbmtlckJvYXJkIChSSzMyODgpCj4gLSBQaW5lNjQgUm9jazY0IChSSzMzMjgpCj4gLSBSYWR4
YSBST0NLIFBpIDQgKFJLMzM5OSkKPiAtIFJhZHhhIFJPQ0sgM0EgKFJLMzU2OCkKPiAKPiBBIGNv
cHkgb2YgdGhpcyBzZXJpZXMgY2FuIGFsc28gYmUgZm91bmQgYXQgWzJdLgo+IAo+IFsxXSBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzEzNDcyNy8KPiBbMl0KPiBodHRw
czovL2dpdGh1Yi5jb20vS3dpYm9vL2xpbnV4LXJvY2tjaGlwL2NvbW1pdHMvbmV4dC0yMDI0MDUz
MS1yay1kdy1oZG1pLXYxLwoKCkkgdGVzdGVkIHRoaXMgcGF0Y2ggc2VyaWVzICh0b2dldGhlcgp3
aXRowqBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzEzNDcyNy8pIG9u
IGEgUmFkeGEgUk9DSyA0U0UgYW5kCnRoaW5ncyBhcHBlYXIgdG8gd29yayBxdWl0ZSB3ZWxsIC0g
b3RoZXIgdGhhbiB0aGUgaG90cGx1Z2dpbmcgaXNzdWUgZGVzY3JpYmVkCmJlbG93LgoKT25lIHBy
b2JsZW0gSSBkaWQgc2VlIGR1cmluZyB0ZXN0aW5nIHdhcyBpbiBTT01FIGNhc2VzLCBob3RwbHVn
Z2luZyBhIDRrNjAKbW9uaXRvciBkaWRuJ3Qgc2VlbSB0byBzaG93IGEgY29uc29sZSBvciBhbnl0
aGluZyBvbiB0aGUgSERNSSBvdXRwdXQgYWZ0ZXIKcmVwbHVnZ2luZyAoZS5nIHRoZSBkaXNwbGF5
IHNob3dzICJubyBzaWduYWwiKS4gU29tZXRpbWVzIHRoaXMgaGFwcGVuZWQgYWZ0ZXIKdGhlIGZp
cnN0IGhvdHBsdWcsIG90aGVyIHRpbWVzIGl0IG5lZWRlZCBhIGNvdXBsZSBvZiBob3RwbHVncyB0
byBvY2N1ci4gQW5kIGluCm90aGVyIGNhc2VzIGl0IGRvZXNuJ3QgaGFwcGVuIGF0IGFsbC4gQnV0
IG9uY2UgaXQgb2NjdXJzLCB0aGVyZSBkb2Vzbid0IHNlZW0KdG8gYmUgYW55IHdheSB0byBnZXQg
dGhlIGRldmljZSB0byBzdGFydCB0cmFuc21pdHRpbmcgYW5kIGEgcmVib290IChub3QgaGFyZApi
b290KSBpcyBuZWVkZWQuIEl0J3Mgbm90IGNsZWFyIHdoeSBpdCBnZXRzIGludG8gdGhpcyBzdGF0
ZS4KCkFub3RoZXIgd2F5IG9mIGdldHRpbmcgdGhlIGRldmljZSBpbnRvIHRoaXMgc3RhdGUgaXMg
Y29ubmVjdGluZyBhIDRrNjAgc2NyZWVuLAp0aGVuIGNvbm5lY3RpbmcgYSBzZXBhcmF0ZSAxMDgw
cCBzY3JlZW4gKGl0J3Mgbm90IGNsZWFyIGlmIGNoYW5naW5nIHRoZQpyZXNvbHV0aW9uIGZyb20g
TGludXggY2F1c2VzIHRoZSBzYW1lIGJlaGF2aW91ciksIHRoZW4gcmVjb25uZWN0aW5nIHRoZSA0
awpzY3JlZW4uIEluIHRoaXMgY2FzZSwgdGhlcmUgaXMgbm8gb3V0cHV0IGZyb20gdGhlIEhETUkg
cG9ydC4gVGhpcyBoYXBwZW5zCnByZXR0eSBjb25zaXN0ZW50bHkuCgpGb3IgdGhlIHJlY29yZCwg
d2l0aCBsaWJyZWVsZWMga2VybmVsIHBhdGNoZXMgZm9yIDRrNjAgYXBwbGllZCB0byBrZXJuZWwK
NS5zb21ldGhpbmcsIHRoZSBhYm92ZSBob3RwbHVnIGJlaGF2aW91ciBkb2VzIG5vdCBvY2N1ci4g
U28gaXQgbXVzdCBiZQpzb21ldGhpbmcgaW50cm9kdWNlZCBpbiB0aGlzIHBhdGNoIHNlcmllcyA/
CgoKSSB3b25kZXIgaWYgeW91IGNhbiBjb25maXJtIHRoaXMgYnVnID8KCkkgd2lsbCByZWZyYWlu
IGZyb20gYWRkaW5nIG15IFRlc3RlZC1ieSBmb3Igbm93LgoKClRoYW5rcwoKQ2hyaXMKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
