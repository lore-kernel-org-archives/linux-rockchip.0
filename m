Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA726C5B549
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 19:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+uRAnU+H2w8j7mcQe5BbDSUPbRGWR+nSeUDXm8+h9/A=; b=LTyPEDABx3EFBp
	geSzm3aoDK3p5z9b5gquhodcF5x2yGrvCrC/k1Se5qr0r209sAXdH90iuXt5iPdr0YhwGJAMoyLuE
	2Wd56Sjp+qyCvGF4Lz6LDTbI1JwmVlaot74h2qGM7rAs0YrAcKjj82NknFxFcGeIHDIJnOZFQOkR6
	F4Fk9YEAxDW+eQKT+RqC6sbafuMqxHQxsLXQQTsvuYSlDgqikdjLo6YJJHbLuDqrhokgJJJ5I7U3I
	WZVlm/wICD/7x8BzvIoJOaGHDUEVfcJbt4QwnhL8+jRuToalLX2ycLEybWH7C/28nplubjpMCdZHv
	A2VaRpWwIDrjb0QZaB6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMtZi-0000000E4oZ-1UW5;
	Wed, 04 Jun 2025 19:14:58 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMtXa-0000000E4fc-3Uq9;
	Wed, 04 Jun 2025 19:12:48 +0000
Received: by mail-qt1-x82a.google.com with SMTP id d75a77b69052e-4a4bb155edeso1487181cf.2;
        Wed, 04 Jun 2025 12:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749064365; x=1749669165; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v68ILt8xt28THMlmyuKMfaQcpvhx4IXAkUL4p7ZYZOA=;
        b=QcwJmAFIuWufOuwwGgfffsFIhR7uSTRh3y7o9MctWtrU1WWyVSYH2dzMWBl7B5tQl+
         4JY1Y5f8RnwqxUTq7x+exyCxutRc4aaDHoASAP/U9LGaAbN4jQCZoSEI4JY+8CZmW2Fo
         8o+1e9poO6mws0LXjCSnv6dGJh3q49JdrM2mLQET9eiJW22NsMTZf1ZYmYQGBAWjWTxx
         8kcQKGCtfAlZxS7qDiX6hi0d/IOEznUgfvoC2WGuHeoe9kK92P8dmwjXY9kc/5V7jmRv
         awJp5M93ioOrUwf3WD5TlpJPmu2ChFGRmM1bpMFg4RNUYpRDfllYKmPAKs16EOtDadaY
         iECA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749064365; x=1749669165;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v68ILt8xt28THMlmyuKMfaQcpvhx4IXAkUL4p7ZYZOA=;
        b=Abiyrj8iZdzrMaUmanwXy5yG6BG3p93Gi8NkseVRwG3HRyF17HBpZIDcwzmsYifNql
         MUvV70+Upb7LQN/8TJUIYJnUjciAmH/eSa8v1fyI5IyIFLP6j97+iWWxcpHCv75oCzFh
         vVs2E9eRGd//WL1wByGP1mMhG0YECsMlaS87/3z4QnrA1gxw3axY1d9RKkp8oSvYQDAr
         KCx/ymEhvfCWds4lcKsqprW2T4Rndm2Ysjhts/P2b215uGRvwBy0/ZsOKXEiyDqiRMZu
         fwwLPoNUHOQZBkxGnFGQBaE57eLw1NHz8F2ea/9UC3d1Kjggn0kdtV1lFSwhJmkQnYxM
         uoHA==
X-Forwarded-Encrypted: i=1; AJvYcCVNurIIZb1+JFcPhzCItJg/EeqDE9Du0p9hWs3YMi6lk8hcI0wqgnYlB9zClNZ6CQMgIWRiMmFTIz1yeAfbsr8=@lists.infradead.org, AJvYcCXAnly5ohM/642lnOQFk20v6T1M1N9RrAKNq7FLIolI7NAMGqwxKqTQuv8KqpF/iXf7nmyQQ/WEWjmxyRO5vv5h@lists.infradead.org
X-Gm-Message-State: AOJu0YwNv+aQwQlF7hcjkV0FaByMSBK8g/XMtl5o4G8AOvfb5ROFFOPc
	0O7TUM+7JrsM/9TQSYQCGpBB/cQKjDOSaPMJg6xNSW0NyBr+GdMRviy4+tC9M7XkkSSCtH6ZSSL
	AuJ4JF3MaytUpoyefX+loNtTY9Re5eJA=
