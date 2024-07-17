Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16607C3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 08:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+e3HMaUiq3KoJFeBt0CwulBLCvgNmTSrgUtf2HVKf1A=; b=H1jGqFuM1AkqvLsv2Zu5UzDrQP
	rQkZHs0w+AP7YXs0WQZDK0nzOilA7xuk4DmJxEmhaE4d+bt1MxG8LHkGnPAB/vj8d7W9OiVpLrhZX
	9XyZ3nibwS/a40vm/DclQ/nmV3hSzn5iCS3EIj0otbmJrT5+10dyjFLPYTzbvsBAMxy+qTauhwbZ7
	oOJy1GLo3FAnvXLQrp4NMc6W+QrOOg8E9CHChHmtM+loBbYhnnfelZ11ZgNramnpS6wlJbpy7Joog
	otVv/G0HYDrbmWTpKb1HTTsLBaaVydJ4sYj/UHoEGxER1kymDnJeb+Gfi157DiwPtiB5m1OCU1Yc1
	5wDdPlTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU0I5-0000000DC7C-1gP0;
	Wed, 17 Jul 2024 08:45:37 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTzIP-0000000D0UT-1zez;
	Wed, 17 Jul 2024 07:42:50 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721202111;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9kdghzpYTLountuHMAHm85KxWPtE0BOZWLjcep8l9Ec=;
	b=NKmuhs5moRNzolDxH6jfC+IhJtKWryK3UlICMzWitzYON8ZOS1+42mUBhSfuY0AbCbJ4Oc
	UjjjqpfDcIYqHOONIL+P7Iwd6oslAisgion7C+hTm2sIB049cFVLLDw3yVi6c8JLCkya2J
	eh0G3aYQc9ZmlRdlzfqevWHEgXsce6r07/5MruObGFYL0195icUk60j/lC2X9JPZrmnie/
	x11wGANJO7n86hgZJrDgQGItTz/V5nB8c2eqpmAvWggPoKlDWI7OpovGBmrOrXJReG2zdR
	zjojh08uX5ZyhceBZL1JUVSzXIU03NGAPgrUh9agaJ6EybPqPIHJHWQ2reWLcQ==
Date: Wed, 17 Jul 2024 09:41:50 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 heiko@sntech.de, hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: dsi: Reset ISP1 DPHY before powering it on
In-Reply-To: <pb477qi34clwdvrdrdparff5jvl6emdje3aswpylovejh2wx3q@vzwju366kkji>
References: <6e0ce232acfe952970e9b37402fe08a3678aa43a.1721196758.git.dsimic@manjaro.org>
 <e79cbc94804e93464be62e7731def4fa@manjaro.org>
 <pb477qi34clwdvrdrdparff5jvl6emdje3aswpylovejh2wx3q@vzwju366kkji>
Message-ID: <287caa145232a310c0e40a8b761bcd9a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_004153_973522_8C924CC0 
X-CRM114-Status: GOOD (  24.66  )
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

