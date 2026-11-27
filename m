Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB459606A31C
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 15:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Ks8JnOCH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=F4kb6CXI6oCRGaZEu2qJfNWQHqOQ4PwU2VM2pct3bM8=; b=Ks8JnOCHGfOJZ8x6yJceSYDVpP
	OnQOJRFLSoG/BRwQmdYEpaQ7BwLkThiww3ttqJq5FpdqFMgWEvwexeTyHaJ0i7ddTA1X1no1NrHD6
	CJO3u2ooWkjqm1OriYPPmKO3u/iCGnuJHcbQzPb6ImYJwVE+lUlA+g68soBAQChdwFzT/5PXymc5K
	mQ/XizrN7GtQ71OV7Fe+mqyXq2rcVudGCLl+Fnl8QwPq2Yg1JWu4yp5gCIShknZ/9d9nWLLMaF2Oj
	Wi+hVZrQlhmIPkhHg+EV94hYXlfn+2kbVvXr9JVg6fnECqfQ1O3l2bJJPe2vOWMUZGgopkjotwwjh
	9Ov2j7vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWy37-0000000Gsl0-2kCg;
	Fri, 27 Nov 2026 15:39:45 +0000
Received: from smtp25.cstnet.cn ([159.226.251.25] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWy33-0000000Gsjk-2o4A;
	Fri, 27 Nov 2026 15:39:44 +0000
Received: from edelgard.fodlan.icenowy.me (unknown [112.94.102.207])
	by APP-05 (Coremail) with SMTP id zQCowAB3ErgnpAlr_hobAg--.9342S2;
	Fri, 27 Nov 2026 23:39:20 +0800 (CST)
Message-ID: <125b59ea3e5c6d48d325b3ea0c04dbba140bf1c2.camel@iscas.ac.cn>
Subject: Re: [PATCH v2] drm/bridge: dw-mipi-dsi: let the glue compute the
 hcomponent lbcc
From: Icenowy Zheng <zhengxingda@iscas.ac.cn>
To: Romain TISSERAND <romain.tisserand@gmail.com>, Andrzej Hajda
	 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Robert Foss <rfoss@kernel.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman	
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten
 Lankhorst	 <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>,  Thomas Zimmermann <tzimmermann@suse.de>, David
 Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sandy Huang	
 <hjc@rock-chips.com>, Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Liu Ying <victor.liu@nxp.com>, Chaoyi
 Chen	 <chaoyi.chen@rock-chips.com>, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Fri, 27 Nov 2026 23:39:19 +0800
In-Reply-To: <20261127095556.1794628-1-romain.tisserand@gmail.com>
References: <20261101143031.880389-1-romain.tisserand@gmail.com>
	 <20261127095556.1794628-1-romain.tisserand@gmail.com>
User-Agent: Evolution 3.58.3 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CM-TRANSID: zQCowAB3ErgnpAlr_hobAg--.9342S2
X-Coremail-Antispam: 1UD129KBjvdXoW7Gw4xAry5XFWxCr1fJF43ZFb_yoWkuwc_ur
	98AFW29wn7Xa93Grs7tFWrur48X39rW34Iv3y8Awn7Aryvqr4qqF4kW34SqFyrCr4xuF1a
	gFs0gayUKa13WjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbsxYjsxI4VW3JwAYFVCjjxCrM7AC8VAFwI0_Xr0_Wr1l1xkIjI8I
	6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM2
	8CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVWUCVW8JwA2z4x0Y4vE2Ix0
	cI8IcVCY1x0267AKxVW8JVWxJwA2z4x0Y4vEx4A2jsIE14v26F4UJVW0owA2z4x0Y4vEx4
	A2jsIEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IE
	w4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMc
	vjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrwACI402YVCY1x02628vn2kIc2xKxwCY
	1x0262kKe7AKxVW8ZVWrXwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8Jw
	C20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAF
	wI0_GFv_WrylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjx
	v20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2
	jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0x
	ZFpf9x07jgPEfUUUUU=
X-CM-SenderInfo: x2kh0wp0lqwv3d6l2u1dvotugofq/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_073942_099744_F01E9B40 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

5ZyoIDIwMjYtMTEtMjfkupTnmoQgMTA6NTUgKzAxMDDvvIxSb21haW4gVElTU0VSQU5E5YaZ6YGT
77yaCj4gSGksCj4gCj4gR2VudGxlIHBpbmcgb24gdGhpcyBvbmUsIHNlbnQgZm91ciB3ZWVrcyBh
Z28uIEl0IHN0aWxsIGFwcGxpZXMgYXMgaXMgb24KPiB0b2RheSdzIGRybS1taXNjLW5leHQuCj4g
Cj4gSXQgZml4ZXMgdGhlIGdhcmJsZWQgcGljdHVyZSBvZiBub24tYnVyc3QgRFNJIHBhbmVscyBi
ZWhpbmQgdGhlIFJvY2tjaGlwCj4gZ2x1ZSAoR1BEIFhEIGhlcmUpLCBhbmQgdjIgZm9sbG93cyB0
aGUgcmV2aWV3cyBvZiB2MSAoQ2hhb3lpLCBTYXNoaWtvKS4KPiBJcyB0aGUgZ2V0X2hjb21wb25l
bnRfbGJjYygpIGNhbGxiYWNrIGluIGR3X21pcGlfZHNpX3BsYXRfZGF0YSB0aGUgc2hhcGUKPiB5
b3Ugd2FudCwgb3Igc2hvdWxkIEkgcmV3b3JrIGl0Pwo+IAo+IEljZW5vd3ksIENjJ2luZyB5b3Ug
YXMgeW91IGFyZSB3b3JraW5nIG9uIGR3LW1pcGktZHNpIGZvciBUSDE1MjA7IHRoZQo+IHR3byBz
ZXJpZXMgdG91Y2ggZGlmZmVyZW50IHBhcnRzIG9mIHRoZSBmaWxlLgoKSSBkcm9wcGVkIHRoZSBj
aGFuZ2Ugb2YgZHctbWlwaS1kc2kuYyBpbiBteSBuZXh0IHJldmlzaW9uLCBhcyBzb21lIHVzYWdl
IG9mCmR3LW1pcGktZHNpLXJvY2tjaGlwIChhcyBwdXJlIERQSFkpIHNlZW1zIHRvIGJlIHdvcmtp
bmcgdy9vIGEgZC1tLWQKc3RydWN0dXJlLgoKSG93ZXZlciwgSSBhbSBpbnRlcmVzdGVkIGluIHlv
dXIgcGF0Y2ggbm93LgoKLSBUaGUgcGFuZWwgdXNlZCBpbiBteSBUSDE1MjAgZGV2aWNlIChMaWNo
ZWUgQ29uc29sZSA0QSkgc2VlbXMgdG8gYmUgYWxzbwpJTEk5ODgxQy1iYXNlZCwgYW5kIGl0IHdv
cmtzIGluIGJ1cnN0IG1vZGU7IEkgdGhpbmsgYSBsaXR0bGUgcG93ZXIgaXMgc2F2ZWQKd2hlbiBy
dW5uaW5nIGluIGJ1cnN0IG1vZGUgaW5zdGVhZCBvZiBub24tYnVyc3QgbW9kZS4KLSBJIGhhdmUg
dG8gY29weSB0aGUgdWdseSBleHRyYSBsYW5lIGJhbmR3aWR0aCBsb2dpYyBmcm9tIHRoZSByb2Nr
Y2hpcCBnbHVlCnRvIG1ha2UgbXkgcGFuZWwgd29yay4KCkJUVyBpcyBpdCB3b3J0aCB0byBnZXQg
YSBHUEQgWEQgZm9yICQ1MC0/IEkgaGF2ZSBhIGxpdHRsZSBpbnRlcmVzdCBvbiB0aGlzCmRldmlj
ZSBhZnRlciBzZWFyY2hpbmcgZm9yIGl0LgoKVGhhbmtzLApJY2Vub3d5CgoKPiAKPiBUaGFua3Ms
Cj4gUm9tYWluCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
