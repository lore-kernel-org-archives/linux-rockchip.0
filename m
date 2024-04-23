Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DBFAC04FFE
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 12:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BT6nQYcjDVqJ5JiwvRXw2+7aXhDxLQ2WpTRZSG0Kei8=; b=dVP30ObYTXwpEg
	ZSsPgI4NhzFox5oCliXKtEdAvOr8N73DEdEepBPurDl5W3+Ki0v5C3O/9fy8KOAfjyA7Al6/KkTGq
	xmhEwJMmZa5SLRlBaelR5BokmFqn4km6VfYFP4GisVaisGLVcYIeN3CvgSvjQSgAQgIFCZZ+9jBgf
	M1MoHAyCGpYf+TTyXUBQoeQtLzqzdQm/Rm6KbD6xhkz/X6vGDEk/+x82vzaA26nYYuvxK65WJrhLp
	j5Cgc0OlXXVbE0IuWjNYFqmq7RJone1i1JIAZihQIRPQLOuFQEIA4Sz3IA3CrJgCmuuALm+WA1Pa8
	lWyt9uQzx1cTklhWSG8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzFi6-0000000HXKZ-2kdE;
	Tue, 23 Apr 2024 12:57:22 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzFi2-0000000HXDd-0gLy;
	Tue, 23 Apr 2024 12:57:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1713877019;
	bh=XeZycoklrbmIsGAeu98uH0HIylfGOQJCx4GR355GWBc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=xRziz0GyVrPt2dhtiBiqNDXqczIeDLuZbHnEOWJSrlHm36b7jLx7WJlA/NnNyYz+O
	 ILQ5AxoCCF584XC6at4Ovw7VG6IZUkYx2hcSU4LJTCUGclhXqLyOelc6ejocD9iQE9
	 ycHEPJjr5Z1dDU4MQAjBDjumEXasMAR4WwmZ4XII0SdqTIJvWCyiBMWY9gkqTTuKHH
	 g8Xdo9I4ALXJxJU0+jh5uZmA3T1BqHogZP/oCoSlUCAb5X+JS2pJqTZQ1G7PtkePVv
	 2ZfpAJAYcPdPKlUtCWGitWSX/IzjmIfxI5mmr6ld3MWC4bsdYgChfIPWTxwQ5z+5km
	 WKkdXlDaRIXeQ==
Received: from [100.66.96.193] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 6AF5937813A2;
	Tue, 23 Apr 2024 12:56:55 +0000 (UTC)
Message-ID: <c8a7744c-2225-4fd8-9ee7-bd513a4668cd@collabora.com>
Date: Tue, 23 Apr 2024 18:26:53 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/4] drm/ci: uprev IGT and generate testlist from build
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 robdclark@gmail.com, david.heidelberg@collabora.com,
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org
References: <20240423040243.448091-1-vignesh.raman@collabora.com>
 <20240423040243.448091-4-vignesh.raman@collabora.com>
 <e3a0ea8f-d306-488c-a69c-aa18078e5e03@igalia.com>
 <CAA8EJppaaitcXkXSFTB4-S2CbBcrAVHouB0wWiU5Nw2FvpagqA@mail.gmail.com>
Content-Language: en-US
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <CAA8EJppaaitcXkXSFTB4-S2CbBcrAVHouB0wWiU5Nw2FvpagqA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_055718_398755_49A8525D 
X-CRM114-Status: GOOD (  13.42  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiAyMy8wNC8yNCAxNzo1MywgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBUdWUs
IDIzIEFwciAyMDI0IGF0IDEzOjI0LCBNYcOtcmEgQ2FuYWwgPG1jYW5hbEBpZ2FsaWEuY29tPiB3
cm90ZToKPj4KPj4gT24gNC8yMy8yNCAwMTowMiwgVmlnbmVzaCBSYW1hbiB3cm90ZToKPj4+IFVw
cmV2IElHVCB0byB0aGUgbGF0ZXN0IHZlcnNpb24gYW5kIHN0b3AgdmVuZG9yaW5nIHRoZQo+Pj4g
dGVzdGxpc3QgaW50byB0aGUga2VybmVsLiBJbnN0ZWFkLCB1c2UgdGhlIHRlc3RsaXN0IGZyb20K
Pj4+IHRoZSBJR1QgYnVpbGQgdG8gZW5zdXJlIHdlIGRvIG5vdCBtaXNzIHJlbmFtZWQgb3IgbmV3
bHkKPj4+IGFkZGVkIHRlc3RzLgo+Pgo+PiBOaXRwaWNrOiB3b3VsZG4ndCBpdCBiZSBiZXR0ZXIg
dG8gKDEpIHN0b3AgdmVuZG9yaW5nIHRoZQo+PiB0ZXN0bGlzdCBpbnRvIHRoZSBrZXJuZWwgaW4g
b25lIHBhdGNoIGFuZCB0aGVuICgyKSB1cHJldgo+PiBJR1QgdG8gdGhlIGxhdGVzdCB2ZXJzaW9u
PyBJIGZlZWwgdGhhdCB0aGlzIHBhdGNoIGlzIGNoYW5naW5nCj4+IGEgbG90IG9mIGRpZmZlcmVu
dCBzdHVmZi4KPiAKPiBEZWZpbml0ZWx5LiBPdGhlcndpc2UgaXQncyBoYXJkIHRvIHVuZGVyc3Rh
bmQgd2hldGhlciBhIGNoYW5nZSB0bwo+IGZhaWxzL2ZsYWtlcyBpcyBjYXVzZWQgYnkgdGhlIHVw
cmV2IG9yIGJ5IHRoZSB0ZXN0bGlzdCBjaGFuZ2UuIEUuZy4gaW4KPiBzZXZlcmFsIGNhc2VzIHRo
ZSBsaXN0IG9mIGZhaWxpbmcgc3VidGVzdHMgc2VlbXMgdG8gYmUgcmVwbGFjZWQgd2l0aAo+IHRo
ZSB0ZXN0IGl0c2VsZi4KPiAKClllcywgd2lsbCBmb2xsb3cgdGhlIGJlbG93IGFwcHJvYWNoLgox
KSBVc2UgdGhlIHRlc3RsaXN0IGZyb20gYnVpbGQgYW5kIHVwZGF0ZSBmYWlscy9mbGFrZXMvc2tp
cHMKMikgVXByZXYgSUdUIGFuZCB1cGRhdGUgZmFpbHMvZmxha2VzL3NraXBzCgpSZWdhcmRzLApW
aWduZXNoCgo+Pgo+Pj4KPj4+IFNraXAga21zIHRlc3RzIGZvciBwYW5mcm9zdCBkcml2ZXIgc2lu
Y2UgaXQgaXMgbm90IGEga21zCj4+PiBkcml2ZXIgYW5kIHNraXAgZHJpdmVyLXNwZWNpZmljIHRl
c3RzLiBVcGRhdGUgeGZhaWxzIHdpdGgKPj4+IHRoZSBsYXRlc3QgdGVzdGxpc3QuCj4+Pgo+Pj4g
SW5jcmVhc2UgdGhlIHRpbW9vdXQgb2YgaTkxNSBqb2JzIHRvIDJoMzBtIHNpbmNlIHNvbWUgam9i
cwo+Pj4gdGFrZXMgbW9yZSB0aGFuIDIgaG91cnMgdG8gY29tcGxldGUuCj4+Pgo+Pj4gU2lnbmVk
LW9mZi1ieTogVmlnbmVzaCBSYW1hbiA8dmlnbmVzaC5yYW1hbkBjb2xsYWJvcmEuY29tPgo+Pj4g
LS0tCj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
