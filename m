Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97EA7C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 10:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:
	Cc:To:Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WPiqiqomiGT1WKQuZOHKu53on0KrS8JPgtcMeM/TS4=; b=ncYJn3UF+rOyPt
	rAIVq7cxhLFPoKi4FYHeoD3Ei890fYj2uT0Lb/AV8h1HtqUjAMeSacQg1ClNoM8JYpn4ZFkYGPCi9
	ssdjDP4YM+2NvmsDZAV2oEJlckqAXHuYnSlq1Kltys+atKCdUI9ihVaiJ23IbzX4EvHCR+eoAC7T7
	Gc4NSoyq58cXc0SZQTyOyIH7VYC58Z3nX6FNcBY6wCzM/+3Gfzv9EsAv9NIvQHPLIOiAM5C00jbd+
	msWGJZQrPNiXQuacmzq0xAyye0K8vbHea8G7WdfUmWGMTG6zV8rXON0c4fNKhpuO2CKBMi3pfXjqJ
	4HHJ+mBA0f7GjoRcJrOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1PMc-009x03-0J;
	Tue, 23 May 2023 10:35:34 +0000
Received: from wp530.webpack.hosteurope.de ([80.237.130.52])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1PMY-009wvi-1M
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 10:35:32 +0000
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
	by wp530.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	id 1q1PMI-0003Ci-MT; Tue, 23 May 2023 12:35:14 +0200
Message-ID: <0bef4bea-1404-061c-cbbf-e874302367f7@leemhuis.info>
Date: Tue, 23 May 2023 12:35:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2] media: verisilicon: Fix crash when probing encoder
Content-Language: en-US, de-DE
To: Diederik de Haas <didi.debian@cknow.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, m.szyprowski@samsung.com,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Linux kernel regressions list <regressions@lists.linux.dev>
References: <20230413104756.356695-1-benjamin.gaignard@collabora.com>
 <CAAEAJfBHOMpWT2E4w+Zu=f8QCg+YiDU_9gY4bpJSGBLMnC8B9A@mail.gmail.com>
 <403ea30e55a9667684cd1f8d2d3a641efda9976f.camel@collabora.com>
 <4995215.LvFx2qVVIh@bagend>
From: "Linux regression tracking #adding (Thorsten Leemhuis)"
 <regressions@leemhuis.info>
In-Reply-To: <4995215.LvFx2qVVIh@bagend>
X-bounce-key: webpack.hosteurope.de;regressions@leemhuis.info;1684838130;cedd8d98;
X-HE-SMSGID: 1q1PMI-0003Ci-MT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_033530_618254_D29F186D 
X-CRM114-Status: GOOD (  17.73  )
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
Reply-To: Linux regressions mailing list <regressions@lists.linux.dev>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

