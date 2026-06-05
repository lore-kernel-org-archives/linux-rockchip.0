Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA2C9CD8C81
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 16:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqPKQsSIo4WD9i9E3xspsQpAgw/9VzSLu4I/wyunIYE=; b=PR+XorxCEdDGui
	XF+hgs4Og2K3eZx6G5KNikZUjLF7HNX0PS/OAEEDYG4070x2RUYY4dDR+kbQzImwQetU5Fy4IORdp
	+KQYmQPNbrBFxHh9MGsHhja1JxjyVDZkhl56PwDl59buddjDy3Y9rRHfr2ClyIztEfbNJtb2D9chV
	bYUzfqS6KtjtYqa36KNhvoETec6ZHG1Zf3Osgj+EU6c7hK8SD3BglWOq/vMDS2DeDXYgXUVvQtVNl
	P4T63Srmjqu3D7vK/a9v9YFNAv4kCHnb9yXwHzoX/LcF0WveCAiAW8+yMm/1EzpNrlrH/CM9Bk1Na
	lWDIsJX1NS0T5MKO4y/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVXrg-00000000we1-2CVS;
	Fri, 05 Jun 2026 16:57:48 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVXre-00000000wcj-0bAO
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 16:57:47 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-bef47b1ac01so342622366b.2
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Jun 2026 09:57:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780678664; cv=none;
        d=google.com; s=arc-20240605;
        b=EdsQgfuIx5HITeLTZsjCkvvfx3cQO+2KSuiAPRwx5o0Lf65b905Y824AGC4rhtWvli
         tr/88F5zEpu5JiI0ksCndpK2ncd1o484yQqha4ua/vt/bnRkcULAV7snb/9nsSQWMuwt
         29p1DmzOatOLBwaYOXq6SDO97n0QIpQkyIj3K/hyxZtB+NZaR9N9kdioUiQaqS5pB2cC
         Lu3poPunixsGkMBdDhpTRKIEpSqCqSYZtwBMb/MkaDm9LFikrW0ezEKKQTjUw5Kl0/79
         qI1YMmO8iB6eEzHgvd/4n1nqsXXa48mSeTFSH9WlRFX1IojkggL6Oce6qgfsi4tGKJ1O
         Q32w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=t9Q2reB/yZPpZ8/eSn50xdc+8VSCDBGfUYlb4VIhsU0=;
        fh=WN1m0XQ+mQ0PWDW4o+vsHeKYPO3oZd/cToPDzX1hsGU=;
        b=frxLuiEm4R+3zyJ//wKzd2vqxeBYHoSGPNbVgu6XBK3G/GagSM3TxMmXuM34otgi4L
         dpO63Dlzdp1CPx72IrnI5oKVuxPVfnC6xbHpMkjMSlBmyZh41OPVrQa9NUhsFQ3RmA5N
         hbPHhODYP+QVdqWnbhIIMZexq9dK3xI2CY8izJG6kRWDxWSWb+jLdYTU4x6lPq+vp5gU
         8GQJ3Igu8wlTjAw8uJ7e817h2g7vCevXLQPYOhZ7x3wDGHHuk+IGNFK4HM2QcO7Q8AWl
         hOFYtf04uLUYJElCpdX1cI5ajk2mXQ02fp/QqX+hBJHtcZZjAmJebirobf7EE9ul+0r5
         gu6A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1780678664; x=1781283464; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t9Q2reB/yZPpZ8/eSn50xdc+8VSCDBGfUYlb4VIhsU0=;
        b=wwmiUJyJzk3iKGCKlvRRrOtecuX49pmgeSxE85TtXM0PJDPTBfH6SHsr6H34AuKHs1
         xyP202gZOqupcM/pacIuGOpXEl+LwIHsc+3LAiR+cSweh1ENejRxypvY9gwl50CTnf5H
         T0DCumECRzIIaKkf1VrTA9+wkmFzmeXp3dc+KAAn2y0UPUVtJoeeTSwxP0nNFKUsZY//
         bMOLXkjgeGJ2bC+hiL1YgDxkqVFH4HB3teAQThTE9f7qMBN/p1c6spk8mOto0b3TgoFu
         Y6gYagkuee7ccBiEojpSjrqnNORQWBYyrYOgXB5eCy5I64g5/KjuWgT7+CBHRPAXe+RA
         1GVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780678664; x=1781283464;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=t9Q2reB/yZPpZ8/eSn50xdc+8VSCDBGfUYlb4VIhsU0=;
        b=bYaqpC2ZxThdN9SnrWs93tNeDx2m75W/LeJ3cH04fKtnQomVH5Gd/o/6zOV4lokJvU
         qpp6tId1clp7d+XJmxEFDzMFKjRUPqL4YgyQNwbTltvur4Bs/ZXy8EzMhfzWEJ6C78nM
         Qs2OXXp9y9g/lsjptVuy6b8t57IZstHf8xPODnr7UuSAolJY5pI78DjUgQAPKGM/L9Bm
         u01bPoc/SXXugm7sqSqmfBofnyjSi5lh4hU8SflGUEb9PHlRDbj7NtlRfZXDBgnEn+JZ
         Vt55eAsrZjpsikJ/5PZ6LMjlJFd0woWKDYxIBvQGO1AvwWWenO7nHWdtphnmm0yI3dFc
         qtQQ==
