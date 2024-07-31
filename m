Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D720DC3DA64
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 12:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxCIl9pONOwhcmDYR6RsEee5L51JtrJYCvAIcIAlR8A=; b=2+Dk78jC7DuY3k
	HTY2D1LKW47//Eg/J1yKTyRVG38C4H3bChvEOnk2Q3l9jySpXWkzALlRQudfahn/o2Y9XFJTIgV6X
	6rey9vCMO+pl/wr4xXHue03Jeq5+5Bv12HGNRHKvokhdVl2ACZMFxktIFRpOiG9rg5Hx9i2vLurR0
	PV06y2G2AxsEbpwmENKBOxAPFrgbakOd2zhoqHtyqTN4MKORgb+8252pz2TAH/mfpkd5vI8vXFIC7
	GYlkkfOUnesHctCIRuTffBrY6z7WJ5cj/BrF7UvBvo+wDDARbix2rysOPNRuNGRA09MEgp9VH6ZGr
	QbhcIZlwly71k6QMo2tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ8t4-00000001CUs-1YaO;
	Wed, 31 Jul 2024 12:57:02 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ8sZ-00000001CMk-1Cq1;
	Wed, 31 Jul 2024 12:56:33 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-45019dccc3aso23190761cf.1;
        Wed, 31 Jul 2024 05:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722430590; x=1723035390; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1seQq6pVWKt421meYywLs/KfxY3tgGQZFmNZ1IQhRhU=;
        b=Z1Xe6QaNI1uZISxYQALVJJcwllz7Z1wXgyPoPIj5htrCFzdWXcQh0Bqa5XO6q24Wit
         FL0gDnKCaiorPZZzNynLBYC4vld0HZa5dUYj6iWpWseaOpsddKCt6oclcZ2Mhf8TZUqU
         0yc5gFAhB/wL54erZv1J36kPL1S/jySrOe2fS5LwUrTQwtAw5r/1s/lK746+9JiVK8x8
         lm6vkv41BrwWDMKuZ+f49M9u152VC62IpFCJAhLVf2RNUakF/StZ5tRADfQjUHOHab+q
         ++v6u/kshmHFgud+Jcr8F8+2hYuKZjlv/H4m7DYWqkn7Zu2Jk2grxnJZRlpDSiL6/Map
         N2hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722430590; x=1723035390;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1seQq6pVWKt421meYywLs/KfxY3tgGQZFmNZ1IQhRhU=;
        b=wsOU7GhNN2B8RR18AGQKVknLUT9BbEShCfIWU8987JOlwmeCli89DK3FBWjvNu+YT7
         EB+Zg/iqT6p8QqZeZS0wLLZjRZzZ+qNyOlcWJDcvkLF4oq2uOjF4cs61pqE+4+MP+7os
         sJFv3OWMpr6Kk+p4Vg3khfmoMRdO/ExUP6OTMUtMMIJLo2DiHl7y2LwrssIvGyjj8U4F
         qFXYA/4n5hcX5UA0s983vBVLPNdm1G4Nl8IF0QZJB1MtyCaBrPBgSuRx2uDit4C+pAPS
         Dqn/J5K6Cl89G4An7VG6f9nzXYoGK8lV3bzvkpf3qgUij05Jbz6rmGxJWRkxu0q0cyBk
         AvWg==
X-Forwarded-Encrypted: i=1; AJvYcCXk44Ly2f6rI7ui6eQdh1QZkAB0aJ0Igkv4Lhb6gzKpnmKrn3S4lpe5pqa/E10CPI5C/F4caMVSTFCV4N11QUrjZwen4eOoTbjM8wf1pY2Zt44+s/8/XbNqC2b8fCKMVvStu0QvcNeaxlYui/myrNRFMzVR4WCM+I8=
X-Gm-Message-State: AOJu0YwmT1Is2CbxC7CATiBUoeX4j/8GEeXTZdD9ihrNnynMSCLxsM7L
	iJ54weA/lfqeFihJY8HnPwmcLa7drGz463ORZsOBoXcTur5V+BFfz7n22vZl1T5TFH6rP3Kjsg6
	fHEaGEVquY0mzDC1B5/G54AepYYo=
