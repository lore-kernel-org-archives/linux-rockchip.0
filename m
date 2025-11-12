Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21FCACCFA1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 00:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7C5n6sikYng/Ri27ooXnho75qGjzxSboH6R9hDgPngI=; b=en/QJAsaHyIotd
	dl6nE/PSlzZGqjddZr4LioHICxtfhcS3kxPeeVJV1zE1F7fdzMxM23RgQ7nEWbJJ1e1trnHJH1Cpx
	7dGVjDxMFQ0XRVwfDKw6PakrpHni4DrCdI+LXc5/x7R1zLphm2YXqs42c1BKHuYnjN2ApKDAxMaAt
	U/GJC5zs+qX2YFd7SJGeWy9s6wnfuIhvYylZyn7U+4WAYFadKC8mxQSBYTOhb3VpR+Hwl2HWL6xvl
	Qpn8Fg+76LbpS+nFf3hgceFd/ps659RGsA/m0Yt32Z5a0vMniRHXLC1bXFQ5DlYarFjv2Ld5vJ7AE
	AtLyAY6H4OqdAzbwNwhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIyz6-00000007vlQ-3BfS;
	Wed, 12 Nov 2025 00:45:16 +0000
Received: from mail-m21472.qiye.163.com ([117.135.214.72])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIyz4-00000007vkK-1PZK
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Nov 2025 00:45:16 +0000
Received: from [192.168.61.151] (unknown [110.83.51.2])
	by smtp.qiye.163.com (Hmail) with ESMTP id 293f3b332;
	Wed, 12 Nov 2025 08:45:07 +0800 (GMT+08:00)
Message-ID: <fcc9262c-5bd8-4f96-971c-c61ae8cbde69@rock-chips.com>
Date: Wed, 12 Nov 2025 08:45:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-mmc@vger.kernel.org
Subject: Re: [PATCH] mmc: dw_mmc-rockchip: Add memory clock auto-gating
 support
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <1762242094-55346-1-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKFpLp--cn4T3ifL8zB=GqptHZtnRH+V8Z370LNsj7n3wNA@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CAPDyKFpLp--cn4T3ifL8zB=GqptHZtnRH+V8Z370LNsj7n3wNA@mail.gmail.com>
X-HM-Tid: 0a9a7585ff7809cckunm76d3f66889b5b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZSkpKVklLSkgdShgaGkNKGlYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKSktVQ0hVTkpVSVlXWRYaDxIVHRRZQVlPS0hVSktJT09PSFVKS0tVSk
	JLS1kG
DKIM-Signature: a=rsa-sha256;
	b=PsQTZqQSj6zIF7BYo9SF9V8MSEx/vgmafUz9qE+hy+KkYq2i0wsj2Hx3HgWfhI6EccN5e0WObJIatfrXqVJxhsTDGQvYFDwjnK8F1oiYRIx3OoRrR7XGjgNexr8BdIjJ96RDA0KCy4weHovbZOW0JiPPKXNque6yFlWcvrIAJTs=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=73MhxFMtGE6PyMsXPLivPnSyiulfE+bRi+dlziNMDyU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_164514_978420_5EF0040F 
X-CRM114-Status: GOOD (  15.74  )
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

