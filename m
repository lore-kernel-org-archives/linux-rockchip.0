Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E16EC54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 16:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Cc:To:From:Message-Id:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sobqk9P05WMT3qPZSeQXwyramVEAL7yIS9cOpIexVlc=; b=IvH7bbxwJkWiBV
	wewdmhLAWmsLH0WlJy80/56utt6QX4y5xqe+waD5c0WgV8hlfYcJl13F+4SO6qx+8PE3lzzzdnt3r
	szqIoFQNH8zeTQ0TYh7Z25pjqauZL/AAF/REUH3HxvJ/TgTRe1dyMTUfNjahVSeyy/UBnvCdxr+kP
	MLGV8cXIJKdsQBd646Hs3xT1qUKaOxK0jeILOzgEPtUdVrFc0K7gVp30MOdTpbJKNOEoSWEB8Ku+t
	RfdKaqOdXD+tXc3cO3zyhcrW0rzljNJNOvPmfOXxKQ+iTJ5lloI7IqlKnIkvfjAAaRFUAIr+288AH
	3rt1tR/S73lVnailHBBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFHwO-007tPT-4j; Tue, 10 Jan 2023 16:57:36 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFHwD-007tNI-Gj; Tue, 10 Jan 2023 16:57:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1673369840;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wLJf7rlYnsfKFU13yCojTmfXUwg5u9qhzslCQXNKBXc=;
	b=TntX6kWh1RXv8wINIY+Ao8gfb7TnHZa4PXGAmBB8sKAHqveaEKKOv84SD+8NfYsbuzRaO0
	sXEwvWigH33VK6gfqsxwug0XezbdG/CJOIDTxwcI4yPqwpkPraan3+ZSziptnDoEv7qskB
	/iXKq52yFQf/aB14Ytm75C2ZU1al93eQYRuSjSvLC1mh+mtxNmzmBvq95RllRPZTLTFFRz
	OfUmi1m/d8TozFOzJzBeTyvXHdxs28KH3Y3AF5qgJuUsE2IRLIOvEoPhZ0HDSqQCcGSQgU
	wN4DtfabD/GJBSKLl+WLK/PyTvvCW/uDp44NaTmv242ehKCoWoZizOLXFHdvXQ==
Message-Id: <1673369800029.3980439484.1306325648@manjaro.org>
From: Furkan Kardame <f.kardame@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, wens@kernel.org
Cc: pgwipeout@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add rk3566 audio nodes
Date: Tue, 10 Jan 2023 16:57:18 +0000
In-Reply-To: <3835889.hdfAi7Kttb@diego>
References: <3835889.hdfAi7Kttb@diego>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_085726_043572_9D515BE2 
X-CRM114-Status: GOOD (  19.11  )
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

T24gVHVlc2RheSAxMCBKYW51YXJ5IDIwMjMgMTc6MTA6MjYgKCswMzowMCksIEhlaWtvIFN0w7xi
bmVyIHdyb3RlOgoKPiBBbSBEaWVuc3RhZywgMTAuIEphbnVhciAyMDIzLCAxNTowODo1MCBDRVQg
c2NocmllYiBDaGVuLVl1IFRzYWk6Cj4gPiBPbiBUdWUsIEphbiAxMCwgMjAyMyBhdCAxMDowNSBQ
TSBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+ID4KPiA+ID4gT24g
TW9uLCA5IEphbiAyMDIzIDIzOjMyOjMzICswMzAwLCBGdXJrYW4gS2FyZGFtZSB3cm90ZToKPiA+
ID4gPiBUaGlzIHBhdGNoIGFkZHMgc2ltcGxlIGF1ZGlvIGNhcmQgbm9kZXMKPiA+ID4gPiBFbmFi
bGVkIGkyczBfOGNoIGFzIGl0IGlzIG5lZWRlZCBmb3IgaGRtaSBhdWRpbwo+ID4gPiA+IEFkZGVk
IGkyczFfOGNoIGFzIGl0IGlzIG5lZWRlZCBmb3IgMy41bW0gYXVkaW8gamFjawo+ID4gPiA+Cj4g
PiA+ID4KPiA+ID4KPiA+ID4gQXBwbGllZCAtIHdpdGggcmVtYXJrcyBiZWxvdyEKPiA+ID4KPiA+
ID4gWzEvMV0gYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCByazM1NjYgYXVkaW8gbm9kZXMKPiA+
ID4gICAgICAgY29tbWl0OiA5Y2U2MTg5OGIzMDc1ODkyYjAxNzkyZmQzYTQ0NTA3YjdlNDU5YzZm
Cj4gPiA+Cj4gPiA+Cj4gPiA+IFRoZSBjb3JlIGkyc0BmZTQxMDAwMCBub2RlIHNob3VsZCBfbm90
XyBnbyBpbnRvIGEgYm9hcmQgZGV2aWNldHJlZS4KPiA+ID4gVGhhbmtmdWxseSBhbiBpZGVudGlj
YWwgbm9kZSBmb3IgdGhlIGkycyBjb250cm9sbGVyIHdhcyBhbHJlYWR5Cj4gPiA+IGFkZGVkIHRv
IHRoZSBjb3JlIHJrMzU2eCBkdCwgc28gSSd2ZSBqdXN0IGRyb3BwZWQgdGhlIG9uZSBmcm9tCj4g
PiA+IHlvdXIgcGF0Y2guCj4gPiAKPiA+IFNob3VsZG4ndCBoZG1pX3NvdW5kIGFsc28gYmUgZW5h
YmxlZD8gT3RoZXJ3aXNlIGkyczBfOGNoIGlzIGVuYWJsZWQKPiA+IGZvciBub3RoaW5nLgo+IAo+
IEZ1cmthbiwgY2FyZSB0byBzZW5kIGEgcGF0Y2ggZm9yIHRoYXQ/Cj4gCj4gCj4gCj4gCgoKU29y
cnkgbWlzc2VkIGhkbWlfYXVkaW8sIHdpbGwgYWRkIGl0IHRvIHRoZSBwYXRjaC4KSSByZW1lbWJl
ciB3aHkgaTJzQGZlNDEwMDAwIHdhcyBhZGRlZCB0byB0aGUgZGV2aWNlIHRyZWUuCkl0IHVzZXMg
bGltaXRlZCBwaW5jdHJsLTAgdGhhbiB0aGUgb25lcyBpbiByazM1NnguZHRzaQoKSSB3aWxsIGZp
eCB0aGVzZSAyIHBvaW50cyBhbmQgc2VuZCB2MiBzb29uLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
