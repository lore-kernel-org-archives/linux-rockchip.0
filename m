Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 389FAECAAA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 21:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+BUHCWaubdX/PpdHsAVAQ1sRXndozrg8jbr6zTg0tg=; b=toz2i8xLPHmjq/
	kwcADbpaU1zZAjTAR9Hb6hwZQqqmU9/BOJL9LX9aRwNxPoAK6K3SVwkI/lXSJ6dimQSOwMUzV8hUq
	TfwY7SdAgeicxgf7cZ3CqmIPGYPVlPz2gsSkbaIo7TIow7jbMd2BDFaEDcTViB755GHuXVKiqIatL
	u+UbTvrzjGuXk8vDPz4LesEIFGC5XzWLADvL3ApbhWLvUlSxgE87tAvcJs5sZnBu9kXHCH3Jcn/D3
	56mQq1WDS2dhn1N0eja50+swqfmwXs0j32CgTyHVCgGG7wzV89cWnRAHiMyh/OqH+W3HEyAiW3k6V
	zVsRUn9UJkKTx/8yAW5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooADu-00Et2W-4T; Thu, 27 Oct 2022 21:15:34 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooADq-00Eszz-S5
	for linux-rockchip@lists.infradead.org; Thu, 27 Oct 2022 21:15:32 +0000
Received: by mail-qk1-x734.google.com with SMTP id d13so2123809qko.5
        for <linux-rockchip@lists.infradead.org>; Thu, 27 Oct 2022 14:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xea8RVcPNPBnXgY0x+RiV5o0A4N7mtMx4Y8u2uRfkrQ=;
        b=nQUQjvLYMTD84uU2F9PgRldjfqQTPUTHH+mf6gbHAUmVg7DAOVggRVtbNvj+NWLvAW
         eaVtkptOwlJ03XRpulAJM0eZT/0XTZNR/fNOpLv+DnaOuW4yr2F7h7b5t94tNDC9g888
         /ieel8CqluCus7O4rbZ0E7pUJd7A7wLYgPovTO4yg2obI0VX4v4YknLuKAv3Eu5AbD3q
         raNo2hy1xysut0vgPV0US8bcmujP8s8wJMOBpUIgdK5b8zbqgFCYBFXzPChh1sbxeMQz
         GV3aFCoRRy+bk0n7L+JhM6yD6iKz11vcpCz0RvGmIzKdJ0cUlVLToofDTNhyYU2OqQog
         3HQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xea8RVcPNPBnXgY0x+RiV5o0A4N7mtMx4Y8u2uRfkrQ=;
        b=v38Ch8QXFy0Izc4hyvxuam825h/lo0I2MZqk30TKtzUfgsLr5H8yqojdrOJiwrMQd7
         VrrwwVH4+N2rGk9I54T8omzyP8PSyZnrXGLFAgpBCKKlAeBWEtBBQxBiASAHuqO7LiGh
         kk5GNVVmp58FoJpYVRWlCO92ICwDxSMZkvqwozWhPlXx4XApNweFfYcD6tUkTUAsik94
         nxH4QzzhmpSJ4uH7lZ3SI6ULJL1O6N6vxS1StdO7Jile1BVYqNol1+iPxKJLoMDnnImX
         fxkDk2pl/sks23o4AcTxJCPfVf81UpY9BTTlFmPfQ7pUYxCB5QKC7Fo9W8o4NWpTm8TR
         G4Lg==
X-Gm-Message-State: ACrzQf2Fms2/n3guSDlIIWbiId0uoYjC8hgf0meqmiDDfGf4afpq4PQL
	mqirLPz6HYlBDakHalN+iSO7Mg==
X-Google-Smtp-Source: AMsMyM5FHX0KhpeDbrDgVx5q3452D3FZJ/XneKMCHOcQWbPfSVBcy5pVtUirbzpZWerqiedxbojksg==
X-Received: by 2002:a05:620a:2591:b0:6c9:cc85:87e3 with SMTP id x17-20020a05620a259100b006c9cc8587e3mr35994050qko.577.1666905323709;
        Thu, 27 Oct 2022 14:15:23 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id q21-20020a05620a0d9500b006eec09eed39sm1683134qkl.40.2022.10.27.14.15.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 14:15:23 -0700 (PDT)
Message-ID: <f2652e0e-fb08-efb4-e25a-36a335f0c457@linaro.org>
Date: Thu, 27 Oct 2022 17:15:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v1 3/4] ARM: dts: rockchip: add rk3128.dtsi
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, zhangqing@rock-chips.com,
 hjc@rock-chips.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 daniel.lezcano@linaro.org, tglx@linutronix.de, arnd@arndb.de,
 olof@lixom.net, soc@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <da1252eb-85e9-bdb8-0542-207173523523@gmail.com>
 <2dc46681-894d-4521-bfa7-3e9209691e0a@gmail.com>
 <6fbb01f0-d0d2-bb06-a160-2f8f91ac68ca@linaro.org> <22076018.EfDdHjke4D@diego>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <22076018.EfDdHjke4D@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_141530_936636_BA502082 
