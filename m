Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88E32C79F9F
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2026 14:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYhSMvL31nVkKju+6pJ5hUqgOVaQMQZ3bV50JuXsirg=; b=Y8KiSJ8rrjZYjs
	tXsR1TVuUfbulQiNzpPJOgcQYP5q2cXYMNUfyZuvg3F1pv01bQ9zJrpMVD+80LO9GYSfH1ZlNGxTs
	2TS+zm7ro8+0GIZNge9M7RagScxexluBWF8RFGDbrkCf2AYo3/WGTTrO1QopNhFUb724wT33cSGmV
	tEBRu/+lmQncNBdf6L66IBaRybmektx04dOAFfx17Ko77tNIxB9SJsr17qqwvgw3FF6geCkmMaVhB
	PEtzONYD7MRHQXjNOlSMZPLJ7XVXoM2wNxTVPMUm+A7BZJzLybRYrespGIn0V5FJZHGtNVvuKMt+B
	8HkIsNv+pZeq+JtvywRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4g59-0000000Eg2y-2L8O;
	Thu, 10 Sep 2026 14:48:55 +0000
Received: from mail-ej2-x10.google.com ([2a00:1450:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4g56-0000000Eg1J-0337
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Sep 2026 14:48:54 +0000
Received: by mail-ej2-x10.google.com with SMTP id a640c23a62f3a-c2940ef15d3so204491566b.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Sep 2026 07:48:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789051729; cv=none;
        d=google.com; s=arc-20260327;
        b=ZsoLDoKFzLnA9Md6BSj+VHcF6rMhUPjgANVq9o0bCDvWT9uq3Rv5b+MpRHbVbOviq3
         AjltQ8AGP9LIwj58FnuaDs3avDuX3n3NTj+xJUIkUHjNJl9+s/+BHA1o+f6vsJcHw3TM
         Ui3qQbtOz/TAW8K0r6xULjM6iyfglAZ+gC0vgxHL5M29NcLNCLB48JESqNqFG1sska5/
         tCRDdr/nXxcXJg3YI4UcvqGU/jwf9U2cvfc2op5h8atch/Ku83vGwtCIPEvPX3a1+3WJ
         ntu1HsDh6scL/XvspJUlXrxW2gCu/7T4U5kMwg2m/CN+0mp11/kH+NqyOlli5V7bP5KP
         Xy7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZGkfTmvcfg2tYgnaJgCLfP1/mFjyPE2KGae6+BF91/w=;
        fh=RIosrqeDXHzMrMAK2JbOp9Kwgrpw2Vso4kBz1IaFggg=;
        b=GE5aMJIif6+hzdkOZd5YQ4Flkz8RO7pg+thD/O1Xgt4NR2XPURA+er3P4kcASQBpj3
         Gs8+HOfPy0NP/641hbB0veNrFt5Y/Xzl3sWC9kpkJFw33cgWTOpktO3xkizTQzp+WUSV
         a1GSkPhgWKXscZPdAvLYucjE2qJRav21+2NmzgWXP3EKcPL0uaoyb+dj20w4U+D4LRNc
         WO4eou0jkjoqV8BWSIkbozAghvBey2wWHZYpt8jiG3xfEYDs35DCgMrG7rAYKLOdWmrm
         XP4TaIgHd6MEB+9AU9VRSf2n4u1NppmN2D21d5WFuOe3d29YqxEmTf/gu9oq6j+3W+GR
         TheA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1789051729; x=1789656529; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ZGkfTmvcfg2tYgnaJgCLfP1/mFjyPE2KGae6+BF91/w=;
        b=dUGSyrl+m1euVAllOEVQzx31t8WnXObaUe1CkBi0xA8ALhZPAo68LTwQ8urMAPRl8H
         4tDmuSufo8Vr7Lktis8bU8TnIFkyoMSesKyk/c0AyrxwV722OLMfSGVbnMvXpnOND6eF
         tqSExZ5xzclxSPkfFM/pETJK/TitkBmhS123pH1C6qqp9BeIcDDYnWL61m23hlzdmS/+
         KYz8idMqQgYmJFMajEYx6It/lm6qYY3uXXcJ3WiHvdEC/J6thC5QEKYOEnY3V2A4VW8z
         YFHPlhCKcIzfU6XQ5I/8TNt4BDjtoKi1vJ7XP4xVn1RUUwYRfXqw2gufDx90wsVA2F1e
         kdlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789051729; x=1789656529;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZGkfTmvcfg2tYgnaJgCLfP1/mFjyPE2KGae6+BF91/w=;
        b=eOWJNBDYr4N58rHJ+RVoythzOG0jvJfDq9t/dQXEGAC7J1n52jeyE6R0M4OM2Vfjv/
         1PW8I6Zu03nI0Ca7//Wd9aE92VB9HKhw+X/gSIDUyv8wckRfp/hc7Faf9mmspmiTMnCN
         DnZpMkSra2yqy2KMRUsvuYWNUUAhyBgJvgzYcdNQqZa9jIjJAHRfUlSw9Hn3Yc46t2Oj
         MGYOXWhFQIYAzMBsxljyuXY3cRXgEMLyS5oSJRtx07veoLLKLEQTYwt1ELmWcADOaPKa
         RxjJ5UKZq9pg9tVaP/oOem2NvvwVoocAr/68vB/XanA9wvvTv+XqYcfTLKbxKQx/gtW6
         4Tug==
X-Forwarded-Encrypted: i=1; AKwUvBwXqg31P4/VB7Il+/pC5EBW/qdjnlQnQPo/TFScfpgCvOOI4Uyj/kp5/WWz1gM05mkcq+nowdCyWkwn4rKMpw==@lists.infradead.org
X-Gm-Message-State: AFuF++mKa2h9p9wI5HLL+X2DuDe5AtkPSUCgyz7De5dxNcN/cmKBfmlu
	VgpkayecIA9ES2EyvMhl9MDh1nx44o9lUT/XuZ/Pz3mh4N71XX19mDpPqibObdjhx6wI3TFFxvz
	mbHxM/ytWuh+D/G2vGhx0uPmD2Q7acblKHdKIUDrTWQ==
X-Gm-Gg: AYBFou0lYUmDc7z2IInwfKYliti/AF4lr6PdtRlNl3NgEnKYltwsGo1fROIE/XaGZ+2
	rG99tD+Xth/kWkuZJqKfaapidO32D3oMbXk5BRtF2xFDx6sQKltBWtHLt46dKX8kXHK8V89FyCf
	8RQUkdZKxxRYQ/Vxw/aEZ3cvhi1esrGC3mTRfmbEZ5sKa+XR5rQZSttDXwCjbdbHhlujNQtjstP
	dkinrJuQxQKJuGP4ajq6XtFevr3g+ytNGqV7rm+wC6EHugoSArM308SuI57wkyWGX0rslu5J7w/
	ydoQZufWicH5P3Y+MbhAmgzfdIhsgZmzLqiR+BNe2QNyalyuxiuwUeRgltyDGwA2slh8HED/tn8
	WJwI9H8N40kjGOHRUocD/uG+T
X-Received: by 2002:a17:907:c5ce:b0:c25:47a4:fedc with SMTP id
 a640c23a62f3a-c29418b652emr491393166b.2.1789051729432; Thu, 10 Sep 2026
 07:48:49 -0700 (PDT)
MIME-Version: 1.0
References: <20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net>
In-Reply-To: <20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net>
From: Alexey Charkov <alchark@flipper.net>
Date: Thu, 10 Sep 2026 18:48:33 +0400
X-Gm-Features: AcwNN1UfoxjgFqkNtB6Aosk9zTLZTrJucLfz7oY5DTmBgBUsxij8crpGNXoG4yA
Message-ID: <CAKTNdwH9QAgreJ-6+t1j_P1di4VyoMBSsFkf_g=mCi_-M8g9Pw@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] nvmem: Derive Rockchip MAC addresses from the OTP
 CPU ID
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Michael Walle <michael@walle.cc>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Finley Xiao <finley.xiao@rock-chips.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_074852_077230_94B17FBC 
X-CRM114-Status: GOOD (  26.79  )
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

T24gV2VkLCBTZXAgMiwgMjAyNiBhdCA1OjA44oCvUE0gQWxleGV5IENoYXJrb3YgPGFsY2hhcmtA
ZmxpcHBlci5uZXQ+IHdyb3RlOgo+Cj4gUm9ja2NoaXAgU29DcyBhcmUgc2hpcHBlZCB3aXRoIGEg
dW5pcXVlIENQVSBJRCBpbiB0aGVpciBpbnRlcm5hbCBPVFAKPiBtZW1vcnksIGFuZCBSb2NrY2hp
cCBib290bG9hZGVycyB1c2UgaXQgdG8gZ2l2ZSBib2FyZHMgd2hpY2ggaGF2ZSBubwo+IGRlZGlj
YXRlZCBzdG9yYWdlIGZvciBhIE1BQyBhZGRyZXNzIGEgc3RhYmxlIG9uZSBhbnl3YXk6IHRoZXkg
aGFzaCB0aGUgQ1BVCj4gSUQgYW5kIHBhdGNoIHRoZSByZXN1bHRpbmcgYWRkcmVzc2VzIGludG8g
dGhlIGRldmljZSB0cmVlIHRoZXkgaGFuZCBvdmVyLgo+Cj4gS2VybmVscyBzdGFydGVkIHdpdGhv
dXQgdGhhdCBmaXh1cCwgZS5nLiBzdHJhaWdodCBmcm9tIHRoZSBTUEwgaW4gRmFsY29uCj4gbW9k
ZSBvciBieSBhbnkgb3RoZXIgbG9hZGVyIHdoaWNoIGRvZXMgbm90IGltcGxlbWVudCBSb2NrY2hp
cCdzIGRlcml2YXRpb24sCj4gZmFsbCBiYWNrIHRvIHJhbmRvbSBNQUMgYWRkcmVzc2VzIHdoaWNo
IGNoYW5nZSBvbiBldmVyeSBib290Lgo+Cj4gRm9ybWFsaXplIHRoZSBkZXJpdmF0aW9uIGluIHRo
ZSBEVCBiaW5kaW5nIGFuZCBhZGQgYSBMaW51eCBrZXJuZWwgZHJpdmVyCj4gaW1wbGVtZW50aW5n
IGl0LCBzbyB0aGF0IGEgTGludXggaW1hZ2UgY2FuIHVzZSB0aGUgc2FtZSBzdGFibGUgYWRkcmVz
c2VzCj4gcmVnYXJkbGVzcyBvZiB0aGUgYm9vdCBmbG93Lgo+Cj4gT25seSBSSzM1NzYgaXMgd2ly
ZWQgdXAgaGVyZSwgdGhhdCBiZWluZyB0aGUgU29DIEkgY2FuIHRlc3Qgb24uIE90aGVyCj4gUm9j
a2NoaXAgU29DcyBrZWVwIHRoZSBzYW1lIENQVSBJRCBhdCBhIGRpZmZlcmVudCBPVFAgb2Zmc2V0
IC0gMHg3IHJhdGhlcgo+IHRoYW4gMHhhIG9uIFJLMzU4OCwgZm9yIGluc3RhbmNlIC0gd2hpY2gg
bWFrZXMgc3VwcG9ydGluZyB0aGVtIGEgdHdvLWxpbmUKPiBhZGRpdGlvbiB0byB0aGUgZHJpdmVy
J3MgbWF0Y2ggdGFibGUgcGx1cyB0aGUgbGF5b3V0IG5vZGUuCj4KPiBQYXRjaCAxIGlzIGEgcHJl
cmVxdWlzaXRlIGZpeC4gVGhlIE9UUCBoYXJkd2FyZSBoYXMgaXRzIG93biBpbnRlcm5hbCBzdGF0
ZQo+IG1hY2hpbmUgd2hpY2ggb25seSB3b3JrcyBjb3JyZWN0bHkgd2l0aCBzZXJpYWwgYWNjZXNz
LCBidXQgdGhlIGN1cnJlbnQKPiBkcml2ZXIgc2VyaWFsaXplcyBub3RoaW5nLCB3aGljaCByZXN1
bHRzIGluIHRpbWVvdXRzIGFuZC9vciBjb3JydXB0ZWQKPiByZWFkcyAoZS5nLiByZXR1cm5pbmcg
c3BsaWNpbmcgYSBUU0FEQyB0cmltIHZhbHVlIGludG8gdGhlIGJ1ZmZlciBvZiBhCj4gY2FsbGVy
IGFza2luZyBmb3IgdGhlIENQVSBJRCwgb3IgbWl4aW5nIHVwIHRyaW0gdmFsdWVzIG9mIGRpZmZl
cmVudCBUU0FEQwo+IGNhbGxlcnMpLiBIZW5jZSB0aGUgRml4ZXM6IHRhZyBhbmQgQ2M6IHN0YWJs
ZS4KPgo+IENyb3NzLWNoZWNrZWQgb24gYW4gUkszNTc2IGJvYXJkOiB0aGUgYWRkcmVzc2VzIGZp
eGVkIHVwIGludG8gdGhlIEZEVCBieQo+IFUtQm9vdCBtYXRjaCB0aGUgb25lcyBkZXJpdmVkIGJ5
IHRoZSBuZXcgZHJpdmVyLCBhbmQgdGhlIGRyaXZlciBjb3JyZWN0bHkKPiBhc3NpZ25zIHRoZW0g
dG8gdGhlIG5ldHdvcmsgaW50ZXJmYWNlcyB3aGVuIHRoZSBrZXJuZWwgaXMgYm9vdGVkIHdpdGhv
dXQKPiBVLUJvb3QgcHJvcGVyIGF0IGFsbCAodmlhIEZhbGNvbiBtb2RlKS4KPgo+IFNhc2hpa28g
YWxzbyByaWdodGx5IHBvaW50ZWQgb3V0IGEgdXNlLWFmdGVyLWZyZWUgaW4gdGhlIG52bWVtIGNv
cmUgd2hlbgo+IGEgbGF5b3V0IGRyaXZlciBpcyB1bmxvYWRlZCBsZWF2aW5nIGl0cyBzeXNmcyBu
b2RlcyBhbmQgdGhlIHBvc3Rwcm9jZXNzb3IKPiBmdW5jdGlvbiBwb2ludGVyIGRhbmdsaW5nLiBU
aGlzIGlzIGZpeGVkIHNlcGFyYXRlbHkgaW4gWzFdLgo+Cj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2FsbC8yMDI2MDkwMi1udm1lbS1sYXlvdXQtdW5yZWctdjEtMS0yZDE2YmViZWI1MThA
ZmxpcHBlci5uZXQvCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0Bm
bGlwcGVyLm5ldD4KPiAtLS0KPiBDaGFuZ2VzIGluIHYyOgo+IC0gU3dpdGNoZWQgZnJvbSBhIHNj
b3BlLWJhc2VkIGd1YXJkIHRvIGV4cGxpY2l0IGxvY2svdW5sb2NrIGNhbGxzIGluIHRoZQo+ICAg
T1RQIGRyaXZlciB0byBhdm9pZCBtaXhpbmcgc3R5bGVzIGluIGEgZnVuY3Rpb24gdXNpbmcgZ290
byBlcnJvcgo+ICAgaGFuZGxpbmcgKFNhc2hpa28pCj4gLSBMaW5rIHRvIHYxOiBodHRwczovL3Bh
dGNoLm1zZ2lkLmxpbmsvMjAyNjA5MDEtcmszNTc2LW90cC1jcHVpZC1tYWMtdjEtMC1lYTkxMzUy
NzBmYzJAZmxpcHBlci5uZXQKPgo+IC0tLQo+IEFsZXhleSBDaGFya292ICg0KToKPiAgICAgICBu
dm1lbTogcm9ja2NoaXAtb3RwOiBTZXJpYWxpemUgcmVhZHMKCkluY2lkZW50YWxseSwgcGF0Y2gg
MSBvZiB0aGlzIHNlcmllcyBhbHNvIGZpeGVzIENQVSB0aGVybWFsIHRocm90dGxpbmcKb24gbXkg
UkszNTc2IGRldmljZTogYXBwYXJlbnRseSwgdGhlIG1pcy1yZWFkIE9UUC1wcm9ncmFtbWVkIHRo
ZXJtYWwKdHJpbSB2YWx1ZXMgYnJva2UgdGhlIHRoZXJtYWwgZ292ZXJub3IgbG9naWMsIHdoaWNo
IG5vdyB3b3Jrcwpjb3JyZWN0bHkgd2l0aCBwcm9wZXJseSBzZXJpYWxpemVkIE9UUCByZWFkcy4g
U28gaXQgd291bGQgYmUgZ3JlYXQgdG8KaGF2ZSB0aGVzZSBtZXJnZWQuCgpCZXN0IHJlZ2FyZHMs
CkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