X-Forwarded-Encrypted: i=1; AFNElJ9bq0nC+CKk5+1V5mDm14FgN81mm5jT7Dq/1E8vGjnRU/O35O2io1/9P+NxdnR+YPwfIiFN9kb321YG/mccHg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7BPablikb21WY1vGMiSPT2GtwKrdp7odhFZDVKB/CdUduvFqc
	KAW1sUZ6ujnf9h4hXLlugsXD9CwzVO3D1aeD7ZvyNGCwtv2Xcld9hC27NKhW5/jXJ2uFPxVNfnD
	ZCl82lCuhhqZ2XDkFqcGyF7WCViP1xG8qpG14JoO7Og==
X-Gm-Gg: Acq92OHlqVlVoU071xJHIGPY/7XPTES+ATlfVYoSkm27J99z2i8GwYcZ5apJ+bKY083
	hOf+p2hLV+bro6oH398mzQmSjVO7ZfUhkDrbldkyQRTtcUv28bT7mQa1uHxgadAkVoyunLEVJO7
	ADWty6l0o1oTLWYBpv4cjmkYV0eltFTN/GayhJiDmBVyyyGfyE4M9SKmURA6a6Xw/4jmZ/qzdGC
	Zb/DODGlxDEXJT1h304GYgSXSA9t5us1HrKsQNpmTepUDPk730DumfO2S15TSRE2lAKESq5h70P
	5d5eTCLYnHG0ZffMoO+bgFk955+8SlJTvQ6X86TkHn0Qw9ObnPc=
X-Received: by 2002:a17:907:6eac:b0:bee:e2a2:bdbf with SMTP id
 a640c23a62f3a-bf37234cfe1mr246835966b.29.1780678663320; Fri, 05 Jun 2026
 09:57:43 -0700 (PDT)
MIME-Version: 1.0
References: <20260409-vop2-clk-rate-check-v2-1-b207cfc427d7@collabora.com> <CABjd4Yw_HYpjhrgmonB9FmWV00q=r3yvqnFE4TXEHpM1ZgWOhA@mail.gmail.com>
In-Reply-To: <CABjd4Yw_HYpjhrgmonB9FmWV00q=r3yvqnFE4TXEHpM1ZgWOhA@mail.gmail.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 5 Jun 2026 20:57:33 +0400
X-Gm-Features: AVVi8CeLjRpF5Sxm7pNUsioQchN9UZhAfu68dWtF3YAmYUc88EGpBg5CfEN24ZY
Message-ID: <CAKTNdwE-qYFiNpn1b9Zy=vjf0QO3JXF_ofp=b5x1-n9Q2WaMCg@mail.gmail.com>
Subject: Re: [PATCH RFC v2] drm/rockchip: vop2: Add clock rate mode check
To: Alexey Charkov <alchark@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Daniel Stone <daniels@collabora.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_095746_240363_24F711F0 
X-CRM114-Status: GOOD (  30.68  )
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

