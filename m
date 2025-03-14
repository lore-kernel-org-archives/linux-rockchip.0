Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2C95C35FF1
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Mar 2025 14:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgNfOdWoG+ODN8XmVXYP09+JbjwelukOsYFub1DdJx4=; b=Y3WDvOU5rHjXnM
	e/+4xVrx1b7QpamSJ9J27/cD9LqRPBbHao+Sj9jOlMrqs2pHI0ek4soxKBjmAiRKW2q0VyKIEglKm
	xjOEUpGrp09mw0nyRSNPbFc7bkxBhROLTEVCzeQLgI/szoe4qXy3nO7lBdNvzG1G3xjifW0dKAyC3
	30k1tyRwxF4kbrgQZULMVuUk8thxzj8WcwFp2b5ZRCSt7yjtGGyTyM6SOrjYgXzAJY508Pufh3SV6
	UnPHVf1y2hmeduAlCpr14LMsdkb6ZvzOauRZCyzvIMSBgxcgsn1tPmHPfxBuUaGjGzTcy3bSql0LL
	GFue5Yasaa47bOhdR8fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt61n-0000000EOnd-3J3q;
	Fri, 14 Mar 2025 14:28:47 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt61l-0000000EOnG-2gBy
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Mar 2025 14:28:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741962523;
	bh=L0q0bLkwL6DJqwCcKQYRvTMiSL+agBKX/dk22Y9gGCY=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=glrmq/4sxhK+11JaMfIOtzv2klgd9R5zBzVKaKlMuUBL1PwWyWhyA+/qEbJ/E1t9a
	 NoIYYyIk25Y+a+dIhyH+rvIdG8s5tLEtMa2hQs/ij+5toFiUk8odg/IuyNw6gDhff6
	 0sR1KYsbZVpfb54lOPvk0ZmVrK85nWTwQgIi5AweTW39pMkL0wUUDwuS8xoyhosWI5
	 6bv/ie2sLeD6UbS4X/gwBBHnU8gSzZQ6di/OF9hFSxBp4NiUrXFWWDZZY/Nil5LJD+
	 4FLdzh6fTZ2VhKQrIkMrT4rF7HJSgchz6OKeZWZrPXGAy9J84hRmKm7PVRTqmm27qZ
	 Z+rKXm245ye0A==
Received: from [192.168.1.90] (unknown [84.232.140.93])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AC35317E0ABD;
	Fri, 14 Mar 2025 15:28:43 +0100 (CET)
Message-ID: <523ddbe2-f788-4fbf-99db-53bcaad0324a@collabora.com>
Date: Fri, 14 Mar 2025 16:28:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: rockchip-drm display-subsystem: [drm] *ERROR* POST_BUF_EMPTY irq
 err at vp0
To: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>,
 linux-rockchip@lists.infradead.org
References: <e7c6bdd7-47ed-484e-af26-83b9cc531561@juszkiewicz.com.pl>
 <08c49d8f-ec24-453b-949d-e149336b4909@collabora.com>
 <c5c24ccc-81a6-49fc-a3d6-0ad90cb3971f@juszkiewicz.com.pl>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <c5c24ccc-81a6-49fc-a3d6-0ad90cb3971f@juszkiewicz.com.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_072845_865024_AF246066 
X-CRM114-Status: GOOD (  13.85  )
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

