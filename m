Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6BD6606A324
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 06:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TDx4zNDw;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=bC7DjVmf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jiT0lnKvDLhKekmBkjCRtNfnVjOj/GNraCmXXogjhBE=; b=TDx4zNDwROMYruUE9NPC+OVepW
	AhrkGTQjNiwP/OvGpERMlnlAX41AGRZuwCFpvqwgisMLaksZ6h+ddXq/uEwQ4vL/iupuYITD5bGSU
	QLq/+buHYy3Is0iKYBtVMTczR/fs1SqWtgGtoUNDR6IcwrwPOsGXW7/piuC7jvFw+yJsXkxzCTvrp
	BpXxOLvoAMgBVVQacOmu1agoYwDWvoouPb3QBgb0o16ScqhU4ZWTcteyJXfpZApLsgBWvpIQiJk/y
	vo9l4hGtnXuWgkHEQ9dqCOkazw+kKhCK+PhSNJVBnpuYLumd95t/dRejqHBtwGYuJTEUMHyHbZUlG
	6P0XqY2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNltn-0000000FhQH-47ex;
	Mon, 02 Nov 2026 06:52:07 +0000
Received: from mail-m82205.xmail.ntesmail.com ([156.224.82.205])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNltl-0000000FhPX-2ElL;
	Mon, 02 Nov 2026 06:52:07 +0000
