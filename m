Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E375DD2D111
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 14:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UWD/yXDBVzZ0WtnAx0MUUyatDsZeLlGjYs+gapFkdSY=; b=rJSBAa2szcAlBo
	/ix4QXZsNK58mdvJs99D//G44GdCuHG8EIeUbSEFv5sXoedWaF3wF9wadJtg4vSGwNuqPIrgVuy08
	d2E9bnDfrI9omYYoHz5C7KYqtQTFdTviYOoRBA4ewlR9/1rKXfGED4w7t8KQLR1q1XKNYHHRrlinm
	8aYZvwRqLOR4VHiqkEyaO0lQUM3E/mdCCiF5lanJdIKVp+UtZnE8dn/P5cOI4KeZ4VWiVgQAc7EQv
	q6GE13PH39CqgI7IroEMk03TxInrXVozgUtE6vnz0FlGBQobWAWmaWUGcYxDN4NL6GeKKF9Z9jRUr
	LplfaPZkH9wFBbFPB4WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vffU6-00000007GYH-1Jpm;
	Tue, 13 Jan 2026 14:35:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vffU3-00000007GXC-2b5w;
	Tue, 13 Jan 2026 14:35:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5DFDE442F0;
	Tue, 13 Jan 2026 14:34:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65F47C116C6;
	Tue, 13 Jan 2026 14:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768314898;
	bh=AzZQytbKoAJJfaB4z4AtSC0UhVkaJpMEr1pqnGeXh9I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MQNfju/Q9a6Hn8BI1P+idlfvG6yB1q8BDwruQgbECFoMUIsvVS2gOeytY885uwG7X
	 +tjwGvxA0cfaMtbIPAX7V9Xb6sAdeu7wQDvIN0X49EJ8/j1BfRhR9E8MvJQIIJkCqW
	 Au5RHD49jMU0HAZ12NZNsHajN5XUmuzOZHyKrf6NvlVMxoPESPULpCNKVrbU2tZOas
	 VVzxa4SVZuIuc+/IBd4IdXgKTylQ/4es8ZhJ66VsoHqG5VyrPY9aHVC+LODho/Oe2P
	 yH5qxPs3GaSPIy1zUwYdQfQy/+nQ6rAUwdsq4wUe0VXoWfAPmHjsl+JUwDuV+oVrq3
	 tD4eBiT4ngUig==
Date: Tue, 13 Jan 2026 20:04:50 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-phy@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 1/5] PCI: dw-rockchip: Add phy_calibrate() to check PHY
 lock status
Message-ID: <og25pa5rxaktqjs7x2h3gkq4yvh77tq6xksc5usddvy3dpqxsp@honmrhi4fv5i>
References: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com>
 <1766560210-100883-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1766560210-100883-2-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_063459_685929_05B2437E 
X-CRM114-Status: GOOD (  21.01  )
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

T24gV2VkLCBEZWMgMjQsIDIwMjUgYXQgMDM6MTA6MDZQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IEN1cnJlbnQgd2Uga2VlcCBjb250cm9sbGVyIGluIHJlc2V0IHN0YXRlIHdoZW4gaW5pdGlh
bGl6aW5nIFBIWSB3aGljaAo+IGlzIHRoZSByaWdodCB0aGluZyB0byBkby4gQnV0IHRoaXMgY2Fz
ZSwgdGhlIFBIWSBpcyBhbHNvIHJlc2V0IGJlY2F1c2UKPiBpdCByZWZlcnMgdG8gYSBzaWduYWwg
ZnJvbSBjb250cm9sbGVyLiBOb3cgd2UgY2hlY2sgUEhZIGxvY2sgc3RhdHVzCj4gaW5zaWRlIC5w
aHlfaW5pdCgpIGNhbGxiYWNrIHdoaWNoIG1heSBiZSBib2d1cyBmb3IgY2VydGFpbiB0eXBlIG9m
IFBIWSwKPiBiZWNhdXNlIG9mIHRoZSBmYWN0IGFib3ZlLiBBZGQgcGh5X2NhbGlicmF0ZSgpIHRv
IGJldHRlciBjaGVjayBQSFkgbG9jawo+IHN0YXR1cyBpZiBwcm92aWRlZC4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KCkkgZ3Vlc3MgdGhp
cyBwYXRjaCBjYW4gZ2V0IG1lcmdlZCBzZXBhcmF0ZWx5IHdpdGhvdXQgdGhlIFBIWSBwYXRjaGVz
IGFuZCBub3QKY2F1c2UgYW55IGZ1bmN0aW9uYWwgaXNzdWUuIEJ1dCBJJ2QgbGlrZSB0aGUgUEhZ
IHBhdGNoZXMgdG8gZ2V0IHJldmlld2VkIHNvIHRoYXQKd2Uga25vdyB0aGF0IHRoZSBBUEkgdXNh
Z2UgaXMgY29ycmVjdC4KCi0gTWFuaQoKPiAtLS0KPiAKPiAgZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIHwgOSArKysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBpbmRleCBmODYwNWZlLi43NWQ2MzA2IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAu
Ywo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+
IEBAIC03MDUsNiArNzA1LDEyIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJaWYgKHJldCkKPiAgCQlnb3RvIGRlaW5pdF9w
aHk7Cj4gIAo+ICsJcmV0ID0gcGh5X2NhbGlicmF0ZShyb2NrY2hpcC0+cGh5KTsKPiArCWlmIChy
ZXQpIHsKPiArCQlkZXZfZXJyKGRldiwgInBoeSBsb2NrIGZhaWxlZFxuIik7Cj4gKwkJZ290byBh
c3NlcnRfY29udHJvbGxlcjsKPiArCX0KPiArCj4gIAlyZXQgPSByb2NrY2hpcF9wY2llX2Nsa19p
bml0KHJvY2tjaGlwKTsKPiAgCWlmIChyZXQpCj4gIAkJZ290byBkZWluaXRfcGh5Owo+IEBAIC03
MjcsNyArNzMzLDggQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAl9Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gLQo+ICthc3NlcnRf
Y29udHJvbGxlcjoKPiArCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KHJvY2tjaGlwLT5yc3QpOwo+ICBk
ZWluaXRfY2xrOgo+ICAJY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUocm9ja2NoaXAtPmNsa19j
bnQsIHJvY2tjaGlwLT5jbGtzKTsKPiAgZGVpbml0X3BoeToKPiAtLSAKPiAyLjcuNAo+IAoKLS0g
CuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
