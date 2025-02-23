Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DA76C021B3
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Feb 2025 17:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOOlVRzPIpDs+NEj0RpMbOH+EBeFY67/btbjY4biAK8=; b=fOjmGnzHQe14ZA
	WIWZDLwg7nnBwN4zKxtNzKL9L0ZXYcqtiPkNshpANLE5X3LqRk/ngjihtB79U0gd3M/SpClm0/fcA
	QHvGLUBp1/5YoS/sOnpDBN74ZlnaG843awNajDJyKjcJQ2A4QBK8dMT3Imx0cuZQbyDLP2Nf9J9X/
	9rB0gAo7eqS8fE03hExJYtjX3YTrw10JuKnn/ciNNavWeTttyrFt3wjeCBers0F43140Pv8oKpvJM
	eBg9dMqoF1VBCnyN2/SNdFV7ov9SD7/7c6pK3426c3x2+QUS7uTIh80l0ddmH5hmRB3v9tSBebLtU
	aEjo4mvgqrbWzLxv35rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmGD6-0000000BY3J-472L;
	Sun, 23 Feb 2025 17:56:12 +0000
Received: from smtp-76.smtpout.orange.fr ([80.12.242.76] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmGBq-0000000BXre-1Kql
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Feb 2025 17:54:56 +0000
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id mGBYtahoV2PZMmGBctmSWh; Sun, 23 Feb 2025 18:54:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1740333286;
	bh=5bcIn2euEhstjs3cIQxm4V7rjLzP65GLYsksBTypYt8=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=UAcVW5eYbQTubiwlBFI5YDqjbsh4A/6H/ONbTE6N6YmgCCnAbFKt3pLnd1JjpQj0I
	 S5xkcynu8Z1wu0uwViuzEOXKAbAP0qojuSegpIOJi4HiNBUXpCn/tP8AUcKwS0FK/2
	 IvHCWlNRmV8IbgwBSOS6xCyshPmLlTDQHxAnTOhbWWw2DRgvm/dq5st/XS6OfDql6Y
	 Ozv2iX+MkSVWQ9S//mQe3e40q+HGB7faEC3l/nbnbiTndUxG0vrbrChOy5z6kKP+hk
	 EzZNuAXDzY2yjW6x8GVB98kWifElDTDzBeqw973DbQXQJEx1zmlJ9VHm597nbIqjaV
	 a9NPVqokxd6Dw==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Sun, 23 Feb 2025 18:54:46 +0100
X-ME-IP: 90.11.132.44
Message-ID: <88b02c37-6741-459b-b966-d6d58d1f9b6f@wanadoo.fr>
Date: Sun, 23 Feb 2025 18:54:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 4/6] media: platform: synopsys: Add support for HDMI
 input driver
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>
References: <20250223173019.303518-1-dmitry.osipenko@collabora.com>
 <20250223173019.303518-5-dmitry.osipenko@collabora.com>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20250223173019.303518-5-dmitry.osipenko@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_095454_621836_EE292CEA 
X-CRM114-Status: GOOD (  14.82  )
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