X-CRM114-Status: GOOD (  19.66  )
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

T24gMjcvMTAvMjAyMiAxNjowMiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRG9ubmVyc3Rh
ZywgMjcuIE9rdG9iZXIgMjAyMiwgMjE6NDM6NDMgQ0VTVCBzY2hyaWViIEtyenlzenRvZiBLb3ps
b3dza2k6Cj4+IE9uIDI3LzEwLzIwMjIgMTM6NTMsIEpvaGFuIEpvbmtlciB3cm90ZToKPj4+IEhp
IEtyenlzenRvZiwgS2V2ZXIsIEhlaWtvIGFuZCBvdGhlcnMsCj4+Pgo+Pj4gT24gMTAvMjcvMjIg
MTY6NTgsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+Pj4gT24gMjYvMTAvMjAyMiAyMDo1
MywgSm9oYW4gSm9ua2VyIHdyb3RlOgo+Pj4+PiBBZGQgYmFzaWMgcmszMTI4IHN1cHBvcnQuCj4+
Pj4+Cj4+Pj4KPj4+PiBUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guIFRoZXJlIGlzIHNvbWV0aGlu
ZyB0byBkaXNjdXNzL2ltcHJvdmUuCj4+Pgo+Pj4gVGhhbmsgeW91IGZvciB5b3VyIHJldmlldy4K
Pj4+Cj4+PiBTb21lIG1vcmUgcXVlc3Rpb25zL2NvbW1lbnRzIGJlbG93Lgo+Pj4KPj4+Pgo+Pj4+
PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3JrMzEyOC1jcnUuaD4KPj4+Pj4gKyNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KPj4+Pj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5n
cy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+Cj4+Pj4+ICsjaW5jbHVkZSA8ZHQtYmlu
ZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvaXJxLmg+Cj4+Pj4+ICsjaW5jbHVkZSA8ZHQtYmlu
ZGluZ3MvcGluY3RybC9yb2NrY2hpcC5oPgo+Pj4+PiArCj4+Pj4+ICsvIHsKPj4+Pj4gKwljb21w
YXRpYmxlID0gInJvY2tjaGlwLHJrMzEyOCI7Cj4+Pj4+ICsJaW50ZXJydXB0LXBhcmVudCA9IDwm
Z2ljPjsKPj4+Pj4gKwkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4+Pj4gKwkjc2l6ZS1jZWxscyA9
IDwxPjsKPj4+Pj4gKwo+Pj4+PiArCWFsaWFzZXMgewo+Pj4+PiArCQlncGlvMCA9ICZncGlvMDsK
Pj4+Pj4gKwkJZ3BpbzEgPSAmZ3BpbzE7Cj4+Pj4+ICsJCWdwaW8yID0gJmdwaW8yOwo+Pj4+PiAr
CQlncGlvMyA9ICZncGlvMzsKPj4+Cj4+PiBJcyBncGlvIE9LIGhlcmU/Cj4+Cj4+IENvdWxkIGJl
LCBidXQgbGV0IG1lIHJlcGhyYXNlIGl0IC0gd2h5IGRvIHlvdSBuZWVkIGFsaWFzZXMgaW4gRFRT
ST8gV2hhdAo+PiBkbyB0aGVzZSBhbGlhc2VzIHJlcHJlc2VudD8KPj4KPj4gVGhlIFNvQyBwaWVj
ZXMgKG5vZGVzIGluIERUU0kpIGRvIG5vdCByZWx5IG9uIGFsaWFzZXMuCj4gCj4gU3Vic3lzdGVt
cyB1c2UgdGhlIGFsaWFzZXMgZm9yIG51bWJlcmluZyB0aGVpciBpbnN0YW5jZXMuCj4gU28gdGhl
IGkyYzAgYWxpYXMgY2F1c2VzIHRoZSBpMmMgYnVzIGdldHRpbmcgdGhlIG51bWJlciAwIGluIHRo
ZSBvcGVyYXRpbmcKPiBzeXN0ZW0gYXMgd2VsbCAtIG1ha2luZyBpdCBpMmMwIHRoZXJlIHRvby4K
Ck5vIG9uZSBhcmd1ZXMgd2l0aCB0aGVzZS4uLgoKPiAKPiAKPj4+Pj4gKwkJaTJjMCA9ICZpMmMw
Owo+Pj4+PiArCQlpMmMxID0gJmkyYzE7Cj4+Pj4+ICsJCWkyYzIgPSAmaTJjMjsKPj4+Pj4gKwkJ
aTJjMyA9ICZpMmMzOwo+Pj4+PiArCQlzcGkwID0gJnNwaTA7Cj4+Pj4+ICsJCXNlcmlhbDAgPSAm
dWFydDA7Cj4+Pj4+ICsJCXNlcmlhbDEgPSAmdWFydDE7Cj4+Pj4+ICsJCXNlcmlhbDIgPSAmdWFy
dDI7Cj4+Pj4KPj4+PiBCdXMgYWxpYXNlcyBhcmUgYm9hcmQgc3BlY2lmaWMgYW5kIHJlcHJlc2Vu
dCB3aGF0IGlzIGFjdHVhbGx5IGF2YWlsYWJsZQo+Pj4+IG9uIGhlYWRlcnMvcGlucyBldGMuIFRo
ZXNlIGRvIG5vdCBiZWxvbmcgdG8gU29DIERUU0kuCj4+Pgo+Pj4gSSBqdXN0IGZvbGxvdyBjdXJy
ZW50IFJvY2tjaGlwIERUIGNvbW1vbiBwcmFjdGljZS4KPj4+Cj4+PiBEbyB3ZSBuZWVkIHRvIGNo
YW5nZSBhbGwgUm9ja2NoaXAgYm9hcmRzPwo+Pj4gV291bGQgbGlrZSB0byBoZWFyIGZyb20gSGVp
a28gd2hhdCdzIHRoZSBwbGFuIGhlcmU/Cj4+PiBTeW5jaW5nIHRvIFUtYm9vdCBpcyBhbHJlYWR5
IGEgbWVzcy4uLgo+Pgo+PiBIZWlrbyBtaWdodCBoYXZlIGhpcyBvd24gcHJlZmVyZW5jZSB3aGlj
aCB0aGVuIG92ZXItcnVsZXMgbXkKPj4gcmVjb21tZW5kYXRpb24gaGVyZS4gQnV0IGluIGdlbmVy
YWwgdGhpcyBhcHBsaWVzIHRvIGFsbCBib2FyZHMsIHNvIG90aGVyCj4+IGJvYXJkcyBjb3VsZCBi
ZSBmaXhlZCBhcyB3ZWxsLiBEaWZmZXJlbnQgcG9pbnQgaXMgd2hldGhlciBpdCBpcyBhY3R1YWxs
eQo+PiB3b3J0aCBmaXhpbmcgdGhlbS4uLgo+IAo+IEkgcmVtZW1iZXIgb25seSBwYXJ0cyBvZiB0
aGUgZGlzY3Vzc2lvbiBmb3IgdGhlIHByZXZpb3VzIHNvY3MuIEJhY2sgdGhlbgo+IEFybmQgd2Fz
IGFkdm9jYXRpbmcgbWFpbmx5IGZvciBtb3ZpbmcgdGhlIG1tYyBhbGlhc2VzIHRvIGJvYXJkcy4K
PiAKPiBBcyB0aGUgYWxpYXNlcyBpbiBnZW5lcmFsIGFsc28gZGV0ZXJtaW5lIHRoZSBuYW1pbmcg
b2YgdGhlIGJ1cyBpbnN0YW5jZSwKPiBJJ20gdmVyeSBtdWNoIGluIGZhdm9yIG9mIGhhdmluZyB0
aGUgaGFyZHdhcmUtaTJjNSBiZWluZyBuYW1lZCBpMmM1Cj4gaW4gYWxsIGNhc2VzIDstKSAuIEhh
dmluZyB0aGVzZSBoYXJkd2FyZSBidXNzZXMgZ2V0dGluZyByYW5kb20gbnVtYmVycwo+IHJlYWxs
eSBjYWxscyBmb3IgY2hhb3MuCj4gCj4gU28gSSdkIHJlYWxseSBsaWtlIHVzIHRvIGNvbnRpbnVl
IHRoZSB3YXkgd2UgYXJyaXZlZCBhdCB3aXRoIHRoZSBwcmV2aW91cwo+IHNvY3Mgbm93IDotKQoK
Tm8sIG5vdCBvbmx5IG1tYy4gVUFSVCwgSTJDLCBTUEkgLSBhbGwgb2YgdGhlc2Ugc2hvdWxkIGdv
IHRvIHRoZSBib2FyZC4KCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwL0NB
SzhQM2EyNWlZa3N1YkNuUWIxLWU1eWo9Y3JFc0szN1JCOUhuNFpHWk13Y1ZWckc3Z0BtYWlsLmdt
YWlsLmNvbS8KCk5vIG9uZSBoZXJlIGRpc2N1c3NlcyB3aGV0aGVyIG9yZGVyaW5nIHNob3VsZCBi
ZSByYW5kb20gb3Igbm90LgoKV2UgZGlzY3VzcyB0aGF0IHRoaXMgaXMgYSBwcm9wZXJ0eSBvZiB0
aGUgYm9hcmQsIG5vdCBvZiBhIFNvQy4KCj4gCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
