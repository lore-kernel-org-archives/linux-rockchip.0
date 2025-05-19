Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D477C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 17:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w77sUbyeC0P4SgCjdahf2N93oXYnxGXPsWQbEcJsbpw=; b=234gc3WmXenXlF
	KGMBkRwtXCHW9jwFyyVXuQ8/3UWwaEMBOhsitd6fm4kmTCL/JQjb73/6BIJcWPkzkWjvHfdp2tJnz
	DCp0qUCK/pcdth9xDisoZo2uyFjXqFA55iEId2M4rSAXc8dy+igHh+L17DiK+F+5aXk9y9prbISdr
	TlJ+4pCLjWtSLpgnoK2F9ZIf0GxEzEkNT4SCvr9UYfw2Kr9E5urnu7Pqk+6cmCRa6eY6+BnjEw/AW
	XNdNSSP1FgZMNUsVBDBY1qy3TvJmcHj6+iw3lxdlB8vJpQOQHqzAO9lejbWry765RNbmGGQIp/UUk
	py15+AygKG8NXRE2QJJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH4aD-0000000A0bG-0gqm;
	Mon, 19 May 2025 17:47:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH3xx-00000009umd-2Q54;
	Mon, 19 May 2025 17:07:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=Kj/VMwkUNI8WVdA0evoXZ3TAkYKKG+MMJX7QyMMaXUw=; b=LdDakWGElKmsMDaJk0QIhJJ3gP
	XF9eyygXbXn2sxg/ndnPMgIveMAO0fBzXxQPeD9HnK3VbOk3mEX3G0pkUf1zK8l0j5o9pktX8RpIm
	+N3F0fXW/YHFFaR4+sdHkKcBmsuKCx4BCfz60zEbzhuB3iRT1eeZpqi44zUXJC69h6d0BGkD5sIEp
	2+sF4ClgqezucwpElSorBu044SW01DtrzCz0sQdmnA0CEy3weD88rdu38aNuN/HHBQzLCFqpuc6mj
	vEiVwzobXE0cvuFqqwdZPX946aUhipHu5GWmHgRvV8XsOEVx/fMJShQx7eYO24SAcpjt/hHUWs5QY
	xf2lusRw==;
Received: from i53875bdb.versanet.de ([83.135.91.219] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uH3xm-0007E0-3W; Mon, 19 May 2025 19:07:42 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>, Ulf Hansson <ulf.hansson@linaro.org>,
 Yao Zi <ziyao@disroot.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chukun Pan <amadeus@jmu.edu.cn>,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/9] pmdomain: rockchip: Add support for RK3528
Date: Mon, 19 May 2025 19:07:39 +0200
Message-ID: <3416319.KgjxqYA5nG@diego>
In-Reply-To: <aCthtDxm25RU_fd3@pie.lan>
References: <20250518220707.669515-1-jonas@kwiboo.se>
 <20250518220707.669515-3-jonas@kwiboo.se> <aCthtDxm25RU_fd3@pie.lan>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_100753_630568_9B4AFB8C 
X-CRM114-Status: GOOD (  20.60  )
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

SGksCgpBbSBNb250YWcsIDE5LiBNYWkgMjAyNSwgMTg6NTI6MDQgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBZYW8gWmk6Cj4gT24gU3VuLCBNYXkgMTgsIDIwMjUgYXQgMTA6
MDY6NDlQTSArMDAwMCwgSm9uYXMgS2FybG1hbiB3cm90ZToKPiA+IEFkZCBjb25maWd1cmF0aW9u
IGFuZCBwb3dlciBkb21haW5zIGZvciBSSzM1MjggU29DLgo+ID4gCj4gPiBPbmx5IFBEX0dQVSBj
YW4gZnVsbHkgYmUgcG93ZXJlZCBkb3duLiBQRF9SS1ZERUMsIFBEX1JLVkVOQywgUERfVk8gYW5k
Cj4gPiBQRF9WUFUgYXJlIHVzZWQgYnkgbWlzY2VsbGFuZW91cyBkZXZpY2VzIGluIFJLMzUyOC4K
PiAKPiBUaGFua3MgZm9yIHlvdXIgd29yayEKPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEpvbmFzIEth
cmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvcG1kb21haW4vcm9j
a2NoaXAvcG0tZG9tYWlucy5jIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICAx
IGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgYi9kcml2ZXJzL3BtZG9tYWluL3Jv
Y2tjaGlwL3BtLWRvbWFpbnMuYwo+ID4gaW5kZXggNGNjZTQwN2JiMWViLi4yNDI1NzBjNTA1ZmIg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYwo+
ID4gKysrIGIvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPiA+IEBAIC0z
NSw2ICszNSw3IEBACj4gPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Bvd2VyL3JrMzM2Ni1wb3dl
ci5oPgo+ID4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9wb3dlci9yazMzNjgtcG93ZXIuaD4KPiA+
ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcG93ZXIvcmszMzk5LXBvd2VyLmg+Cj4gPiArI2luY2x1
ZGUgPGR0LWJpbmRpbmdzL3Bvd2VyL3JvY2tjaGlwLHJrMzUyOC1wb3dlci5oPgo+ID4gICNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9wb3dlci9yb2NrY2hpcCxyazM1NjItcG93ZXIuaD4KPiAKPiBCdXQg
SSBoYWQgc29tZSB0cm91YmxlIGFwcGx5aW5nIHRoaXMgcGF0Y2ggb24gZWl0aGVyIFJvY2tjaGlw
IFNvQyB0cmVlCj4gb3IgbGludXgtcG0uIExvb2tpbmcgdGhyb3VnaCB0aGUgY29udGV4dCwgc2Vl
bXMgdGhlIHBhdGNoIGRlcGVuZHMgb24KPiBzb21lIFJLMzU2MiBQTVUgZHJpdmVyIGNoYW5nZXMs
IHdoaWNoIEkgY291bGRuJ3QgZmluZCB3aXRoIHNvbWUgYnJpZWYKPiBzZWFyY2hpbmcgYW1vbmcg
dGhlIGxpc3QuCj4gCj4gV2hpY2ggYnJhbmNoIGlzIHRoZSBzZXJpZXMgYmFzZWQgb24/CgphcmUg
eW91IHN1cmUgeW91IGxvb2tlZCBhdCB0aGUgcmlnaHQgbGludXgtcG0gdHJlZT8KCkluIFswXSBJ
IGRvIHNlZSByazM1NjIgcG93ZXJkb21haW5zIGFwcGxpZWQuCgpIZWlrbwoKClswXSBodHRwczov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC91bGZoL2xpbnV4LXBtLmdp
dC9jb21taXQvP2g9bmV4dCZpZD1mODljMDgyZDQ0OTE0ZjI0ZGZiNWIwMjE5ZWIxNDAzNjlkZTVi
NjEyCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
