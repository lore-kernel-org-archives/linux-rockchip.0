Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9002A606B59D
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 08:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Okpvz/Qx;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=HTjyU8HA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=41oZsD45eVSfi9dtQfgY/qHIWll0wa9+5N0D2DkBllE=; b=Okpvz/QxGNos8GzQ/AvEzVh0X4
	mtupS1h/ETYg1tiPiVweN89hAW6EtZ4yBQOoyM5Yn03UKPbGK684DkaY94kNd0iYZanCxEy/S1hAm
	K0FxikWdClemE6Rctvuy2VQLrpvkWeWBHQxwdnWwGLB6j/haO8tVW2Vi3QuF3QIhPhnr4MDvwf+Yy
	i2R5Xo9GPPQ/TRBQct9F+H00FCecvxBs6rcp0wPXZeQRBY/46v+TJrAumws5r59GYxF8mXX80LdJl
	dzW7DXcTV8deb9k174C+XqmSDpSRpPKVToOwKzHpkFuz0sMob/YArR/eGIatFekOF+1i8BU1Qhzj3
	qu2HGsxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQU4-00000009EO4-1eNV;
	Thu, 12 Nov 2026 08:48:40 +0000
Received: from mail-m81151.netease.com ([47.88.81.151])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQTn-00000009EI3-3ZK9;
	Thu, 12 Nov 2026 08:48:37 +0000
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 546f2be92;
	Thu, 12 Nov 2026 16:48:08 +0800 (GMT+08:00)
Message-ID: <051621ab-a8b5-4120-afde-fbeeae48690d@rock-chips.com>
Date: Thu, 12 Nov 2026 16:48:06 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v18 0/7] usb: dwc3: introduce Rockchip glue driver
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Igor Paunovic <royalnet026@gmail.com>, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 kernel@collabora.com, Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
References: <20261021-b4-rockchip-dwc3-rockchip-glue-v18-0-60000d03fca2@collabora.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20261021-b4-rockchip-dwc3-rockchip-glue-v18-0-60000d03fca2@collabora.com>
X-HM-Tid: 0aa1cef161e603a7kunm25f03da89714c0
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaSBofVkIeGUgfSEJJQx9KHVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=HTjyU8HAzlfGIH2zaWksvL0FatkZsBVvluGDZ0gXv7vdsLYvXtsI1AWIvGnpoKDX4/o3OOAfMNjPJk2bzP/cP7pzvx9KI8SL489WjcGeQL4HNW+4jNEWl43izC+LKg0zo4Ip/zGfA514bSOwoCB604D0QANS08DlCPVPFi8nZk4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=YW52iYa3PS22kVrKBhZRqo+7XMDGvxdxdBLom1iDW5U=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_004827_294825_D7B35FE9 
X-CRM114-Status: GOOD (  12.38  )
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
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgU2ViYXN0aWFuLAoKT24gMTAvMjIvMjAyNiAyOjA1IEFNLCBTZWJhc3RpYW4gUmVpY2hlbCB3
cm90ZToKPiBUaGUgcmVjZW50IFJvY2tjaGlwIHBsYXRmb3JtIGhhdmUgYSBjb21iaW5lZCBQSFks
IHdoaWNoIGRvZXMgVVNCMyBhbmQKPiBEaXNwbGF5UG9ydCBhcyB3ZWxsIGFzIG11eGluZyB0aGUg
bGluZXMgaW4gYXJiaXRyYXJ5IG9yZGVyLiBDaGFuZ2luZyBpdHMKPiBlbmFibGVkIGZ1bmN0aW9u
YWxpdHkgcmVxdWlyZXMgYSBQSFkgcmVzZXQgYW5kIGFzIHRoZSBQSFkgcHJvdmlkZXMgYQo+IGNs
b2NrIHRvIHRoZSBEV0MzIGNvbnRyb2xsZXIsIHRoaXMgY2FuIHJlc3VsdCBpbiBhbiBTRXJyb3Iu
IEFwYXJ0IGZyb20KPiB0aGF0IHRoZSBQSFkgbWlnaHQgbm90IHN0YXJ0IHVwIGNvcnJlY3RseSB3
aGVuIHRoZSBEV0MzIFBJUEUgaW50ZXJmYWNlCj4gaXMgcnVubmluZy4gVGhpcyBzZXJpZXMgcHJl
cGFyZXMgYSBSb2NrY2hpcCBzcGVjaWZpYyBEV0MzIGdsdWUgZHJpdmVyIHRvCj4gaGVscCBvdXQg
d2l0aCB0aGVzZSBwcm9ibGVtcy4gVG8gYmVjb21lIHVzZWZ1bCBtb3JlIHBhdGNoZXMgYXJlIG5l
ZWRlZAo+IG9uIHRoZSBSb2NrY2hpcCBVU0JEUCBQSFkgc2lkZSwgd2hpY2ggYXJlIHNlbmQgc2Vw
YXJhdGVseS4KPiAKPiBUaGlzIHdhcyBzcGxpdCBmcm9tIHRoZSBVU0JEUCBjbGVhbnVwIHNlcmll
cy4gdjE3IGhhcyBhIGRlcGVuZGVuY3kgb24KPiB0aGUgcGF0Y2hlcyB0aGF0IGhhdmUgYmVlbiBt
ZXJnZWQgdG8gcGh5J3MgZm9yLW5leHQgYnJhbmNoLiBUaGVyZSBhcmUKPiBzb21lIGFkZGl0aW9u
YWwgUm9ja2NoaXAgVVNCRFAgcGh5IGZpeGVzLCB3aGljaCBkZXBlbmQgb24gdGhpcyBzZXJpZXMK
PiAod2hpY2ggaXMgZWZmZWN0aXZlbHkgYWxzbyBhIGZpeCkuCj4gCgpJJ20gbm90IHN1cmUgd2hl
dGhlciB0aGlzIGlzIHRoZSByaWdodCB0aGluZyB0byBkbywgYnV0IEkgdHJpZWQgYXBwbHlpbmcK
YWxsIHRoZSB2MTggcGF0Y2hlcyBvbiB0b3Agb2YgdjE0IHBhdGNoMeKAk3BhdGNoMjcsIGFuZCB0
ZXN0ZWQgVHlwZS1DIERQCm9uIHRoZSBSSzM1NzYgRVZCMSBib2FyZC4gQW5kIGl0IHNlZW1zIHRv
IHdvcmsgZmluZS4KClRlc3RlZC1ieTogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hp
cHMuY29tPgoKLS0gCkJlc3QsIApDaGFveWkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
