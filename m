Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 339E0C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 18:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wea9rvmn03cerApw4+hMjOwJtxI1yioYWIz9SfD1VUE=; b=dUVaeFrKmL0aF2
	gLq9f6nlKoaWIs6Ye27pkY6UoMMlpBYNdmezvm7taK57nzb0IUJZ2QD8pmPT/suv4DHpkq5HwyZ7b
	vkLvJNVHvtPahw0QtqWFEcpHJrIPN7S5sk26INRv3LeIhhg5RDxlD/EV7YNBbtLWzC2ZmcxlnOqms
	FIITym4Gt0B2pvFfebndPlQVsqV6ddlM8h1f86bchh276UPp6RzNhoV57AiblyJ9JGKpQTxYA/NMG
	tX9wZ9pcNFHdnfMdBZOXE3Yh+rHvKpLSH4k8PQIBvuQre0BHEjhz9trdnrWnVB7S8p/YeTOO6hjYZ
	I//kKfBmDH4vhgjUO1zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnlrJ-00AuFU-TF; Sun, 08 May 2022 18:42:21 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnlr8-00AuDa-Mq; Sun, 08 May 2022 18:42:12 +0000
Received: by mail-pl1-x62f.google.com with SMTP id c9so11280135plh.2;
 Sun, 08 May 2022 11:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=IMO3JIMi22IO+hwWBmWKXtb8kUpSnjqE7Vl3ahEaqwI=;
 b=K8N5U77Yr6n4pHiUjWYuQl7IfGe4W8zWHrZoWQJBeu/1bJVfNUxsb3zRetjDM6lYLk
 hazhGdYvcyPSMbsTy6QZcLCBsA4Lq3I894wxZ9NB2h/2gmKMp43uiB6X2Zsi58kuoTx4
 0yFzTOWeS1AP/VMfGeZwHTsSa5eGiNR2hCq7947GWfBFOJ7mq0L8+6dj7QvEt+WB8Izm
 WMNd7PpWoyohy9dxeL6gwWc8Y0a6iCQY867QiYW4CSFTwzF9vfFl6A1JSr1/uwKZkupr
 Oiw7qsIynoUGRj3h/0xG6fvB4OOQpHmLxh+MXpzC5mRzfwaowCsjFm7OD9UMx+lzkPtr
 zOQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=IMO3JIMi22IO+hwWBmWKXtb8kUpSnjqE7Vl3ahEaqwI=;
 b=fktJVcs2EuZkLyLv6FF0tuEDSzPbx8gZ47eo4uSrIztI4ZXrSUkd2RrYT/g78Auzji
 V7KDCjqwC1z1iYBCpBAL1Z87AGmKEpfNllgVxUD3m2r3zuZr7BmKEBjTHXcwo/oQl8/u
 4BTe487aQHMk2yXcYLuYXyN1jM3QNVXx/5eWFe/yKwNMyIeQrXBwedBKbnmCFEv4Nv04
 QhXlMygl8tYLJa9lMydAkbTP2zFPRwQi2lJZ7YnzqTErQITgjH8jhLAvWyHGRs3CfRHy
 R2GQrsVNKlOrodzcSWltwt4x6/vDfQinMFSOdROaxbKZQ/n8sjWjvkjaKLkRWZUA1y9n
 Yfjg==
X-Gm-Message-State: AOAM530K0nS1Q/RfPPEr6TT210xzp0WMuf/KookVOQwwbCEMfYfBV/tj
 WqnN4xBTUZTpd904fzdmJio=
X-Google-Smtp-Source: ABdhPJz5w8CFl7rCXPIolx29bkbpweJz41F2IEFIvYrs59TbolXN5i67/eGp5kjzMSaZWwXM+IPiDA==
X-Received: by 2002:a17:902:e5d2:b0:15e:9467:187 with SMTP id
 u18-20020a170902e5d200b0015e94670187mr13183152plf.123.1652035329537; 
 Sun, 08 May 2022 11:42:09 -0700 (PDT)