5ZyoIDIwMjUvMTEvMTIg5pif5pyf5LiJIDA6NTUsIFVsZiBIYW5zc29uIOWGmemBkzoKPiBPbiBU
dWUsIDQgTm92IDIwMjUgYXQgMDg6NDEsIFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMu
Y29tPiB3cm90ZToKPj4KPj4gUGVyIGRlc2lnbiByZWNvbW1lbmRhdGlvbnMsIHRoZSBtZW1vcnkg
Y2xvY2sgY2FuIGJlIGdhdGVkIHdoZW4gdGhlcmUKPj4gaXMgbm8gaW4tZmxpZ2h0IHRyYW5zZmVy
LCB3aGljaCBoZWxwcyBzYXZlIHBvd2VyLiBUaGlzIGZlYXR1cmUgaXMKPj4gaW50cm9kdWNlZCBh
bG9uZ3NpZGUgaW50ZXJuYWwgcGhhc2Ugc3VwcG9ydCwgYW5kIHRoaXMgcGF0Y2ggZW5hYmxlcyBp
dC4KPiAKPiBKdXN0IHRvIG1ha2Ugc3VyZSwgZG9lcyB0aGlzIHdvcmsgaWYgdGhlIGNvbnRyb2xs
ZXIgaXMgdXNlZCBmb3IgU0RJTwo+IGFuZCBoYXMgU0RJTyBpcnFzIGVuYWJsZWQ/Cj4gCj4gT3Ig
cGVyaGFwcyB0aGF0IGlzIHRha2VuIGNhcmUgb2YgaW4gZHdfbWNpX3ByZXBhcmVfc2Rpb19pcnEo
KT8KPiAKClllcywgaXQgd29ya3MgZm9yIFNESU8gY2FzZSB0b28uCgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiAKPiBLaW5kIHJlZ2Fy
ZHMKPiBVZmZlCj4gCj4+IC0tLQo+Pgo+PiAgIGRyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tj
aGlwLmMgfCA2ICsrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPj4K
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMgYi9kcml2
ZXJzL21tYy9ob3N0L2R3X21tYy1yb2NrY2hpcC5jCj4+IGluZGV4IDY4MTM1NDkuLjYyYzY4Y2Qg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMKPj4gKysr
IGIvZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9ja2NoaXAuYwo+PiBAQCAtMTksNiArMTksOCBA
QAo+PiAgICNkZWZpbmUgUkszMjg4X0NMS0dFTl9ESVYgICAgICAgICAgICAgIDIKPj4gICAjZGVm
aW5lIFNETU1DX1RJTUlOR19DT04wICAgICAgICAgICAgICAweDEzMAo+PiAgICNkZWZpbmUgU0RN
TUNfVElNSU5HX0NPTjEgICAgICAgICAgICAgIDB4MTM0Cj4+ICsjZGVmaW5lIFNETU1DX01JU0Nf
Q09OICAgICAgICAgICAgICAgICAweDEzOAo+PiArI2RlZmluZSBNRU1fQ0xLX0FVVE9HQVRFX0VO
QUJMRSAgICAgICAgICAgICAgICBCSVQoNSkKPj4gICAjZGVmaW5lIFJPQ0tDSElQX01NQ19ERUxB
WV9TRUwgICAgICAgICBCSVQoMTApCj4+ICAgI2RlZmluZSBST0NLQ0hJUF9NTUNfREVHUkVFX01B
U0sgICAgICAgMHgzCj4+ICAgI2RlZmluZSBST0NLQ0hJUF9NTUNfREVHUkVFX09GRlNFVCAgICAg
MQo+PiBAQCAtNDcwLDYgKzQ3Miw3IEBAIHN0YXRpYyBpbnQgZHdfbWNpX3JrMzU3Nl9wYXJzZV9k
dChzdHJ1Y3QgZHdfbWNpICpob3N0KQo+Pgo+PiAgIHN0YXRpYyBpbnQgZHdfbWNpX3JvY2tjaGlw
X2luaXQoc3RydWN0IGR3X21jaSAqaG9zdCkKPj4gICB7Cj4+ICsgICAgICAgc3RydWN0IGR3X21j
aV9yb2NrY2hpcF9wcml2X2RhdGEgKnByaXYgPSBob3N0LT5wcml2Owo+PiAgICAgICAgICBpbnQg
cmV0LCBpOwo+Pgo+PiAgICAgICAgICAvKiBJdCBpcyBzbG90IDggb24gUm9ja2NoaXAgU29DcyAq
Lwo+PiBAQCAtNDk0LDYgKzQ5Nyw5IEBAIHN0YXRpYyBpbnQgZHdfbWNpX3JvY2tjaGlwX2luaXQo
c3RydWN0IGR3X21jaSAqaG9zdCkKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIGRldl93YXJu
KGhvc3QtPmRldiwgIm5vIHZhbGlkIG1pbmltdW0gZnJlcTogJWRcbiIsIHJldCk7Cj4+ICAgICAg
ICAgIH0KPj4KPj4gKyAgICAgICBpZiAocHJpdi0+aW50ZXJuYWxfcGhhc2UpCj4+ICsgICAgICAg
ICAgICAgICBtY2lfd3JpdGVsKGhvc3QsIE1JU0NfQ09OLCBNRU1fQ0xLX0FVVE9HQVRFX0VOQUJM
RSk7Cj4+ICsKPj4gICAgICAgICAgcmV0dXJuIDA7Cj4+ICAgfQo+Pgo+PiAtLQo+PiAyLjcuNAo+
Pgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
