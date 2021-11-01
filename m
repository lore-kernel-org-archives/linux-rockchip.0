Return-Path: <SRS0=5X13=PU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3DDC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Nov 2021 22:41:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D0076109D
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Nov 2021 22:41:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7D0076109D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=epFenVS6blsFZBdM4iPQoiIQR9uWQa+yAzjFv3dwAfs=; b=SVG06SHDtsFfPCdSJA9M1OfRR0
	vOJUt/TA1D4Wlr40RFsizbponhliN/BnUNDt2vx8VyCo6cK1am0TIbxaa4qCJ5ZGjbBmN3+nFitO0
	vqfMkpSkcxoJcrnH745xdWR50vBUXVByCDx9YKRKjqUtAbcboA+d76fA/e36DmKr8gpWMUimV2V8W
	HuWXQvqg2xZjIYGtQrUHXtVt1HK1j3RTjnVg55gzw2vg53lzFhbzggpSIMcRq/jOvnADKKyyjknpF
	2mFe17i8ptDxgnV9d4pXnDTFFYGpZlFpYhaW6aXF/7HabtqkKKVP0KHhzVvTtUT3qkBVvGoHoL6E6
	WxjfBrZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhfzW-00HQi2-VK; Mon, 01 Nov 2021 22:41:22 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhfzU-00HQhT-Ka; Mon, 01 Nov 2021 22:41:22 +0000
Received: by mail-wr1-x435.google.com with SMTP id d13so30392248wrf.11;
 Mon, 01 Nov 2021 15:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QCoZhc5ZEGa1eJqhbNdTunCmt1mUsYpZECTvHZXwgFI=;
 b=fA5efdRvGBGpmb3I1GHYpJV3T4DJCXa5+8einDt2W5pCa3lAL9WvbUG7dr9w4k6C90
 uZgiJ96ANLa/Wt3DeD6DRAMbFACgPtkvljIoWX4kB9JTnBdvFKSaeKP+CCC75IE/fOkG
 8nxcgPGWeYciFQkvkJqs04+S4C5IXlj6Vbwwz970SPdr2icRrQaDGf0mqTgBvEwwaLs4
 DlXfD3vKYJ3adexSbdZmFiIFZkDvEA+czDCI+Ov3LPvMitN2clMTNXU1CLbNaq6LkWVc
 XIIFO1TWFKMmfeKGQWCgihH61ccZOS9XLaWYAhLuFPeDpp4c7/9K72kXZ/5fbhwEuccj
 e9MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QCoZhc5ZEGa1eJqhbNdTunCmt1mUsYpZECTvHZXwgFI=;
 b=RrRsVDtAx5lDpKCFSk4HtiA0mFyNA90YLvtwuk6sv9MCW9ZB6WjossR3+K9tsKmIW9
 0Cmc0I4fXOinfySLXVvkBtrl9Rpo+Mh6WHSZklTGFm1GsJQ5Hg2TyGe8jLdzLHViQRFS
 5H0iQtR0V+jqwH+NA5WNbdyJ6MhbmN8hH0bICdmNETT162/vvCAYIesU+zm46JVKAbU3
 f3ezQL0rjZLgz/6huu3gvLvnTzsmLalFnxkv9Bn6ktuxaCsy+lMjSXiNhg3nyJGBymHo
 6ITcxDjR4t28oue1K+fXPYeUIGG0c8IfTmk0BY1rjgs5gugRfgPbhVLeylhQh6OUGjf+
 X1hg==
X-Gm-Message-State: AOAM530yCeWYi9tfhZDHcPZByoR5oq/e5zLMfJ9QMz6AcmmqHCTTkerE
 GZ3EaHZgZj12jJZjttDXCg==
X-Google-Smtp-Source: ABdhPJz4a0/IqbecY1aKyjjiYSSeUqq/i/xmPeUEBlTSWGYs3WCoE4LLypqNx0J+daTVFqh4zaKcxw==
X-Received: by 2002:adf:a28f:: with SMTP id s15mr40683184wra.138.1635806476771; 
 Mon, 01 Nov 2021 15:41:16 -0700 (PDT)
Received: from [192.168.200.23] (ip5b435a69.dynamic.kabel-deutschland.de.
 [91.67.90.105])
 by smtp.gmail.com with ESMTPSA id k187sm1100084wme.0.2021.11.01.15.41.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Nov 2021 15:41:16 -0700 (PDT)
Subject: Re: [PATCH] clk: composite: Also consider .determine_rate for rate +
 mux composites
To: Robin Murphy <robin.murphy@arm.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: sboyd@kernel.org, heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, "kernelci@groups.io"
 <kernelci@groups.io>, Collabora Kernel ML <kernel@collabora.com>,
 Chen-Yu Tsai <wens@csie.org>
