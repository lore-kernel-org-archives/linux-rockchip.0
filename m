Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88C93C531DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Aug 2024 20:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IeLmJFp+mkpwLxKemE+Kt8/8UJoUJvo4yX3IzLEzsZw=; b=pfWn7zOuksjr0z
	eRv7wmuyfgwlFt/gMKVX5VeywKwhKIDeM5+4kP4UloYFsl0j/ZBxo7HbBekKfubEYHOSAFSCZd3vB
	lSbclbdfltC2o68HVsFUWkFA+yCDWdW9NMwEaN5Muf+R0QB/M49vu6depOSyYo7/hBptD71BBiggv
	iJvg38GXFsvv5MyDN+O+EIw8gvxiO0spx+wIj8ueODzMrGOr9+M5/sj5iP8qSkOZui1w1y/Jq4Yct
	aJ9tJGArZmoAq0eyb+FHNgfZGYeXTje80BY666lSW9Xam2XE5o089gDrhHr5yOdQgz5S6RLxVakcl
	rOXx+nxp4+uXHnNaOgiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgVh8-00000006bZQ-1sKK;
	Tue, 20 Aug 2024 20:43:10 +0000
Received: from mail-40133.protonmail.ch ([185.70.40.133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgVgP-00000006bR2-16yy;
	Tue, 20 Aug 2024 20:42:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1724186540; x=1724445740;
	bh=8XGUYMGE1OFUymXrkgfLYCdVIVigLdfqa86an2wYvDU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=fzD0JyTnDwHZgwT1ljsi7cob08ou3MNybOYEorWDsGhFvtSQYHc4SydOvBPab2UWo
	 v+bUSDUGuumR4DyaAmVuXDbRZKCyOVc++jvwdyU5xlbrixWIpFbJMHZQSqEsCm3f2Y
	 EU1S9pWsmHAwFExUirWMs4Kzr+7WcAwMn/b1Q6ZFilB7v9SLk303KC5z4imjz3etUS
	 J12fK9Y6Fe0eyBKedI69Wy35IXQNrFG1CJ2g0GsgAFDPOWI+acSLzsKu8cRdH90a4G
	 /2w8vzM/bLqdiNuXoqX+KX2qNKyIChsLg6p8MNS7JD4W2XAO+mZ41xd7OxXpUntIRz
	 XuocDGIoEbzeQ==
Date: Tue, 20 Aug 2024 20:42:15 +0000
To: Andy Yan <andyshrk@163.com>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Daniel Stone <daniel@fooishbar.org>, Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re:[PATCH v4] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <acvk_AR9o8iB8dRnYZrKp6ylhzAjl5oZyE6oBIKWQttckNesM1-5k9b71jDIRhoYRwx75xe-6_mM8a0p4e15NMapX1GjdDLqPPoKZDN8U1A=@proton.me>
In-Reply-To: <22e2b803.cd8.1916d581b67.Coremail.andyshrk@163.com>
References: <20240815124306.189282-2-pZ010001011111@proton.me> <22e2b803.cd8.1916d581b67.Coremail.andyshrk@163.com>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: 7fe11dad4a52c85e539c6e124e57470cd51a72e2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240820_134225_949331_22D73C4E 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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

CgpPbiBUdWVzZGF5LCBBdWd1c3QgMjB0aCwgMjAyNCBhdCAzOjEyIEFNLCBBbmR5IFlhbiA8YW5k
eXNocmtAMTYzLmNvbT4gd3JvdGU6Cgo+IAo+IEhpIFBpb3Ry77yMCgpIaSBBbmR5IQoKPiA+ICtz
dGF0aWMgaW50IHZvcDJfY3J0Y19hdG9taWNfY2hlY2tfZ2FtbWEoc3RydWN0IHZvcDJfdmlkZW9f
cG9ydCAqdnAsCj4gPiArIHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKPiA+ICsgc3RydWN0IGRybV9h
dG9taWNfc3RhdGUgKnN0YXRlLAo+ID4gKyBzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpCj4gPiArewo+ID4gKyBzdHJ1Y3Qgdm9wMiAqdm9wMiA9IHZwLT52b3AyOwo+ID4gKyB1bnNp
Z25lZCBpbnQgbGVuOwo+ID4gKwo+ID4gKyBpZiAoIXZwLT52b3AyLT5sdXRfcmVncyB8fCAhY3J0
Y19zdGF0ZS0+Y29sb3JfbWdtdF9jaGFuZ2VkIHx8Cj4gPiArICFjcnRjX3N0YXRlLT5nYW1tYV9s
dXQpCj4gPiArIHJldHVybiAwOwo+ID4gKwo+ID4gKyBsZW4gPSBkcm1fY29sb3JfbHV0X3NpemUo
Y3J0Y19zdGF0ZS0+Z2FtbWFfbHV0KTsKPiA+ICsgaWYgKGxlbiAhPSBjcnRjLT5nYW1tYV9zaXpl
KSB7Cj4gPiArIERSTV9ERUJVR19LTVMoIkludmFsaWQgTFVUIHNpemU7IGdvdCAlZCwgZXhwZWN0
ZWQgJWRcbiIsCj4gPiArIGxlbiwgY3J0Yy0+Z2FtbWFfc2l6ZSk7Cj4gPiArIHJldHVybiAtRUlO
VkFMOwo+ID4gKyB9Cj4gPiArCj4gPiArIC8vIHRyaWdnZXIgZnVsbCBtb2Rlc2V0IG9ubHkgd2hl
biBTb0MgaXMgMzU2eAo+ID4gKyBpZiAoIWNydGNfc3RhdGUtPm1vZGVfY2hhbmdlZCAmJiAodm9w
Mi0+ZGF0YS0+c29jX2lkID09IDM1NjYgfHwKPiA+ICsgdm9wMi0+ZGF0YS0+c29jX2lkID09IDM1
NjgpKSB7Cj4gPiArIGludCByZXQ7Cj4gPiArCj4gPiArIGNydGNfc3RhdGUtPm1vZGVfY2hhbmdl
ZCA9IHRydWU7Cj4gPiArIHN0YXRlLT5hbGxvd19tb2Rlc2V0ID0gdHJ1ZTsKPiAKPiAKPiAKPiAK
PiBXZSBkb24ndCBuZWVkIHRvIHRyaWdnZXIgYSBtb2Rlc2V0IGhlcmUuIFdlIGp1c3QgbmVlZCB0
byBkaXNhYmxlIGRzcF9sdXQgYmVmb3Igd2Ugd3JpdGUgZ2FtbWEgbHV0IGRhdGEgZm9yIHJrMzU2
Ni84LgoKRm9ybWVybHkgbXkgcGF0Y2ggZGlkbid0IHRyaWdnZXIgYSBtb2Rlc2V0LiBUaG91Z2gg
RGFuaWVsIFN0b25lIGluIGhpcyAKcmVwbHkgdG8gdjNbMV0gc3VnZ2VzdGVkIGl0IGFzIHRoZSBj
bGVhbiB3YXkgdG8gaGFuZGxlIFJLMzU2eCBjYXNlWzJdLCAKcXVvdGUsICJpdCB3b3VsZCBwcm9i
YWJseSBiZSBiZXR0ZXIgdG8gc2V0IG1vZGVfY2hhbmdlZCB3aGVuIHRoZSBjb2xvdXIgCm1hbmFn
ZW1lbnQgY29uZmlndXJhdGlvbiBjaGFuZ2VzIi4gTGV0J3Mgd2FpdCBmb3IgaGlzIHJlcGx5IHRv
IHRoaXMgCnZlcnNpb24gb2YgdGhlIHBhdGNoLCBwZXJoYXBzIGhlIG1lYW50IHNvbWV0aGluZyBk
aWZmZXJlbnQgb3Igbm90IGV4YWN0bHkgCndoYXQgSSBkaWQuCgpbMV0gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGludXgtcm9ja2NoaXAvQ0FQajg3ck9NPWowem11V0w5ZnJHS1YxeHpQYkpyaz1R
OWlwN0ZfSEFQWW5iQ3FQb3V3QG1haWwuZ21haWwuY29tLwpbMl0gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtcm9ja2NoaXAvVGtnS1ZpdnVhTEZMSUxQWS1uM2lab184S0YtZGFLZHFkdS0w
X2UwSFAtNUFyXzhEQUxEZU5Xb2cyc3V3V0tqWDdlb21jYkdFVDBLWmU3RGx6ZGhLMllNNkNiTGJl
S2VGWnItTUp6Sk10dzA9QHByb3Rvbi5tZS8KCkJlc3QgUmVnYXJkcywgUGlvdHIgWmFsZXdza2kK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
