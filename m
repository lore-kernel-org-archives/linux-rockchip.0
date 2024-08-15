Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E6E0C52D7C
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 17:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bo1/i1piyuUPEUzTwoF3nn5k11uUhPAJ3zkBDjT0AI4=; b=kR7k1LeSd1WLdQ
	J0HwJpIztScOm9DqzUFZl0JdzUPJTPVUnMW60lUXl1zx5v9R8g8bUE+Eq0hr9Q2XXrMpdrfb3nFcc
	8XEeLCTx0AkBtW+BHyGNgcnNRBs/IlzD+vdvnrpChoK/J4bzrQ9q+Rc47S09QoHz7rcykv6KL/AAi
	FA8iVaXyzq3yn0GLnkhupx+XcXJalvEEr/0ralPeodX13qDHSG9VbQIsguV144V5iK5tgHCXOPqPM
	HsuOJTDdfgnz33IEKoa7P+ZbJ5FQZmJLoKe2bH1en5p4Lp9D/Zn4exMfz5POrLVond+INqf42z44h
	u7JwI9NYMN2V+KwnIjTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seeFx-0000000AdN9-0Rq6;
	Thu, 15 Aug 2024 17:27:25 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seeFs-0000000AdLL-3fbO;
	Thu, 15 Aug 2024 17:27:22 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723742822; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=chmoEqwf+/HX3ADYKvNk7Ng/Vy9TRVLgDl8UmqtgvL10PCDu9BDSycvb8n8ig9CBjgjFZ2RykxFu4el6Z8ZGjTNpUeL30GUZbhhRXH6+z3IP4Ch+0oNBCAFeDx2txS81kMK6hXN3OZxJVxyU6WhSpKvnhhAVDlyB8Js33Cvc/do=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723742822; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=7ubLrdWiAuaARtSKkJ+5UEopClt1Yb7V+WKhakMp2tM=; 
	b=E5aSY2DwZSZaKgg12dAJqKN9/FlAnx8etLqUPwRou1OJDID6OH0buupg+kvlJlDMQrhwV3/q//G4zsEFGPmrfskT0R9jgAztWFwIaaXPHEjibX3hOCJQD+hkYCGSZlHdmGv50GxVi83Gs93litKOmRdN0mHEXGukT2IbGxXO2mo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723742822;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=7ubLrdWiAuaARtSKkJ+5UEopClt1Yb7V+WKhakMp2tM=;
	b=kFX92+ZBJEF3qr2ZiFa2KMXfiIvV5/FB5K/T1hbxvA5TiTa4cW1EKmOZ34CP+MSd
	BkSjdghnDfh9yf+3T/LY1/bElXQIHGTlZFjq8wghPoVSfs4uSNbNdqRL7Yv3hLFTJye
	G1dvj1moMblGf5nvnh77qw/kgiWGd/KsZKEFncbw=
Received: by mx.zohomail.com with SMTPS id 1723742819663277.3175685898667;
	Thu, 15 Aug 2024 10:26:59 -0700 (PDT)
Message-ID: <80ffed99-7368-4f84-8dc9-4c980055e48d@collabora.com>
Date: Thu, 15 Aug 2024 20:26:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND] drm/rockchip: Unregister platform drivers in
 reverse order
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <seanpaul@chromium.org>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Mark Yao <markyao0591@gmail.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240808-rk-drm-fix-unreg-v1-1-c30d9a754722@collabora.com>
 <9027071.qdD9tO9HgI@diego>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <9027071.qdD9tO9HgI@diego>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_102720_989486_BD566272 
X-CRM114-Status: GOOD (  12.73  )
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

