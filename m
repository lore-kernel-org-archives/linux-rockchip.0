Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56B1EC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 17:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYjR564c3FZLly8ghiOEt84xdO9kALLf4H4FA+NIIRg=; b=ey3PEbx+8JSVfz
	w06Aq6kwlaxug+OVPTElJx5RiI7gjy8YNgXW56lE5HhY1Ldz/cBX8WJmUgsWo8OmS1eQI/BHLUtKc
	0BbZfsYQGGBhRHYrAxkLPwpqf2KvH8kgO4qJm6ZgNHrvH3z+vbImfi1WDUVvKEtOCGv4Z30UHIN7z
	zk2Y8zK4d1FBxRFiXXBOwiQFzkbPcYc60Cc6KvXKqstjLsGo+1ewIWQFMSme1aU5dJNYJNgn/PxY0
	0qwHomggxXeerlMEjk2yIdnanbXpYIL6kjWRu0HtXMT0lTlar2hYKTXxMteZn3u5iwryaHmlYUETi
	/Qmpn2c4j9TBKyYepgMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcVOm-00ECH0-2c;
	Wed, 15 Mar 2023 17:58:52 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcVOk-00ECGd-0b
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Mar 2023 17:58:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6A74EB81EC3;
	Wed, 15 Mar 2023 17:58:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 448C8C433D2;
	Wed, 15 Mar 2023 17:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678903127;
	bh=opfk99RIiIUh2uFqleYgDk2/kNdpAT1Wq7/Pq8VrxR4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nIMoo987szyyVdK2q+snILgdA/DtUowMQFKM8Z/QEkph96cbaQ5mIGN4VxCvVhu9h
	 xQhRxC/rwJ4zoTed4lridrdU1I10hTSLDb9XUUxdqUHIBmw9Ebyo9fVwmaVNycxQ/S
	 toXSW1kI+bWBUj3DRDMUMoWupul6Mk65HqU73vbSC8LlDfyt2MHJj/oXdklbfXP107
	 DfXlc72AEBkwnoxGNiyltjb4LSI5i1wf+N63FZdfj7mqIq+S/cjBRGFSJjRzIffw7t
	 zqD2X18vmUPuzjp28HD/N5p3hjEJQOEzR17sG2Of2BPl1RD/CCgMSSoDRl0icehh1a
	 +Q9V6CK9IQgPQ==
Date: Wed, 15 Mar 2023 17:58:41 +0000
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCHv7 08/11] mfd: rk8xx: add rk806 support
Message-ID: <20230315175841.GL9667@google.com>
References: <20230307153617.643260-1-sebastian.reichel@collabora.com>
 <20230307153617.643260-9-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230307153617.643260-9-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_105850_398360_5F8BA81D 
X-CRM114-Status: GOOD (  14.31  )
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

T24gVHVlLCAwNyBNYXIgMjAyMywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IEFkZCBzdXBw
b3J0IGZvciBTUEkgY29ubmVjdGVkIHJrODA2LCB3aGljaCBpcyB1c2VkIGJ5IHRoZSBSSzM1ODgK
PiBldmFsdWF0aW9uIGJvYXJkcy4gVGhlIFBNSUMgaXMgYWR2ZXJ0aXNlZCB0byBzdXBwb3J0IEky
QyBhbmQgU1BJLAo+IGJ1dCB0aGUgZXZhbHVhdGlvbiBib2FyZHMgYWxsIHVzZSBTUEkuIFRodXMg
b25seSBTUEkgc3VwcG9ydCBpcwo+IGFkZGVkIGhlcmUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBTZWJh
c3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy9tZmQvS2NvbmZpZyAgICAgICB8ICAxNCArKwo+ICBkcml2ZXJzL21mZC9NYWtlZmls
ZSAgICAgIHwgICAxICsKPiAgZHJpdmVycy9tZmQvcms4eHgtY29yZS5jICB8ICA2OSArKysrKyst
Cj4gIGRyaXZlcnMvbWZkL3JrOHh4LXNwaS5jICAgfCAxMjQgKysrKysrKysrKysrCj4gIGluY2x1
ZGUvbGludXgvbWZkL3JrODA4LmggfCA0MDkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysKPiAgNSBmaWxlcyBjaGFuZ2VkLCA2MTQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlv
bnMoLSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL3JrOHh4LXNwaS5jCgpGb3Ig
bXkgb3duIHJlZmVyZW5jZSAoYXBwbHkgdGhpcyBhcy1pcyB0byB5b3VyIHNpZ24tb2ZmIGJsb2Nr
KToKCkFja2VkLWZvci1NRkQtYnk6IExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+CgpDYW4ndCBh
cHBseSB0aGUgc2V0IHRob3VnaCwgYXMgeW91J3JlIHN0aWxsIG1pc3NpbmcgQWNrcy4KClBsZWFz
ZSBwaW5nIG1lIG9uY2Ugd2UgaGF2ZSB0aGVtIGFsbC4KCi0tCkxlZSBKb25lcyBb5p2O55C85pav
XQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
