Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC80FC44515
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 18:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elbdwEDhVYi4UWE7E+TJFF/pK9SaD+QwPybUK8J0FkE=; b=cttTV06hMiyCbI
	/mForK2kjMGyKzjXvUgslRYYFkx1v5EOR18HzgrUHA68lfMOSGRfW+HvXuBZpQTQ+43XGQX/Zkd77
	wi1BR/4kDDMMn3e+zHko2lBkJKsypz+2mMnPUxteTT2pR0y6r4HONKLG3OznLqv7PWzmPRuQvoQIH
	WVPVnHhKmq4iTsbnDVi0j5E7rk8/Tnr46YuSxQC4aFMAFiGXuYtln2K0yhXrAEeXl/ByvIDBPqb+k
	WL6M+UJAuIv8a5PCgBorTCP7oRXd41FCKwQ6tfdsyVvC0tNSzJiXm7E3pYqx1auQq6+KpQpDTRyj5
	xLSMwPOwTo9fof108MTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQvf-00000000P8F-3wwb;
	Thu, 16 Jul 2026 18:35:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQvd-00000000P6Y-0bSb;
	Thu, 16 Jul 2026 18:35:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=CBtsWFuTDIg8IgjUhvZKzlGaiQ5mUGATekYrAmZco2A=; b=bHTiI4AuiFVT/lUiAEyL+dLyiO
	m7Y/rR1V0NP3iudbLx2AwYJ8g9Y1pdeTx3FjP63JHwB57cYyXFKIHZnEZu/eY36AsmHuumzxS0os8
	PXppavuiY0OX3jfZjXFUw4uvFlIQpvDx3k2WzSvWtSnXc84CEDxnCNY82ILl2CWp1zHYvU8BvXO54
	Ag39vN59yZ56ibhHr/TrxGKxFWSi0Ie6HfVf3K80J3sWmuI+muf/RqYvHFcO0z45rV+sbo1EfuEJh
	oXMheo6QY8HHbNrvxJH+qcsNRsJSxqdv8NadWJXMJIC5E5SiYXGnopyqiU0KV5zM3VSiL21RRN5ay
	WoOBqWCg==;
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Jiaxing Hu <gahing@gahingwoo.com>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jiaxing Hu <gahing@gahingwoo.com>
Subject: Re: [PATCH v3 0/2] arm64: dts: rockchip: Add ArmSoM CM5 and CM5-IO
Date: Thu, 16 Jul 2026 20:35:21 +0200
Message-ID: <40552860.10thIPus4b@phil>
In-Reply-To: <20260716095101.2498464-1-gahing@gahingwoo.com>
References: <20260716095101.2498464-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_113525_182592_FEC9F11C 
X-CRM114-Status: GOOD (  21.51  )
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

