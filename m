Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6C46C9830C
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jan 2026 02:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVHo5JGYvbwO56VUWwI+OQWXJCMKXLlrm/T7shN6BrE=; b=uqUcgUa5qiRSSg
	Zqmer8P/62CR8+pbm2R1PKwlp7nM0I4wWTZWBVcv2KnKS6uQQVCVxhqAOkHYxtzYLdV9TRFS/fv0q
	fznqDIT8cjgfsNl9iBvejUaJC0bdG1FTDbtwxPeF1HRDv3YeZSKXVklP81Ea7R/GP3q7mAhZ4bGdL
	OwZBqTRTNb9celc45bIdd9b3W6mpN8ieKRjB+2IAmuNTQjA+wFyjdkalcyghMmRKhWRlONEaaxQji
	Carcm0JLe3SV6WrPaInJu12BenJMi+tGOrD9LPdWCP8FeJ3Hy2G1vBdokSTNqMIcSKt0f8llzf7sN
	fzZYHo88RJYaNB8TAaIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgvm9-0000000F7Qi-3cnG;
	Sat, 17 Jan 2026 02:10:53 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgvm4-0000000F7PU-0vMP;
	Sat, 17 Jan 2026 02:10:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=mX+pKglcUGalsnXrao4pZyIC4YLVUK9HfhdJDPeAPw0=; b=O
	WKwXoBWKRqUPFNSa1evtIxzarIzwBKxN71haE4VjEtyWif7u8nWsG6HSio3xi1TO
	uFDbAa3UmpZo+lKbDeTfjKdHBiIoG7nv0DlvgT1gpBuxAlZRHRb55ammLKVcW5qc
	bSYyEzp2D21FkPrNfxBbUGu7gc4nAL5DzBtyxvUVNM=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-108 (Coremail) ; Sat, 17 Jan 2026 10:09:55 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Sat, 17 Jan 2026 10:09:55 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: hjc@rock-chips.com, mripard@kernel.org,
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de,
	airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH] drm/rockchip: vop2: Add mode valid callback for crtc
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20251222(83accb85) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <6509513.iIbC2pHGDl@diego>
References: <20260116005953.286225-1-andyshrk@163.com>
 <6509513.iIbC2pHGDl@diego>
X-CM-CTRLMSGS: EPOSPXBsdXM9MTc2ODYxNTc5NDQyMF80MDY1OTUwMzdiOGQzZDMzMTQ0Yjk5M
 DNmNTYwYjIzZg==
X-NTES-SC: AL_Qu2dCvqauk8i4ymaZOkfmUgWjuw/WsG1v/Ul1YBSP556jCLpyxkmREZKAWnx882oLiKGsAS2YBV818lzcYV9RqYJwAQrkcPC+qrH09Zm5SyxFA==
MIME-Version: 1.0
Message-ID: <5e931108.71d.19bc9b75cdf.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: bCgvCgD3H5Rz72pp7HZYAA--.3213W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxRMNa2lq73N8bQAA3+
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_181049_664948_2B1A02A0 
X-CRM114-Status: GOOD (  15.72  )
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

