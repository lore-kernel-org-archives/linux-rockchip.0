Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E78C8C02185
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jan 2025 03:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhZMJcV28RYVFaaZG1UdyNFkvmBzaa54ruFjvmNU7zY=; b=X6ZeCRkcEX8klU
	a96wkAos0Zm+OmvpV7O1XtU2tOoRGMTo/gqqyo4bMTbyGPsGFzJosMY9GLj2fERIvym0i5w0p7HGu
	OmmOhR6j9YLyZI9nUn23GdoldXNX28jq9f51hVa8Wt//5soaMuOV6F51bB6mYAArN7Jf3Eixry9mv
	myDej2QzpqpEEYQrAuBJtVylwpK6TszrAifUfyQ20QYHvQYh009SHsCuDUTcebgwSJI/15AHWsriZ
	k2S+1YOHN3louJ1Q08i7X5bTwZ6meSmybLqVaEAys5x8IiGbHygClpIOBbSF6rScjDB/BPJkh5l4E
	3/hezmsopAfhzWWUI82g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZiYs-00000004ekS-0OFY;
	Mon, 20 Jan 2025 03:34:50 +0000
Received: from out-183.mta0.migadu.com ([2001:41d0:1004:224b::b7])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZiYo-00000004eiy-3DZk
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jan 2025 03:34:48 +0000
Message-ID: <3d4e4bda-f465-4c8a-97c4-846b2f3ecb54@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1737344078;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=R9tPeFJh3Z8KzRS9nqqf16JZtB2EUc5uK4Rq+n7DfNw=;
	b=YY0vmGRwrZUTBrUrgVqfAahrdf8E2LNioasg7jg8ibtK9oZUoF3Gyb6ENECPTEd6jx4ozD
	dCAprAdgpk+wCkRotDFwZGdWs/yRlXxl8a6R+PVCHx5z5L1Gon1hTd9+nMflzGPYruxiHZ
	vu7GbnHgrZEtNupovuNQyF4Ah1bgbyA=
Date: Mon, 20 Jan 2025 11:34:27 +0800
MIME-Version: 1.0
Subject: Re: [PATCH v2 25/25] drm/xlnx: Compute dumb-buffer sizes with
 drm_mode_size_dumb()
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com,
 simona@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, freedreno@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, imx@lists.linux.dev,
 linux-samsung-soc@vger.kernel.org, nouveau@lists.freedesktop.org,
 virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-tegra@vger.kernel.org, intel-xe@lists.freedesktop.org,
 xen-devel@lists.xenproject.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andy Yan <andyshrk@163.com>, Daniel Stone <daniel@fooishbar.org>
References: <20250109150310.219442-1-tzimmermann@suse.de>
 <20250109150310.219442-26-tzimmermann@suse.de>
 <cdbe483d-0895-47aa-8c83-1c28220f4a02@ideasonboard.com>
 <bc97b92e-7f8a-4b92-af8a-20fa165ead55@suse.de>
 <f3ba05c7-6e49-4641-a3f9-ba418ebdb7c3@ideasonboard.com>
 <c6735280-7c32-4319-8ca9-a7305d8117c3@suse.de>
 <d67adb03-5cd0-4ac9-af58-cf4446dacee3@ideasonboard.com>
 <0ea6be58-0e04-4172-87cd-064a3e4a43bc@suse.de>
 <f35cb350-6be9-48ca-ad7e-e9dd418281d5@ideasonboard.com>
 <4af0b6a7-c16a-4187-bbf5-365a9c86de21@suse.de>
 <e327ad84-b5c9-4480-b873-dc3aca605538@ideasonboard.com>
 <a2bbeb47-2569-4ee0-9265-92bab139bdc6@suse.de>
 <f3833771-fcd7-45dc-9019-1525fef34429@ideasonboard.com>
 <CAMuHMdXxYa+Na3XxpLTy=-eUL_zQ9kAiUKYu-E04u3KWApusSA@mail.gmail.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
In-Reply-To: <CAMuHMdXxYa+Na3XxpLTy=-eUL_zQ9kAiUKYu-E04u3KWApusSA@mail.gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250119_193447_313479_6FEFB7E1 
X-CRM114-Status: GOOD (  22.59  )
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

