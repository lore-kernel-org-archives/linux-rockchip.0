Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 508B2CA6CB6
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 09:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQSHrc9MSUQhdR65S3r9INrBLJ53Qycd9ZdEQfkkHE4=; b=4MfAnX9GnnHdun
	h97wWRXhjpYxjwUVBNMVv/QZGvQiNoMihVvLFfyk1/uFEh4KtKST3H3OaQMwela4Oq84RaceG+6Dz
	9ReN/qTbbvqtlhM/7/YWYQLdYdlJ8t+YG654NIMFjj0QyHVbBdLdKO493p2/c5jkOfOfqg+JqpZLm
	5WKW3SeIoiOrOmPUgc2JH/5EGtexc8Y+DAYJMIP/KdfMJOBPoEDAvAz9ssU73Ab2t5/0nyvQJGioS
	/p31jILl3NGeG0BpM3hRP5vPZURHiPku0CAEySsujDpIEysoyf92JvsF1OAQIeaxfupBlwR2bkR7j
	jLEsNm2EG5re586Om6UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkewl-0000000DtVg-2Ena;
	Tue, 27 Jan 2026 09:01:15 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkewf-0000000DtV1-3Gr0;
	Tue, 27 Jan 2026 09:01:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1769504466;
	bh=noo9XsAcC7n3F4JCncujc4ESels/5xcyYpBpkJ9bFy0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=X+gIjFdNgCgMDfrS3icP5NKrOS9hVcQAijOwjnlOVaFJbTMXEuWg76e95TRg4cr3n
	 Qo1v90TEZ4mAtIdolCQ93aNR8Tiw1xJG2lXMwY2G4CvJe9GSxEcA53mJK0B61VHczz
	 UimmQLOiDqrBYcdh43olLdK9W1YCW1xX2okD+gj0I5EBqUnQiFE884Jqmh3g3I5Tsg
	 oQ/cH5uq7Q0TAeJf96DrFwzxkOT56ban2l0SblMUVbSPcqxdr3fmKi6xADdMsr0IFH
	 yEExYV37cf8rW2C1z3xjRz6r+MgSlwbv5qjAf7EMzfHz2ETwhW2I6mrge9m+IrpxYI
	 nz4UnXHGvmcqQ==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 198F317E1276;
	Tue, 27 Jan 2026 10:01:06 +0100 (CET)
Message-ID: <e5177fe1-2ee1-465e-809d-92233efa2095@collabora.com>
Date: Tue, 27 Jan 2026 11:01:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] drm: Add CRTC background color property
To: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>,
 Haneen Mohammed <hamohammed.sa@gmail.com>,
 Melissa Wen <melissa.srw@gmail.com>
Cc: Robert Mader <robert.mader@collabora.com>, kernel@collabora.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Matt Roper <matthew.d.roper@intel.com>
References: <20251219-rk3588-bgcolor-v4-0-2ff1127ea757@collabora.com>
 <20251219-rk3588-bgcolor-v4-2-2ff1127ea757@collabora.com>
 <1425ed35a21bcd9633524d4fc747b71a17068363.camel@collabora.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <1425ed35a21bcd9633524d4fc747b71a17068363.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_010110_024007_06B92E54 
X-CRM114-Status: GOOD (  13.60  )
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