T24gOC8xNS8yNCA1OjIxIFBNLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBEb25uZXJzdGFn
LCA4LiBBdWd1c3QgMjAyNCwgMTM6NTg6MDIgQ0VTVCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRl
YToKPj4gTW92ZSByb2NrY2hpcF9kcm1fcGxhdGZvcm1fZHJpdmVyIHVucmVnaXN0cmF0aW9uIGFm
dGVyIGl0cyBzdWItZHJpdmVycywKPj4gd2hpY2ggZW5zdXJlcyBhbGwgZHJpdmVycyBhcmUgdW5y
ZWdpc3RlcmVkIGluIHRoZSByZXZlcnNlIG9yZGVyIHVzZWQKPj4gd2hlbiB0aGV5IHdlcmUgcmVn
aXN0ZXJlZC4KPiAKPiBhcmUgeW91IHN1cmUgYWJvdXQgdGhhdD8KPiAKPiBJLmUuIGN1cnJlbnRs
eSByb2NrY2hpcF9kcm1faW5pdCgpIGRvZXMgCj4gICBwbGF0Zm9ybV9yZWdpc3Rlcl9kcml2ZXJz
KHJvY2tjaGlwX3N1Yl9kcml2ZXJzLCAuLi4pCj4gdG8gcmVnaXN0ZXIgdGhlIHN1Yi1kcml2ZXJz
IGFuZCBvbmx5IGFmdGVyIHRoYXQgcmVnaXN0ZXJzIHRoZSBtYWluCj4gZHJtLXBsYXRmb3JtLWRy
aXZlcgo+IAo+IHJvY2tjaGlwX2RybV9maW5pIGN1cnJlbnRseSBkb2VzIHRoZSByZXZlcnNlIG9m
IGZpcnN0IHVucmVnaXN0ZXJpbmcgdGhlCj4gbWFpbiBkcm0tcGxhdGZvcm0tZHJpdmVyIGFuZCBh
ZnRlciB0aGF0IHVucmVnaXN0ZXJpbmcgdGhlIGFycmF5IG9mIHN1Yi0KPiBkcml2ZXJzLgo+IAo+
IAo+IFNvIGFzIGl0IHN0YW5kcyByaWdodCBub3csIHJvY2tjaGlwX2RybV9maW5pIGRvZXMgYWxy
ZWFkeSBkbyBleGFjdGx5IHRoZQo+IHJldmVyc2Ugd2hlbiBkZS1yZWdpc3RlcmluZy4KCkluZGVl
ZCwgc29tZWhvdyBJIG92ZXJsb29rZWQgdGhpcyB3aGlsZSBkZWJ1Z2dpbmcgc29tZSBtb2R1bGUg
dW5sb2FkaW5nCmlzc3Vlcy4gIEkgZ3Vlc3MgaXQganVzdCBmZWx0IG1vcmUgbmF0dXJhbGx5IHRv
IGhhdmUgdGhlIHN1YmRyaXZlcnMKdW5yZWdpc3RlcmVkIGZpcnN0LgoKT3V0IG9mIGN1cmlvc2l0
eSB0byBzZWUgaWYgdGhlcmUncyBhIGNvbW1vbiBwYXR0ZXJuIGZvciBoYW5kbGluZyB0aGlzLCBJ
CmZvdW5kIHRoYXQgbW9zdCBkcml2ZXJzIGRvIGluZGVlZCB1bnJlZ2lzdGVyIHRoZSBzdWJkcml2
ZXJzIGJlZm9yZSB0aGUgbWFpbgpwbGF0Zm9ybSBvbmUsIGJ1dCB3ZWlyZGx5IGVub3VnaCwgc29t
ZSBvZiB0aGVtIGRvIGFsc28ga2VlcCB0aGUgc2FtZSBvcmRlcgpvbiByZWdpc3RyYXRpb24sIHNp
bWlsYXJpbHkgdG8gd2hhdCB0aGlzIHBhdGNoIHVuaW50ZW50aW9uYWxseSBkb2VzOgoKICBkcml2
ZXJzL3Bvd2VyL3N1cHBseS9hYjg1MDBfY2hhcmdlci5jCiAgZHJpdmVycy9ncHUvZHJtL3ZjNC92
YzRfZHJ2LmMKICBkcml2ZXJzL2dwdS9kcm0vbWNkZS9tY2RlX2Rydi5jCgpOb3Qgc3VyZSBpZiB0
aG9zZSBhcmUgcG90ZW50aWFsIG1pc3Rha2VzLCBvciBtYXliZSBpdCBkb2Vzbid0IHJlYWxseSBt
YXR0ZXI/IQoKUGxlYXNlIGxldCBtZSBrbm93IGlmIHlvdSBoYXZlIGEgcHJlZmVyZW5jZSBmb3Ig
aXQsIGFuZCBJJ2xsIHVwZGF0ZSB0aGUKcGF0Y2ggYWNjb3JkaW5nbHksIG90aGVyd2lzZSBsZXQn
cyBqdXN0IGlnbm9yZSBpdCBhbHRvZ2V0aGVyLgoKVGhhbmtzLApDcmlzdGlhbgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
