Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43AA5CCD195
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Oct 2025 07:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NYWHY599F+RbN1xtZeL3hzOTSEmdVhj0Xi/SiHzWdc=; b=QqtulGKBK/b5dr
	+gUdg0S0U382NfYhwzfAR4BADhnhuYUyyiRyueiLVfOL4qhiK6d3MhAVYWQAKwIyVlgEN4OBwGTDq
	MDreeItv+F+X3Mk0NF6GbzRHnux6g0+P3jR3RGdmfI4STQYXKkhYBDX+geF5cLswfQ0JdWw3Je+Kb
	zodoLivHFhAa2tlzgL46jiQwyGk9/ytHDmhIDcW78BiV3KiPGQgDEZCxaIly8GcojE51pt1tjbNl2
	SREkR1OIVap0LPp+Bk0Ogf2NBS4dWVZZAjKdn1imbAfVs5K3HMsJFAjpMuuEIOTo+fOKDopc4lXQu
	+TyIwTusSXC6UobQlSlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9ewA-00000006y3d-3ipu;
	Fri, 17 Oct 2025 07:31:42 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9ew7-00000006y1h-10hR;
	Fri, 17 Oct 2025 07:31:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760686296;
	bh=+BMP92K4asKFaGVxNw7U7Zl5UFujoFolv1nhfrtKbto=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WLaKsOv+PriMSUKniOrtmEXJaysfC6roB605EvkuYZgZ5pOgtRwb+klzkqa3zLy+3
	 TziAC0z7uf7vMRQkkUdOgda1bI6JuvZkfnjGPNTDaJ4Ey8bPBDjhJ+H7qY4UCKvAOd
	 11GI3+ZY+7NHLI7bkbomSD675uSgk5FnOxSmPX5EW5zNcIRKWb+8X0kI9t6LIQ7Qpt
	 w/HCWZHSP9yOLVJJP1to35UeXykuyZiBYpNLnm9UWk6LjOTg7bLwPGG9FtWCuy3Uhx
	 gtk5SbONRX3EalYkRgfIVhqafdHuNcxJcnoQEyRdWVBA4yOxYzDi+FSvC4aW/NcmHD
	 Nz3MB0AbQjHkg==
Received: from [192.168.50.250] (unknown [171.76.80.157])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B11C217E0FAD;
	Fri, 17 Oct 2025 09:31:32 +0200 (CEST)
Message-ID: <6769d162-ab1c-4427-a0be-22c0b62673c3@collabora.com>
Date: Fri, 17 Oct 2025 13:01:24 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/7] drm/ci: disable apq8016 and apq8096 bare-metal
 jobs
To: rob.clark@oss.qualcomm.com
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
 helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch,
 robdclark@gmail.com, guilherme.gallo@collabora.com,
 sergi.blanch.torne@collabora.com, valentine.burley@collabora.com,
 lumag@kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250718105407.32878-1-vignesh.raman@collabora.com>
 <20250718105407.32878-2-vignesh.raman@collabora.com>
 <CACSVV029ueL_4Y5irmmOwy_9QDQGqDe_1wCGUe22FdefQiNjkw@mail.gmail.com>
Content-Language: en-US
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <CACSVV029ueL_4Y5irmmOwy_9QDQGqDe_1wCGUe22FdefQiNjkw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_003139_447973_DA337C66 
X-CRM114-Status: GOOD (  11.92  )
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

SGkgUm9iLAoKT24gMTYvMTAvMjUgMjA6MjIsIFJvYiBDbGFyayB3cm90ZToKPiBPbiBGcmksIEp1
bCAxOCwgMjAyNSBhdCAzOjU04oCvQU0gVmlnbmVzaCBSYW1hbgo+IDx2aWduZXNoLnJhbWFuQGNv
bGxhYm9yYS5jb20+IHdyb3RlOgo+Pgo+PiBUaGVzZSBkZXZpY2VzIGFyZSBiZWluZyBtb3ZlZCB0
byBMQVZBLiBUaGUgam9icyB3aWxsIGJlIGVuYWJsZWQgYW5kIHRoZQo+PiBqb2IgZGVmaW5pdGlv
bnMgd2lsbCBiZSB1cGRhdGVkIG9uY2UgdGhlIG1vdmUgaXMgY29tcGxldGUuCj4gCj4gZndpdywg
dGhlIHJ1bm5lcnMgYXJlIHVwIGFuZCBydW5uaW5nIGluIExBVkEgbm93CgpUaGFua3MuIEkgd2ls
bCBlbmFibGUgdGhlbSBhbmQgc2VuZCB2Mi4KClJlZ2FyZHMsClZpZ25lc2gKCj4gCj4gQlIsCj4g
LVIKPiAKPj4gU2lnbmVkLW9mZi1ieTogVmlnbmVzaCBSYW1hbiA8dmlnbmVzaC5yYW1hbkBjb2xs
YWJvcmEuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vY2kvdGVzdC55bWwgfCA2ICsr
KystLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vY2kvdGVzdC55bWwgYi9kcml2ZXJz
L2dwdS9kcm0vY2kvdGVzdC55bWwKPj4gaW5kZXggODExNDdlODZiZmQwLi41M2QxOWZmYWFmNjEg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9jaS90ZXN0LnltbAo+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vY2kvdGVzdC55bWwKPj4gQEAgLTE0OCw3ICsxNDgsOSBAQCBtc206c2M3MTgw
LXRyb2dkb3Ita2luZ29mdG93bjoKPj4gICAgICAgR1BVX1ZFUlNJT046ICR7REVWSUNFX1RZUEV9
Cj4+ICAgICAgIFJVTk5FUl9UQUc6IG1lc2EtY2kteDg2LTY0LWxhdmEtc2M3MTgwLXRyb2dkb3It
a2luZ29mdG93bgo+Pgo+PiAtbXNtOmFwcTgwMTY6Cj4+ICsjIEZJWE1FOiBEaXNhYmxlIHRoZSBi
YXJlLW1ldGFsIGpvYnMuIFRoZXNlIGRldmljZXMgYXJlIGJlaW5nIG1vdmVkIHRvIExBVkEuCj4+
ICsjIE9uY2UgdGhlIG1vdmUgaXMgY29tcGxldGUsIHVwZGF0ZSB0aGUgam9iIGRlZmluaXRpb25z
IGFjY29yZGluZ2x5Lgo+PiArLm1zbTphcHE4MDE2Ogo+PiAgICAgZXh0ZW5kczoKPj4gICAgICAg
LSAuYmFyZW1ldGFsLWlndC1hcm02NAo+PiAgICAgc3RhZ2U6IG1zbQo+PiBAQCAtMTY1LDcgKzE2
Nyw3IEBAIG1zbTphcHE4MDE2Ogo+PiAgICAgc2NyaXB0Ogo+PiAgICAgICAtIC4vaW5zdGFsbC9i
YXJlLW1ldGFsL2Zhc3Rib290LnNoIHx8IGV4aXQgJD8KPj4KPj4gLW1zbTphcHE4MDk2Ogo+PiAr
Lm1zbTphcHE4MDk2Ogo+PiAgICAgZXh0ZW5kczoKPj4gICAgICAgLSAuYmFyZW1ldGFsLWlndC1h
cm02NAo+PiAgICAgc3RhZ2U6IG1zbQo+PiAtLQo+PiAyLjQ3LjIKPj4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