References: <163425193558.1688384.15520943968787313145@swboyd.mtv.corp.google.com>
 <20211015120559.3515645-1-martin.blumenstingl@googlemail.com>
 <04a58d50-634b-fa20-95b4-eb6831f77e85@collabora.com>
 <CAFBinCAEt9_EfLYWZEzTBK6iN97+Wacho7pNd2LYDPX3+goMzg@mail.gmail.com>
 <b6468523-a730-6a44-f4b9-3fd5b9ea2354@arm.com>
 <3e42ae24-8db4-fb11-edf2-a25bca47ecae@arm.com>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <49a0dda1-8d0f-580c-d92d-de759b51edb3@gmail.com>
Date: Mon, 1 Nov 2021 23:41:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <3e42ae24-8db4-fb11-edf2-a25bca47ecae@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_154120_742779_2278873A 
X-CRM114-Status: GOOD (  30.12  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgR3VpbGxhdW1lLAoKQW0gMDEuMTEuMjEgdW0gMjM6MTEgc2NocmllYiBSb2JpbiBNdXJwaHk6
Cj4gT24gMjAyMS0xMS0wMSAyMTo1OSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+PiBPbiAyMDIxLTEx
LTAxIDIwOjU4LCBNYXJ0aW4gQmx1bWVuc3RpbmdsIHdyb3RlOgo+Pj4gSGkgR3VpbGxhdW1lLAo+
Pj4KPj4+IE9uIE1vbiwgTm92IDEsIDIwMjEgYXQgOToxOSBQTSBHdWlsbGF1bWUgVHVja2VyCj4+
PiA8Z3VpbGxhdW1lLnR1Y2tlckBjb2xsYWJvcmEuY29tPiB3cm90ZToKPj4+Pgo+Pj4+IEhpIE1h
cnRpbiwKPj4+Pgo+Pj4+IFBsZWFzZSBzZWUgdGhlIGJpc2VjdGlvbiByZXBvcnQgYmVsb3cgYWJv
dXQgYSBib290IGZhaWx1cmUgb24KPj4+PiByazMzMjgtcm9jazY0Lgo+Pj4+Cj4+Pj4gUmVwb3J0
cyBhcmVuJ3QgYXV0b21hdGljYWxseSBzZW50IHRvIHRoZSBwdWJsaWMgd2hpbGUgd2UncmUKPj4+
PiB0cmlhbGluZyBuZXcgYmlzZWN0aW9uIGZlYXR1cmVzIG9uIGtlcm5lbGNpLm9yZyBidXQgdGhp
cyBvbmUKPj4+PiBsb29rcyB2YWxpZC4KPj4+Pgo+Pj4+IFNvbWUgbW9yZSBkZXRhaWxzIGNhbiBi
ZSBmb3VuZCBoZXJlOgo+Pj4+Cj4+Pj4gwqDCoCBodHRwczovL2xpbnV4Lmtlcm5lbGNpLm9yZy90
ZXN0L2Nhc2UvaWQvNjE3ZjExZjVjMTU3YjY2NmZiMzM1OGU2Lwo+Pj4+Cj4+Pj4gSGVyZSdzIHdo
YXQgYXBwZWFycyB0byBiZSB0aGUgY2F1c2Ugb2YgdGhlIHByb2JsZW06Cj4+Pj4KPj4+PiBbwqDC
oMKgIDAuMDMzNDY1XSBDUFU6IENQVXMgc3RhcnRlZCBpbiBpbmNvbnNpc3RlbnQgbW9kZXMKPj4+
PiBbwqDCoMKgIDAuMDMzNTU3XSBVbmV4cGVjdGVkIGtlcm5lbCBCUksgZXhjZXB0aW9uIGF0IEVM
MQo+Pj4+IFvCoMKgwqAgMC4wMzQ0MzJdIEludGVybmFsIGVycm9yOiBCUksgaGFuZGxlcjogZjIw
MDA4MDAgWyMxXSBQUkVFTVBUIFNNUAo+Pgo+PiBXaGF0J3Mgd2VpcmQgaXMgdGhhdCB0aGF0J3Mg
cmVhbGx5IGp1c3QgdGhlIHNhbWUgV0FSTiB0aGF0J3MgYWxzbwo+PiBwcmVzZW50IGluICdzdWNj
ZXNzZnVsJyBsb2dzLCBleGNlcHQgZm9yIHNvbWUgcmVhc29uIGl0J3MgYmVoYXZpbmcgYXMKPj4g
aWYgdGhlIGJyZWFrIGhhbmRsZXIgaGFzbid0IGJlZW4gcmVnaXN0ZXJlZCwgZGVzcGl0ZSB0aGF0
IGhhdmluZwo+PiBoYXBwZW5lZCBsb25nIGJlZm9yZSB3ZSBnb3QgdG8gc21wX2luaXQoKS4gQXQg
dGhpcyBwb2ludCB3ZSdyZSBhbHNvCj4+IHN0aWxsIHNvbWUgd2F5IG9mZiBnZXR0aW5nIGFzIGZh
ciBhcyBpbml0Y2FsbHMsIHNvIEknbSBub3Qgc3VyZSB0aGF0Cj4+IHRoZSBjbG9jayBkcml2ZXIg
d291bGQgYmUgaW4gdGhlIHBpY3R1cmUgYXQgYWxsIHlldC4KPj4KPj4gSXMgdGhlIGJpc2VjdGlv
biByZXBlYXRhYmxlLCBvciBpcyB0aGlzIGp1c3QgcmFuZG9tIGZsYWtpbmVzcwo+PiBtaXNsZWFk
aW5nIHRoaW5ncz8gSSdkIGFsc28gbm90ZSB0aGF0IHlvdSBuZWVkIHByZXR0eSBob3JyaWZpY2Fs
bHkKPj4gYnJva2VuIGZpcm13YXJlIHRvIGhpdCB0aGF0IHdhcm5pbmcgaW4gdGhlIGZpcnN0IHBs
YWNlLCB3aGljaCBtaWdodAo+PiBjYXN0IGEgYml0IG9mIGRvdWJ0IG92ZXIgdGhlIHRydXN0d29y
dGhpbmVzcyBvZiB0aGF0IGJvYXJkIGFsdG9nZXRoZXIuCj4gCj4gQWgsIG9uIGNsb3NlciBpbnNw
ZWN0aW9uIGl0IG1pZ2h0IGJlIGVudGlyZWx5IHJlcGVhdGFibGUgZm9yIGEgZ2l2ZW4KPiBrZXJu
ZWwgYnVpbGQsIGJ1dCB3aXRoIHRoZSBiZWhhdmlvdXIgYmVpbmcgdmVyeSBzZW5zaXRpdmUgdG8g
Y29kZS9kYXRhCj4gc2VnbWVudCBsYXlvdXQgY2hhbmdlcy4uLgo+IAo+IC4uLgo+IDIzOjQ0OjI0
LjQ1NzkxN8KgIEZpbGVuYW1lICcxMDA3MDYwL3RmdHAtZGVwbG95LWR2ZG55ZGN3L2tlcm5lbC9J
bWFnZScuCj4gMjM6NDQ6MjQuNDYwMTc4wqAgTG9hZCBhZGRyZXNzOiAweDIwMDAwMDAKPiAuLi4K
PiAyMzo0NDoyNy4xODA5NjLCoCBCeXRlcyB0cmFuc2ZlcnJlZCA9IDMzNjgxOTIwICgyMDFmMjAw
IGhleCkKPiAuLi4KPiAyMzo0NDoyNy4yODgxMzXCoCBGaWxlbmFtZQo+ICcxMDA3MDYwL3RmdHAt
ZGVwbG95LWR2ZG55ZGN3L3JhbWRpc2svcmFtZGlzay5jcGlvLmd6LnVib290Jy4KPiAyMzo0NDoy
Ny4yODg0NjXCoCBMb2FkIGFkZHJlc3M6IDB4NDAwMDAwMAo+IC4uLgpjb3VsZCB5b3UgdHJ5IHVw
ZGF0aW5nIHUtYm9vdCB0byBtb3JlIHJlY2VudCB2ZXJzaW9uOiB0aGUgcmFtZGlzawphZGRyZXNz
IGhhcyBiZWVuIG1vdmVkIFsxXSB0byAweDA2MDAwMDAwIGluIHYyMDIwLjAxLXJjNS4KCkkgY291
bGRuJ3QgcmVwcm9kdWNlIHRoaXMgaXNzdWUgd2l0aCB0aGUgdmVyeSBzYW1lIGJvYXJkLgoKWzFd
Cmh0dHBzOi8vZ2l0aHViLmNvbS91LWJvb3QvdS1ib290L2NvbW1pdC9iMmUzNzNkMTZiMDM0NWQz
YzNmNGJlZWZkZjA4ODllODNmYWYxNzNkCgpBbGV4Cgo+IAo+IFllYWgsIHRoYXQnbGwgYmUgYSBw
cm9ibGVtIDspCj4gCj4gQ2hlZXJzLAo+IFJvYmluLgo+IAo+Pj4+IFRoZXJlIGRvZXNuJ3QgYXBw
ZWFyIHRvIGJlIGFueSBvdGhlciBwbGF0Zm9ybSBpbiBLZXJuZWxDSSBzaG93aW5nCj4+Pj4gdGhl
IHNhbWUgaXNzdWUuCj4+PiBUaGF0J3MgYSBzdHJhbmdlIGVycm9yIGZvciB0aGUgY2hhbmdlcyBm
cm9tIG15IHBhdGNoLgo+Pj4gQXQgZmlyc3QgZ2xhbmNlIEkgZG9uJ3Qgc2VlIGFueSByZWxhdGlv
biB0byBjbGstY29tcG9zaXRlIGNvZGU6Cj4+PiAtIHRoZSBjYWxsIHRyYWNlIGRvZXNuJ3QgaGF2
ZSBhbnkgcmVmZXJlbmNlcyB0byBDQ0Ygb3Igcm9ja2NoaXAgY2xvY2sKPj4+IGRyaXZlcnMKPj4+
IC0gY2xrLXJrMzMyOC5jIHVzZXMgZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLWNwdS5jIHRvIHJl
Z2lzdGVyIHRoZSBDUFUKPj4+IGNsb2NrIHdoaWNoIGRvZXMgbm90IHVzZSBjbGstY29tcG9zaXRl
Cj4+Pgo+Pj4gQ2hlbi1ZdSBoYXMgdGVzdGVkIHRoaXMgcGF0Y2ggKHBsdXMgWzBdKSBvbiBSSzMz
OTkgYW5kIGRpZG4ndCBvYnNlcnZlCj4+PiBhbnkgcHJvYmxlbXMuCj4+PiBTbyBtYXliZSB0aGlz
IGlzIGEgUkszMzI4IHNwZWNpZmljIGlzc3VlPwo+Pj4gQW55d2F5cywgSSBhbSBpbnRlcmVzdGVk
IGluIGZpeGluZyB0aGlzIGlzc3VlIGJlY2F1c2UgcmV2ZXJ0aW5nIGlzCj4+PiBiZWNvbWluZyBt
b3JlIGFuZCBtb3JlIGNvbXBsZXggKHNpbmNlIEkgdGhpbmsgd2UncmUgYXQgZWlnaHQgY29tbWl0
cwo+Pj4gd2hpY2ggd291bGQgbmVlZCB0byBiZSByZXZlcnRlZCBpbiB0b3RhbCkuCj4+Pgo+Pj4+
IFBsZWFzZSBsZXQgdXMga25vdyBpZiB5b3UgbmVlZCBoZWxwIGRlYnVnZ2luZyB0aGUgaXNzdWUg
b3IgaWYgeW91Cj4+Pj4gaGF2ZSBhIGZpeCB0byB0cnkuCj4+PiBDb3VsZCB5b3UgcGxlYXNlIHRy
eSBbMF0gd2hpY2ggaXMgdGhlIHNlY29uZCBwYXRjaCBpbiB0aGUgc2VyaWVzIHdoaWNoCj4+PiBm
aW5hbGx5IG1hZGUgaXQgdXBzdHJlYW0uCj4+PiBUaGlzIHNlY29uZCBwYXRjaCBpcyBub3QgaW4g
NS4xNSBiZWNhdXNlIEkgYmVsaWV2ZWQgdGhhdCBpdCdzIG9ubHkKPj4+IHNvbWV0aGluZyB0byBt
YWtlIHRoZSBjb2RlIGluIGNsay1jb21wb3NpdGUuYyBtb3JlIGZ1dHVyZS1wcm9vZi4gSXQncwo+
Pj4gbm90IGEgY29uZGl0aW9uIHRoYXQgSSBhbSBhd2FyZSBvZi4KPj4+Cj4+PiBJIGRvbid0IGhh
dmUgYW55IFJvY2tjaGlwIGJvYXJkcyBteXNlbGYuCj4+PiBTbyBJIGFtIHRoYW5rZnVsIGZvciBh
bnkgaGVscCBJIGNhbiBnZXQuCj4+Pgo+Pj4KPj4+IEJlc3QgcmVnYXJkcywKPj4+IE1hcnRpbgo+
Pj4KPj4+Cj4+PiBbMF0KPj4+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L2Nsay9saW51eC5naXQvY29tbWl0Lz9oPWNsay1uZXh0JmlkPTY1OTQ5ODhmZDYy
NWZmMGQ5YThmOTBmMTc4OGUxNjE4NTM1OGEzZTYKPj4+Cj4+Pgo+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IExpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdAo+Pj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4gaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo+Pj4K
Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