T24gMy8xNC8yNSAyOjI3IFBNLCBNYXJjaW4gSnVzemtpZXdpY3ogd3JvdGU6Cj4gVyBkbml1IDE0
LjAzLjIwMjUgb8KgMTM6MDAsIENyaXN0aWFuIENpb2NhbHRlYSBwaXN6ZToKPj4gT24gMy8xMy8y
NSA0OjEzIFBNLCBNYXJjaW4gSnVzemtpZXdpY3ogd3JvdGU6Cj4+PiBJIHRvb2sgbXkgRnJpZW5k
bHlFTEVDIE5hbm9QQy1UNiBMVFMgYmFjayB0byBvcGVyYXRpb24uIEluc3RhbGxlZCBGZWRvcmEK
Pj4+IHJhd2hpZGUgb24gaXQgYW5kIHRyeWluZyB0byBnZXQgc2NyZWVuIHdvcmtpbmcuCj4+Pgo+
Pj4gUnVubmluZyA2LjE0LXJjNiBvbiBpdC4gS2VybmVsIGxvZyBpcyBmdWxsIG9mIHRoaXMgbWVz
c2FnZToKPj4+Cj4+PiByb2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0ZW06IFtkcm1dICpFUlJP
UiogUE9TVF9CVUZfRU1QVFkgaXJxIGVycgo+Pj4gYXQgdnAwCj4+Pgo+Pj4gL3N5cy9kZXZpY2Vz
L3BsYXRmb3JtL2Rpc3BsYXktc3Vic3lzdGVtL2RybS9jYXJkMC9jYXJkMC1IRE1JLUEtMS9tb2Rl
cwo+Pj4gc2hvd3MgbGlzdCBvZiByZXNvbHV0aW9ucyBhdmFpbGFibGUgb24gbXkgMTAiIHNjcmVl
bi4gTW9uaXRvciBzYXlzCj4+PiAiSERNSTogbm8gc2lnbmFsIi4KPj4+Cj4+PiBJIHJlbWVtYmVy
IGhhdmluZyBzY3JlZW4gcnVubmluZyBvbmNlIHdpdGggc29tZSBzZXQgb2Ygb3V0LW9mLXRyZWUK
Pj4+IHBhdGNoZXMgYnV0IGlpcmMgaXQgd2FzIGJlZm9yZSBIRE1JMCBzdXBwb3J0IHdhcyBwcmVz
ZW50IGluIG1haW5saW5lLgo+Pj4KPj4+IFdoZXJlIEkgc2hvdWxkIGxvb2s/Cj4+Cj4+IEkgbmVl
ZCBhY2Nlc3MgdG8gdGhlIGZ1bGwga2VybmVsIGxvZywgYnV0IGJlZm9yZSB0aGF0IGRvIHRoZSBm
b2xsb3dpbmc6Cj4+Cj4+IDEuIEVuc3VyZSB0aGUga2VybmVsIGlzIGJ1aWx0IHdpdGggZHluYW1p
YyBkZWJ1ZyBzdXBwb3J0Cj4+Cj4+IMKgwqAgQ09ORklHX0RZTkFNSUNfREVCVUc9eQo+Pgo+PiAy
LiBBcHBlbmQgdGhlIGZvbGxvd2luZyB0byBrZXJuZWwgY21kbGluZToKPj4KPj4gwqDCoCByb2Nr
Y2hpcGRybS5keW5kYmc9K3AgZHdfaGRtaV9xcC5keW5kYmc9K3AKPj4gcGh5X3JvY2tjaGlwX3Nh
bXN1bmdfaGRwdHguZHluZGJnPStwCj4+Cj4+IDMuIERlcGxveSB0aGUgdXBkYXRlZCBrZXJuZWwg
KGlmIG5lZWRlZCkgYW5kIHJlYm9vdAo+PiA0LiBVbnBsdWcgdGhlIHNjcmVlbiBmcm9tIHRoZSBI
RE1JIHBvcnQKPj4KPj4gNS4gT3BlbiBhIGNvbnNvbGUgdGVybWluYWwgKFNTSCBvciBzZXJpYWwp
IGFuZCBydW46Cj4+Cj4+IMKgwqAgZWNobyAweDQgPiAvc3lzL21vZHVsZS9kcm0vcGFyYW1ldGVy
cy9kZWJ1Zwo+Pgo+PiA2LiBQbHVnIHRoZSBzY3JlZW4gYmFjawo+PiA3LiBXYWl0IGEgZmV3IHNl
Y29uZHMKPj4gOC4gR2V0IHRoZSBrZXJuZWwgbG9nCj4gCj4gVGhhbmtzLCBib290ZWQgd2l0aCBy
ZXF1ZXN0ZWQgb3B0aW9ucywgZW5hYmxlZCBkZWJ1Zy4KPiAKPiBDb25uZWN0ZWQgMTAiIDEzNjZ4
NzY4IG1vbml0b3Igd2hpY2ggdG9sZCAiSERNSTogTm8gc2lnbmFsIi4gRGlzY29ubmVjdGVkLgoK
SSB0aGluayB0aGUgcHJvYmxlbSBzdGVtcyBmcm9tIHRoZSByYXRoZXIgbGltaXRlZCBkaXNwbGF5
IG1vZGVzIGhhbmRsaW5nIAppbiB2b3AyIC0gc2VlIFsxXSB3aGljaCB3aWxsIGJlIHBhcnQgb2Yg
dGhlIHY2LjE1IGtlcm5lbCByZWxlYXNlLgoKSW4gcGFydGljdWxhciwgeW91ciBkaXNwbGF5IHNl
ZW1zIHRvIHByZWZlciAxMzY2eDc2OEA2MEh6LCB3aGljaCBtb3N0CnByb2JhYmx5IGlzIG9uZSBv
ZiB0aGUgdW5zdXBwb3J0ZWQgbW9kZXMgLSBJIHdhc24ndCBhYmxlIHRvIHRlc3QgdGhpcyBhcwpu
b25lIG9mIG15IGRpc3BsYXlzIGFkdmVydGlzZXMgaXQuCgpGb3Igbm93LCBJJ2Qgc3VnZ2VzdCB0
byB0cnkgYW55IG9mIHRoZSBmb2xsb3dpbmcgb3B0aW9uczoKCjEuIFVwZGF0ZSB5b3VyIGtlcm5l
bCBhIHJlY2VudCBsaW51eC1uZXh0LCBpLmUuIG5leHQtMjAyNTAyMDcgb3IgbmV3ZXIKClRoaXMg
c2hvdWxkIGZpeCB5b3VyIHByb2JsZW0gYW5kIHlvdSdsbCBhbHNvIGdldCB0aGUgY29uZmlybWF0
aW9uIHRoYXQgCnVwY29taW5nIHY2LjE1IHdpbGwgd29yayBhcyBleHBlY3RlZC4KCgoyLiBGb3Jj
ZSBhIGdpdmVuIDxtb2RlPiB2aWEga2VybmVsIGNtZGxpbmU6CgogIHZpZGVvPUhETUktQS0xOjxt
b2RlPgoKd2hlcmUgPG1vZGU+IHNob3VsZCBiZSBvbmUgb2YgdGhvc2Ugc3VwcG9ydGVkIGJ5IHlv
dXIgZGlzcGxheS4KCkknZCBzdWdnZXN0IGdpdmluZyB0aGVzZSBhIHRyeSAob25lIGF0IGEgdGlt
ZSk6CgogIDE5MjB4MTA4MEA1MCwgMTI4MHgxMDI0QDYwLCAxMTUyeDg2NEA3NSwgMTE1Mng4NjRA
NjAsIDExNTJ4ODY0QDUwCgoKMy4gQ2hhbmdlIGN1cnJlbnQgbW9kZSBmcm9tIHVzZXItc3BhY2UK
CkRlcGVuZGluZyBvbiB0aGUgY29tcG9zaXRvciBjaG9pY2UsIHlvdSBtYXkgdHJ5IGV4cGVyaW1l
bnRpbmcgd2l0aDoKCiAgd2xyLXJhbmRyLCBnbm9tZS1yYW5kciwgeHJhbmRyLCBldGMKCkZvciBx
dWlja2x5IHZhbGlkYXRpbmcgdGhlIHN1cHBvcnRlZCBtb2RlcywgSSdkIHJlY29tbWVuZDoKCiQg
bW9kZXRlc3QgLU0gcm9ja2NoaXAgLXMgSERNSS1BLTE6PG1vZGU+CgpOb3RlIHRoYXQgPG1vZGU+
IGluIHRoaXMgY2FzZSBoYXMgYSBzbGlnaHRseSBkaWZmZXJlbnQgZm9ybWF0LCBpLmUuIApuZWVk
IHRvIHJlcGxhY2UgJ0AnIHdpdGggJy0nOgoKICAxOTIweDEwODBANTAgLT4gMTkyMHgxMDgwLTUw
CgoKSG9wZSB0aGlzIGhlbHBzLApDcmlzdGlhbgoKWzFdIGh0dHBzOi8vd2ViLmdpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5leHQuZ2l0L2NvbW1pdC8/
aWQ9MmMxMjY4ZTdhYWQwODE5ZjM4ZTU2MTM0YmJjMjA5NWZkOTVmZGUxYgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