Received: from [172.30.1.41] ([14.32.163.5]) by smtp.gmail.com with ESMTPSA id
 2-20020aa79242000000b0050dc762813csm6968013pfp.22.2022.05.08.11.42.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 May 2022 11:42:09 -0700 (PDT)
Message-ID: <fa739928-ed1d-ed6f-52c2-541319d9cc2f@gmail.com>
Date: Mon, 9 May 2022 03:42:05 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [RFC PATCH 2/2] PM / devfreq: rk3399_dmc: Block PMU during
 transitions
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, Brian Norris
 <briannorris@chromium.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-kernel@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-pm@vger.kernel.org, Doug Anderson <dianders@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20220406014842.2771799-1-briannorris@chromium.org>
 <582e3645-b24e-356e-7f0f-0d37bb1e32e6@gmail.com>
 <6c6ec0db-111c-e48f-57ce-0e444a0d168e@gmail.com> <44651538.fMDQidcC6G@phil>
From: Chanwoo Choi <cwchoi00@gmail.com>
In-Reply-To: <44651538.fMDQidcC6G@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_114210_807562_30E5166E 
X-CRM114-Status: GOOD (  20.52  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjIuIDUuIDkuIDAwOjA3LCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBBbSBTYW1zdGFnLCA3
LiBNYWkgMjAyMiwgMTY6MjE6NTkgQ0VTVCBzY2hyaWViIENoYW53b28gQ2hvaToKPj4gT24gMjIu
IDQuIDE0LiAwODoxMywgQ2hhbndvbyBDaG9pIHdyb3RlOgo+Pj4gT24gMjIuIDQuIDE0LiAwNzo0
NSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+Pj4gSGksCj4+Pj4KPj4+PiBBbSBEb25uZXJzdGFn
LCAxNC4gQXByaWwgMjAyMiwgMDA6MTQ6NDAgQ0VTVCBzY2hyaWViIENoYW53b28gQ2hvaToKPj4+
Pj4gT24gMjIuIDQuIDYuIDEwOjQ4LCBCcmlhbiBOb3JyaXMgd3JvdGU6Cj4+Pj4+PiBTZWUgdGhl
IHByZXZpb3VzIHBhdGNoICgic29jOiByb2NrY2hpcDogcG93ZXItZG9tYWluOiBNYW5hZ2UgcmVz
b3VyY2UKPj4+Pj4+IGNvbmZsaWN0cyB3aXRoIGZpcm13YXJlIikgZm9yIGEgdGhvcm91Z2ggZXhw
bGFuYXRpb24gb2YgdGhlIGNvbmZsaWN0cy4KPj4+Pj4+IFdoaWxlIEFSTSBUcnVzdGVkIEZpcm13
YXJlIG1heSBiZSBtb2RpZnlpbmcgbWVtb3J5IGNvbnRyb2xsZXIgYW5kCj4+Pj4+PiBwb3dlci1k
b21haW4gc3RhdGVzLCB3ZSBuZWVkIHRvIGJsb2NrIHRoZSBrZXJuZWwncyBwb3dlci1kb21haW4g
ZHJpdmVyLgo+Pj4+Pj4KPj4+Pj4+IElmIHRoZSBwb3dlci1kb21haW4gZHJpdmVyIGlzIGRpc2Fi
bGVkLCB0aGVyZSBpcyBubyByZXNvdXJjZSBjb25mbGljdAo+Pj4+Pj4gYW5kIHRoaXMgYmVjb21l
cyBhIG5vLW9wLgo+Pj4+Pj4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEJyaWFuIE5vcnJpcyA8YnJp
YW5ub3JyaXNAY2hyb21pdW0ub3JnPgo+Pj4+Pj4gLS0tCj4+Pj4+Pgo+Pj4+Pj4gICAgIGRyaXZl
cnMvZGV2ZnJlcS9yazMzOTlfZG1jLmMgfCAxMyArKysrKysrKysrKysrCj4+Pj4+PiAgICAgMSBm
aWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykKPj4+Pj4+Cj4+Pj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kZXZmcmVxL3JrMzM5OV9kbWMuYwo+Pj4+Pj4gYi9kcml2ZXJzL2RldmZyZXEvcmsz
Mzk5X2RtYy5jCj4+Pj4+PiBpbmRleCBlNDk0ZDE0OTdkNjAuLmRhZmY0MDcwMjYxNSAxMDA2NDQK
Pj4+Pj4+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9yazMzOTlfZG1jLmMKPj4+Pj4+ICsrKyBiL2Ry
aXZlcnMvZGV2ZnJlcS9yazMzOTlfZG1jLmMKPj4+Pj4+IEBAIC0yMSw2ICsyMSw3IEBACj4+Pj4+
PiAgICAgI2luY2x1ZGUgPGxpbnV4L3J3c2VtLmg+Cj4+Pj4+PiAgICAgI2luY2x1ZGUgPGxpbnV4
L3N1c3BlbmQuaD4KPj4+Pj4+ICsjaW5jbHVkZSA8c29jL3JvY2tjaGlwL3BtX2RvbWFpbnMuaD4K
Pj4+Pj4+ICAgICAjaW5jbHVkZSA8c29jL3JvY2tjaGlwL3JrMzM5OV9ncmYuaD4KPj4+Pj4+ICAg
ICAjaW5jbHVkZSA8c29jL3JvY2tjaGlwL3JvY2tjaGlwX3NpcC5oPgo+Pj4+Pj4gQEAgLTkzLDYg
Kzk0LDE2IEBAIHN0YXRpYyBpbnQgcmszMzk5X2RtY2ZyZXFfdGFyZ2V0KHN0cnVjdCBkZXZpY2UK
Pj4+Pj4+ICpkZXYsIHVuc2lnbmVkIGxvbmcgKmZyZXEsCj4+Pj4+PiAgICAgICAgIG11dGV4X2xv
Y2soJmRtY2ZyZXEtPmxvY2spOwo+Pj4+Pj4gKyAgICAvKgo+Pj4+Pj4gKyAgICAgKiBFbnN1cmUg
cG93ZXItZG9tYWluIHRyYW5zaXRpb25zIGRvbid0IGludGVyZmVyZSB3aXRoIEFSTQo+Pj4+Pj4g
VHJ1c3RlZAo+Pj4+Pj4gKyAgICAgKiBGaXJtd2FyZSBwb3dlci1kb21haW4gaWRsaW5nLgo+Pj4+
Pj4gKyAgICAgKi8KPj4+Pj4+ICsgICAgZXJyID0gcm9ja2NoaXBfcG11X2Jsb2NrKCk7Cj4+Pj4+
PiArICAgIGlmIChlcnIpIHsKPj4+Pj4+ICsgICAgICAgIGRldl9lcnIoZGV2LCAiRmFpbGVkIHRv
IGJsb2NrIFBNVTogJWRcbiIsIGVycik7Cj4+Pj4+PiArICAgICAgICBnb3RvIG91dF91bmxvY2s7
Cj4+Pj4+PiArICAgIH0KPj4+Pj4+ICsKPj4+Pj4+ICAgICAgICAgLyoKPj4+Pj4+ICAgICAgICAg
ICogU29tZSBpZGxlIHBhcmFtZXRlcnMgbWF5IGJlIGJhc2VkIG9uIHRoZSBERFIgY29udHJvbGxl
cgo+Pj4+Pj4gY2xvY2ssIHdoaWNoCj4+Pj4+PiAgICAgICAgICAqIGlzIGhhbGYgb2YgdGhlIERE
UiBmcmVxdWVuY3kuCj4+Pj4+PiBAQCAtMTk4LDYgKzIwOSw4IEBAIHN0YXRpYyBpbnQgcmszMzk5
X2RtY2ZyZXFfdGFyZ2V0KHN0cnVjdCBkZXZpY2UKPj4+Pj4+ICpkZXYsIHVuc2lnbmVkIGxvbmcg
KmZyZXEsCj4+Pj4+PiAgICAgICAgIGRtY2ZyZXEtPnZvbHQgPSB0YXJnZXRfdm9sdDsKPj4+Pj4+
ICAgICBvdXQ6Cj4+Pj4+PiArICAgIHJvY2tjaGlwX3BtdV91bmJsb2NrKCk7Cj4+Pj4+PiArb3V0
X3VubG9jazoKPj4+Pj4+ICAgICAgICAgbXV0ZXhfdW5sb2NrKCZkbWNmcmVxLT5sb2NrKTsKPj4+
Pj4+ICAgICAgICAgcmV0dXJuIGVycjsKPj4+Pj4+ICAgICB9Cj4+Pj4+Cj4+Pj4+IEFja2VkLWJ5
OiBDaGFud29vIENob2kgPGN3MDAuY2hvaUBzYW1zdW5nLmNvbT4KPj4+Pgo+Pj4+IHNvIEkgZ3Vl
c3MgeW91J3JlIG9rIHdpdGggbWUgcGlja2luZyB1cCBib3RoIHBhdGNoZXMsIHJpZ2h0Pwo+Pj4+
IFtKdXN0IG1ha2luZyBzdXJlIDotKSBdCj4+Pgo+Pj4gVGhpcyBwYXRjaCBoYXZlIHRoZSBkZXBl
bmRlbmN5IG9mIGxhdGVzdCBkZXZmcmVxLW5leHQgYnJhbmNoLgo+Pj4gU28gdGhhdCBuZWVkIHRv
IG1ha2UgdGhlIGltbXV0YWJsZSBicmFuY2ggYmV0d2VlbiByb2NrY2hpcCBhbmQgZGV2ZnJlcS4K
Pj4+Cj4+Cj4+IEhpIEhlaWtvIGFuZCBCcmlhbiwKPj4KPj4gSXMgdGhlcmUgYW55IG90aGVyIHBy
b2dyZXNzPwo+Pgo+PiBJTUhPLCBpZiByb2NrY2hpcCBtYWludGFpbmVyIHJlcGx5IHRoZSBhY2tl
ZC1ieSBmcm9tIHBhdGNoMQo+PiBhbmQgdGhlbiBhZ3JlZSB0aGVzZSBwYXRjaGVzIHRvIGJlIGFw
cGxpZWQgdG8gZGV2ZnJlcS5naXQsCj4+IEkgY2FuIHRha2UgdGhlbS4KPiAKPiBzb3VuZHMgZ29v
ZCB0byBtZS4gUGF0Y2gxIGxvb2tzIGdvb2QgYW5kIGNvcnJlY3QgdG8gbWUsIHNvCj4gSSd2ZSBh
ZGRlZCBhIFJldmlld2VkLWJ5IGZvciBpdCBhbmQgaXQgZGVmaW50aWx5IG1ha2VzIHNlbnNlIGZv
cgo+IGJvdGggdG8gZ28gdGhyb3VnaCB0aGUgZGV2ZnJlcSB0cmVlIHRoZW4sIHNvIHdlIGRvbid0
IG5lZWQKPiBhZGRpdGlvbmFsIHN0YWJsZS1icmFuY2hlcyA6LSkKCk9LLiBJJ2xsIHRha2UgdGhl
bSB3aXRoIHlvdXIgcmV2aWV3ZWQtYnkgdGFnLiBUaGFua3MuCgoKLS0gCkJlc3QgUmVnYXJkcywK
U2Ftc3VuZyBFbGVjdHJvbmljcwpDaGFud29vIENob2kKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
