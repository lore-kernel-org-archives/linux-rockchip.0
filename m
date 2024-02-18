Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30129C48BF6
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Feb 2024 15:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bxUDbDCEITahmXGN6wbEaPbmaV+ircBOzfC8ANacpdc=; b=127+tvlA0NWDsi
	upuAy1XF6z1m7zVBZ0ZOUdovWFRELQckexWUax4lY3j3mY5ztEg3+hz/aJLZu8GNpAlAbBaq+UGSX
	wWlux45Oi4sEW8sGWum93YwZsjEZI8PKLLvw2JCpxwK/LJEL2mxMRIIA9IRFWdU8bNmWyEkdDqumO
	+ns7xYoI9/IgwexEiCVwiszeNIHr18M8fnmWlo0WrI9kikT7Ly+Frm0hfOSObUk/MaPfWQnBhjeFV
	eZ/uPup7UCl18EHeocrk1VlhJwtK16tjvrnmm4zFcyUO1dl1yiJJ7xPUApT4vd0p2BlueJBctcVRc
	TnF59ecvH+kTf3BYmsGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbiv3-00000007w19-1N7i;
	Sun, 18 Feb 2024 15:17:29 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbiv0-00000007w0L-0G1D;
	Sun, 18 Feb 2024 15:17:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1708269442; bh=vgYyrkfy4NvMffwZnA9GbIjwpDwWVz0QVFbKOYEwfJQ=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=betw1GS2RwS4OjostOe9MAyGZAzRsiDV36jcyw9WQ9jAB+MQ+pbGdaHEsM1Irngqh
	 uzGfdq/2mOTdrV9ZRyr5tGZyEWVR5dvQAJzZ6q+1hEqP+RbIfet/pSkFiiTn3cwCLk
	 p7GFEg35DB2UFv/USy8i6Y0HfbeLIg/DKhNUM5iI=
Date: Sun, 18 Feb 2024 16:17:22 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	"open list:DRM DRIVERS FOR ROCKCHIP" <dri-devel@lists.freedesktop.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] drm: rockchip: Don't require MIPI DSI device when it's
 used for ISP
Message-ID: <bsc3lpdxvhy3ss2uja4do3jwvj43zbs7zhx4bzs2tryrakn7be@pt2qsyvryk73>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Andy Yan <andy.yan@rock-chips.com>, linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	"open list:DRM DRIVERS FOR ROCKCHIP" <dri-devel@lists.freedesktop.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20240217183941.1752463-1-megi@xff.cz>
 <4c66c084-5af6-43fb-a256-4746b2e00192@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c66c084-5af6-43fb-a256-4746b2e00192@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_071726_590839_BC13C4D2 
X-CRM114-Status: GOOD (  33.92  )
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