T24gMS8yNi8yNiA4OjIzIFBNLCBOw61jb2xhcyBGLiBSLiBBLiBQcmFkbyB3cm90ZToKPiBPbiBG
cmksIDIwMjUtMTItMTkgYXQgMjM6NDYgKzAyMDAsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90ZToK
Pj4gU29tZSBkaXNwbGF5IGNvbnRyb2xsZXJzIGNhbiBiZSBoYXJkd2FyZSBwcm9ncmFtbWVkIHRv
IHNob3cgbm9uLWJsYWNrCj4+IGNvbG9ycyBmb3IgcGl4ZWxzIHRoYXQgYXJlIGVpdGhlciBub3Qg
Y292ZXJlZCBieSBhbnkgcGxhbmUgb3IgYXJlCj4+IGV4cG9zZWQgdGhyb3VnaCB0cmFuc3BhcmVu
dCByZWdpb25zIG9mIGhpZ2hlciBwbGFuZXMuICBUaGlzIGZlYXR1cmUKPj4gY2FuCj4+IGhlbHAg
cmVkdWNlIG1lbW9yeSBiYW5kd2lkdGggdXNhZ2UsIGUuZy4gaW4gY29tcG9zaXRvcnMgbWFuYWdp
bmcgYSBVSQo+PiB3aXRoIGEgc29saWQgYmFja2dyb3VuZCBjb2xvciB3aGlsZSB1c2luZyBzbWFs
bGVyIHBsYW5lcyB0byByZW5kZXIKPj4gdGhlCj4+IHJlbWFpbmluZyBjb250ZW50Lgo+Pgo+PiBU
byBzdXBwb3J0IHRoaXMgY2FwYWJpbGl0eSwgaW50cm9kdWNlIHRoZSBCQUNLR1JPVU5EX0NPTE9S
IHN0YW5kYXJkCj4+IERSTQo+PiBtb2RlIHByb3BlcnR5LCB3aGljaCBjYW4gYmUgYXR0YWNoZWQg
dG8gYSBDUlRDIHRocm91Z2ggdGhlCj4+IGRybV9jcnRjX2F0dGFjaF9iYWNrZ3JvdW5kX2NvbG9y
X3Byb3BlcnR5KCkgaGVscGVyIGZ1bmN0aW9uLgo+Pgo+PiBBZGRpdGlvbmFsbHksIGRlZmluZSBh
IDY0LWJpdCBBUkdCIGZvcm1hdCB2YWx1ZSB0byBiZSBidWlsdCB3aXRoIHRoZQo+PiBoZWxwIG9m
IGEgY291cGxlIG9mIGRlZGljYXRlZCBEUk1fQVJHQjY0X1BSRVAqKCkgaGVscGVycy4gIEluZGl2
aWR1YWwKPj4gY29sb3IgY29tcG9uZW50cyBjYW4gYmUgZXh0cmFjdGVkIHdpdGggZGVzaXJlZCBw
cmVjaXNpb24gdXNpbmcgdGhlCj4+IGNvcnJlc3BvbmRpbmcgRFJNX0FSR0I2NF9HRVQqKCkgbWFj
cm9zLgo+Pgo+PiBDby1kZXZlbG9wZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBp
bnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBp
bnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4u
Y2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2RybV9h
dG9taWNfc3RhdGVfaGVscGVyLmMgfCAgMSArCj4+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21p
Y191YXBpLmMgICAgICAgICB8ICA0ICsrCj4+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2JsZW5kLmMg
ICAgICAgICAgICAgICB8IDM5ICsrKysrKysrKysrKysrKystLQo+PiAgZHJpdmVycy9ncHUvZHJt
L2RybV9tb2RlX2NvbmZpZy5jICAgICAgICAgfCAgNiArKysKPj4gIGluY2x1ZGUvZHJtL2RybV9i
bGVuZC5oICAgICAgICAgICAgICAgICAgIHwgIDQgKy0KPj4gIGluY2x1ZGUvZHJtL2RybV9jcnRj
LmggICAgICAgICAgICAgICAgICAgIHwgMTIgKysrKysrCj4+ICBpbmNsdWRlL2RybS9kcm1fbW9k
ZV9jb25maWcuaCAgICAgICAgICAgICB8ICA1ICsrKwo+PiAgaW5jbHVkZS91YXBpL2RybS9kcm1f
bW9kZS5oICAgICAgICAgICAgICAgfCA2Nwo+PiArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrCj4+ICA4IGZpbGVzIGNoYW5nZWQsIDEzMyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQo+IAo+IFlvdSBzaG91bGQgYWxzbyBhZGQgYSBkdW1wIGZvciB0aGlzIHByb3BlcnR5IGluCj4g
ZHJtX2F0b21pY19jcnRjX3ByaW50X3N0YXRlKCkuCgpUaGlzIGFuZCBhbGwgeW91ciBvdGhlciBj
b21tZW50cyBoYXZlIGJlZW4gYWRkcmVzc2VkIGluIHY1IFsxXS4KCiQgZ3JlcCBiYWNrZ3JvdW5k
X2NvbG9yIC1CMTMgL3N5cy9rZXJuZWwvZGVidWcvZHJpL2Rpc3BsYXktc3Vic3lzdGVtL3N0YXRl
CmNydGNbODJdOiB2aWRlb19wb3J0MAoJZW5hYmxlPTEKCWFjdGl2ZT0xCglzZWxmX3JlZnJlc2hf
YWN0aXZlPTAKCXBsYW5lc19jaGFuZ2VkPTEKCW1vZGVfY2hhbmdlZD0wCglhY3RpdmVfY2hhbmdl
ZD0wCgljb25uZWN0b3JzX2NoYW5nZWQ9MAoJY29sb3JfbWdtdF9jaGFuZ2VkPTAKCXBsYW5lX21h
c2s9MQoJY29ubmVjdG9yX21hc2s9MQoJZW5jb2Rlcl9tYXNrPTEKCW1vZGU6ICIzODQweDIxNjAi
OiA2MCA1OTQwMDAgMzg0MCA0MDE2IDQxMDQgNDQwMCAyMTYwIDIxNjggMjE3OCAyMjUwIDB4NDgg
MHg5CgliYWNrZ3JvdW5kX2NvbG9yPWZmZmYwMDAwMDAwMDAwMDAKClRoYW5rcywKQ3Jpc3RpYW4K
ClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjAxMjctcmszNTg4LWJnY29sb3It
djUtMC1iMjVhYTg2MTMyMTFAY29sbGFib3JhLmNvbS8KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
