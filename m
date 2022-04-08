Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0FBAC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 08:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+XS1NwrfxPRP/Dt2mLE4oIY2FAx0EZo5ppCJfAD0804=; b=uY2tn5F3NKr+yg
	lM3FkhiGSRMVxGFloGKA2dxnIjgqkQLeeE3KZDxdifcEpW/QgjQi7JTD+5qsjIUUr4xQbyACWOkAv
	Geowu3tqNLPyFpoamUNUhiwNc/Xn2ljIRePeXC9g0l4aF7wSDGXAlsHv5qUoP5G4kGEY2T8biK9++
	An2GOYQ6YoIizocHPmO/frks6qmEV9TQffV82HV9QOoJDx8990RdiKGJAlHPb7/5c8loIKpdKwx4l
	6LLcQL0Mnqn48RYhmSqz3Ln3PG/Hryq29jP/SXbyloiZbbJU9gVmlQAucG1a4DWdom+4VZHr/4Kfw
	fZnF0tCuxm9rRuUQVcfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncjgX-00FkNa-9R; Fri, 08 Apr 2022 08:09:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncjev-00FjeM-2S
 for linux-rockchip@lists.infradead.org; Fri, 08 Apr 2022 08:07:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ncjep-0006gG-Rw; Fri, 08 Apr 2022 10:07:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ncjem-0001ic-HQ; Fri, 08 Apr 2022 10:07:48 +0200