SGksCgpPbiAyMDI1LzEvMTYgMTg6MTcsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPiBPbiBU
aHUsIEphbiAxNiwgMjAyNSBhdCAxMTowM+KAr0FNIFRvbWkgVmFsa2VpbmVuCj4gPHRvbWkudmFs
a2VpbmVuQGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+PiBPbiAxNi8wMS8yMDI1IDEwOjA5LCBU
aG9tYXMgWmltbWVybWFubiB3cm90ZToKPj4+IEFtIDE1LjAxLjI1IHVtIDE1OjIwIHNjaHJpZWIg
VG9taSBWYWxrZWluZW46Cj4+PiBbLi4uXQo+Pj4+IE15IHBvaW50IGlzIHRoYXQgd2UgaGF2ZSB0
aGUgY3VycmVudCBVQVBJLCBhbmQgd2UgaGF2ZSB1c2Vyc3BhY2UgdXNpbmcKPj4+PiBpdCwgYnV0
IHdlIGRvbid0IGhhdmUgY2xlYXIgcnVsZXMgd2hhdCB0aGUgaW9jdGwgZG9lcyB3aXRoIHNwZWNp
ZmljCj4+Pj4gcGFyYW1ldGVycywgYW5kIHdlIGRvbid0IGRvY3VtZW50IGhvdyBpdCBoYXMgdG8g
YmUgdXNlZC4KPj4+Pgo+Pj4+IFBlcmhhcHMgdGhlIHNpdHVhdGlvbiBpcyBiYWQsIGFuZCBhbGwg
d2UgY2FuIHJlYWxseSBzYXkgaXMgdGhhdAo+Pj4+IENSRUFURV9EVU1CIG9ubHkgd29ya3MgZm9y
IHVzZSB3aXRoIHNpbXBsZSBSR0IgZm9ybWF0cywgYW5kIHRoZQo+Pj4+IGJlaGF2aW9yIGZvciBh
bGwgb3RoZXIgZm9ybWF0cyBpcyBwbGF0Zm9ybSBzcGVjaWZpYy4gQnV0IEkgdGhpbmsgZXZlbgo+
Pj4+IHRoYXQgd291bGQgYmUgdmFsdWFibGUgaW4gdGhlIFVBUEkgZG9jcy4KPj4+IFRvIGJlIGhv
bmVzdCwgSSB3b3VsZCBub3Qgd2FudCB0byBzcGVjaWZ5IGJlaGF2aW9yIGZvciBhbnl0aGluZyBi
dXQgdGhlCj4+PiBsaW5lYXIgUkdCIGZvcm1hdHMuIElmIGFueXRoaW5nLCBJJ2QgdGFrZSBEYW5p
ZWwncyByZXBseSBtYWlsIGZvcgo+Pj4gZG9jdW1lbnRhdGlvbiBhcy1pcy4gQW55b25lIHN0cmV0
Y2hpbmcgdGhlIFVBUEkgYmV5b25kIFJHQiBpcyBvbiB0aGVpciBvd24uCj4+Pgo+Pj4+IFRoaW5r
aW5nIGFib3V0IHRoaXMsIEkgd29uZGVyIGlmIHRoaXMgY2hhbmdlIGlzIGdvb2QgZm9yIG9tYXBk
cm0gb3IKPj4+PiB4aWxpbnggKHByb2JhYmx5IG90aGVyIHBsYXRmb3JtcyB0b28gdGhhdCBzdXBw
b3J0IG5vbi1zaW1wbGUgbm9uLVJHQgo+Pj4+IGZvcm1hdHMgdmlhIGR1bWIgYnVmZmVycyk6IHdp
dGhvdXQgdGhpcyBwYXRjaCwgaW4gYm90aCBkcml2ZXJzLCB0aGUKPj4+PiBwaXRjaCBjYWxjdWxh
dGlvbnMganVzdCB0YWtlIHRoZSBicHAgYXMgYml0LXBlci1waXhlbHMsIGFsaWduIGl0IHVwLAo+
Pj4+IGFuZCB0aGF0J3MgaXQuCj4+Pj4KPj4+PiBXaXRoIHRoaXMgcGF0Y2ggd2UgZW5kIHVwIHVz
aW5nIGRybV9kcml2ZXJfY29sb3JfbW9kZV9mb3JtYXQoKSwgYW5kCj4+Pj4gYWxpZ25pbmcgYnVm
ZmVycyBhY2NvcmRpbmcgdG8gUkdCIGZvcm1hdHMgZmlndXJlZCBvdXQgdmlhIGhldXJpc3RpY3Mu
Cj4+Pj4gSXQgZG9lcyBoYXBwZW4gdG8gd29yaywgZm9yIHRoZSBmb3JtYXRzIEkgdGVzdGVkLCBi
dXQgaXQgc291bmRzIGxpa2UKPj4+PiBzb21ldGhpbmcgdGhhdCBtaWdodCBlYXNpbHkgbm90IHdv
cmssIGFzIGl0J3MgZG9pbmcgYWRqdXN0bWVudHMgYmFzZWQKPj4+PiBvbiB3cm9uZyBmb3JtYXQu
Cj4+Pj4KPj4+PiBTaG91bGQgd2UgaGF2ZSBhbm90aGVyIHZlcnNpb24gb2YgZHJtX21vZGVfc2l6
ZV9kdW1iKCkgd2hpY2gganVzdAo+Pj4+IGNhbGN1bGF0ZXMgdXNpbmcgdGhlIGJwcCwgd2l0aG91
dCB0aGUgZHJtX2RyaXZlcl9jb2xvcl9tb2RlX2Zvcm1hdCgpCj4+Pj4gcGF0aD8gT3IgZG9lcyB0
aGUgZHJtX2RyaXZlcl9jb2xvcl9tb2RlX2Zvcm1hdCgpIHBhdGggcHJvdmlkZSBzb21lCj4+Pj4g
dmFsdWUgZm9yIHRoZSBkcml2ZXJzIHRoYXQgZG8gbm90IGN1cnJlbnRseSBkbyBhbnl0aGluZyBz
aW1pbGFyPwo+Pj4gV2l0aCB0aGUgUkdCLW9ubHkgcnVsZSwgdXNpbmcgZHJtX2RyaXZlcl9jb2xv
cl9tb2RlX2Zvcm1hdCgpIG1ha2VzCj4+PiBzZW5zZS4gSXQgYWxpZ25zIGR1bWIgYnVmZmVycyBh
bmQgdmlkZW89LCBwcm92aWRlcyBlcnJvciBjaGVja2luZywgYW5kCj4+PiBvdmVyYWxsIGhhcm1v
bml6ZXMgY29kZS4gVGhlIGZhbGxiYWNrIGlzIG9ubHkgcmVxdWlyZWQgYmVjYXVzZSBvZiB0aGUK
Pj4+IGV4aXN0aW5nIG9kZCBjYXNlcyB0aGF0IGFscmVhZHkgYmVuZCB0aGUgVUFQSSdzIHJ1bGVz
Lgo+PiBJIGhhdmUgdG8gZGlzYWdyZWUgaGVyZS4KPj4KPj4gT24gdGhlIHBsYXRmb3JtcyBJIGhh
dmUgYmVlbiB1c2luZyAob21hcCwgdGlkc3MsIHhpbGlueCwgcmNhcikgdGhlIGR1bWIKPj4gYnVm
ZmVycyBhcmUgdGhlIG9ubHkgYnVmZmVycyB5b3UgY2FuIGdldCBmcm9tIHRoZSBEUk0gZHJpdmVy
LiBUaGUgZHVtYgo+PiBidWZmZXJzIGhhdmUgYmVlbiB1c2VkIHRvIGFsbG9jYXRlIGxpbmVhciBh
bmQgbXVsdGlwbGFuYXIgWVVWIGJ1ZmZlcnMKPj4gZm9yIGEgdmVyeSBsb25nIHRpbWUgb24gdGhv
c2UgcGxhdGZvcm1zLgo+Pgo+PiBJIHRyaWVkIHRvIGxvb2sgYXJvdW5kLCBidXQgSSBkaWQgbm90
IGZpbmQgYW55IG1lbnRpb25zIHRoYXQgQ1JFQVRFX0RVTUIKPj4gc2hvdWxkIG9ubHkgYmUgdXNl
ZCBmb3IgUkdCIGJ1ZmZlcnMuIElzIGFueW9uZSBvdXRzaWRlIHRoZSBjb3JlCj4+IGRldmVsb3Bl
cnMgZXZlbiBhd2FyZSBvZiBpdD8KPj4KPj4gSWYgd2UgZG9uJ3QgdXNlIGR1bWIgYnVmZmVycyB0
aGVyZSwgd2hlcmUgZG8gd2UgZ2V0IHRoZSBidWZmZXJzPyBNYXliZQo+PiBmcm9tIGEgdjRsMiBk
ZXZpY2Ugb3IgZnJvbSBhIGdwdSBkZXZpY2UsIGJ1dCBvZnRlbiB5b3UgZG9uJ3QgaGF2ZSB0aG9z
ZS4KPj4gRE1BX0hFQVAgaXMgdGhlcmUsIG9mIGNvdXJzZS4KPiBXaHkgY2FuJ3QgdGhlcmUgYmUg
YSB2YXJpYW50IHRoYXQgdGFrZXMgYSBwcm9wZXIgZm91cmNjIGZvcm1hdCBpbnN0ZWFkIG9mCj4g
YW4gaW1wcmVjaXNlIGJwcCB2YWx1ZT8KClRoZSAnZmxhZ3MnIHBhcmFtZXRlciBvZiB0aGUgJ3N0
cnVjdCBkcm1fbW9kZV9jcmVhdGVfZHVtYicgZG9lc24ndCBnZXRzCmluIHVzZWQgc28gZmFyLCBJ
IGd1ZXNzIHRoZSBzaXR1YXRpb24gd2lsbCBiZSBtdWNoIGJldHRlciBpZiBwYXNzaW5nIGEKY29y
cmVjdCBmb3VyY2MgY29kZSBmcm9tIHRoZSB1c2VyLXNwYWNlIHRvIGtlcm5lbCBpcyBhbGxvd2Vk
LgoKCj4gR3J7b2V0amUsZWV0aW5nfXMsCj4KPiAgICAgICAgICAgICAgICAgICAgICAgICAgR2Vl
cnQKPgotLSAKQmVzdCByZWdhcmRzLApTdWkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
