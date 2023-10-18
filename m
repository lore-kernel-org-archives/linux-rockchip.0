Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A54E5CDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 17:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWGfQjvTkxlE8+XS6/0eD7+2nbRHi8rtb/5hW2lXVOY=; b=V8zbDEF2/XNcGJ
	CZ9HAKuUzjzY4CYQD8SdB4RJnXxloPIcE5TvyCrD6uoaqvCwED9gB2y48K0FPmZoKybv3l8n3fUIC
	JCBqOsWubgICJjM5wUHcU/FXdyFZagWbUTwlmjvU1CoB9pPt+jtlXk84DiMD2qOq7iBMz/uW7LOSf
	//H87ggRghK1igpee/vATsqqsrBcPdrwJNX75YEczdUgYJdEbhZSW58RzJG2LhPtTrou6wtUWyMx9
	5Y1Wb1HSiJOSvHMl1u1oF+zZCuprOAT2IvLeuKK1hbU1RVKHlXD7YnOflchwyyjIfPPPT4GNr/zAo
	cPPI54Wr/G5gTCfpLg/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtAYh-00FMMT-0O;
	Wed, 18 Oct 2023 17:42:15 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtAYc-00FMKf-2X;
	Wed, 18 Oct 2023 17:42:14 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-6b20577ef7bso4454690b3a.3;
        Wed, 18 Oct 2023 10:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697650928; x=1698255728; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dKaWOPnAN5si+yKYBlPOMxbvgqGw6FhfRCUPuhXRLW4=;
        b=VOzNOLHzvZcAN3QjyQGGjT/mQA8+4H1jHvuOINoeKa9q5BWX1B5/bDM7CEG0B4OiQP
         +u5taXwSSlj1EdTOZCITinaW8aKMR4MwjrvwzbJ9WzDPJ60rC+zcetiY2CdUsdiAB6KD
         KvzodGI9abggABL4rQ+ILxvGRP6SopDgBnzuW5EOy7ltI5sDUpOPwHZSW3vCd1Ad9mF0
         +VRKAlAE7eF8CgRdmTn6C/9HN5Wf0hC6qA1e/ap6Ns+nb1bwCsxjhdTxm4Cxcc3N6l44
         i7SrAHk7UM2hrC1q7XwWq7ilWk/fxrRdE3PG4KxcLgu1xgfvBL+NQgUJepyALYAcAap6
         5GNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697650928; x=1698255728;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dKaWOPnAN5si+yKYBlPOMxbvgqGw6FhfRCUPuhXRLW4=;
        b=oe5M0k1qW6FPgCXy8P5ysuvH3/Sfu0jez5WOlse/C6V2T/Ou9gMucZG/plcQJSH8UV
         eVtUInxb24jxuio2hFsWsObZZcrSrlWAQz5HbWYGQxPUzsIBCpyUOrJyBb1nSzi3EpL/
         Jim+A7bCsEbwB5dEkZyJasNfo4Lgm3bMwnvarj5KgUECCF0s3ItuCe7S2u7pFjN1qJXr
         3pHA54k35Zs3jtsvanLxxns5OqA4mtyXoA/1hYFBMiEzc+3qs/h6+KpIBirLWVm8512W
         AYHDdL9RVCpeVTsbj4d5Ulb9wC+TUn1S9U41gKbJjsVt8L+SJ7Occx0uhzpofXNo5o5j
         kVjA==
X-Gm-Message-State: AOJu0YzCYplNXxA4MxrahhBjLIrlI6e0N2H7vJNxsJ4+IHmu51FJVsZC
	WUauJPHfOb4oNTe+p1oDwY7ke6xH5cRaTWrG0ow=
X-Google-Smtp-Source: AGHT+IEjXdG0uazktIdJ2eY6IhbN0NzOFSm9EJCpnpHhp0AWWgfdJLWXmtsXSGCki65me2aNbLPA8vfrpKQqWto4VAA=
X-Received: by 2002:a05:6a21:7906:b0:16b:d137:de5a with SMTP id
 bg6-20020a056a21790600b0016bd137de5amr5314040pzc.28.1697650928075; Wed, 18
 Oct 2023 10:42:08 -0700 (PDT)