SGVsbG8gT25kcmVqLAoKT24gMjAyNC0wNy0xNyAwOTozMiwgT25kxZllaiBKaXJtYW4gd3JvdGU6
Cj4gT24gV2VkLCBKdWwgMTcsIDIwMjQgYXQgMDg6NDg6MjlBTSBHTVQsIERyYWdhbiBTaW1pYyB3
cm90ZToKPj4gSGVsbG8gYWxsLAo+PiAKPj4gT24gMjAyNC0wNy0xNyAwODoyOSwgRHJhZ2FuIFNp
bWljIHdyb3RlOgo+PiA+IEZyb206IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+PiA+Cj4+
ID4gQWZ0ZXIgYSBzdXNwZW5kIGFuZCByZXN1bWUgY3ljbGUsIElTUDEgc3RvcHMgcmVjZWl2aW5n
IGRhdGEsIGFzIG9ic2VydmVkCj4+ID4gb24gdGhlIFBpbmU2NCBQaW5lUGhvbmUgUHJvLCB3aGlj
aCBpcyBiYXNlZCBvbiB0aGUgUm9ja2NoaXAgUkszMzk5IFNvQy4KPj4gPiBSZS1pbml0aWFsaXpp
bmcgRFBIWSBkdXJpbmcgdGhlIFBIWSBwb3dlci1vbiwgaWYgdGhlIFNvQyB2YXJpYW50Cj4+ID4g
c3VwcG9ydHMKPj4gPiBpbml0aWFsaXphdGlvbiwgZml4ZXMgdGhpcyBpc3N1ZS4KPj4gPgo+PiA+
IFsgZHNpbWljOiBBZGRlZCBtb3JlIGRldGFpbHMgdG8gdGhlIGNvbW1pdCBzdW1tYXJ5IGFuZCBk
ZXNjcmlwdGlvbiBdCj4+ID4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdp
QHhmZi5jej4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJv
Lm9yZz4KPj4gPiAtLS0KPj4gPiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNp
LXJvY2tjaGlwLmMgfCA4ICsrKysrKysrCj4+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKykKPj4gPgo+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHct
bWlwaS1kc2ktcm9ja2NoaXAuYwo+PiA+IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1p
cGktZHNpLXJvY2tjaGlwLmMKPj4gPiBpbmRleCA0Y2M4ZWQ4ZjRmYmQuLjlhZDQ4YzZkZmFjMyAx
MDA2NDQKPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ktcm9j
a2NoaXAuYwo+PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS1y
b2NrY2hpcC5jCj4+ID4gQEAgLTEyNDAsNiArMTI0MCwxNCBAQCBzdGF0aWMgaW50IGR3X21pcGlf
ZHNpX2RwaHlfcG93ZXJfb24oc3RydWN0IHBoeQo+PiA+ICpwaHkpCj4+ID4gIAkJZ290byBlcnJf
cGh5X2NmZ19jbGs7Cj4+ID4gIAl9Cj4+ID4KPj4gPiArCWlmIChkc2ktPmNkYXRhLT5kcGh5X3J4
X2luaXQpIHsKPj4gPiArCQlyZXQgPSBkc2ktPmNkYXRhLT5kcGh5X3J4X2luaXQocGh5KTsKPj4g
PiArCQlpZiAocmV0IDwgMCkgewo+PiA+ICsJCQlEUk1fREVWX0VSUk9SKGRzaS0+ZGV2LCAiaGFy
ZHdhcmUtc3BlY2lmaWMgcGh5IGluaXQgZmFpbGVkOiAlZFxuIiwKPj4gPiByZXQpOwo+PiA+ICsJ
CQlnb3RvIGVycl9wd3Jfb247Cj4+ID4gKwkJfQo+PiA+ICsJfQo+PiA+ICsKPj4gPiAgCS8qIGRv
IHNvYy12YXJpYW50IHNwZWNpZmljIGluaXQgKi8KPj4gPiAgCWlmIChkc2ktPmNkYXRhLT5kcGh5
X3J4X3Bvd2VyX29uKSB7Cj4+ID4gIAkJcmV0ID0gZHNpLT5jZGF0YS0+ZHBoeV9yeF9wb3dlcl9v
bihwaHkpOwo+PiAKPj4gQWZ0ZXIgdGhpbmtpbmcgYSBiaXQgbW9yZSBhYm91dCB0aGlzIHBhdGNo
IGluIGl0cyBvcmlnaW5hbCBmb3JtIFsxXQo+PiB0aGF0J3MgcHJlc2VydmVkIGFib3ZlLCBJIHRo
aW5rIGl0IHdvdWxkIGJlIGJldHRlciB0byBtb3ZlIHRoZQo+PiBhZGRpdGlvbmFsIERQSFkgaW5p
dGlhbGl6YXRpb24gdG8gZHdfbWlwaV9kc2lfcm9ja2NoaXBfcmVzdW1lKCksCj4+IGJlY2F1c2Ug
dGhhdCBmdW5jdGlvbiBzZWVtcyB0byBiZSB0aGUgcmlnaHQgcGxhY2UgZm9yIHN1Y2ggZml4ZXMu
Cj4+IAo+PiBQbGVhc2UsIGxldCBtZSBrbm93IHlvdXIgdGhvdWdodHMuCj4gCj4gVGhhdCBhbHNv
IHdvcmtzIChzZWUgYXR0YWNobWVudCkgdG8gZml4IHRoZSBvcmlnaW5hbCBpc3N1ZSBpbiB0aGUg
Cj4gY29tbWl0Cj4gbWVzc2FnZSwgYnV0IGlmIHlvdSBrZWVwIHRoZSBzdHJlYW0gb24gYWNyb3Nz
IHN1c3BlbmQvcmVzdW1lIGl0IGRvZXMgCj4gaGFsdCBzbwo+IGl0J3Mgbm90IGEgY29tcGxldGUg
c29sdXRpb24gZWl0aGVyLgoKR3JlYXQsIHRoYW5rcyBmb3IgdGhlIGF0dGFjaGVkIHBhdGNoLiAg
SSBhc3N1bWUgdGhhdCB5b3UgYWxyZWFkeSBoYXZlCmEgcGF0Y2ggdGhhdCBwZXJmb3JtcyB0aGUg
b3RoZXIgcmVxdWlyZWQgb3BlcmF0aW9ucyBvbiBzdXNwZW5kIGFuZCAKcmVzdW1lLAppLmUuIHN0
b3BzIHRoZSBzdHJlYW0gYW5kIHJlc3RhcnRzIGl0PwoKSG93IGFib3V0IGRyb3BwaW5nIG15ICJo
YW5kbGVkIiB2YXJpYW50IG9mIHlvdXIgcGF0Y2ggYW5kIGhhdmluZyB5b3UKc3VibWl0IHRoZSBw
YXRjaCB5b3Ugc2VudCBhcyBhdHRhY2htZW50LCBhbmQgdGhlIGFkZGl0aW9uYWwgcGF0Y2ggeW91
CmRlc2NyaWJlZCBhcyBhbHNvIG5lZWRlZD8KCj4+IFsxXSAKPj4gaHR0cHM6Ly9tZWdvdXMuY29t
L2dpdC9saW51eC9jb21taXQvP2g9b3JhbmdlLXBpLTYuOSZpZD1lZDc5OTJmNjY4YTFlNTI5NzE5
ZWU2ODQ3Y2ExMTRmOWI2N2VmYWNiCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