TGUgMjMvMDIvMjAyNSDDoCAxODozMCwgRG1pdHJ5IE9zaXBlbmtvIGEgw6ljcml0wqA6Cj4gRnJv
bTogU2hyZWV5YSBQYXRlbCA8c2hyZWV5YS5wYXRlbEBjb2xsYWJvcmEuY29tPgo+IAo+IEFkZCBp
bml0aWFsIHN1cHBvcnQgZm9yIHRoZSBTeW5vcHN5cyBEZXNpZ25XYXJlIEhETUkgUlgKPiBDb250
cm9sbGVyIERyaXZlciB1c2VkIGJ5IFJvY2tjaGlwIFJLMzU4OC4gVGhlIGRyaXZlcgo+IHN1cHBv
cnRzOgo+ICAgLSBIRE1JIDEuNGIgYW5kIDIuMCBtb2RlcyAoSERNSSA0a0A2MEh6KQo+ICAgLSBS
R0I4ODgsIFlVVjQyMiwgWVVWNDQ0IGFuZCBZQ0M0MjAgcGl4ZWwgZm9ybWF0cwo+ICAgLSBDRUMK
PiAgIC0gRURJRCBjb25maWd1cmF0aW9uCj4gCj4gVGhlIGhhcmR3YXJlIGFsc28gaGFzIEF1ZGlv
IGFuZCBIRENQIGNhcGFiaWxpdGllcywgYnV0IHRoZXNlIGFyZQo+IG5vdCB5ZXQgc3VwcG9ydGVk
IGJ5IHRoZSBkcml2ZXIuCj4gCj4gQ28tZGV2ZWxvcGVkLWJ5OiBEaW5neGlhbiBXZW4gPHNoYXdu
LndlbkByb2NrLWNoaXBzLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBEaW5neGlhbiBXZW4gPHNoYXdu
LndlbkByb2NrLWNoaXBzLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTaHJlZXlhIFBhdGVsIDxzaHJl
ZXlhLnBhdGVsQGNvbGxhYm9yYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtv
IDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4KCkhpLAoKPiArCWhkbWlyeF9kZXYtPmRl
diA9IGRldjsKPiArCWRldl9zZXRfZHJ2ZGF0YShkZXYsIGhkbWlyeF9kZXYpOwo+ICsKPiArCXJl
dCA9IGhkbWlyeF9wYXJzZV9kdChoZG1pcnhfZGV2KTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJu
IHJldDsKPiArCj4gKwlyZXQgPSBoZG1pcnhfc2V0dXBfaXJxKGhkbWlyeF9kZXYsIHBkZXYpOwo+
ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0OwoKIEZyb20gaGVyZSwgc2hvdWxkIG9mX3Jlc2Vy
dmVkX21lbV9kZXZpY2VfcmVsZWFzZSgpIGJlIGNhbGxlZCBpbiB0aGUgCmVycm9yIGhhbmRsaW5n
IHBhdGgsIGFzIGRvbmUgaW4gdGhlIHJlbW92ZSBmdW5jdGlvbj8KCj4gKwo+ICsJaGRtaXJ4X2Rl
di0+cmVncyA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKPiArCWlm
IChJU19FUlIoaGRtaXJ4X2Rldi0+cmVncykpCj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2
LCBQVFJfRVJSKGhkbWlyeF9kZXYtPnJlZ3MpLAo+ICsJCQkJICAgICAiZmFpbGVkIHRvIHJlbWFw
IHJlZ3MgcmVzb3VyY2VcbiIpOwoKLi4uCgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rldmlj
ZV9pZCBoZG1pcnhfaWRbXSA9IHsKPiArCXsgLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4
LWhkbWlyeC1jdHJsZXIiIH0sCj4gKwl7IH0sCgpVbm5lZWRlZCB0cmFpbGluZyBjb21tYSBhZnRl
ciBhIHRlcm1pbmF0b3IuCgo+ICt9Owo+ICtNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBoZG1pcnhf
aWQpOwoKLi4uCgo+ICsJcmV0ID0gY2VjX3JlZ2lzdGVyX2FkYXB0ZXIoY2VjLT5hZGFwLCBjZWMt
PmRldik7Cj4gKwlpZiAocmV0IDwgMCkgewo+ICsJCWRldl9lcnIoY2VjLT5kZXYsICJjZWMgcmVn
aXN0ZXIgYWRhcHRlciBmYWlsZWRcbiIpOwo+ICsJCWNlY191bnJlZ2lzdGVyX2FkYXB0ZXIoY2Vj
LT5hZGFwKTsKCklzIGl0IG5lZWRlZCB0byBjYWxsIGNlY191bnJlZ2lzdGVyX2FkYXB0ZXIoKSB3
aGVuIApjZWNfcmVnaXN0ZXJfYWRhcHRlcigpIGZhaWxzPwoKPiArCQlyZXR1cm4gTlVMTDsKPiAr
CX0KPiArCj4gKwlpcnFzID0gQ0VDVFhfTElORV9FUlIgfCBDRUNUWF9OQUNLIHwgQ0VDUlhfRU9N
IHwgQ0VDVFhfRE9ORTsKPiArCWhkbWlyeF9jZWNfd3JpdGUoY2VjLCBDRUNfSU5UX01BU0tfTiwg
aXJxcyk7Cj4gKwoKQ0oKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
