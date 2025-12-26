Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBFD3E8FDA7
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Dec 2025 18:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybUQihhnC3d/y4ygW2ZE9xVUYyIVPaE1RDMGj4L/XlI=; b=kaqUcuZ4amFveS
	9ItvcvI2JyRJ0M4ekDoCKyZJ7lrGmx36SrdLPrFcRdZv389YUXa9vtW9dzzwNgEft6vQ12CA8TX4T
	Gy8KNYO2/wom5XzDS8pb6ZBzHieDaxMExwNu89sn0bE1xWnb/BfPL2OvzsZMxiub9zjWLDFrM6oqm
	z7MrD7hHeocbZ1pUyqq7J/SSeOXJGk8UWleqR0OAnySxffnI1/KdvXCncVY8sxZwO2t0mnkoVqV6L
	bxWF34kZYkiQ+Fd8siFx5rcWhFysdcnYov6teNiYcroLEE15X7vG3rQpgN9e8rCvgWcGEi0d22mKN
	K3huB2r+VvlklJhWW/Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZCEK-00000001M6h-1AQX;
	Fri, 26 Dec 2025 18:08:00 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZCEH-00000001M5v-2ET6
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Dec 2025 18:07:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BF87A43F8B
	for <linux-rockchip@lists.infradead.org>; Fri, 26 Dec 2025 18:07:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A04C3C4AF09
	for <linux-rockchip@lists.infradead.org>; Fri, 26 Dec 2025 18:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766772476;
	bh=Mo8DKiQXbP10FfBrG4jSD9A1fN4U7FZm/QO+xQpqVV4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Sj8Ykdu3Z8gYuEOZSpZfrwpRaD0qg+avjRrmXpPCEaE5KuBdPEaiWo5cVLdXMFOIB
	 9vAyLQ25/BSc1JusmL2JztNMoApXaSCRXIkJGLO9m2Z8nGbpQd7wEU+dNMwfEWGEth
	 gYqYlSz0XBVzLtMrC9abdPt82RS9+ES7oqRjUcHpr9HQZy3K5Gk6EjNa0kHq9ohlEn
	 XIPXPGrA3sYNzMLs6Xn+GVfEGB3c3K+7gGWMgVFEXtC/M7HTc+A9mshE2H+EqS4yYi
	 n6xaFJNuFFpfw7QjOUsWwjGUYQXpvL6xMI/+WEKOisEhMqyBScG5UMSDE17rNMhvRs
	 QWthtXmQ/YAeA==
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-78d6a3c3b77so81394097b3.0
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Dec 2025 10:07:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWaMkyx/5V9QWmoMv9Zy8dYi5NCnaJ1b7EmiGFoDVfJP8E+nmMPrSoRx2FLTtWWtlW7KNjkpHQ6zIB1jvSXQQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzcj1PZ22Uzp1Mie+j7Uh7+FN0QuCekUTCGSIUKeE1aR9ZMtw8W
	uMAgTkHGujoxN1tCiaXgBgmIeTgIiPop5PRcSi5gLkxmMB1l6x3hmKhnhJUAENymiZddQN0dthg
	IrvIIBi/t7NStdsxhPl0TBn8qT63YxG0=
X-Google-Smtp-Source: AGHT+IHXFYYWTsvxkiAzCuYl1w+1gAwdOMQor8XIU2GYqR9g+iZUH2rKjwqFU6Vi/SZe0tIuniB4xtJv4Fw3RoZpxPI=
X-Received: by 2002:a05:690e:11c6:b0:641:f5bc:692a with SMTP id
 956f58d0204a3-646632c32fbmr22677636d50.35.1766772475962; Fri, 26 Dec 2025
 10:07:55 -0800 (PST)
MIME-Version: 1.0
References: <20251216112053.1927852-1-ye.zhang@rock-chips.com> <20251216112053.1927852-7-ye.zhang@rock-chips.com>
In-Reply-To: <20251216112053.1927852-7-ye.zhang@rock-chips.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 26 Dec 2025 19:07:45 +0100
X-Gmail-Original-Message-ID: <CAD++jLntu4LY=VHOMSXeLKXOBD9MTNziv47B0qkDjxUa1xAsng@mail.gmail.com>
X-Gm-Features: AQt7F2oo9iVMDuNkiBl10i_Zvh5ka_JIKyMORrwHeD221KqqGenYfp36zyHsPm0
Message-ID: <CAD++jLntu4LY=VHOMSXeLKXOBD9MTNziv47B0qkDjxUa1xAsng@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] dt-bindings: pinctrl: rockchip: Add RMIO
 controller binding
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	tao.huang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251226_100757_682082_C7780A27 
X-CRM114-Status: GOOD (  17.77  )
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