X-Google-Smtp-Source: AGHT+IHjDtpIf0QCPWYz+XhMAa8yvBe/ManCTONa09BmUisSVpzkusuCKuxED1ndPBdlxCf66ZyqBkZoqGckyZQwO10=
X-Received: by 2002:ac8:7d10:0:b0:447:f469:b58d with SMTP id
 d75a77b69052e-45004f4e214mr187667771cf.42.1722430589901; Wed, 31 Jul 2024
 05:56:29 -0700 (PDT)
MIME-Version: 1.0
References: <20240731061132.703368-1-jacobe.zang@wesion.com>
 <20240731061132.703368-5-jacobe.zang@wesion.com> <0a78a0fb-0a5e-424f-a801-4a63b9ee1a49@gmail.com>
 <3ded8aea-ee11-43da-9dd7-1259cf931747@broadcom.com> <CABjd4YxiSY0A0iVHGHw9RDey+avxmzUapoLLLyf=80MzVX0yWA@mail.gmail.com>
 <6e34c814-a6dc-4a96-9e46-ca25af67f4f6@broadcom.com>
In-Reply-To: <6e34c814-a6dc-4a96-9e46-ca25af67f4f6@broadcom.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 31 Jul 2024 15:56:18 +0300
Message-ID: <CABjd4YxdCh7EceYOfcFxKtV0H7Von0oZAMWD=69sM6y4-CoAQw@mail.gmail.com>
Subject: Re: [PATCH v6 4/5] wifi: brcmfmac: Add optional lpo clock enable support
To: Arend van Spriel <arend.vanspriel@broadcom.com>
Cc: Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org, krzk+dt@kernel.org, 
	heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, conor+dt@kernel.org, 
	efectn@protonmail.com, dsimic@manjaro.org, jagan@edgeble.ai, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	arend@broadcom.com, linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
	megi@xff.cz, duoming@zju.edu.cn, bhelgaas@google.com, minipli@grsecurity.net, 
	brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com, 
	nick@khadas.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_055631_352627_61C4F785 
X-CRM114-Status: GOOD (  41.77  )
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