X-Gm-Gg: ASbGncude7E2u659EJMu8mBIPZdiRR1hc15fs2zblxT9GR3ZuEaHW/k5xX2fACRkQir
	eNYJ0Hmkeb/3PvaLFr0F+gY8RDmHjDS0Lv8hL1DE4NwlTsNSnNn6OBecnXUwieZ+RZR6bJ8Xfru
	NhDG2lzr+YqvPa+OAV7YEEZfMEXm/psp8CCGmR4GjssGdXkGPYIq5jNoMNsHSlD7eGVw==
X-Google-Smtp-Source: AGHT+IHkGcI9KV0dFs+7Hj/zh+wdAmNhv6TFy7eW9sMjhV5X2zUe4MTyLbGWK9esEy06HGIELxjaKcjO6066Mlf9nY0=
X-Received: by 2002:ac8:5cd5:0:b0:48c:c121:7e27 with SMTP id
 d75a77b69052e-4a5a584733cmr74376181cf.50.1749064365064; Wed, 04 Jun 2025
 12:12:45 -0700 (PDT)
MIME-Version: 1.0
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <20250603-sige5-updates-v1-1-717e8ce4ab77@gmail.com> <6656934.DvuYhMxLoT@workhorse>
In-Reply-To: <6656934.DvuYhMxLoT@workhorse>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 4 Jun 2025 23:12:35 +0400
X-Gm-Features: AX0GCFspbBIHwcLfNzc6-jDHvamdNprrbgOXqKsRv_8yqqyAsKIYJM_cipXfo4o
Message-ID: <CABjd4Yx05SCm+03jWbsEP-A5AuhL14wLj=+VdKyQgqMbnxi3xQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: list all CPU supplies on ArmSoM Sige5
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_121246_892953_613C75FA 
X-CRM114-Status: GOOD (  22.96  )
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

