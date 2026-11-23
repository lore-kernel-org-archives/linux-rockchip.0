Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E26C606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 17:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AoWXQVuB;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=KbCv5PkL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FPir/IJyFJxM3Afos2T6nZ5y0VRucHHAf8OkDo780qQ=; b=AoWXQVuBYMwIowwfZavoJS7ADm
	iDck0g8DBPsaaWTYmKvzWs8A55ylQQhAHHFacRJNZoFu7quagQsusfjdSMDr/1u4B+/R6nnZzgN6I
	WTIUPKlEZk8f1GBltCwlWyYf1QWun/ul7W3syHe4uqDMWr4s7aHFIIbaf5+gUmX2b5f596IVnQagu
	1uOsLGruvaFI98Rd5yvj2xXJkVVHFJjEgSUij2IHn0MgQ2bK8jhZYN+TUxhhxYb7iM1XWsYLpzvDG
	hqOzz4Xxyjsmqc5CmtYEy0SfShHwvZuj/HWYv14iHxr2ZGi1n8NfQ0OCvB3BulYSmRn5JEzAsgjK3
	1VkNif7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVY5W-00000004PZn-3uQy;
	Mon, 23 Nov 2026 17:44:22 +0000
Received: from sender6-op-o11.zoho.com ([165.173.180.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVY4k-00000004PKy-3HVb;
	Mon, 23 Nov 2026 17:43:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1795455795; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=XwRh0w8yBHTIo/Akh/fC0++ZPiNmQWIlaFiZJnwrOexMOw2sYRgM70yOOj33iQ1AGnxYvIuCsv4gWMYs057d8lbDFUgLl8oQRiI44Yll9dVgFxv9Zk8aXD8N8yRHoPs4kH88NhC+rwSq/5aUYKsWA776cfJAxmLuXlrA2H1bgGw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1795455795; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=aQvWImmPb1jRtzHePOoIeMXh67VwZlq7k/jh0nzU3SQ=; 
	b=liWq0l9xX/sWRaNGf2/TMp3zGl7LDQnaXUEpnMFBRAWk7/o+KlDiciM8a9/G0T2/iaQsTA7Qqxk8MiMKBDOo00+PRU+4B1IgJF8uWZCettXOxpWOK9p3lVZSYCnXd7Vi96Ajww6kfPQz/2JDYjKIdvknZJq59AWKjPutNBB4J7g=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=adrian.larumbe@collabora.com;
	dmarc=pass header.from=<adrian.larumbe@collabora.com>
DKIM-Signature: a=rsa-sha256; b=KbCv5PkLpno5QYvja57UkDq3SqUFiwOJJHn+yEKQRrfRZ/P6FV9BdwCxjxmnNcHP129PnEqewNn6a03XWeLkKAJL5Y6R7/YewYClRYQoiNXReHjYPKfECi2/Za/Kfz++OsnUuTNng79OlUzhbTOFU2e4z/POoFoKbrkteU9ppmk=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=aQvWImmPb1jRtzHePOoIeMXh67VwZlq7k/jh0nzU3SQ=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1795455792185485.028439789156;
	Mon, 23 Nov 2026 09:43:12 -0800 (PST)
Date: Mon, 23 Nov 2026 17:43:07 +0000
From: =?utf-8?Q?Adri=C3=A1n?= Larumbe <adrian.larumbe@collabora.com>
To: iav@iav.lv
Cc: Boris Brezillon <boris.brezillon@collabora.com>, 
	Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Heiko Stuebner <heiko@sntech.de>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Daniel Stone <daniel@fooishbar.org>
Subject: Re: [PATCH v3] drm/panfrost: Enable GPU_PM_RT for RK3399
Message-ID: <awR7G-dOM4zLempo@sobremesa>
References: <20261123-panfrost-rk3399-pm-rt-v3-1-04c7c58d1140@iav.lv>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261123-panfrost-rk3399-pm-rt-v3-1-04c7c58d1140@iav.lv>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.13.1.5.4/295.448.99
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_094336_991607_61403E6C 
X-CRM114-Status: GOOD (  23.03  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMjMuMTEuMjAyNiAxNzozMywgSWdvciBWZWxrb3YgdmlhIEI0IFJlbGF5IHdyb3RlOgo+IEZy
b206IElnb3IgVmVsa292IDxpYXZAaWF2Lmx2Pgo+IAo+IFRoZSBSSzMzOTkgTWFsaS1UODYwIG1h
dGNoZXMgYXJtLG1hbGktdDg2MCBhbmQgZ2V0cyBkZWZhdWx0X2RhdGEsIHNvCj4gcGFuZnJvc3Qg
ZW5hYmxlcyBhY2xrX2dwdSBhdCBwcm9iZSBhbmQga2VlcHMgaXQgZW5hYmxlZCB1bnRpbCB1bmJp
bmQ7Cj4gcnVudGltZSBzdXNwZW5kIHBvd2VycyB0aGUgR1BVIG9mZiBidXQgbGVhdmVzIHRoZSBj
bG9jayBvbi4KPiAKPiBPbiBST0NLIFBpIDRBIHJlc3RvcmUgZnJvbSBoaWJlcm5hdGlvbiBoYW5n
cyBpbiBnZW5wZF9yZXN0b3JlX25vaXJxKCkKPiBvZiB0aGUgR1BVIHdoZW4gdGhlIGhpYmVybmF0
ZWQga2VybmVsIGhhZCBwYW5mcm9zdCBib3VuZCBhbmQgdGhlCj4ga2VybmVsIHRoYXQgbG9hZHMg
dGhlIGltYWdlIGRvZXMgbm90LiBUaGVyZSBjbGtfZGlzYWJsZV91bnVzZWQoKQo+IGdhdGVzIGFj
bGtfZ3B1LCB3aGlsZSB0aGUgcmVzdG9yZWQgaW1hZ2Ugc3RpbGwgaG9sZHMgYW4gZW5hYmxlIGNv
dW50Cj4gb24gaXQsIHNvIHBvd2VyaW5nIHRoZSBHUFUgZG9tYWluIGJhY2sgb24gZG9lcyBub3Qg
dW5nYXRlIHRoZSBjbG9jay4KPiBXaXRoIHRoZSBjbG9jayBnYXRlZCBpbiBydW50aW1lIHN1c3Bl
bmQsIGFzIG9uIHRoZSBBbGx3aW5uZXIgSDYxNiBhbmQKPiB0aGUgUmVuZXNhcyBSWi9HM0wgYW5k
IFJaL0czRSwgcmVzdG9yZSBjb21wbGV0ZXMuCj4gCj4gTWF0Y2ggcm9ja2NoaXAscmszMzk5LW1h
bGkgdG8gZGVmYXVsdF9wbV9ydF9kYXRhLCB3aGljaCBkaWZmZXJzIGZyb20KPiBkZWZhdWx0X2Rh
dGEgb25seSBpbiBHUFVfUE1fUlQuCj4gCj4gUmV2aWV3ZWQtYnk6IFN0ZXZlbiBQcmljZSA8c3Rl
dmVuLnByaWNlQGFybS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSWdvciBWZWxrb3YgPGlhdkBpYXYu
bHY+CgpSZXZpZXdlZC1ieTogQWRyacOhbiBMYXJ1bWJlIDxhZHJpYW4ubGFydW1iZUBjb2xsYWJv
cmEuY29tPgoKPiAtLS0KPiBUZXN0ZWQgb24gUk9DSyBQaSA0QSwgZHJtLW1pc2MtbmV4dCBjNDA4
NDY2YTRkZmEgd2l0aCB0aGUgcmt2ZGVjIGZpeCBbMV0KPiBhcHBsaWVkOiBoaWJlcm5hdGlvbiBy
ZXN0b3JlcyA5IG9mIDkgd2l0aCB0aGlzIHBhdGNoICgzIHdpdGggYW4gSERNSQo+IG1vZGUgaGVs
ZCwgMyByaWdodCBhZnRlciBnbG1hcmsyLWVzMi1kcm0sIDMgaWRsZSksIGFuZCB0aGUgR1BVIHJl
bmRlcnMKPiBhZnRlciByZXN0b3JlLiBXaXRoIHRoZSBHUFUgbm9kZSBsZWZ0IHdpdGggYXJtLG1h
bGktdDg2MCBvbmx5LCByZXN0b3JlCj4gaGFuZ3MgMiBvZiAyLCBpbiBnZW5wZF9yZXN0b3JlX25v
aXJxKCkgb2YgdGhlIEdQVS4KPiBbMV0gZml4ZXMgdGhlIHNhbWUga2luZCBvZiBoYW5nIGluIHJr
dmRlYywgd2hpY2ggb3RoZXJ3aXNlIGhpdHMgZmlyc3Q7Cj4gdGhpcyBwYXRjaCBhcHBsaWVzIGFu
ZCBidWlsZHMgd2l0aG91dCBpdC4KPiAKPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8y
MDI2MTAzMC1ya3ZkZWMtcnVudGltZS1wbS1jbG9ja3MtdjItMS04ZmY1MTBhMjMxZGVAaWF2Lmx2
Cj4gCj4gQ2hhbmdlcyBpbiB2MzoKPiAtIFJldGl0bGUgYXMgU3RldmVuIHN1Z2dlc3RlZCwgc2F5
IHdoYXQgR1BVX1BNX1JUIGNoYW5nZXMKPiAtIEFkZCBTdGV2ZW4ncyBSZXZpZXdlZC1ieSwgZ2l2
ZW4gb24gdjEgKHNhbWUgY29kZSkKPiAtIExpbmsgdG8gdjI6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL3IvMjAyNjExMjItcGFuZnJvc3QtcmszMzk5LXBtLXJ0LXYyLTEtNDBmMTc5MWFhMWE4QGlh
di5sdgo+IAo+IENoYW5nZXMgaW4gdjI6Cj4gLSBOYW1lIHRoZSBTb0NzIHRoYXQgYWxyZWFkeSB1
c2UgZGVmYXVsdF9wbV9ydF9kYXRhCj4gLSBTYXkgd2h5IHJlc3RvcmUgaGFuZ3MKPiAtIFJlYmFz
ZSBvbnRvIGRybS1taXNjLW5leHQKPiAtIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL3IvMjAyNjEwMzAtcGFuZnJvc3QtcmszMzk5LXBtLXJ0LXYxLTEtZTk0NDM3MTU5YTlkQGlh
di5sdgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZHJ2LmMgfCAx
ICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9w
YW5mcm9zdC9wYW5mcm9zdF9kcnYuYwo+IGluZGV4IGVlZGExMTMwMzdmZS4uOTFhY2ZhMTNlZjQy
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9kcnYuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9kcnYuYwo+IEBAIC05ODMs
NiArOTgzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgZHRfbWF0Y2hbXSA9
IHsKPiAgCSAgLmRhdGEgPSAmYW1sb2dpY19kYXRhLCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJy
ZW5lc2FzLHI5YTA4ZzA0Ni1tYWxpIiwgLmRhdGEgPSAmZGVmYXVsdF9wbV9ydF9kYXRhIH0sCj4g
IAl7IC5jb21wYXRpYmxlID0gInJlbmVzYXMscjlhMDlnMDQ3LW1hbGkiLCAuZGF0YSA9ICZkZWZh
dWx0X3BtX3J0X2RhdGEgfSwKPiArCXsgLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMzk5LW1h
bGkiLCAuZGF0YSA9ICZkZWZhdWx0X3BtX3J0X2RhdGEgfSwKPiAgCXsgLmNvbXBhdGlibGUgPSAi
YXJtLG1hbGktdDYwNCIsIC5kYXRhID0gJmRlZmF1bHRfZGF0YSwgfSwKPiAgCXsgLmNvbXBhdGli
bGUgPSAiYXJtLG1hbGktdDYyNCIsIC5kYXRhID0gJmRlZmF1bHRfZGF0YSwgfSwKPiAgCXsgLmNv
bXBhdGlibGUgPSAiYXJtLG1hbGktdDYyOCIsIC5kYXRhID0gJmRlZmF1bHRfZGF0YSwgfSwKPiAK
PiAtLS0KPiBiYXNlLWNvbW1pdDogYzQwODQ2NmE0ZGZhZWU0YjEyNTg3ZTkyNmM1Yjg1ZTY4Yzhi
M2M0MAo+IGNoYW5nZS1pZDogMjAyNjEwMzAtcGFuZnJvc3QtcmszMzk5LXBtLXJ0LWNlYTNmYzE3
OTBkOQo+IAo+IEJlc3QgcmVnYXJkcywKPiAtLSAKPiBJZ29yIFZlbGtvdiA8aWF2QGlhdi5sdj4K
CkFkcmlhbiBMYXJ1bWJlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