CkhlbGxvIEhlaWtv77yMCgrlnKggMjAyNi0wMS0xNyAwMDo0OToyM++8jCJIZWlrbyBTdMO8Ym5l
ciIgPGhlaWtvQHNudGVjaC5kZT4g5YaZ6YGT77yaCj5IaSBBbmR5LAo+Cj5BbSBGcmVpdGFnLCAx
Ni4gSmFudWFyIDIwMjYsIDAxOjU5OjQ5IE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNj
aHJpZWIgQW5keSBZYW46Cj4+IEZyb206IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNv
bT4KPgo+d2hlbiByZXNlbmRpbmcgYW4gdW5tb2RpZmllZCBwYXRjaCwgcGxlYXNlIG1hcmsgdGhl
IHN1YmplY3QgYXMKPltQQVRDSCBSRVNFTkRdIC4uLi4KPgoKClNvcnJ5LCBJIGZvcmdvdCB0aGF0
IHRoaXMgcGF0Y2ggaGFkIGFscmVhZHkgYmVlbiBzZW50IG91dCBvbmNlIGJlZm9yZQoKPj4gRmls
dGVyIHRoZSBtb2RlIHRoYXQgY2FuJ3Qgb3V0cHV0IGJ5IHRoZSBjcnRjLgo+Cj5JbiBjb21taXQg
OGUxNDBjYjYwMjcwICgiZHJtL3JvY2tjaGlwOiB2b3A6IGxpbWl0IG1heGltdW0gcmVzb2x1dGlv
biB0bwo+aGFyZHdhcmUgY2FwYWJpbGl0aWVzIikgd2hpY2ggaW50cm9kdWNlZCB0aGUgc2ltaWxh
ciBjaGVjayBvbiBWT1AoMSksIHdlCj5oYWQgYWRkaXRpb25hbCBpbmZvcm1hdGlvbiwgaW4gdGhh
dCB0aGUgVk9QMSBoYXJkd2FyZSBkb2VzIG5vdCBoYXZlCj5hbiBvdXRwdXQgaGVpZ2h0IGxpbWl0
LiBJcyB0aGUgc2FtZSB0cnVlIGZvciBWT1AyID8KPgo+QmVjYXVzZSB0aGVuIEknZCBsaWtlIHRv
IGV4dGVuZCB0aGUgY29tbWl0IGRlc2NyaXB0aW9uIHRvIHNvbWV0aGluZyBsaWtlOgo+PT09PT09
PSA4PCA9PT09PT09Cj5UaGUgZGlmZmVyZW50IFZPUCB2YXJpYW50cyBzdXBwb3J0IGRpZmZlcmVu
dCBtYXhpbXVtIHJlc29sdXRpb25zLiBSZWplY3QKPnJlc29sdXRpb25zIHRoYXQgYXJlIG5vdCBz
dXBwb3J0ZWQgYnkgYSBzcGVjaWZpYyB2YXJpYW50Lgo+Cj5Pbmx5IHRoZSBvdXRwdXQgd2lkdGgg
aXMgY2hlY2tlZCBiZWNhdXNlIHRoZSBoYXJkd2FyZSBpdHNlbGYgZG9lcyBub3QKPmhhdmUgYSBo
YXJkIG91dHB1dCBoZWlnaHQgbGltaXQuCj49PT09PT09IDg8ID09PT09PT0KPgo+QmVjYXVzZSB3
aGVuIHNvbWVvbmUgc2VlcyB0aGUgY29kZSBsYXRlciB0aGV5IG1pZ2h0IGFzayB3aHkgdGhlIGhl
aWdodAo+aXMgbm90IGNoZWNrZWQsIHNvIGhhdmluZyB0aGF0IGluIHRoZSBjb21taXQgZGVzY3Jp
cHRpb24gYWxsb3dzIHVzIGFsbCB0bwo+cmVtZW1iZXIgd2h5IHRoZSBjaGVjayBpcyB0aGlzIHNw
ZWNpZmljIHdheSA6LSkKCkRvbmUgaW4gVjIKCgo+Cj5UaGFua3MKPkhlaWtvCj4KPj4gU2lnbmVk
LW9mZi1ieTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+PiAtLS0KPj4gIGRy
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIHwgMTIgKysrKysrKysr
KysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQo+PiAKPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPj4gaW5kZXggNDk4ZGYwY2U0
NjgwLi43NGZiYTI5YmZmZjMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fdm9wMi5jCj4+IEBAIC0xNDM5LDYgKzE0MzksMTcgQEAgc3RhdGljIHZvaWQg
dm9wMl9jcnRjX2Rpc2FibGVfdmJsYW5rKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykKPj4gIAl2b3Ay
X2NydGNfZGlzYWJsZV9pcnEodnAsIFZQX0lOVF9GU19GSUVMRCk7Cj4+ICB9Cj4+ICAKPj4gK3N0
YXRpYyBlbnVtIGRybV9tb2RlX3N0YXR1cyB2b3AyX2NydGNfbW9kZV92YWxpZChzdHJ1Y3QgZHJt
X2NydGMgKmNydGMsCj4+ICsJCQkJCQkgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1v
ZGUpCj4+ICt7Cj4+ICsJc3RydWN0IHZvcDJfdmlkZW9fcG9ydCAqdnAgPSB0b192b3AyX3ZpZGVv
X3BvcnQoY3J0Yyk7Cj4+ICsKPj4gKwlpZiAobW9kZS0+aGRpc3BsYXkgPiB2cC0+ZGF0YS0+bWF4
X291dHB1dC53aWR0aCkKPj4gKwkJcmV0dXJuIE1PREVfQkFEX0hWQUxVRTsKPj4gKwo+PiArCXJl
dHVybiBNT0RFX09LOwo+PiArfQo+PiArCj4+ICBzdGF0aWMgYm9vbCB2b3AyX2NydGNfbW9kZV9m
aXh1cChzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCj4+ICAJCQkJIGNvbnN0IHN0cnVjdCBkcm1fZGlz
cGxheV9tb2RlICptb2RlLAo+PiAgCQkJCSBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqX21v
ZGUpCj4+IEBAIC0xODg0LDYgKzE4OTUsNyBAQCBzdGF0aWMgdm9pZCB2b3AyX2NydGNfYXRvbWlj
X2ZsdXNoKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKPj4gIAo+PiAgc3RhdGljIGNvbnN0IHN0cnVj
dCBkcm1fY3J0Y19oZWxwZXJfZnVuY3Mgdm9wMl9jcnRjX2hlbHBlcl9mdW5jcyA9IHsKPj4gIAku
bW9kZV9maXh1cCA9IHZvcDJfY3J0Y19tb2RlX2ZpeHVwLAo+PiArCS5tb2RlX3ZhbGlkID0gdm9w
Ml9jcnRjX21vZGVfdmFsaWQsCj4+ICAJLmF0b21pY19jaGVjayA9IHZvcDJfY3J0Y19hdG9taWNf
Y2hlY2ssCj4+ICAJLmF0b21pY19iZWdpbiA9IHZvcDJfY3J0Y19hdG9taWNfYmVnaW4sCj4+ICAJ
LmF0b21pY19mbHVzaCA9IHZvcDJfY3J0Y19hdG9taWNfZmx1c2gsCj4+IAo+Cj4KPgo+Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