W0NDaW5nIHRoZSByZWdyZXNzaW9uIGxpc3QsIGFzIGl0IHNob3VsZCBiZSBpbiB0aGUgbG9vcCBm
b3IgcmVncmVzc2lvbnM6Cmh0dHBzOi8vZG9jcy5rZXJuZWwub3JnL2FkbWluLWd1aWRlL3JlcG9y
dGluZy1yZWdyZXNzaW9ucy5odG1sXQoKW1RMRFI6IEknbSBhZGRpbmcgdGhpcyByZXBvcnQgdG8g
dGhlIGxpc3Qgb2YgdHJhY2tlZCBMaW51eCBrZXJuZWwKcmVncmVzc2lvbnM7IHRoZSB0ZXh0IHlv
dSBmaW5kIGJlbG93IGlzIGJhc2VkIG9uIGEgZmV3IHRlbXBsYXRlcwpwYXJhZ3JhcGhzIHlvdSBt
aWdodCBoYXZlIGVuY291bnRlcmVkIGFscmVhZHkgaW4gc2ltaWxhciBmb3JtLgpTZWUgbGluayBp
biBmb290ZXIgaWYgdGhlc2UgbWFpbHMgYW5ub3kgeW91Ll0KCk9uIDIwLjA1LjIzIDAwOjM0LCBE
aWVkZXJpayBkZSBIYWFzIHdyb3RlOgo+IAo+IE9uIFRodXJzZGF5LCAxMyBBcHJpbCAyMDIzIDIx
OjUyOjUwIENFU1QgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPj4gTGUgamV1ZGkgMTMgYXZyaWwg
MjAyMyDDoCAxMDoxMCAtMDMwMCwgRXplcXVpZWwgR2FyY2lhIGEgw6ljcml0IDoKPiBbLi4uLl0K
PiAKPiBXaGVuIEkgYm9vdGVkIGludG8gbXkgNi40LXJjMSAoYnV0IGFsc28gcmMyKSBrZXJuZWwg
b24gbXkKPiBQaW5lNjQgUXVhcnR6NjQgTW9kZWwgQSwgSSBub3RpY2VkIGEgY3Jhc2ggd2hpY2gg
c2VlbXMgdGhlIHNhbWUgYXMKPiBhYm92ZSwgYnV0IEkgZGlkbid0IGhhdmUgc3VjaCBhIGNyYXNo
IHdpdGggbXkgNi4zIGtlcm5lbC4KPiBTZWFyY2hpbmcgZm9yICdoYW50cm8nIGxlZCBtZSB0byB0
aGlzIGNvbW1pdCBhcyB0aGUgbW9zdCBsaWtlbHkgY3VscHJpdAo+IGJ1dCB3aGVuIEkgYnVpbGQg
YSBuZXcgNi40LXJjWCBrZXJuZWwgd2l0aCB0aGlzIGNvbW1pdCByZXZlcnRlZCwKPiBJIHN0aWxs
IGhhZCB0aGlzIGNyYXNoLgo+IERvIHlvdSBoYXZlIHN1Z2dlc3Rpb25zIHdoaWNoIGNvbW1pdCB3
b3VsZCB0aGVuIGJlIHRoZSBsaWtlbHkgY3VscHJpdD8KPiBbLi4uXQoKVGhhbmtzIGZvciB0aGUg
cmVwb3J0LiBUbyBiZSBzdXJlIHRoZSBpc3N1ZSBkb2Vzbid0IGZhbGwgdGhyb3VnaCB0aGUKY3Jh
Y2tzIHVubm90aWNlZCwgSSdtIGFkZGluZyBpdCB0byByZWd6Ym90LCB0aGUgTGludXgga2VybmVs
IHJlZ3Jlc3Npb24KdHJhY2tpbmcgYm90OgoKI3JlZ3pib3QgXmludHJvZHVjZWQgZGI2ZjY4YjUx
ZTVjCiNyZWd6Ym90IHRpdGxlIG1lZGlhOiB2ZXJpc2lsaWNvbjogbnVsbCBwb2ludGVyIGRlcmVm
ZXJlbmNlIGluIHRyeV9mbXQKI3JlZ3pib3QgaWdub3JlLWFjdGl2aXR5CgpUaGlzIGlzbid0IGEg
cmVncmVzc2lvbj8gVGhpcyBpc3N1ZSBvciBhIGZpeCBmb3IgaXQgYXJlIGFscmVhZHkKZGlzY3Vz
c2VkIHNvbWV3aGVyZSBlbHNlPyBJdCB3YXMgZml4ZWQgYWxyZWFkeT8gWW91IHdhbnQgdG8gY2xh
cmlmeSB3aGVuCnRoZSByZWdyZXNzaW9uIHN0YXJ0ZWQgdG8gaGFwcGVuPyBPciBwb2ludCBvdXQg
SSBnb3QgdGhlIHRpdGxlIG9yCnNvbWV0aGluZyBlbHNlIHRvdGFsbHkgd3Jvbmc/IFRoZW4ganVz
dCByZXBseSBhbmQgdGVsbCBtZSAtLSBpZGVhbGx5CndoaWxlIGFsc28gdGVsbGluZyByZWd6Ym90
IGFib3V0IGl0LCBhcyBleHBsYWluZWQgYnkgdGhlIHBhZ2UgbGlzdGVkIGluCnRoZSBmb290ZXIg
b2YgdGhpcyBtYWlsLgoKRGV2ZWxvcGVyczogV2hlbiBmaXhpbmcgdGhlIGlzc3VlLCByZW1lbWJl
ciB0byBhZGQgJ0xpbms6JyB0YWdzIHBvaW50aW5nCnRvIHRoZSByZXBvcnQgKHRoZSBwYXJlbnQg
b2YgdGhpcyBtYWlsKS4gU2VlIHBhZ2UgbGlua2VkIGluIGZvb3RlciBmb3IKZGV0YWlscy4KCkNp
YW8sIFRob3JzdGVuICh3ZWFyaW5nIGhpcyAndGhlIExpbnV4IGtlcm5lbCdzIHJlZ3Jlc3Npb24g
dHJhY2tlcicgaGF0KQotLQpFdmVyeXRoaW5nIHlvdSB3YW5uYSBrbm93IGFib3V0IExpbnV4IGtl
cm5lbCByZWdyZXNzaW9uIHRyYWNraW5nOgpodHRwczovL2xpbnV4LXJlZ3RyYWNraW5nLmxlZW1o
dWlzLmluZm8vYWJvdXQvI3RsZHIKVGhhdCBwYWdlIGFsc28gZXhwbGFpbnMgd2hhdCB0byBkbyBp
ZiBtYWlscyBsaWtlIHRoaXMgYW5ub3kgeW91LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