T24gRnJpLCBKdW4gNSwgMjAyNiBhdCA3OjU44oCvUE0gQWxleGV5IENoYXJrb3YgPGFsY2hhcmtA
Z21haWwuY29tPiB3cm90ZToKPgo+IE9uIEZyaSwgQXByIDEwLCAyMDI2IGF0IDI6MzfigK9BTSBT
ZWJhc3RpYW4gUmVpY2hlbAo+IDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPiB3cm90
ZToKPiA+Cj4gPiBUaGUgZGlzcGxheSBtaWdodCBvZmZlciBtb2Rlcywgd2hpY2ggZXhjZWVkIHRo
ZSBtYXhpbXVtIGNsb2NrIHJhdGUgb2YgYQo+ID4gdmlkZW8gb3V0cHV0LiBUaGlzIHVzdWFsbHkg
aGFwcGVucyBmb3IgZGlzcGxheXMgdGhhdCBvZmZlciByZWZyZXNoIHJhdGVzCj4gPiBhYm92ZSA2
MCBIei4gVGhpcyByZXN1bHRzIGluIG5vIHBpY3R1cmUgKG9yIGEgYnJva2VuIG9uZSkgYmVpbmcg
ZGlzcGxheWVkCj4gPiB3aXRob3V0IG1hbnVhbCBpbnRlcnZlbnRpb24uIEZpeCB0aGlzIGJ5IHRl
YWNoaW5nIHRoZSBkcml2ZXIgYWJvdXQgdGhlCj4gPiBtYXhpbXVtIGFjaGlldmFibGUgY2xvY2sg
cmF0ZXMgZm9yIGVhY2ggdmlkZW8gcG9ydC4KPiA+Cj4gPiBUaGUgaW5mb3JtYXRpb24gYWJvdXQg
dGhlIG1heGltdW0gY2xvY2sgcmF0ZXMgZm9yIGVhY2ggdmlkZW8gY2hhbm5lbCBhbmQKPiA+IHRo
ZSB0aXAgYWJvdXQgbXVsdGlwbGUgcGl4ZWxzIGJlaW5nIHByb2Nlc3NlZCBwZXIgY2xvY2sgd2Vy
ZSBwcm92aWRlZCBieQo+ID4gQW5keSBZYW4gYW5kIHJvdWdobHkgY2hlY2tlZCBhZ2FpbnN0IHRo
ZSBpbmZvcm1hdGlvbiBhdmFpbGFibGUgaW4gdGhlCj4gPiBkYXRhc2hlZXQgKHdoaWNoIHNwZWNp
ZmllcyBsaW1pdHMgbGlrZSAiMjU2MHgxNjAwQDYwSHogd2l0aCAxMC1iaXQiCj4gPiBpbnN0ZWFk
IG9mIGEgc3BlY2lmaWMgcGl4ZWwgcmF0ZSkuCj4gPgo+ID4gRm9yIHRoZSB2aWRlbyBwb3J0cyBz
dXBwb3J0aW5nIGEgNjAwIE1IeiBpbnB1dCBjbG9jaywgdGhlcmUgaXMgc29tZQo+ID4gbG9naWMg
dG8gaGFuZGxlIHVwIHRvIDQgcGl4ZWxzIGluIHBhcmFsbGVsIHdoZW4gbmVlZGVkIHJlc3VsdGlu
ZyBpbgo+ID4gdGhlIGV4dHJhIG11bHRpcGxpZXIuCj4gPgo+ID4gU3VnZ2VzdGVkLWJ5OiBBbmR5
IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4gPiBMaW5rOiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9saW51eC1yb2NrY2hpcC8xNTI4ZDc4OC4xODZiLjE5ZDA4ZWQ5NzRjLkNvcmVtYWls
LmFuZHlzaHJrQDE2My5jb20vCj4gPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8
c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiA+IC0tLQo+ID4gSSd2ZSBrZXB0IHRo
ZSBSRkMgdGFnLCBhcyBJJ20gbm90IHN1cmUgYWJvdXQgdGhlIDR4IHBhcmFsbGVsIHBpeGVsCj4g
PiBwcm9jZXNzaW5nLiBJSVVJQyBhbGwgb2YgdGhlIHZpZGVvIHBvcnRzIHdpdGggYSBtYXhpbXVt
IG9mIDYwMCBNSHoKPiA+IGlucHV0IGNsb2NrIHN1cHBvcnQgaXQsIGNvbnNpZGVyaW5nIHRoZXkg
Y2FuIGdvIHRvIDRLIEAgMTIwSHosCj4gPiB3aGljaCBpcyBhYm92ZSAxLjJHSHogd2hpbGUgQW5k
eSBtZW50aW9uZWQgYSBtYXguIHN1cHBvcnQgY2xvY2sgcmF0ZQo+ID4gb2YgNjAwIE1Iei4KPiA+
IC0tLQo+ID4gQ2hhbmdlcyBpbiB2MjoKPiA+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvci8yMDI2MDIxNy12b3AyLWNsay1yYXRlLWNoZWNrLXYxLTEtOTg5YjU2OTExOWJh
QGNvbGxhYm9yYS5jb20KPiA+IC0gYmFzZWQgb24gdjcuMC1yYzcKPiA+IC0gcmVuYW1lIG1heF9j
bG9ja19yYXRlIGludG8gbWF4X3BpeGVsX2Nsb2NrX3JhdGUgdG8gZGlzdGluZ3Vpc2ggZnJvbQo+
ID4gICBpbnB1dCBjbG9jawo+ID4gLSB1cGRhdGUgbWF4IGNsb2NrIHJhdGVzIHRvIHRoZSBudW1i
ZXJzIHByb3ZpZGVkIGJ5IEFuZHkgWWFuIHdpdGgKPiA+ICAgZXh0cmEgNHggbXVsdGlwbGllciBm
b3IgNEsgMTIwSHogVlBzCj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX3ZvcDIuYyB8ICAzICsrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fdm9wMi5oIHwgIDEgKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF92b3AyX3JlZy5jIHwgMTAgKysrKysrKysrKwo+ID4gIDMgZmlsZXMgY2hhbmdlZCwg
MTQgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fdm9wMi5jCj4gPiBpbmRleCBhMTk1ZjVjODE5YTIuLjM1YTBlZGRhNTM3NSAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5j
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+
ID4gQEAgLTE0MzQsNiArMTQzNCw5IEBAIHN0YXRpYyBlbnVtIGRybV9tb2RlX3N0YXR1cyB2b3Ay
X2NydGNfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCj4gPiAgICAgICAgIGlmICht
b2RlLT5oZGlzcGxheSA+IHZwLT5kYXRhLT5tYXhfb3V0cHV0LndpZHRoKQo+ID4gICAgICAgICAg
ICAgICAgIHJldHVybiBNT0RFX0JBRF9IVkFMVUU7Cj4gPgo+ID4gKyAgICAgICBpZiAobW9kZS0+
Y2xvY2sgPiB2cC0+ZGF0YS0+bWF4X3BpeGVsX2Nsb2NrX3JhdGUgLyAxMDAwKQo+ID4gKyAgICAg
ICAgICAgICAgIHJldHVybiBNT0RFX0NMT0NLX0hJR0g7Cj4gPiArCj4gPiAgICAgICAgIHJldHVy
biBNT0RFX09LOwo+ID4gIH0KPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmggYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX3ZvcDIuaAo+ID4gaW5kZXggOTEyNDE5MTg5OWJhLi5mZDQ2OTEzZjMzNDYgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIu
aAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmgK
PiA+IEBAIC0yMjUsNiArMjI1LDcgQEAgc3RydWN0IHZvcDJfdmlkZW9fcG9ydF9kYXRhIHsKPiA+
ICAgICAgICAgdTE2IGdhbW1hX2x1dF9sZW47Cj4gPiAgICAgICAgIHUxNiBjdWJpY19sdXRfbGVu
Owo+ID4gICAgICAgICBzdHJ1Y3Qgdm9wX3JlY3QgbWF4X291dHB1dDsKPiA+ICsgICAgICAgdTMy
IG1heF9waXhlbF9jbG9ja19yYXRlOwo+ID4gICAgICAgICBjb25zdCB1OCBwcmVfc2Nhbl9tYXhf
ZGx5WzRdOwo+ID4gICAgICAgICB1bnNpZ25lZCBpbnQgb2Zmc2V0Owo+ID4gICAgICAgICAvKioK
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfdm9wMl9y
ZWcuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3AyX3JlZy5jCj4gPiBp
bmRleCBmMzk1MGU4NDc2YTcuLjZhZTNkNTA2YzQ3NiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3AyX3JlZy5jCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfdm9wMl9yZWcuYwo+ID4gQEAgLTU1OSwxOCArNTU5LDIx
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgdm9wMl92aWRlb19wb3J0X2RhdGEgcmszNTY4X3ZvcF92
aWRlb19wb3J0c1tdID0gewo+ID4gICAgICAgICAgICAgICAgIC5nYW1tYV9sdXRfbGVuID0gMTAy
NCwKPiA+ICAgICAgICAgICAgICAgICAuY3ViaWNfbHV0X2xlbiA9IDkgKiA5ICogOSwKPiA+ICAg
ICAgICAgICAgICAgICAubWF4X291dHB1dCA9IHsgNDA5NiwgMjMwNCB9LAo+ID4gKyAgICAgICAg
ICAgICAgIC5tYXhfcGl4ZWxfY2xvY2tfcmF0ZSA9IDYwMDAwMDAwMFUsCj4gPiAgICAgICAgICAg
ICAgICAgLnByZV9zY2FuX21heF9kbHkgPSB7IDY5LCA1MywgNTMsIDQyIH0sCj4gPiAgICAgICAg
ICAgICAgICAgLm9mZnNldCA9IDB4YzAwLAo+ID4gICAgICAgICB9LCB7Cj4gPiAgICAgICAgICAg
ICAgICAgLmlkID0gMSwKPiA+ICAgICAgICAgICAgICAgICAuZ2FtbWFfbHV0X2xlbiA9IDEwMjQs
Cj4gPiAgICAgICAgICAgICAgICAgLm1heF9vdXRwdXQgPSB7IDIwNDgsIDE1MzYgfSwKPiA+ICsg
ICAgICAgICAgICAgICAubWF4X3BpeGVsX2Nsb2NrX3JhdGUgPSAyMDAwMDAwMDBVLAo+ID4gICAg
ICAgICAgICAgICAgIC5wcmVfc2Nhbl9tYXhfZGx5ID0geyA0MCwgNDAsIDQwLCA0MCB9LAo+ID4g
ICAgICAgICAgICAgICAgIC5vZmZzZXQgPSAweGQwMCwKPiA+ICAgICAgICAgfSwgewo+ID4gICAg
ICAgICAgICAgICAgIC5pZCA9IDIsCj4gPiAgICAgICAgICAgICAgICAgLmdhbW1hX2x1dF9sZW4g
PSAxMDI0LAo+ID4gICAgICAgICAgICAgICAgIC5tYXhfb3V0cHV0ID0geyAxOTIwLCAxMDgwIH0s
Cj4gPiArICAgICAgICAgICAgICAgLm1heF9waXhlbF9jbG9ja19yYXRlID0gMTUwMDAwMDAwVSwK
PiA+ICAgICAgICAgICAgICAgICAucHJlX3NjYW5fbWF4X2RseSA9IHsgNDAsIDQwLCA0MCwgNDAg
fSwKPiA+ICAgICAgICAgICAgICAgICAub2Zmc2V0ID0gMHhlMDAsCj4gPiAgICAgICAgIH0sCj4g
PiBAQCAtNzc1LDYgKzc3OCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgdm9wMl92aWRlb19wb3J0
X2RhdGEgcmszNTc2X3ZvcF92aWRlb19wb3J0c1tdID0gewo+ID4gICAgICAgICAgICAgICAgIC5n
YW1tYV9sdXRfbGVuID0gMTAyNCwKPiA+ICAgICAgICAgICAgICAgICAuY3ViaWNfbHV0X2xlbiA9
IDkgKiA5ICogOSwgLyogOXg5eDkgKi8KPiA+ICAgICAgICAgICAgICAgICAubWF4X291dHB1dCA9
IHsgNDA5NiwgMjMwNCB9LAo+ID4gKyAgICAgICAgICAgICAgIC5tYXhfcGl4ZWxfY2xvY2tfcmF0
ZSA9IDYwMDAwMDAwMFUgKiA0LAo+Cj4gSGkgU2ViYXN0aWFuLAo+Cj4gSSd2ZSB0ZXN0ZWQgaXQg
b24gYSBidW5jaCBvZiBkaWZmZXJlbnQgZGlzcGxheXMgd2l0aCBSSzM1NzYgd2hpbGUgYWxzbwo+
IGdpdmluZyBWUDAgYW4gdW5saW1pdGVkIFBMTCB0byB3b3JrIHdpdGggKGFuZCBhbHNvIGV4cGFu
ZGluZyBpdHMgcmF0ZXMKPiB0YWJsZSBmb3IgZWFjaCBvZiB0aGUgZGlzcGxheXMnIEVESUQgcHJl
ZmVycmVkIHBpeGVsIGNsb2NrcyksIGFuZCBJJ20KPiBwcmV0dHkgc3VyZSB0aGlzIHNob3VsZCBi
ZSAqIDIgaGVyZSwgcmF0aGVyIHRoYW4gKiA0LiBUaGF0IHdvdWxkIGFsc28KPiBhbGlnbiB3aXRo
ICIucGl4ZWxfcmF0ZSA9IDIiIGp1c3QgYmVsb3cuCj4KPiBJbiBpdHMgY3VycmVudCBmb3JtLCBz
b21lIG9mIHRoZSBhZHZhbmNlZCBkaXNwbGF5cyB3aXRoIDI0MCBIeiBtb2Rlcwo+IGJ5IGRlZmF1
bHQgY2hvb3NlIG1vZGVzIGxlYWRpbmcgdG8gdmlzdWFsIGFydGlmYWN0cyBpbmRpY2F0aXZlIG9m
Cj4gb3ZlcmNsb2NraW5nIHN0cmFpbiBvZiB0aGUgZ3JhcGhpY3MgcGlwZWxpbmUuCj4KPiBUaGUg
cmVzdCBsb29rIHBsYXVzaWJsZSwgc28gd2l0aCB0aGF0IGNoYW5nZSBwbGVhc2UgZmVlbCBmcmVl
IHRvIGluY2x1ZGU6Cj4KPiBUZXN0ZWQtYnk6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGZsaXBw
ZXIubmV0PiAjIFJLMzU3NgoKU29ycnksIHdyb25nIG1haWxib3guCgpUZXN0ZWQtYnk6IEFsZXhl
eSBDaGFya292IDxhbGNoYXJrQGZsaXBwZXIubmV0PiAjIFJLMzU3NgoKQmVzdCByZWdhcmRzLApB
bGV4ZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