MIME-Version: 1.0
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com> <20221118093931.1284465-5-paul.elder@ideasonboard.com>
In-Reply-To: <20221118093931.1284465-5-paul.elder@ideasonboard.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 18 Oct 2023 12:41:56 -0500
Message-ID: <CAHCN7xJcKw5RRS0siyYEwJws049YFkh-zkyRQJsb8dgiLVoh3A@mail.gmail.com>
Subject: Re: [PATCH v3 04/14] media: rkisp1: Add match data for i.MX8MP ISP
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Helen Koike <helen.koike@collabora.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_104210_824985_7AA99C03 
X-CRM114-Status: GOOD (  26.06  )
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

T24gRnJpLCBOb3YgMTgsIDIwMjIgYXQgMzo0NOKAr0FNIFBhdWwgRWxkZXIgPHBhdWwuZWxkZXJA
aWRlYXNvbmJvYXJkLmNvbT4gd3JvdGU6Cj4KPiBBZGQgbWF0Y2ggZGF0YSB0byB0aGUgcmtpc3Ax
IGRyaXZlciB0byBtYXRjaCB0aGUgaS5NWDhNUCBJU1AuCj4KPiBBbHRob3VnaCB0aGUgbmV3IHZl
cnNpb24gbnVtYmVyIGlzbid0IHZlcnkgcHJlY2lzZSwgaXQgb3VnaHQgdG8gYmUgZmluZQo+IGFz
IHRoZSBvdGhlciB2ZXJzaW9uIG51bWJlcnMgYXJlbid0IHByZWNpc2UgZWl0aGVyLCBhbmQgd2Ug
aGF2ZSBzZXBhcmF0ZQo+IGZlYXR1cmUgZmxhZ3MgZm9yIGltcG9ydGFudCB2ZXJzaW9uLXNwZWNp
ZmljIGZlYXR1cmVzLiBEZXNwaXRlIHRoaXMKPiB2ZXJzaW9uIG51bWJlciBiZWluZyBzZWVtaW5n
bHkgdW5pbXBvcnRhbnQsIGl0IGlzIGFkZGVkIHRvIGRpc3Rpbmd1aXNoCj4gaXQgZnJvbSB0aGUg
SVNQIHZlcnNpb25zIGludGVncmF0ZWQgaW4gcm9ja2NoaXAgU29Dcy4KPgo+IFNpZ25lZC1vZmYt
Ynk6IFBhdWwgRWxkZXIgPHBhdWwuZWxkZXJAaWRlYXNvbmJvYXJkLmNvbT4KPiBSZXZpZXdlZC1i
eTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPgoKUGF1bCwKCkl0J3MgYmVlbiBuZWFy
bHkgYSB5ZWFyIHNpbmNlIHRoaXMgY29tbWl0IHdhcyBzZW50LiAgSSBub3RpY2VkIGl0Cmhhc24n
dCBiZWVuIGFwcGxpZWQsIGFuZCBJIHdhcyBjdXJpb3VzIHRvIGtub3cgaWYgdGhlcmUgaXMgYW55
Cm1vdmVtZW50IGhlcmU/ICBJJ20gaGFwcHkgdG8gdGVzdCBvbiBteSA4TVAgaWYgbmVjZXNzYXJ5
LgoKVGhhbmtzIQoKYWRhbQoKPiAtLS0KPiBDaGFuZ2VzIGluIHYzOgo+IC0gUmVtb3ZlIHRvZG8g
Zm9yIGltcHJvdmluZyB0aGUgdmVyc2lvbiBudW1iZXIKPiAtIEV4cGFuZCB0aGUgY29tbWl0IG1l
c3NhZ2UgdG8gYWRkcmVzcyB0aGUgdmVyc2lvbiBudW1iZXIKPiAtLS0KPiAgLi4uL3BsYXRmb3Jt
L3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtZGV2LmMgICAgIHwgMjIgKysrKysrKysrKysrKysrKysr
Kwo+ICBpbmNsdWRlL3VhcGkvbGludXgvcmtpc3AxLWNvbmZpZy5oICAgICAgICAgICAgfCAgMiAr
Kwo+ICAyIGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtZGV2LmMgYi9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtZGV2LmMKPiBpbmRleCBl
MzQ4ZDhjODY4NjEuLjY5NDY0Y2U5MWQ1OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtZGV2LmMKPiArKysgYi9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtZGV2LmMKPiBAQCAtNDk2LDYgKzQ5Niwy
NCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJraXNwMV9pbmZvIHJrMzM5OV9pc3BfaW5mbyA9IHsK
PiAgICAgICAgIC5mZWF0dXJlcyA9IFJLSVNQMV9GRUFUVVJFX01JUElfQ1NJMiwKPiAgfTsKPgo+
ICtzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IGlteDhtcF9pc3BfY2xrc1tdID0gewo+ICsgICAg
ICAgImlzcCIsCj4gKyAgICAgICAiaGNsayIsCj4gKyAgICAgICAiYWNsayIsCj4gK307Cj4gKwo+
ICtzdGF0aWMgY29uc3Qgc3RydWN0IHJraXNwMV9pc3JfZGF0YSBpbXg4bXBfaXNwX2lzcnNbXSA9
IHsKPiArICAgICAgIHsgTlVMTCwgcmtpc3AxX2lzciB9LAo+ICt9Owo+ICsKPiArc3RhdGljIGNv
bnN0IHN0cnVjdCBya2lzcDFfaW5mbyBpbXg4bXBfaXNwX2luZm8gPSB7Cj4gKyAgICAgICAuY2xr
cyA9IGlteDhtcF9pc3BfY2xrcywKPiArICAgICAgIC5jbGtfc2l6ZSA9IEFSUkFZX1NJWkUoaW14
OG1wX2lzcF9jbGtzKSwKPiArICAgICAgIC5pc3JzID0gaW14OG1wX2lzcF9pc3JzLAo+ICsgICAg
ICAgLmlzcl9zaXplID0gQVJSQVlfU0laRShpbXg4bXBfaXNwX2lzcnMpLAo+ICsgICAgICAgLmlz
cF92ZXIgPSBJTVg4TVBfVjEwLAo+ICt9Owo+ICsKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9k
ZXZpY2VfaWQgcmtpc3AxX29mX21hdGNoW10gPSB7Cj4gICAgICAgICB7Cj4gICAgICAgICAgICAg
ICAgIC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHB4MzAtY2lmLWlzcCIsCj4gQEAgLTUwNSw2ICs1
MjMsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcmtpc3AxX29mX21hdGNo
W10gPSB7Cj4gICAgICAgICAgICAgICAgIC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1j
aWYtaXNwIiwKPiAgICAgICAgICAgICAgICAgLmRhdGEgPSAmcmszMzk5X2lzcF9pbmZvLAo+ICAg
ICAgICAgfSwKPiArICAgICAgIHsKPiArICAgICAgICAgICAgICAgLmNvbXBhdGlibGUgPSAiZnNs
LGlteDhtcC1pc3AiLAo+ICsgICAgICAgICAgICAgICAuZGF0YSA9ICZpbXg4bXBfaXNwX2luZm8s
Cj4gKyAgICAgICB9LAo+ICAgICAgICAge30sCj4gIH07Cj4gIE1PRFVMRV9ERVZJQ0VfVEFCTEUo
b2YsIHJraXNwMV9vZl9tYXRjaCk7Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9y
a2lzcDEtY29uZmlnLmggYi9pbmNsdWRlL3VhcGkvbGludXgvcmtpc3AxLWNvbmZpZy5oCj4gaW5k
ZXggNzMwNjczZWNjNjNkLi5mNjAyNDQyYzIwMTggMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS91YXBp
L2xpbnV4L3JraXNwMS1jb25maWcuaAo+ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9ya2lzcDEt
Y29uZmlnLmgKPiBAQCAtMTc5LDEyICsxNzksMTQgQEAKPiAgICogQFJLSVNQMV9WMTE6IGRlY2xh
cmVkIGluIHRoZSBvcmlnaW5hbCB2ZW5kb3IgY29kZSwgYnV0IG5vdCB1c2VkCj4gICAqIEBSS0lT
UDFfVjEyOiB1c2VkIGF0IGxlYXN0IGluIHJrMzMyNiBhbmQgcHgzMAo+ICAgKiBAUktJU1AxX1Yx
MzogdXNlZCBhdCBsZWFzdCBpbiByazE4MDgKPiArICogQElNWDhNUF9WMTA6IHVzZWQgaW4gYXQg
bGVhc3QgaW14OG1wCj4gICAqLwo+ICBlbnVtIHJraXNwMV9jaWZfaXNwX3ZlcnNpb24gewo+ICAg
ICAgICAgUktJU1AxX1YxMCA9IDEwLAo+ICAgICAgICAgUktJU1AxX1YxMSwKPiAgICAgICAgIFJL
SVNQMV9WMTIsCj4gICAgICAgICBSS0lTUDFfVjEzLAo+ICsgICAgICAgSU1YOE1QX1YxMCwKPiAg
fTsKPgo+ICBlbnVtIHJraXNwMV9jaWZfaXNwX2hpc3RvZ3JhbV9tb2RlIHsKPiAtLQo+IDIuMzUu
MQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
