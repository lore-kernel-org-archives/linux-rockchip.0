Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7659AC5AC7C
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Aug 2026 12:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZopgCiUwIOCHZzu3bJU+PFJjKofsXWsxZWtVE1732s=; b=dhG9SHcy5aHStH
	JiemW4jWvEq+7Xvk/dznq1qhL5I46MZfc7jf4OI93c/1cmku7nLs2sjLn3OR0MXpajQkdiZG6IoEW
	O6zjM+3uS40Jimlqq+I59rEATnlFFvSEqOW8QOjlbGVKnOLTJeR0pL5nT5gLZlQytq245TaGqjT96
	NRVVdE0Wd2dUPneTnY8eWtm5ey/bGqLoI1ICuTw7jyCohXB0hCINwLvAVi/q+hkm5Yt4vP2QaJ98q
	s+9vtZWLSju4++MeOb6A+3tO1rH272Mj5Yzbg/PXsABxxIZ7QRZXJ9lQBFOvtEzULF1tnbmmPI5sl
	DVMbadMgGajh6lSLvf2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsK89-000000082j9-0bDu;
	Fri, 07 Aug 2026 12:56:57 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsK86-000000082hm-4A1o;
	Fri, 07 Aug 2026 12:56:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 86D6160A69;
	Fri,  7 Aug 2026 12:56:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 700F71F000E9;
	Fri,  7 Aug 2026 12:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786107413;
	bh=Ndh3patXapvxmH70A7vomOofELe8vAENarCkjTBjRZo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VHnqQGr7u4E+F+9wBp7IDaAMbI19O7iCG2h7dE4LgTgS+rGhCGZWWgHy4jwJuGHny
	 M4/l39efEKJ2b/nrrmp1kNnJntryPRsWcKeFXE5q5UXDQ76zXwiWamo7eHKwacB1CC
	 5fldItEZzEpJmwQWbsfjWFWIrFXcvxUbsSDXTxHgxtbqIIxuaX4SJuSXVlW+GmOQOh
	 YSYlJTN7lLJh2QJb5mEXzA2tET6HsrQpYVdcJySz0eUZKx9aP+XqwkpfUFqlcYMJ5t
	 5n/iNrVbTPlqDLWO6s92DMnxHdOmvVNKhLbmkFBqZ8cwaWCEX2i0kBt6seTV8tvfYh
	 l1BHwTBH06dVA==
Date: Fri, 7 Aug 2026 14:56:45 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>
Subject: Re: [PATCH v5 03/10] phy: rockchip: samsung-hdptx: Guard against clk
 rate integer underflow
Message-ID: <u6bu2l7ujfzbm7va336twts7efs7gi4euykllamch47a642njw@2dk7fnsezrgf>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-3-8e786067865f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-hdptx-clk-fixes-v5-3-8e786067865f@collabora.com>
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

T24gVGh1LCBKdWwgMjMsIDIwMjYgYXQgMTA6NDE6NDZQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2Fs
dGVhIHdyb3RlOgo+IFRoZSAnZm91dCcgc3VidHJhY3Rpb24gaW4gcmtfaGRwdHhfcGh5X2Nsa19j
YWxjX3JhdGVfZnJvbV9wbGxfY2ZnKCkKPiBjb3VsZCByZXN1bHQgaW4gYW4gaW50ZWdlciB1bmRl
cmZsb3csIGlmIHRoZSBoYXJkd2FyZSByZWdpc3RlcnMgYXJlCj4gbWlzY29uZmlndXJlZCBvciBj
b250YWluIHVuaW5pdGlhbGl6ZWQgdmFsdWVzLCBzdWNoIHRoYXQgdGhlIGNvbXB1dGVkCj4gc2ln
bWEtZGVsdGEgbW9kdWxhdG9yIG9mZnNldCBzZG0gZXhjZWVkcyB0aGUgYmFzZSBmcmVxdWVuY3kg
Zm91dC4KPiAKPiBUaGlzIG1pZ2h0IGxlYWQgdG8gYW4gYWJzdXJkbHkgaGlnaCBjbG9jayByYXRl
IGJlaW5nIHJldHVybmVkIHRvIHRoZQo+IENvbW1vbiBDbG9jayBGcmFtZXdvcmssIHdpdGggdW5w
cmVkaWN0YWJsZSBlZmZlY3RzIG9uIGRvd25zdHJlYW0gY2xrCj4gY29uc3VtZXJzLgo+IAo+IFBy
b3ZpZGUgdGhlIG5lY2Vzc2FyeSBzYW5pdGl6YXRpb24gdG8gYXZvaWQgdHJ1c3RpbmcgdGhlIGhh
cmR3YXJlIHN0YXRlLgo+IAo+IFJlcG9ydGVkLWJ5OiBTYXNoaWtvIDxzYXNoaWtvLWJvdEBrZXJu
ZWwub3JnPgo+IENsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNjExMjM1
NzAyLjBFOTY5MUYwMDBFOUBzbXRwLmtlcm5lbC5vcmcvCj4gRml4ZXM6IDM0ODFmYzA0ZDk2OSAo
InBoeTogcm9ja2NoaXA6IHNhbXN1bmctaGRwdHg6IENvbXB1dGUgY2xrIHJhdGUgZnJvbSBQTEwg
Y29uZmlnIikKPiBTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNp
b2NhbHRlYUBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jIHwgMTAgKysrKysrKystLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jIGIvZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYwo+IGluZGV4IDQ0ZTk5MzQz
ZjI0OS4uZmNmMDRlOTgxNGNjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCj4gQEAgLTIyODAsMTAgKzIyODAsMTYgQEAgc3Rh
dGljIHU2NCBya19oZHB0eF9waHlfY2xrX2NhbGNfcmF0ZV9mcm9tX3BsbF9jZmcoc3RydWN0IHJr
X2hkcHR4X3BoeSAqaGRwdHgpCj4gIAkJc2RtID0gZGl2X3U2NChQTExfUkVGX0NMSyAqIHJvcGxs
X2h3LnNkY19kZW5vICoKPiAgCQkJICAgICAgcm9wbGxfaHcucG1zX21kaXYgKiByb3BsbF9ody5z
ZG1fbnVtLCB2YWwpOwo+ICAKPiAtCQlpZiAocm9wbGxfaHcuc2RtX251bV9zaWduKQo+ICsJCWlm
IChyb3BsbF9ody5zZG1fbnVtX3NpZ24pIHsKPiArCQkJaWYgKHNkbSA+IGZvdXQpIHsKPiArCQkJ
CWRldl9kYmcoaGRwdHgtPmRldiwgIkludmFsaWQgUk9QTEwgaHcgc3RhdGU6IHNkbSA+IGZvdXRc
biIpOwoKU2FtZSBjb21tZW50IGFzIHByZXZpb3VzIHBhdGNoLgoKLSBNYW5pCgotLSAK4K6u4K6j
4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