Received: from [172.16.12.11] (gyproxy-mailtls2-entmail-virt217.gy.ntes [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5325ade18;
	Mon, 2 Nov 2026 14:51:49 +0800 (GMT+08:00)
Message-ID: <b012a73f-1834-471f-982f-84244b863dce@rock-chips.com>
Date: Mon, 2 Nov 2026 14:51:49 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] pmdomain: rockchip: do not restore QoS that was never
 saved
To: Jiaxing Hu <gahing@gahingwoo.com>, ulfh@kernel.org, heiko@sntech.de
Cc: sebastian.reichel@collabora.com, shawn.lin@rock-chips.com,
 zhangqing@rock-chips.com, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20261101055633.101309-1-gahing@gahingwoo.com>
From: Finley Xiao <finley.xiao@rock-chips.com>
In-Reply-To: <20261101055633.101309-1-gahing@gahingwoo.com>
X-HM-Tid: 0aa19b074e4203a8kunm1cd43e6020218b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDGU4fVkpOTxpJGEMeH0xLS1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=bC7DjVmfge6voq7J+27TJQ++JcPO8y+rqy/5dy/AkhYlmSBOLipVPasTo2cW/f5wkVlem1BYf3uSkAFJqo97BisVIUOmbU2hq7ArQLIR0neW+8FAUptzDiVC4yicE2S53tgbbYPuBUK169JCV9CLVu/+mXP+F183i3iknXpAbVU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=PTkCharFQmf18BmR+HlsgqRfDjWer5Tuunqxyv1lgvw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_225206_152275_D47E6110 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CuWcqCAyMDI2LzExLzEgMTM6NTYsIEppYXhpbmcgSHUg5YaZ6YGTOgo+IHJvY2tjaGlwX3BtdV9y
ZXN0b3JlX3FvcygpIHdyaXRlcyBiYWNrIHdoYXQgcm9ja2NoaXBfcG11X3NhdmVfcW9zKCkgcmVh
ZAo+IG9uIHRoZSBsYXN0IHBvd2VyLW9mZi4gQSBkb21haW4gdGhhdCB3YXMgb2ZmIHdoZW4gaXQg
d2FzIHJlZ2lzdGVyZWQgaGFzCj4gbm90IGJlZW4gcG93ZXJlZCBvZmYgYnkgdGhlIGRyaXZlciB5
ZXQsIHNvIG9uIGl0cyBmaXJzdCBwb3dlci1vbiB0aGUKPiByZXN0b3JlIHdyaXRlcyB0aGUgemVy
b2VkIHNhdmUgYXJyYXkgb3ZlciB0aGUgUW9TIHJlc2V0IHZhbHVlcy4KPgo+IE9uIFJLMzU3NiB0
aGlzIGlzIHRoZSBHUFUgb24gZXZlcnkgYm9vdC4gUmVhZCBiYWNrIGFmdGVyIHRoZSByZXN0b3Jl
LCBpdHMKPiBRb1MgaXMgYWxsIHplcm9zOyB3aXRoIHRoaXMgcGF0Y2ggaXQga2VlcHMgdGhlIHZh
bHVlcyBpdCBwb3dlcnMgdXAgd2l0aCwKPiBwcmlvcml0eSAweDEwMSwgbW9kZSAzLCBiYW5kd2lk
dGggMHg4MCBhbmQgc2F0dXJhdGlvbiA4Lgo+Cj4gT25seSByZXN0b3JlIGFmdGVyIGEgc2F2ZS4g
Um9ja2NoaXAncyBvd24gZHJpdmVyIGRvZXMgdGhlIHNhbWUgd2l0aCBhbgo+IGlzX3Fvc19zYXZl
ZCBmbGFnLgo+Cj4gRml4ZXM6IDA3NGM2YTQyMmQ4NiAoInNvYzogcm9ja2NoaXA6IHBvd2VyLWRv
bWFpbjogc3VwcG9ydCBxb3Mgc2F2ZSBhbmQgcmVzdG9yZSIpCj4gU2lnbmVkLW9mZi1ieTogSmlh
eGluZyBIdSA8Z2FoaW5nQGdhaGluZ3dvby5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL3BtZG9tYWlu
L3JvY2tjaGlwL3BtLWRvbWFpbnMuYyB8IDEwICsrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2Vk
LCAxMCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wbWRvbWFpbi9yb2Nr
Y2hpcC9wbS1kb21haW5zLmMgYi9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMu
Ywo+IGluZGV4IGRiMzg3OTg0NmRiNi4uZDFjMDI1YmRhYTA4IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jCj4gKysrIGIvZHJpdmVycy9wbWRvbWFp
bi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPiBAQCAtOTcsNiArOTcsNyBAQCBzdHJ1Y3Qgcm9ja2No
aXBfcG1fZG9tYWluIHsKPiAgIAlpbnQgbnVtX3FvczsKPiAgIAlzdHJ1Y3QgcmVnbWFwICoqcW9z
X3JlZ21hcDsKPiAgIAl1MzIgKnFvc19zYXZlX3JlZ3NbTUFYX1FPU19SRUdTX05VTV07Cj4gKwli
b29sIHFvc19zYXZlZDsKClRoZSBmaXggaXRzZWxmIGxvb2tzIGNvcnJlY3QuIE9uZSBtaW5vciBu
aXQ6IHRoZSBkb3duc3RyZWFtIFJvY2tjaGlwCmtlcm5lbCBpbXBsZW1lbnRzIHRoZSBzYW1lIGd1
YXJkIHdpdGggYSBmbGFnIG5hbWVkIGBpc19xb3Nfc2F2ZWRgCih5b3UgYWxyZWFkeSByZWZlcmVu
Y2UgaXQgaW4gdGhlIGNvbW1pdCBsb2cpLiBSZXVzaW5nIHRoYXQgZXhhY3QKbmFtZSB3b3VsZCBt
YWtlIGl0IGVhc2llciB0byBjb3JyZWxhdGUgd2l0aCB0aGUgdmVuZG9yIHRyZWUgd2hlbgpkZWJ1
Z2dpbmcgb3IgYmFja3BvcnRpbmcgUW9TIGlzc3VlcyBsaWtlIHRoZSBSSzM1NzYgR1BVIGNhc2Uu
CgpSZXZpZXdlZC1ieTogRmlubGV5IFhpYW8gPGZpbmxleS54aWFvQHJvY2stY2hpcHMuY29tPgoK
Cj4gICAJaW50IG51bV9jbGtzOwo+ICAgCXN0cnVjdCBjbGtfYnVsa19kYXRhICpjbGtzOwo+ICAg
CXN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZTsKPiBAQCAtNDc0LDYgKzQ3NSw3IEBAIHN0YXRpYyBp
bnQgcm9ja2NoaXBfcG11X3NhdmVfcW9zKHN0cnVjdCByb2NrY2hpcF9wbV9kb21haW4gKnBkKQo+
ICAgCQkJICAgIFFPU19FWFRDT05UUk9MLAo+ICAgCQkJICAgICZwZC0+cW9zX3NhdmVfcmVnc1s0
XVtpXSk7Cj4gICAJfQo+ICsJcGQtPnFvc19zYXZlZCA9IHRydWU7Cj4gICAJcmV0dXJuIDA7Cj4g
ICB9Cj4gICAKPiBAQCAtNDgxLDYgKzQ4MywxNCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BtdV9y
ZXN0b3JlX3FvcyhzdHJ1Y3Qgcm9ja2NoaXBfcG1fZG9tYWluICpwZCkKPiAgIHsKPiAgIAlpbnQg
aTsKPiAgIAo+ICsJLyoKPiArCSAqIEEgZG9tYWluIHRoYXQgd2FzIG9mZiB3aGVuIGl0IHdhcyBy
ZWdpc3RlcmVkIGhhcyBub3RoaW5nIHNhdmVkIHlldCwKPiArCSAqIGFuZCB3cml0aW5nIHRoZSB6
ZXJvZWQgYXJyYXkgd291bGQgcmVwbGFjZSB0aGUgcmVzZXQgdmFsdWVzIHRoZSBRb1MKPiArCSAq
IHJlZ2lzdGVycyBjYW1lIHVwIHdpdGguCj4gKwkgKi8KPiArCWlmICghcGQtPnFvc19zYXZlZCkK
PiArCQlyZXR1cm4gMDsKPiArCj4gICAJZm9yIChpID0gMDsgaSA8IHBkLT5udW1fcW9zOyBpKysp
IHsKPiAgIAkJcmVnbWFwX3dyaXRlKHBkLT5xb3NfcmVnbWFwW2ldLAo+ICAgCQkJICAgICBRT1Nf
UFJJT1JJVFksCj4KPiBiYXNlLWNvbW1pdDogNzY0OWJhNzNmOWU3ZTFlMDRkMGI0NjIxM2UzOWM3
OWFlMDlkZDU1YwoKLS0gCkJlc3QgcmVnYXJkcywKCuW6leWxguW5s+WPsOS4reW/gyDogpbplIvv
vIhGaW5sZXkgWGlhb++8iQoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioK55Ge6Iqv5b6u55S1
5a2Q6IKh5Lu95pyJ6ZmQ5YWs5Y+4ClJvY2tjaGlwIEVsZWN0cm9uaWNzIENvLiwgTHRkLgrnpo/l
u7rnnIHnpo/lt57luILpk5znm5jot6/ova/ku7blpKfpgZM4OeWPt+i9r+S7tuWbrUHljLoyMeWP
t+alvCAzNTAwMDMKTm8uMjEgQnVpbGRpbmcsIEEgRGlzdHJpY3QsIEZ1emhvdSBTb2Z0d2FyZSBQ
YXJrLCBGdXpob3UsIEZ1amlhbiAzNTAwMDMsIFAuUi4gQ2hpbmEKVGVsOiAwNTkxLTgzOTkxOTA2
LTg2MDIgTW9iaWxlOiAxODUwNjA1NzYwMwoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