SGkgQW5keSwKCk9uIFN1biwgRmViIDE4LCAyMDI0IGF0IDA3OjE0OjU2UE0gKzA4MDAsIEFuZHkg
WWFuIHdyb3RlOgo+IEhpLAo+IAo+IE9uIDIvMTgvMjQgMDI6MzksIE9uZMWZZWogSmlybWFuIHdy
b3RlOgo+ID4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4gPiAKPiA+IE9uIFJL
MzM5OSBvbmUgTUlQSSBEU0kgZGV2aWNlIGNhbiBiZSBhbHRlcm5hdGl2ZWx5IHVzZWQgd2l0aCB0
aGUgSVNQMSwKPiA+IHRvIHByb3ZpZGUgUlggRFBIWS4gV2hlbiB0aGlzIGlzIHRoZSBjYXNlIChJ
U1AxIGlzIGVuYWJsZWQgaW4gZGV2aWNlCj4gPiB0cmVlKSwgcHJvYmUgc3VjY2VzcyBvZiBEUk0g
aXMgdGllZCB0byBwcm9iZSBzdWNjZXNzIG9mIElTUDEgY29ubmVjdGVkCj4gPiBjYW1lcmEgc2Vu
c29yLiBUaGlzIGNhbiBmYWlsIGlmIHRoZSB1c2VyIGlzIGFibGUgdG8ga2lsbHN3aXRjaCB0aGUg
Y2FtZXJhCj4gPiBwb3dlciwgbGlrZSBvbiBQaW5lcGhvbmUgUHJvLgo+ID4gCj4gPiBEZXRlY3Qg
dXNlIG9mIE1JUEkgRFNJIGNvbnRyb2xsZXIgYnkgSVNQLCBhbmQgZG9uJ3QgaW5jbHVkZSBpdCBp
bgo+ID4gY29tcG9uZW50IG1hdGNoIGxpc3QgaW4gdGhhdCBjYXNlLgo+ID4gCj4gCj4gSXNuJ3Qg
dGhpcyBzdXBwb3NlZCB0byBiZSB0YWtlbiBjYXJlIG9mIHdpdGhpbiB0aGUgZHRzPwo+IFNpbmNl
IERQSFkxIHNob3VsZCBleGNsdXNpdmVseSB1c2VkIGJ5IE1JUEkgRFNJMSBhbmQgSVNQMSwgdGhl
biBpZgo+IGEgZGV2aWNlIHdhbnQgdG8gdXNlIElTUDEsIHRoZSBEU0kxIHNob3VsZCBiZSBkaXNh
YmxlZCBpbiBkdHMuCgpEU0kxIGNhbid0IGJlIGRpc2FibGVkLCBiZWNhdXNlIGl0IHByb3ZpZGVz
IFBIWSBkZXZpY2UgZm9yIElTUDEgaW4gdGhpcwpzY2VuYXJpby4KClRoZSBwcm9ibGVtIGlzIHRo
YXQgaW4gdGhpcyBzY2VuYXJpbyBEUk0ga2VlcHMgd2FpdGluZyBmb3IgRFNJMSBkZXZpY2UsCmRl
c3BpdGUgaXQganVzdCBiZWluZyB1c2VkIGZvciBQSFkgZm9yIElTUDEgYW5kIG5vdCBhcyBhIGNv
bXBvbmVudCBmb3IKcm9ja2NoaXAgRFJNIGRyaXZlci4KClNlZToKCiAgICAgICAgaXNwMTogaXNw
MUBmZjkyMDAwMCB7CiAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5
OS1jaWYtaXNwIjsKICAgICAgICAgICAgICAgIHJlZyA9IDwweDAgMHhmZjkyMDAwMCAweDAgMHg0
MDAwPjsKICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA0NCBJUlFfVFlQRV9M
RVZFTF9ISUdIIDA+OwogICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjcnUgU0NMS19JU1AxPiwK
ICAgICAgICAgICAgICAgICAgICAgICAgIDwmY3J1IEFDTEtfSVNQMV9XUkFQUEVSPiwKICAgICAg
ICAgICAgICAgICAgICAgICAgIDwmY3J1IEhDTEtfSVNQMV9XUkFQUEVSPjsKICAgICAgICAgICAg
ICAgIGNsb2NrLW5hbWVzID0gImlzcCIsICJhY2xrIiwgImhjbGsiOwogICAgICAgICAgICAgICAg
aW9tbXVzID0gPCZpc3AxX21tdT47CiAgICAgICAgICAgICAgICBwaHlzID0gPCZtaXBpX2RzaTE+
OyAgPC0tLS0tLS0tLSAKICAgICAgICAgICAgICAgIHBoeS1uYW1lcyA9ICJkcGh5IjsKICAgICAg
ICAgICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzM5OV9QRF9JU1AxPjsKICAgICAg
ICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7CgpJZiBtaXBpX2RzaTEgaXMgZGlzYWJsZWQs
IGlzcDEgd2lsbCBuZXZlciBwcm9iZS4KCkl0J3MgYSBjb25zZXF1ZW5jZSBvZiB0aGlzIHNwZWNp
YWwgZHVhbCB1c2Ugb2YgbWlwaV9kc2kxLgoKa2luZCByZWdhcmRzLAoJby4KCj4gPiBTaWduZWQt
b2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiA+IC0tLQo+ID4gICBkcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jIHwgNDcgKysrKysrKysrKysrKysr
KysrKysrCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jIGIv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYwo+ID4gaW5kZXggYWI1
NWQ3MTMyNTUwLi5mNDdkZTk0YWQ1NzYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCj4gPiBAQCAtMzU0LDYgKzM1NCw0MyBAQCBzdGF0aWMg
dm9pZCByb2NrY2hpcF9kcm1fbWF0Y2hfcmVtb3ZlKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+ICAg
CQlkZXZpY2VfbGlua19kZWwobGluayk7Cj4gPiAgIH0KPiA+ICsvKgo+ID4gKyAqIENoZWNrIGlm
IElTUCBibG9jayBsaW5rZWQgdG8gYSBtaXBpLWRzaSBkZXZpY2UgdmlhIHBoeXMgcGhhbmRsZSBp
cwo+ID4gKyAqIGVuYWJsZWQgaW4gZGV2aWNlIHRyZWUuCj4gPiArICovCj4gPiArc3RhdGljIGJv
b2wgcm9ja2NoaXBfZHJtX2lzX21pcGkxX2FuZF91c2VkX2J5X2lzcChzdHJ1Y3QgZGV2aWNlICpk
ZXYpCj4gPiArewo+ID4gKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gTlVMTCwgKnBoeV9ucDsK
PiA+ICsKPiA+ICsJaWYgKCFvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShkZXYtPm9mX25vZGUsICJy
b2NrY2hpcCxyazMzOTktbWlwaS1kc2kiKSkKPiA+ICsJCXJldHVybiBmYWxzZTsKPiA+ICsKPiA+
ICsJd2hpbGUgKHRydWUpIHsKPiA+ICsJCW5wID0gb2ZfZmluZF9jb21wYXRpYmxlX25vZGUobnAs
IE5VTEwsICJyb2NrY2hpcCxyazMzOTktY2lmLWlzcCIpOwo+ID4gKwkJaWYgKCFucCkKPiA+ICsJ
CQlicmVhazsKPiA+ICsKPiA+ICsJCWlmICghb2ZfZGV2aWNlX2lzX2F2YWlsYWJsZShucCkpIHsK
PiA+ICsJCQlvZl9ub2RlX3B1dChucCk7Cj4gPiArCQkJY29udGludWU7Cj4gPiArCQl9Cj4gPiAr
Cj4gPiArCQlwaHlfbnAgPSBvZl9wYXJzZV9waGFuZGxlKG5wLCAicGh5cyIsIDApOwo+ID4gKwkJ
aWYgKCFwaHlfbnApIHsKPiA+ICsJCQlvZl9ub2RlX3B1dChucCk7Cj4gPiArCQkJY29udGludWU7
Cj4gPiArCQl9Cj4gPiArCj4gPiArCQlvZl9ub2RlX3B1dChwaHlfbnApOwo+ID4gKwkJb2Zfbm9k
ZV9wdXQobnApOwo+ID4gKwo+ID4gKwkJaWYgKHBoeV9ucCA9PSBkZXYtPm9mX25vZGUpCj4gPiAr
CQkJcmV0dXJuIHRydWU7Cj4gPiArCX0KPiA+ICsKPiA+ICsJcmV0dXJuIGZhbHNlOwo+ID4gK30K
PiA+ICsKPiA+ICAgc3RhdGljIHN0cnVjdCBjb21wb25lbnRfbWF0Y2ggKnJvY2tjaGlwX2RybV9t
YXRjaF9hZGQoc3RydWN0IGRldmljZSAqZGV2KQo+ID4gICB7Cj4gPiAgIAlzdHJ1Y3QgY29tcG9u
ZW50X21hdGNoICptYXRjaCA9IE5VTEw7Cj4gPiBAQCAtMzcxLDYgKzQwOCwxNiBAQCBzdGF0aWMg
c3RydWN0IGNvbXBvbmVudF9tYXRjaCAqcm9ja2NoaXBfZHJtX21hdGNoX2FkZChzdHJ1Y3QgZGV2
aWNlICpkZXYpCj4gPiAgIAkJCWlmICghZCkKPiA+ICAgCQkJCWJyZWFrOwo+ID4gKwkJCS8qCj4g
PiArCQkJICogSWYgbWlwaTEgaXMgY29ubmVjdGVkIHRvIElTUCwgd2UgZG9uJ3Qgd2FudCB0byB3
YWl0IGZvciBtaXBpMSBjb21wb25lbnQsCj4gPiArCQkJICogYmVjYXVzZSBpdCB3aWxsIG5vdCBi
ZSB1c2VkIGJ5IERSTSBhbnl3YXksIHRvIG5vdCB0aWUgc3VjY2VzcyBvZiBjYW1lcmEKPiA+ICsJ
CQkgKiBkcml2ZXIgcHJvYmUgdG8gZGlzcGxheSBwaXBlbGluZSBpbml0aWFsaXphdGlvbi4KPiA+
ICsJCQkgKi8KPiA+ICsJCQlpZiAocm9ja2NoaXBfZHJtX2lzX21pcGkxX2FuZF91c2VkX2J5X2lz
cChkKSkgewo+ID4gKwkJCQlkZXZfaW5mbyhkLCAidXNlZCBieSBJU1AxLCBza2lwcGluZyBmcm9t
IERSTVxuIik7Cj4gPiArCQkJCWNvbnRpbnVlOwo+ID4gKwkJCX0KPiA+ICsKPiA+ICAgCQkJZGV2
aWNlX2xpbmtfYWRkKGRldiwgZCwgRExfRkxBR19TVEFURUxFU1MpOwo+ID4gICAJCQljb21wb25l
bnRfbWF0Y2hfYWRkKGRldiwgJm1hdGNoLCBjb21wb25lbnRfY29tcGFyZV9kZXYsIGQpOwo+ID4g
ICAJCX0gd2hpbGUgKHRydWUpOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