QW0gRG9ubmVyc3RhZywgMTYuIEp1bGkgMjAyNiwgMTE6NTA6NTkgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBKaWF4aW5nIEh1Ogo+IEFkZCBtYWlubGluZSBzdXBwb3J0IGZv
ciB0aGUgQXJtU29NIENNNSwgYW4gUkszNTc2IGNvbXB1dGUgbW9kdWxlLCBhbmQKPiBpdHMgQ001
LUlPIGNhcnJpZXIgYm9hcmQuCj4gCj4gUGF0Y2ggMSBhZGRzIHRoZSBiaW5kaW5nLCBwYXRjaCAy
IHRoZSBtb2R1bGUgZHRzaSBhbmQgdGhlIGNhcnJpZXIgZHRzLgo+IAo+IFRoZSBvbi1tb2R1bGUg
WVQ4NTMxIFBIWSBoYXMgbm8gY3J5c3RhbCBhbmQgbmVlZHMgdGhlIFNvQyAyNSBNSHoKPiByZWZl
cmVuY2UgY2xvY2sgKGNsa19tYWNfcmVmb3V0KS4gVW5nYXRpbmcgaXQgZm9yIFJHTUlJIG5lZWRz
IGEgc21hbGwKPiBkd21hYy1yayBjaGFuZ2Ugc2VudCBzZXBhcmF0ZWx5IHRvIG5ldGRldiBbMV07
IHRoZSBjbG9jayBpcyBvcHRpb25hbCBzbwo+IHRoaXMgRFRTIGFwcGxpZXMgd2l0aG91dCBpdC4K
PiAKPiBUZXN0ZWQgb24gYSBDTTUtSU86IHRoZSBZVDg1MzEgaXMgcHJvYmVkIGJ5IHRoZSBtb3Rv
cmNvbW0gZHJpdmVyIGFuZCB0aGUKPiBsaW5rIGNvbWVzIHVwIGF0IDEwMDAgTWJpdC9zOyBSSzgw
NiwgSFlNODU2MywgZU1NQywgbWljcm9TRCwgdGhlIFVTQjMKPiBodWIgYW5kIHRoZSBQQ0llIHJv
b3QgY29tcGxleCBhbGwgcHJvYmUuIGR0YnNfY2hlY2sgaXMgY2xlYW4uCj4gCj4gQ2hhbmdlcyBp
biB2MzoKPiAtIFJlbW92ZSB0aGUgRVM4Mzg4IGNvZGVjIGZyb20gdGhlIGZpbGUgaGVhZGVyIGFu
ZCB0aGUgaTJjMCBibG9jawo+ICAgY29tbWVudC4gVGhlIG5vZGUgd2FzIGRyb3BwZWQgaW4gdjIg
YnV0IHRoZSBjb21tZW50cyBzdGlsbCBuYW1lZCBpdAo+ICAgKHNhc2hpa28tYm90IG9uIHYyKS4K
PiAtIFVzZSBncGlvcyBpbnN0ZWFkIG9mIGdwaW8gaW4gdGhlIHZjY18zdjNfcGNpZSBmaXhlZCBy
ZWd1bGF0b3IsIHRvCj4gICBtYXRjaCB0aGUgb3RoZXIgcmVndWxhdG9ycyBpbiB0aGUgZmlsZS4K
PiAtIFBpY2sgdXAgS3J6eXN6dG9mJ3MgQWNrZWQtYnkgb24gcGF0Y2ggMS4KPiAtIFRoZSBvdGhl
ciB2MiByZXZpZXcgbm90ZXMgbmVlZCBubyBjaGFuZ2U6IHRoZSBhbHdheXMtb24gcGx1cwo+ICAg
b2ZmLWluLXN1c3BlbmQgc3RhdGUgb24gdmRkX2NwdV9saXRfczAgYW5kIHZkZF9ncHVfczAgbWF0
Y2hlcyBldmVyeQo+ICAgcmszNTc2IGJvYXJkIHVwc3RyZWFtLCBhbmQgdGhlIGVNTUMgZnVsbC1w
d3ItY3ljbGUtaW4tc3VzcGVuZCB3aXRoIG5vCj4gICB2bW1jLXN1cHBseSBpcyB0aGUgc2FtZSBw
YXR0ZXJuIHVzZWQgYWNyb3NzIHJrMzU3Ni4gZHRic19jaGVjayBzdGF5cwo+ICAgY2xlYW4uCj4g
Cj4gQ2hhbmdlcyBpbiB2MjoKPiAtIFR5cGUtQyBEUCBhbHQtbW9kZTogbmFtZSB0aGUgYWx0bW9k
ZXMgY2hpbGQgImRpc3BsYXlwb3J0IiBhbmQgbWFrZQo+ICAgc3ZpZCBhIC9iaXRzLyAxNiB2YWx1
ZTsgZHJvcCB0aGUgdW5kb2N1bWVudGVkIHN2aWQgZnJvbSAmdXNiZHBfcGh5IGFuZAo+ICAgYWRk
IHRoZSBtaXNzaW5nIG1vZGUtc3dpdGNoLgo+IC0gTW92ZSB0aGUgRlVTQjMwMiByb2xlLXN3aXRj
aCBlbmRwb2ludCBpbnRvIHRoZSBjb25uZWN0b3IncyBwb3J0czsgdGhlCj4gICBmdXNiMzAyIGJp
bmRpbmcgZG9lcyBub3QgYWxsb3cgYSBwb3J0IG9uIHRoZSBkZXZpY2Ugbm9kZS4gUmVuYW1lIHRo
ZQo+ICAgbm9kZSB0byB1c2ItdHlwZWNAMjIuCj4gLSBEcm9wIHRoZSBFUzgzODggbm9kZSAoZGlz
YWJsZWQsIHdyb25nIGNvbXBhdGlibGUpIGFuZCB0aGUgdW5yZWZlcmVuY2VkCj4gICBnbWFjMF9y
c3QsIGJ0X3JlZ19vbiBhbmQgd2lmaV9ob3N0X3dha2VfaXJxIHBpbmN0cmxzLgo+IC0gUmVuYW1l
IHRoZSB3aWZpLXBvd2VyZW4tZ3BpbyBwaW5jdHJsIG5vZGUsIGl0IGNvbGxpZGVkIHdpdGgKPiAg
IGdwaW8tY29uc3VtZXIueWFtbC4KPiAtIERlc2NyaWJlIHRoZSBQSFkgcmVzZXQgYXQgdGhlIE1E
SU8gYnVzIGxldmVsIHJhdGhlciB0aGFuIHdpdGggdGhlCj4gICBkZXByZWNhdGVkIHNucHMscmVz
ZXQtZ3Bpb3M7IGEgcGVyLVBIWSByZXNldC1ncGlvcyBpcyBhcHBsaWVkIG9ubHkKPiAgIGFmdGVy
IHRoZSBJRCBzY2FuLCB0b28gbGF0ZSBmb3IgYSBQSFkgdGhhdCBib290cyBoZWxkIGluIHJlc2V0
Lgo+IAo+IFsxXSBuZXQ6IHN0bW1hYzogZHdtYWMtcms6IGVuYWJsZSB0aGUgcmVmZXJlbmNlIGNs
b2NrIGZvciBvdXRwdXQgbW9kZQo+IAo+IEppYXhpbmcgSHUgKDIpOgo+ICAgZHQtYmluZGluZ3M6
IGFybTogcm9ja2NoaXA6IEFkZCBBcm1Tb00gQ001IGFuZCBDTTUtSU8KPiAgIGFybTY0OiBkdHM6
IHJvY2tjaGlwOiBBZGQgQXJtU29NIENNNSBhbmQgQ001LUlPCgpBcyBSb2Igc2FpZCBpbiB0aGUg
djIgYmluZGluZ3MsIHBsZWFzZSBzbG93IGRvd24uCkFkZGl0aW9uYWxseSB0aGF0IGlzIHRoZSAy
bmQgInYzIiB0b2RheT8KCklmIHNvbWV0aGluZyBpcyBhIHJlc2VuZCAuLi4gcGxlYXNlIG1hcmsg
aXQgYXMgc3VjaCwgaS5lLgpbUEFUQ0ggUkVTRU5UIHgveV0gLi4uIGFuZCBwcm92aWRlIGFuIGV4
cGxhbmF0aW9uIHdoYXQgd2VudAp3cm9uZyBpbiB0aGUgY292ZXItbGV0dGVyLgoKClRoYW5rcwpI
ZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