Date: Fri, 8 Apr 2022 10:07:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Message-ID: <20220408080748.GA2387@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
 <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:04:12 up 8 days, 20:33, 66 users, load average: 0.29, 0.37, 0.24
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_010757_152163_51B1A938 
X-CRM114-Status: GOOD (  28.41  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gV2VkLCBBcHIgMDYsIDIwMjIgYXQgMTE6NDc6MjJBTSArMDIwMCwgUGlvdHIgT25pc3pjenVr
IHdyb3RlOgo+IAo+IAo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogUGlvdHIgT25pc3pj
enVrIDxwaW90ci5vbmlzemN6dWtAZ21haWwuY29tPiB3IGRuaXUgMDEuMDQuMjAyMiwgbyBnb2R6
LiAxNTowNToKPiA+IFNhc2NoYQo+ID4gCj4gPiBOb3cgd29ya3MgcGVyZmVjdGx5IQo+ID4gKGhk
IHBsYXliYWNrIHdpdGggMy41Li4uNS41JSBjcHUgd2hpbGUgcmVuZGVyaW5nIHRvIGRybSBwbGFu
ZSkKPiA+IAo+ID4gRmFudGFzdGljIHdvcmsgb2YgWW91IQo+IAo+IFNhc2NoYSwKPiAKPiBIYXZp
bmcgdm9wMiBmaW5hbGx5IHdvcmtpbmcgd2l0aCBkcm0gcGxhbmVzIHJlbmRlcmluZyBpIGRpc2Nv
dmVyZWQgYW5vdGhlciBpc3N1ZTogb3ZlcmxheSBvc2QgaXMgaW52aXNpYmxlIGF0IHBsYXliYWNr
LiAKPiAKPiBjb250ZXh0OiBwbGF5ZXIgZHJhd3MgdmlkZW8gb24gcGxhbmUgI1ggYW5kIG9zZCBv
biBvdmVybGF5IHBsYW5lICNZCj4gV2hlbiB1c2VyIGRvIGkuZS4gc2VlayBhdCBwbGF5YmFjayAt
IGFwcCB1c2VzIG92ZXJsYXkgT1NEIHBsYW5lIHRvIGRpc3BsYXkgT1NEIHRvIHVzZXIuIFRoaXMg
YXBwcm9hY2ggaXMgdXNlZCBieSBtYWpvcml0eSBvZiBwbGF5ZXJzIChLT0RJLCBldGMuKQo+IAo+
IFRoaXMgd29ya3Mgd2VsbCBvbiBhbGwgcGxhdGZvcm1zIGkgaGF2ZSAgLSBleGNlcHQgcmszNTY2
IAo+IAo+IEZvciBtZSBpdCBsb29rcyBsaWtlIHotb3JkZXIgdm9wMiBpc3N1ZSBvciBhbHBoYSBi
bGVuZGluZyBpc3N1ZS4KPiBBcyB0aGlzIGlzIG9ubHkgb24gcmszNTY2IGFuZCBvbmx5IG9uIGRy
bS1wbGFuZXMgbW9kZSAtIGlzc3VlIGlzIHZvcDIgcmVsYXRlZCBpbWhvLgoKVGhhdCB0dXJuZWQg
b3V0IHRvIGJlIHNpbXBsZXIgdGhhbiBJIHRob3VnaHQgaXQgd291bGQgYmUuIFRoZSB6cG9zCnZh
bHVlcyB3ZXJlIG5ldmVyIGFjdHVhbGx5IHdyaXR0ZW4gdG8gdGhlIGhhcmR3YXJlLiBQbGVhc2Ug
dHJ5IHRoZQpmb2xsb3dpbmcgZml4dXAsIGl0IHNob3VsZCBmaXggdGhpcyBpc3N1ZS4KClRoYW5r
cyBmb3IgeW91ciB2YWx1YWJsZSB0ZXN0aW5nIGZlZWRiYWNrIHNvIGZhciA6KQoKU2FzY2hhCgot
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tODwtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCkZy
b20gZDVhMTAyZmYxZDMwMTAzMjBmNDkyYTZlYmFjNjcxMDI3NmZjNjQxZiBNb24gU2VwIDE3IDAw
OjAwOjAwIDIwMDEKRnJvbTogU2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgpE
YXRlOiBGcmksIDggQXByIDIwMjIgMDk6NDU6MjQgKzAyMDAKU3ViamVjdDogW1BBVENIXSBmaXh1
cCEgZHJtOiByb2NrY2hpcDogQWRkIFZPUDIgZHJpdmVyCgotLS0KIGRyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIHwgNiArKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwppbmRleCA1NDIwOGIyMGE1YTdlLi44ZDEzMjNhNDdmODIy
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwpAQCAt
MTk0Myw4ICsxOTQzLDEwIEBAIHN0YXRpYyB2b2lkIHZvcDJfc2V0dXBfbGF5ZXJfbWl4ZXIoc3Ry
dWN0IHZvcDJfdmlkZW9fcG9ydCAqdnApCiAJCQlicmVhazsKIAkJfQogCi0JCWxheWVyX3NlbCAm
PSB+UkszNTY4X09WTF9MQVlFUl9TRUxfX0xBWUVSKG5sYXllciArIG9mcywgMHg3KTsKLQkJbGF5
ZXJfc2VsIHw9IFJLMzU2OF9PVkxfTEFZRVJfU0VMX19MQVlFUihubGF5ZXIgKyBvZnMsIHdpbi0+
ZGF0YS0+bGF5ZXJfc2VsX2lkKTsKKwkJbGF5ZXJfc2VsICY9IH5SSzM1NjhfT1ZMX0xBWUVSX1NF
TF9fTEFZRVIocGxhbmUtPnN0YXRlLT5ub3JtYWxpemVkX3pwb3MgKyBvZnMsCisJCQkJCQkJICAw
eDcpOworCQlsYXllcl9zZWwgfD0gUkszNTY4X09WTF9MQVlFUl9TRUxfX0xBWUVSKHBsYW5lLT5z
dGF0ZS0+bm9ybWFsaXplZF96cG9zICsgb2ZzLAorCQkJCQkJCSB3aW4tPmRhdGEtPmxheWVyX3Nl
bF9pZCk7CiAJCW5sYXllcisrOwogCX0KIAotLSAKMi4zMC4yCgoKLS0gClBlbmd1dHJvbml4IGUu
Sy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93
d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAg
ICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRl
c2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
