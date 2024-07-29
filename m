Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D72ACC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 09:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zh4SWgza6j+7GN1k7DVv72jEiYfQpiXxmUASoKU3KTs=; b=s9aLWEvVvxb8eE1gqkGoIH1xBu
	Pxrr+RS00j45qM5/h+AbUg8XiyGo4aKb4aLvrAYqJsXSST69b9lbuJYIkcWbuEezQaCETmROpIYlr
	tp9kAO1arWqhj/yuIwGSYqYtB59i79dsEg2/AoltayHgYFDYxKHi7V084+I74HQV/raHNM1+GFruE
	SZayKfkI6yY9QIKBIFBVFc04RH7PzpX2sG3xIeeOlpD1G4nefkOrk9KwsQyUZdgpGiTxmdEQkM6ct
	jVjoJry5BhHm2eklosL3lI7fUtKc52aeWbEfn2+ffT67M18besr1F8V06pHtq2GPzHpL/po+xBEBu
	d9ZBrxdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYMRG-0000000Af6M-3qOW;
	Mon, 29 Jul 2024 09:13:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYMQp-0000000Aez9-1uhs;
	Mon, 29 Jul 2024 09:12:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=pswipPAaVOFmPwBSVAMERH4Feh9aaMUGuX9A7jGGpDg=; b=rcafHgJAKKg3RPXOmvQ5T4/x4k
	y2Z/ypb+eW6b/kAZI/nkcl+DLDUNHAF8nva5djOy1HQRaocRRKcP1zD0ShHBPQBPPB++CCE4se9uv
	Oyfr19rMer3vr56HqXw/gra8CnxjZvLUkH+Hki+HvCIa1rbzMmPumZHZcmoGllX2ReeXGeP+tUebo
	AHFELCuka7BnXePoAi0f2rwYq9eltQl1IA+zw2zVY+aJYp3BMJobMYECnOJCl+noJedCoKlm2x/Ma
	jbhADEmE3FhRoWrUw3CJtNgBjOUhXhcoj9e94Gv3IpVEmz2wTRuh55Z46NjRzkJ8ubZ+O86d/JL9c
	ou5gv+qg==;
Received: from mail.manjaro.org ([116.203.91.91])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYMQk-00000004kee-2vgy;
	Mon, 29 Jul 2024 09:12:36 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1722244342;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pswipPAaVOFmPwBSVAMERH4Feh9aaMUGuX9A7jGGpDg=;
	b=jelfHMZeLyyD0sapjj+wGdwlqNR8cQumQFm2t56MTOnLKQccXRYSWmnMsLSEZVc7C1Iss0
	jdETKXZ6hftIhwKI+lYVHPv5R0g4CzqB4bjK2fFmE9ksA5oXusgU6SazoBgKKJ2ZaWPTQ1
	TL9EVQlFA6+WzdHR+1P+41DBnWhd+QJXkeQOtLLnGY1DqCQfO5Lg/6mjBomJtuMYL3Wbt3
	5zBAqBcI7GanYJLZmHe7A83habOlPkJbPs7qM/LZBiD2+HNZNEck9K6YZsA4Ddzq7abFnh
	MWqGTYJefH5bg78jP7Z2KYp06+SwaTQ53XU1RUaag6O7SenK98RCuGC2yTm90g==
Date: Mon, 29 Jul 2024 11:12:19 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org,
 krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 conor+dt@kernel.org, arend.vanspriel@broadcom.com, efectn@protonmail.com,
 jagan@edgeble.ai, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, arend@broadcom.com,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org, duoming@zju.edu.cn,
 bhelgaas@google.com, minipli@grsecurity.net, brcm80211@lists.linux.dev,
 brcm80211-dev-list.pdl@broadcom.com, nick@khadas.com
Subject: Re: [PATCH v4 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
In-Reply-To: <qetrwlvqekobedpwexeltaxqpnemenlfhky2t2razmcdtwlcv3@qdlesuiac2mr>
References: <20240729070102.3770318-1-jacobe.zang@wesion.com>
 <20240729070102.3770318-5-jacobe.zang@wesion.com>
 <d7068c96e102eaf6c35a77eb76cd067d@manjaro.org>
 <qetrwlvqekobedpwexeltaxqpnemenlfhky2t2razmcdtwlcv3@qdlesuiac2mr>
Message-ID: <9f248b0e2645a29b83ee503701e04d57@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_101235_018562_C0315B3A 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
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

SGVsbG8gT25kcmVqLAoKT24gMjAyNC0wNy0yOSAxMDo0NCwgT25kxZllaiBKaXJtYW4gd3JvdGU6
Cj4gT24gTW9uLCBKdWwgMjksIDIwMjQgYXQgMDk6MTI6MjBBTSBHTVQsIERyYWdhbiBTaW1pYyB3
cm90ZToKPj4gSGVsbG8gSmFjb2JlLAo+PiAKPj4gWy4uLl0KPj4gCj4+ID4KPj4gPiArCWNsayA9
IGRldm1fY2xrX2dldF9vcHRpb25hbF9lbmFibGVkKGRldiwgImxwbyIpOwo+PiA+ICsJaWYgKElT
X0VSUihjbGspKQo+PiA+ICsJaWYgKGNsaykgewo+PiAKPj4gVGhlc2UgdHdvIGxpbmVzIGxvb2tz
IHJlYWxseSBjb25mdXNpbmcuICBTaG91bGRuJ3QgaXQgYmUganVzdCBhIHNpbmdsZQo+PiAiaWYg
KCFJU19FUlIoY2xrKSkgeyIgbGluZSBpbnN0ZWFkPwo+IAo+IEl0IHNob3VsZCBiZSBgIUlTX0VS
UihjbGspICYmIGNsa2Agb3RoZXJ3aXNlIHRoZSBkZWJ1ZyBtZXNzYWdlIHdpbGwgYmUKPiBpbmNv
cnJlY3QuCgpBaCwgSSBzZWUgbm93LCB0aGFua3MuICBUaGVyZSdzIGFsc28gSVNfRVJSX09SX05V
TEwsIHNvIHRoZSBjb25kaXRpb24KY2FuIGFjdHVhbGx5IGJlICIhSVNfRVJSX09SX05VTEwoY2xr
KSIuCgo+PiA+ICsJCWJyY21mX2RiZyhJTkZPLCAiZW5hYmxpbmcgMzJrSHogY2xvY2tcbiIpOwo+
PiA+ICsJCWNsa19zZXRfcmF0ZShjbGssIDMyNzY4KTsKPj4gPiArCX0KPj4gPiArCj4+ID4gIAlp
ZiAoIW5wIHx8ICFvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShucCwgImJyY20sYmNtNDMyOS1mbWFj
IikpCj4+ID4gIAkJcmV0dXJuOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