T24gV2VkLCBKdW4gNCwgMjAyNSBhdCAxMDozOOKAr1BNIE5pY29sYXMgRnJhdHRhcm9saQo8bmlj
b2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gT24gVHVlc2RheSwgMyBK
dW5lIDIwMjUgMTk6MDE6MTMgQ2VudHJhbCBFdXJvcGVhbiBTdW1tZXIgVGltZSBBbGV4ZXkgQ2hh
cmtvdiB3cm90ZToKPiA+IExpc3QgYm90aCBDUFUgc3VwcGx5IHJlZ3VsYXRvcnMgd2hpY2ggZHJp
dmUgdGhlIGxpdHRsZSBhbmQgYmlnIENQVQo+ID4gY2x1c3RlcnMsIHJlc3BlY3RpdmVseSwgc28g
dGhhdCBjcHVmcmVxIGNhbiBwaWNrIHRoZW0gdXAuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQWxl
eGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgLi4uL2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU3Ni1hcm1zb20tc2lnZTUuZHRzICAgICAgfCAyOCArKysrKysrKysrKysr
KysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKykKPiA+Cj4gPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtYXJtc29tLXNp
Z2U1LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWFybXNvbS1zaWdl
NS5kdHMKPiA+IGluZGV4IGIwOWU3ODljNzVjNDdmZWM3Y2Y3ZTk4MTBhYjBkY2NhMzJkOTQwNGEu
LmQ5YzEyOWJlNTVhMGQ5OTdlMDRlNmQ2NzdjZGM5OGZiNTAzNTM0MTggMTAwNjQ0Cj4gPiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1hcm1zb20tc2lnZTUuZHRzCj4g
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1hcm1zb20tc2lnZTUu
ZHRzCj4gPiBAQCAtMjA3LDYgKzIwNywyMiBAQCB2Y2NfM3YzX3Vmc19zMDogcmVndWxhdG9yLXZj
Yy11ZnMtczAgewo+ID4gICAgICAgfTsKPiA+ICB9Owo+ID4KPiA+ICsmY3B1X2IwIHsKPiA+ICsg
ICAgIGNwdS1zdXBwbHkgPSA8JnZkZF9jcHVfYmlnX3MwPjsKPiA+ICt9Owo+ID4gKwo+ID4gKyZj
cHVfYjEgewo+ID4gKyAgICAgY3B1LXN1cHBseSA9IDwmdmRkX2NwdV9iaWdfczA+Owo+ID4gK307
Cj4gPiArCj4gPiArJmNwdV9iMiB7Cj4gPiArICAgICBjcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1X2Jp
Z19zMD47Cj4gPiArfTsKPiA+ICsKPiA+ICsmY3B1X2IzIHsKPiA+ICsgICAgIGNwdS1zdXBwbHkg
PSA8JnZkZF9jcHVfYmlnX3MwPjsKPiA+ICt9Owo+ID4gKwo+ID4gICZjb21icGh5MF9wcyB7Cj4g
PiAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiAgfTsKPiA+IEBAIC0yMTUsNiArMjMxLDE4IEBA
ICZjcHVfbDAgewo+ID4gICAgICAgY3B1LXN1cHBseSA9IDwmdmRkX2NwdV9saXRfczA+Owo+ID4g
IH07Cj4gPgo+ID4gKyZjcHVfbDEgewo+ID4gKyAgICAgY3B1LXN1cHBseSA9IDwmdmRkX2NwdV9s
aXRfczA+Owo+ID4gK307Cj4gPiArCj4gPiArJmNwdV9sMiB7Cj4gPiArICAgICBjcHUtc3VwcGx5
ID0gPCZ2ZGRfY3B1X2xpdF9zMD47Cj4gPiArfTsKPiA+ICsKPiA+ICsmY3B1X2wzIHsKPiA+ICsg
ICAgIGNwdS1zdXBwbHkgPSA8JnZkZF9jcHVfbGl0X3MwPjsKPiA+ICt9Owo+ID4gKwo+ID4gICZn
bWFjMCB7Cj4gPiAgICAgICBwaHktbW9kZSA9ICJyZ21paS1pZCI7Cj4gPiAgICAgICBjbG9ja19p
bl9vdXQgPSAib3V0cHV0IjsKPiA+Cj4gPgo+Cj4gUmV2aWV3ZWQtYnk6IE5pY29sYXMgRnJhdHRh
cm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+Cj4gVGVzdGVkLWJ5OiBOaWNv
bGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgo+Cj4gPiBz
byB0aGF0IGNwdWZyZXEgY2FuIHBpY2sgdGhlbSB1cC4KPgo+IEZ3aXcsIGV2ZW4gd2l0aG91dCB0
aGlzIHBhdGNoIHRoZXkncmUgcGlja2VkIHVwIGJ5IGNwdWZyZXEtZHQgZm9yIG1lOgo+Cj4gICAg
IHVzZXJAdHJpeGllOn4kIHN1ZG8gY3B1cG93ZXIgZnJlcXVlbmN5LWluZm8KPiAgICAgICBhbmFs
eXppbmcgQ1BVIDU6Cj4gICAgICAgZHJpdmVyOiBjcHVmcmVxLWR0Cj4gICAgICAgQ1BVcyB3aGlj
aCBydW4gYXQgdGhlIHNhbWUgaGFyZHdhcmUgZnJlcXVlbmN5OiA0IDUgNiA3Cj4gICAgICAgQ1BV
cyB3aGljaCBuZWVkIHRvIGhhdmUgdGhlaXIgZnJlcXVlbmN5IGNvb3JkaW5hdGVkIGJ5IHNvZnR3
YXJlOiA0IDUgNiA3Cj4gICAgICAgbWF4aW11bSB0cmFuc2l0aW9uIGxhdGVuY3k6IDQwLjAgdXMK
PiAgICAgICBoYXJkd2FyZSBsaW1pdHM6IDQwOCBNSHogLSAyLjMwIEdIego+ICAgICAgIGF2YWls
YWJsZSBmcmVxdWVuY3kgc3RlcHM6ICA0MDggTUh6LCA2MDAgTUh6LCA4MTYgTUh6LCAxLjAxIEdI
eiwgMS4yMCBHSHosIDEuNDIgR0h6LCAxLjYxIEdIeiwgMS44MCBHSHosIDIuMDIgR0h6LCAyLjIx
IEdIeiwgMi4zMCBHSHoKPiAgICAgICBhdmFpbGFibGUgY3B1ZnJlcSBnb3Zlcm5vcnM6IG9uZGVt
YW5kIHVzZXJzcGFjZSBwZXJmb3JtYW5jZSBzY2hlZHV0aWwKPiAgICAgICBjdXJyZW50IHBvbGlj
eTogZnJlcXVlbmN5IHNob3VsZCBiZSB3aXRoaW4gNDA4IE1IeiBhbmQgMi4zMCBHSHouCj4gICAg
ICAgICAgICAgICAgICAgICAgIFRoZSBnb3Zlcm5vciAic2NoZWR1dGlsIiBtYXkgZGVjaWRlIHdo
aWNoIHNwZWVkIHRvIHVzZQo+ICAgICAgICAgICAgICAgICAgICAgICB3aXRoaW4gdGhpcyByYW5n
ZS4KPiAgICAgICBjdXJyZW50IENQVSBmcmVxdWVuY3k6IDEuNjEgR0h6IChhc3NlcnRlZCBieSBj
YWxsIHRvIGhhcmR3YXJlKQo+ICAgICB1c2VyQHRyaXhpZTp+JCB1bmFtZSAtYQo+ICAgICBMaW51
eCB0cml4aWUgNi4xNS4wLTExMTczLWc1NDZiMWM5ZTkzYzIgIzIgU01QIFBSRUVNUFQgV2VkIEp1
biAgNCAyMDozMjo1MiBDRVNUIDIwMjUgYWFyY2g2NCBHTlUvTGludXgKCkZyZXF1ZW5jaWVzIGFy
ZSBmaW5lLCBidXQgSSBkb24ndCB0aGluayB0aGUgbW9yZSBwb3dlciBodW5ncnkgYmlnIENQVQpj
bHVzdGVyIGdldHMgYW55IHZvbHRhZ2Ugc2NhbGluZyB3aXRob3V0IGl0LiBPbmNlIEkgdHJ5IHRv
IGxvYWQgdGhlCnN5c3RlbSBlbm91Z2ggdGhhdCB0aGUgZ292ZXJub3IgZGVjaWRlcyB0byBidW1w
IHRoZSBiaWcgY2x1c3RlcgpmcmVxdWVuY3kgdXAsIHRoZSByZWd1bGF0b3Igc3RheXMgYXQgODUw
MDAwIG1pY3Jvdm9sdHMsIGNhdXNpbmcgcmFuZG9tCnJlYm9vdHMgd2hlbiB0aGUgd2hvbGUgY2x1
c3RlciBzdGFydHMgc3RhcnZpbmcuIFdpdGggdGhlIHBhdGNoLAp2b2x0YWdlIG9zY2lsbGF0ZXMg
YmV0d2VlbiA3MDAwMDAtNzM3MDAwIG1pY3Jvdm9sdHMgaW4gaWRsZSBhbmQganVtcHMKdXAgdG8g
OTUwMDAwIHVuZGVyIGxvYWQsIGFuZCB0aGUgc3lzdGVtIHNlZW1zIHN0YWJsZS4KCkhlcmUncyB3
aGF0IEkgdXNlZCB0byBtb25pdG9yIHRoZSB2b2x0YWdlICh0aGVyZSBtdXN0IGJlIGEgYmV0dGVy
IHdheQp0byBkbyBpdCwgYnV0IGl0IHdvcmtzKToKc2lnZTUgfiAjIHdhdGNoIGNhdCBgZ3JlcCAt
ciAuIC9zeXMvY2xhc3MvcmVndWxhdG9yLyovbmFtZSB8IGdyZXAKdmRkX2NwdV9iaWdfczAgfCBz
ZWQgLWUgJ3MvbmFtZS4qLy8nYC9taWNyb3ZvbHRzCgpBbmQgaW4gYW5vdGhlciB0ZXJtaW5hbDoK
c2lnZTUgfiAjIHN0cmVzcy1uZyAtYzgKClRoaXMgbWlnaHQgd2FycmFudCBhIG5vdGUgaW4gdGhl
IGNvbW1pdCBtZXNzYWdlIEkgZ3Vlc3MgOikKClRoYW5rcyBmb3IgeW91ciByZXZpZXcgYW5kIHRl
c3RpbmchCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