T24gV2VkLCBKdWwgMzEsIDIwMjQgYXQgMzozMuKAr1BNIEFyZW5kIHZhbiBTcHJpZWwKPGFyZW5k
LnZhbnNwcmllbEBicm9hZGNvbS5jb20+IHdyb3RlOgo+Cj4gT24gNy8zMS8yMDI0IDI6MDEgUE0s
IEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4gT24gV2VkLCBKdWwgMzEsIDIwMjQgYXQgMjoxNeKA
r1BNIEFyZW5kIHZhbiBTcHJpZWwKPiA+IDxhcmVuZC52YW5zcHJpZWxAYnJvYWRjb20uY29tPiB3
cm90ZToKPiA+Pgo+ID4+IE9uIDcvMzEvMjAyNCAxMjoxNiBQTSwgQWxleGV5IENoYXJrb3Ygd3Jv
dGU6Cj4gPj4+IEhpIEphY29iZSwKPiA+Pj4KPiA+Pj4KPiA+Pj4gT24gMzEvMDcvMjAyNCA5OjEx
IGFtLCBKYWNvYmUgWmFuZyB3cm90ZToKPiA+Pj4gICA+IFdpRmkgbW9kdWxlcyBvZnRlbiByZXF1
aXJlIDMya0h6IGNsb2NrIHRvIGZ1bmN0aW9uLiBBZGQgc3VwcG9ydCB0bwo+ID4+PiAgID4gZW5h
YmxlIHRoZSBjbG9jayB0byBQQ0llIGRyaXZlciBhbmQgbW92ZSAiYnJjbSxiY200MzI5LWZtYWMi
IGNoZWNrCj4gPj4+ICAgPiB0byB0aGUgdG9wIG9mIGJyY21mX29mX3Byb2JlCj4gPj4+ICAgPgo+
ID4+PiAgID4gQ28tZGV2ZWxvcGVkLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiA+
Pj4gICA+IFNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+ID4+PiAg
ID4gU2lnbmVkLW9mZi1ieTogSmFjb2JlIFphbmcgPGphY29iZS56YW5nQHdlc2lvbi5jb20+Cj4g
Pj4+ICAgPiAtLS0KPiA+Pj4gICA+ICAuLi4vbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIx
MS9icmNtZm1hYy9vZi5jICAgIHwgMTIgKysrKysrKysrKystCj4gPj4+ICAgPiAgMSBmaWxlIGNo
YW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Pj4gICA+Cj4gPj4+ICAg
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2Jy
Y21mbWFjL29mLmMKPiA+Pj4gYi9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAy
MTEvYnJjbWZtYWMvb2YuYwo+ID4+PiAgID4gaW5kZXggZTQwNmUxMTQ4MWE2Mi4uN2UwYTJhZDVj
N2M4YSAxMDA2NDQKPiA+Pj4gICA+IC0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29t
L2JyY204MDIxMS9icmNtZm1hYy9vZi5jCj4gPj4+ICAgPiArKysgYi9kcml2ZXJzL25ldC93aXJl
bGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvb2YuYwo+ID4+PiAgID4gQEAgLTYsNiAr
Niw3IEBACj4gPj4+ICAgPiAgI2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4gPj4+ICAgPiAgI2luY2x1
ZGUgPGxpbnV4L29mX2lycS5oPgo+ID4+PiAgID4gICNpbmNsdWRlIDxsaW51eC9vZl9uZXQuaD4K
PiA+Pj4gICA+ICsjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4gPj4+ICAgPgo+ID4+PiAgID4gICNp
bmNsdWRlIDxkZWZzLmg+Cj4gPj4+ICAgPiAgI2luY2x1ZGUgImRlYnVnLmgiCj4gPj4+ICAgPiBA
QCAtNzAsMTIgKzcxLDE2IEBAIHZvaWQgYnJjbWZfb2ZfcHJvYmUoc3RydWN0IGRldmljZSAqZGV2
LCBlbnVtCj4gPj4+IGJyY21mX2J1c190eXBlIGJ1c190eXBlLAo+ID4+PiAgID4gIHsKPiA+Pj4g
ICA+ICAgICAgc3RydWN0IGJyY21mbWFjX3NkaW9fcGQgKnNkaW8gPSAmc2V0dGluZ3MtPmJ1cy5z
ZGlvOwo+ID4+PiAgID4gICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKnJvb3QsICpucCA9IGRldi0+
b2Zfbm9kZTsKPiA+Pj4gICA+ICsgICAgc3RydWN0IGNsayAqY2xrOwo+ID4+PiAgID4gICAgICBj
b25zdCBjaGFyICpwcm9wOwo+ID4+PiAgID4gICAgICBpbnQgaXJxOwo+ID4+PiAgID4gICAgICBp
bnQgZXJyOwo+ID4+PiAgID4gICAgICB1MzIgaXJxZjsKPiA+Pj4gICA+ICAgICAgdTMyIHZhbDsK
PiA+Pj4gICA+Cj4gPj4+ICAgPiArICAgIGlmICghbnAgfHwgIW9mX2RldmljZV9pc19jb21wYXRp
YmxlKG5wLCAiYnJjbSxiY200MzI5LWZtYWMiKSkKPiA+Pj4gICA+ICsgICAgICAgIHJldHVybjsK
PiA+Pj4KPiA+Pj4gRGlkIHlvdSB0ZXN0IHRoaXM/IFRoZSBEVFMgcGF0Y2ggeW91IHNlbnQgYXMg
cGFydCBvZiB0aGlzIHNlcmllcyBkb2Vzbid0Cj4gPj4+IGxpc3QgImJyY20sYmNtNDMyOS1mbWFj
IiBpbiB0aGUgY29tcGF0aWJsZSwgc28gdGhpcyB3aWxsIHByb2JhYmx5IHJldHVybgo+ID4+PiBy
aWdodCBoZXJlLCBza2lwcGluZyBvdmVyIHRoZSByZXN0IG9mIHlvdXIgcGF0Y2guCj4gPj4+Cj4g
Pj4+IFBsZWFzZSB0ZXN0IGJlZm9yZSByZXNlbmRpbmcsIGJvdGggd2l0aCBhbmQgd2l0aG91dCB0
aGUgZHJpdmVyIGZvciB0aGUKPiA+Pj4gQmx1ZXRvb3RoIHBhcnQgb2YgdGhlIGNoaXAgKHNpbmNl
IGl0IGFsc28gdG91Y2hlcyBjbG9ja3MpLgo+ID4+Pgo+ID4+PiBZb3UgYXJlIGFsc28gY2hhbmdp
bmcgdGhlIGJlaGF2aW9yIGZvciBvdGhlciBzeXN0ZW1zIGJ5IHB1dHRpbmcgdGhpcwo+ID4+PiBj
aGVjayBmdXJ0aGVyIHVwIHRoZSBwcm9iZSBwYXRoLCB3aGljaCBtaWdodCBicmVhayB0aGluZ3Mg
Zm9yIG5vIHJlYXNvbi4KPiA+Pj4gQmV0dGVyIHB1dCB5b3VyIGNsay1yZWxhdGVkIGFkZGl0aW9u
IGJlbG93IHdoZXJlIHRoaXMgY2hlY2sgd2FzCj4gPj4+IG9yaWdpbmFsbHksIHJhdGhlciB0aGFu
IHJlb3JkZXIgc3R1ZmYgeW91IGRvbid0IGhhdmUgdG8gcmVvcmRlci4KPiA+Pgo+ID4+IFRoYXQg
d2FzIHVwb24gbXkgc3VnZ2VzdGlvbi4gVGhhdCBjaGVjayB3YXMgb3JpZ2luYWxseSBhdCB0aGUg
dG9wIG9mIHRoZQo+ID4+IGZ1bmN0aW9uLCBidXQgcGVvcGxlIGFkZGVkIHN0dWZmIGJlZm9yZSB0
aGF0LiBJIGFncmVlIHRoYXQgbWFrZXMgdGhlCj4gPj4gY29tcGF0aWJsZSAiYnJjbSxicmNtNDMy
OS1mbWFjIiByZXF1aXJlZCB3aGljaCBpcyB3aGF0IHRoZSB0ZXh0dWFsCj4gPj4gYmluZGluZyBz
dGF0ZWQgYmVmb3JlIHRoZSBzd2l0Y2ggdG8gWUFNTCB3YXMgbWFkZToKPiA+Pgo+ID4+ICIiIgo+
ID4+IEJyb2FkY29tIEJDTTQzeHggRnVsbG1hYyB3aXJlbGVzcyBTRElPIGRldmljZXMKPiA+Pgo+
ID4+IFRoaXMgbm9kZSBwcm92aWRlcyBwcm9wZXJ0aWVzIGZvciBjb250cm9sbGluZyB0aGUgQnJv
YWRjb20gd2lyZWxlc3MKPiA+PiBkZXZpY2UuIFRoZQo+ID4+IG5vZGUgaXMgZXhwZWN0ZWQgdG8g
YmUgc3BlY2lmaWVkIGFzIGEgY2hpbGQgbm9kZSB0byB0aGUgU0RJTyBjb250cm9sbGVyIHRoYXQK
PiA+PiBjb25uZWN0cyB0aGUgZGV2aWNlIHRvIHRoZSBzeXN0ZW0uCj4gPj4KPiA+PiBSZXF1aXJl
ZCBwcm9wZXJ0aWVzOgo+ID4+Cj4gPj4gICAgLSBjb21wYXRpYmxlIDogU2hvdWxkIGJlICJicmNt
LGJjbTQzMjktZm1hYyIuCj4gPj4gIiIiCj4gPj4KPiA+PiBOb3Qgc3VyZSB3aGV0aGVyIHRoaXMg
aXMgc3RpbGwgdHJ1ZSBmb3IgWUFNTCB2ZXJzaW9uIChwb29yIFlBTUwgcmVhZGluZwo+ID4+IHNr
aWxscyA7LSkgKSwgYnV0IGl0IHNob3VsZCBhcyB0aGUgc3dpdGNoIGZyb20gdGV4dHVhbCB0byBZ
QU1MIHNob3VsZAo+ID4+IG5vdCBoYXZlIGNoYW5nZWQgdGhlIGJpbmRpbmdzIHNwZWNpZmljYXRp
b24uCj4gPj4KPiA+Pj4gICA+ICsKPiA+Pj4gICA+ICAgICAgLyogQXBwbGUgQVJNNjQgcGxhdGZv
cm1zIGhhdmUgdGhlaXIgb3duIGlkZWEgb2YgYm9hcmQgdHlwZSwKPiA+Pj4gcGFzc2VkIGluCj4g
Pj4+ICAgPiAgICAgICAqIHZpYSB0aGUgZGV2aWNlIHRyZWUuIFRoZXkgYWxzbyBoYXZlIGFuIGFu
dGVubmEgU0tVIHBhcmFtZXRlcgo+ID4+PiAgID4gICAgICAgKi8KPiA+Pj4gICA+IEBAIC0xMTMs
OCArMTE4LDEzIEBAIHZvaWQgYnJjbWZfb2ZfcHJvYmUoc3RydWN0IGRldmljZSAqZGV2LCBlbnVt
Cj4gPj4+IGJyY21mX2J1c190eXBlIGJ1c190eXBlLAo+ID4+PiAgID4gICAgICAgICAgb2Zfbm9k
ZV9wdXQocm9vdCk7Cj4gPj4+ICAgPiAgICAgIH0KPiA+Pj4gICA+Cj4gPj4+ICAgPiAtICAgIGlm
ICghbnAgfHwgIW9mX2RldmljZV9pc19jb21wYXRpYmxlKG5wLCAiYnJjbSxiY200MzI5LWZtYWMi
KSkKPiA+Pj4gICA+ICsgICAgY2xrID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsX2VuYWJsZWQoZGV2
LCAibHBvIik7Cj4gPj4+ICAgPiArICAgIGlmICghSVNfRVJSX09SX05VTEwoY2xrKSkgewo+ID4+
PiAgID4gKyAgICAgICAgYnJjbWZfZGJnKElORk8sICJlbmFibGluZyAzMmtIeiBjbG9ja1xuIik7
Cj4gPj4+ICAgPiArICAgICAgICBjbGtfc2V0X3JhdGUoY2xrLCAzMjc2OCk7Cj4gPj4+ICAgPiAr
ICAgIH0gZWxzZSB7Cj4gPj4+ICAgPiAgICAgICAgICByZXR1cm47Cj4gPj4+Cj4gPj4+IFdoeSBy
ZXR1cm4gaGVyZT8gSWYgdGhlIGNsb2NrIGlzIG9wdGlvbmFsLCBhIGxvdCBvZiBzeXN0ZW1zIHdp
bGwgbm90Cj4gPj4+IGhhdmUgaXQgLSB0aGF0IHNob3VsZG4ndCBwcmV2ZW50IHRoZSBkcml2ZXIg
ZnJvbSBwcm9iaW5nLiBBbmQgeW91IGFyZQo+ID4+PiBzdGlsbCBub3QgaGFuZGxpbmcgdGhlIC1F
UFJPQkVfREVGRVIgY2FzZSB3aGljaCB3YXMgbWVudGlvbmVkIG9uIHlvdXIKPiA+Pj4gcHJldmlv
dXMgc3VibWlzc2lvbi4KPiA+Pgo+ID4+IFJpZ2h0LiBUaGUgZWxzZSBzdGF0ZW1lbnQgYWJvdmUg
Y291bGQvc2hvdWxkIGJlOgo+ID4+Cj4gPj4gfSBlbHNlIGlmIChjbGsgJiYgUFRSX0VSUihjbGsp
ID09IC1FUFJPQkVfREVGRVIpIHsKPiA+PiAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoY2xrKTsK
PiA+PiB9Cj4gPgo+ID4gLi4uIHBsdXMgY2hhbmdlIHRoZSBmdW5jdGlvbiBwcm90b3R5cGUgdG8g
cmV0dXJuIGludCBhbmQgcHJvcGFnYXRlCj4gPiB0aGF0IGVycm9yIGNvZGUgdGhyb3VnaCBicmNt
Zl9nZXRfbW9kdWxlX3BhcmFtIHRvIGJyY21mX3BjaWVfcHJvYmUncwo+ID4gcmV0dXJuIHZhbHVl
LiBJIGd1ZXNzIGNoZWNraW5nIGNsayBmb3IgTlVMTCBpcyBhbHNvIHJlZHVuZGFudCBpbiB0aGlz
Cj4gPiBjYXNlPwo+Cj4gT25seSB3YW50ZWQgdG8gZ2l2ZSB0aGUgc3VnZ2VzdGlvbiB0byBnZXQg
c3RhcnRlZC4gUHJvcGFnYXRpbmcgdGhlCj4gcmV0dXJuIHZhbHVlIHNlZW1lZCBvYnZpb3VzIHRv
IG1lLCBidXQgeW91IGFyZSBhYnNvbHV0ZWx5IHJpZ2h0Lgo+IFBUUl9FUlIoTlVMTCkgd2lsbCBw
cm9iYWJseSBiZSBzb21ldGhpbmcgZWxzZSB0aGFuIC1FUFJPQkVfREVGRVIgYnV0IGl0Cj4gc2Vl
bXMgb2RkIHRvIG1lLiBNYXliZSBQVFJfRVJSX09SX1pFUk8oY2xrKSBpcyBhIGJldHRlciBvcHRp
b24gaGVyZS4KCkluZGVlZC4gUGVyaGFwcyBzb21ldGhpbmcgYWxvbmcgdGhlIGxpbmVzIG9mOgoK
ICAgICAgIGNsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbF9lbmFibGVkKGRldiwgImxwbyIpOwog
ICAgICAgaWYgKCFJU19FUlJfT1JfTlVMTChjbGspKSB7CiAgICAgICAgICAgICAgIGJyY21mX2Ri
ZyhJTkZPLCAiZW5hYmxpbmcgMzJrSHogY2xvY2tcbiIpOwogICAgICAgICAgICAgICByZXR1cm4g
Y2xrX3NldF9yYXRlKGNsaywgMzI3NjgpOwogICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgICAg
cmV0dXJuIFBUUl9FUlJfT1JfWkVSTyhjbGspOwogICAgICAgfQoKLi4uIHdoaWNoIHNob3VsZCB0
aGVuIGdvIGF0IHRoZSB2ZXJ5IGVuZCBvZiBicmNtZl9vZl9wcm9iZS4gQW5kIGFsbCBvZgp0aGUg
ZXhpc3Rpbmcgdm9pZCByZXR1cm5zIHNob3VsZCBnZXQgYXBwcm9wcmlhdGUgZXJybm8ncy4gQW5k
IHRoZQpmdW5jdGlvbnMgcHJvdG90eXBlcyBzaG91bGQgYmUgdXBkYXRlZCBhbG9uZyB0aGUgY2Fs
bCBjaGFpbi4gQW5kIHRoZW4KaXQgd291bGQgc3RpbGwgb25seSB3b3JrIGFmdGVyIHB3cnNlcSBp
cyBhZGRlZCB0byBlbnN1cmUgdGhhdCBwb3dlcgphbmQgd2FrZSBzaWduYWxzIGFyZSBhcHBsaWVk
IGNvcnJlY3RseSBhbG9uZyB3aXRoIHRoaXMgY2xvY2ssIGFzClNlYmFzdGlhbiBwb2ludGVkIG91
dCBpbiB0aGUgb3RoZXIgdGhyZWFkIDopCgpXaGljaCByZWFsbHkgcHJvbXB0cyBhIHF1ZXN0aW9u
OiBzaG91bGQgdGhpcyBjbG9jayBiZSBhZGRlZCB0byB0aGUKUENJZSBkcml2ZXIgYW5kIHRoZSBy
ZXNwZWN0aXZlIERUIGJpbmRpbmcgaW4gdGhlIGZpcnN0IHBsYWNlLCBvcgpzaG91bGQgaXQgaW5z
dGVhZCBiZSBjbGFpbWVkIGJ5IHB3cnNlcSwgbGVhdmluZyBicmNtZm1hYyBhbG9uZT8KCkJlc3Qg
cmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