SGkgWWUsCgp0aGFua3MgZm9yIHlvdXIgcGF0Y2ghCgpPbiBUdWUsIERlYyAxNiwgMjAyNSBhdCAz
OjUw4oCvUE0gWWUgWmhhbmcgPHllLnpoYW5nQHJvY2stY2hpcHMuY29tPiB3cm90ZToKCgo+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGluY3RybC9yb2Nr
Y2hpcCxybWlvLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGluY3Ry
bC9yb2NrY2hpcCxybWlvLnlhbWwKCj4gKyAgcm9ja2NoaXAscm1pby1ncmY6Cj4gKyAgICAkcmVm
OiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCj4gKyAgICBkZXNjcmlw
dGlvbjoKPiArICAgICAgVGhlIHBoYW5kbGUgb2YgdGhlIHN5c2NvbiBub2RlIChHUkYgb3IgUE1V
KSBjb250YWluaW5nIHRoZSBSTUlPIHJlZ2lzdGVycy4KPiArICAgICAgVGhpcyBwcm9wZXJ0eSBp
cyByZXF1aXJlZCBpZiB0aGUgUk1JTyByZWdpc3RlcnMgYXJlIGxvY2F0ZWQgaW4gYSBkaWZmZXJl
bnQKPiArICAgICAgc3lzY29uIHRoYW4gdGhlIHBhcmVudCBwaW5jdHJsIG5vZGUuCj4gKwo+ICsg
IHJvY2tjaGlwLG9mZnNldDoKPiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmlu
aXRpb25zL3VpbnQzMgo+ICsgICAgZGVzY3JpcHRpb246Cj4gKyAgICAgIFRoZSBvZmZzZXQgb2Yg
dGhlIFJNSU8gY29uZmlndXJhdGlvbiByZWdpc3RlcnMgd2l0aGluIHRoZSBHUkYuCgpDYW4ndCB0
aGlzIGp1c3QgYmUgYSBjZWxsIGluIHRoZSBwaGFuZGxlPwoKPiArICByb2NrY2hpcCxwaW5zLW51
bToKPiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMgo+
ICsgICAgZGVzY3JpcHRpb246Cj4gKyAgICAgIFRoZSBudW1iZXIgb2YgcGh5c2ljYWwgcGlucyBz
dXBwb3J0ZWQgYnkgdGhpcyBSTUlPIGluc3RhbmNlLgo+ICsgICAgICBVc2VkIGZvciBib3VuZGFy
eSBjaGVja2luZyBhbmQgZHJpdmVyIGluaXRpYWxpemF0aW9uLgoKSXNuJ3QgdGhpcyBpbXBsaWNp
dCBmcm9tIHRoZSBjb21wYXRpYmxlPyBXaHkgaXMgdGhpcyBkaWZmZXJlbnQKYmV0d2VlbiB0d28g
ZGV2aWNlIHRyZWVzIHVzaW5nIHRoZSBzYW1lIGNvbXBhdGlibGUgcGluCmNvbnRyb2xsZXI/IEkg
ZG9uJ3QgZ2V0IGl0LCBJIHRoaW5rIHRoaXMgc2hvdWxkIGJlIGEgY29uc3RhbnQgaW4gdGhlCmNv
ZGUgYmFzZWQgb24gdGhlIGNvbXBhdGlibGUgaW5zdGVhZC4KCj4gK3BhdHRlcm5Qcm9wZXJ0aWVz
Ogo+ICsgICJeW2EtejAtOS1dKyQiOgo+ICsgICAgdHlwZTogb2JqZWN0Cj4gKyAgICBkZXNjcmlw
dGlvbjoKPiArICAgICAgRnVuY3Rpb24gbm9kZSBncm91cGluZyBtdWx0aXBsZSBncm91cHMuCj4g
Kwo+ICsgICAgcGF0dGVyblByb3BlcnRpZXM6Cj4gKyAgICAgICJeW2EtejAtOS1dKyQiOgo+ICsg
ICAgICAgIHR5cGU6IG9iamVjdAo+ICsgICAgICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICAgICAg
R3JvdXAgbm9kZSBjb250YWluaW5nIHRoZSBwaW5tdXggY29uZmlndXJhdGlvbi4KPiArCj4gKyAg
ICAgICAgcHJvcGVydGllczoKPiArICAgICAgICAgIHJvY2tjaGlwLHJtaW86Cj4gKyAgICAgICAg
ICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMi1tYXRyaXgK
PiArICAgICAgICAgICAgZGVzY3JpcHRpb246Cj4gKyAgICAgICAgICAgICAgQSBsaXN0IG9mIHBp
bi1mdW5jdGlvbiBwYWlycy4gVGhlIGZvcm1hdCBpcyA8cGluX2lkIGZ1bmN0aW9uX2lkPi4KPiAr
ICAgICAgICAgICAgbWluSXRlbXM6IDEKPiArICAgICAgICAgICAgaXRlbXM6Cj4gKyAgICAgICAg
ICAgICAgaXRlbXM6Cj4gKyAgICAgICAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBSTUlPIFBpbiBJ
RCAoMCB0byBwaW5zLW51bSAtIDEpCj4gKyAgICAgICAgICAgICAgICAgIG1pbmltdW06IDAKPiAr
ICAgICAgICAgICAgICAgICAgbWF4aW11bTogMzEKPiArICAgICAgICAgICAgICAgIC0gZGVzY3Jp
cHRpb246IEZ1bmN0aW9uIElECj4gKyAgICAgICAgICAgICAgICAgIG1pbmltdW06IDAKPiArICAg
ICAgICAgICAgICAgICAgbWF4aW11bTogOTgKClBsZWFzZSBhdm9pZCB0aGVzZSBjdXN0b20gcHJv
cGVydGllcyBhbmQganVzdCB1c2UgdGhlIHN0YW5kYXJkCiJwaW5tdXgiIHByb3BlcnR5LiBJIGRv
bid0IHdhbnQgYW55IG1vcmUgb3BhcXVlIGN1c3RvbSBiaW5kaW5ncwpmb3IgZnVuY3Rpb25zIGFu
ZCBncm91cHMuCgpSZWZlcmVuY2UgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bp
bmN0cmwvcGlubXV4LW5vZGUueWFtbAphbmQgdXNlIHBpbm11eCBmcm9tIHRoZXJlLgoKWW91IGNh
biB1c2Ugc29tZSBzaGlmdGluZyBhbmQgZGVmaW5lcyB0byBzaG9laG9ybiB5b3VyIGNvbmZpZwpp
bnRvIGEgc2luZ2xlIHUzMiBhbmQgcGFyc2UgdGhhdCBpbiB5b3VyIGRyaXZlcjsgaS5lLiBpbnN0
ZWFkIG9mCnJvY2tjaGlwLHJtaW8gPSA8MSwgMj47CnVzZQpwaW5tdXggPSA8MSA8PCA4IHwgMiA8
PCAwPjsKdGhlc2Ugc2hpZnRlciBudW1lcmFscyBjYW4gY29tZSBmcm9tIGRlZmluZXMuCkluIHRo
ZSBkcml2ZXIgc2hpZnQgJiBtYXNrIG91dCB0aGUgY29tcG9uZW50cyB5b3Ugd2FudC4KCmUuZy47
Cgo+ICsgICAgICAgICAgICBybWlvLXVhcnQgewo+ICsgICAgICAgICAgICAgICAgcm1pb19waW4y
N191YXJ0MV90eDogcm1pby1waW4yNy11YXJ0MS10eCB7Cj4gKyAgICAgICAgICAgICAgICAgICAg
cm9ja2NoaXAscm1pbyA9IDwyNyBSTUlPX1VBUlQxX1RYPjsKCnBpbm11eCA9IDwyNyA8PCA4IHwg
Uk1JT19VQVJUMV9UWD47Cgo+ICsrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3MvcGluY3RybC9yb2Nr
Y2hpcCxyazM1MDYtcm1pby5oCgpUaGVzZSBudW1iZXIgZHVtcHMgYXJlIG5vdCBhcHByZWNpYXRl
ZCBpbnNpZGUgdGhlIGJpbmRpbmdzCmRlc3BpdGUgcXVpdGUgYSBmZXcgZm91bmQgdGhlaXIgd2F5
IGluIHRoZXJlLgoKVXNlIHNvbWV0aGluZyBsaWtlCmFyY2gvKi9kdHMvcm9ja2NoaXAvcmszNTA2
LXJtaW8tcGlucy5kdHNpCmFuZCBpbmNsdWRlIHRoYXQgaW50byB5b3VyIGRldmljZSB0cmVlcyBp
bnN0ZWFkLgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
