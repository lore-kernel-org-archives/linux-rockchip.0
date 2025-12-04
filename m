Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B09C9D206A7
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Dec 2025 14:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4Zsv+JJbxtPOURcnfeTiSDCTfpPz3Ysg9hmz/f8oHQ=; b=lb9OVL3SDTWlje
	o5e59Yzk2eeNV7ePRYfW4+kiGVTnPLoCSGE7mq8xBL/f/n4UGlDsLEfmbYhEyMSQSYD4aAgdyx2Rx
	vdAFfXuVxRKM+gnwJlcG+8LZlBDgyOhGz9z2HOyL65Gm0VsR8+/bE4eRojt+p9CQOe7WT9Qr8A2s5
	d9jm9jPEE6MqrOQgE6E/7q8fNU8BbOuIQcmt5YMWgH1koZLZYTGEoyq6tJvaaGyGvEsX2mw/+hUZA
	QagC0/XAMg+cIUpGzvn/9FDO1why1tgK3PJb1MOOShCmuR6cODxlvMJ6BFelYgQVCPKL3FHuyDwNy
	InmRLxyQ9saus2wDM1dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRA5d-000000086ZZ-0Lv9;
	Thu, 04 Dec 2025 14:13:49 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRA5a-000000086Yi-2UlY
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Dec 2025 14:13:47 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4775895d69cso5111565e9.0
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Dec 2025 06:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764857624; x=1765462424; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A+d+kOXWZ77Pa79XMX8gLZVtaDKOXA1/iNRWjymG+eA=;
        b=M0xy9DqsW32OFPrkasFe5ucf9q/s1M/xI+JWtAY1A451QaM+C6wkaqTMrkMDcE/32F
         YGDEFSKHEG4f5MZpzp3kvXpo1QCkGjGM2Qr4JD35F5C4uGwosMP/mX+DCHo5ADph+Pas
         DRoxjvN411sV3pEzap1tEDkqngd7dt4bhkABwDu5B84qLlcjwLspZwZ+jT9jGarXFVWt
         sm256MrAoQ/u527UCADmWfj0ka73l7xYcqBydMJrZWvhql8lN5j2IyGL5wxlgVxXovVn
         +dpBy25bqvne8DkrIXRCqw0CAlC4layK6gIXLKZ2Yb+3FzT41Gr46SAUcT9imIeJwM4P
         p7qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764857624; x=1765462424;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A+d+kOXWZ77Pa79XMX8gLZVtaDKOXA1/iNRWjymG+eA=;
        b=CAGkxyWZSrSSz7tLJ1UCOMRevhSarO4in4NG31267NvkqrQdxLYuqiDwwCt9A21ob6
         zZ1y4HZkh5noJBoHw8Bg1sfnUKvBLfQtyuxN7dxekQVn39Uo+OZJzfN4A7fJSFvXiVPV
         vt9YV6fpTRJ4Gxer2EJvRn4fDrIPHDj5aAQIU2qwBsW7CzOa5TWb8VppTv1siygN841a
         sBLfhKBVgecdX0dEh130XlEKoe+sYSvzhYCD24GYEt/jfIxaadV+OM99tyN5WM0ArMz+
         6/g+CXKMpGHpK8jreYr+gCyDArIqsxe314G8YCOj9AF8FH0pGOWTEw4ey7c5RNs6YrqR
         IxcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoqA+ikzh2Z+ZFvkvzChOQJlyrlOyY3+TCb/yfdx87qT6sKPlx6wBkdgd7zmSIxE3ihsK+tfJJ4QUaV7BUeA==@lists.infradead.org
X-Gm-Message-State: AOJu0YytSJm97jJI/z0oMgJdoy0n2Ds+xjrg9kf/3xcWga1iNXB7EpdI
	D7yd0m9rHOBuuIWDHsJZF5FEiBTKcBkHEv/Ts8SCZdHqyREFHXzMwjZT
X-Gm-Gg: ASbGnctgUPou9rRyOv4/yjWigvIG0kVsEgjKb11zsaN7vHY1j/TJ7wxykMb5PQEcwpC
	ljSQE1ZU0CzFJ3DOQB32uTMHDMlUIvtl+IO3I+3Inf0gbPD3WFwQNoeGAHfhLyzosNuBci7o/9/
	PXZQ8+cYrYubPKj5GmZ2HyVEXTeKPkTUn+8bCu6HDB7cfye4fyXm6UbTjh2co/DWsdad2No5Lo0
	G5KMbskANFjXjBw2HdT0mIwQLOEh0/dUl+QMfAvVPbdEpT7G4VTkJlQxsZ0lc+ZUv3n2doPisXu
	4L5BtDQAPS8ZO8TjOLUXD+un/6+vSyiss9nqMJvhZXD+ZzSr7bWee9j7J/5CGuoy7sEoM7L0bTk
	WWTdZCTEHpUAVfoaEx42qLy+4NAsdsMYb5Dbysu7AJmDcgpKCos1j7UCJFSg+WmrPTuVCSZ+rmy
	9gxGg8ZcKaojcmAlq6ZdxVlQiYjz/mPFHv20v8vl6x1/fCIiw5ZMWXkQY2zcJaI0h61jbzsY5J2
	C/SIZJ4qg==
X-Google-Smtp-Source: AGHT+IHtYgz33VbUlNe7osl81HTRTx4C13vE9/CW5P0/J5lUDoT4fb4a8vSZ742vyf6Iomub3fxbbQ==
X-Received: by 2002:a05:6000:24ca:b0:429:d3a7:18bd with SMTP id ffacd0b85a97d-42f79875179mr3681891f8f.59.1764857624145;
        Thu, 04 Dec 2025 06:13:44 -0800 (PST)
Received: from smtpclient.apple (static.253.36.98.91.clients.your-server.de. [91.98.36.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7cbfeb38sm3386105f8f.12.2025.12.04.06.13.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Dec 2025 06:13:43 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.3\))
Subject: Re: [PATCH] arm64: dts: rockchip: add SPDIF audio to Beelink A1
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <f0df035f-3c3d-4649-9f48-3e8e2e69d17b@gmail.com>
Date: Thu, 4 Dec 2025 18:13:29 +0400
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Message-Id: <5557C31E-3B1D-426C-BF9F-C417FF29E97C@gmail.com>
References: <20250828164300.3829488-1-christianshewitt@gmail.com>
 <66ae20b3-3316-4ec2-9c51-8414c053dc32@arm.com>
 <f0df035f-3c3d-4649-9f48-3e8e2e69d17b@gmail.com>
To: Alex Bee <knaerzche@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
X-Mailer: Apple Mail (2.3826.700.81.1.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_061346_650356_9CE8693E 
X-CRM114-Status: GOOD (  13.52  )
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

PiBPbiA0IERlYyAyMDI1LCBhdCAxMjoyM+KAr2FtLCBBbGV4IEJlZSA8a25hZXJ6Y2hlQGdtYWls
LmNvbT4gd3JvdGU6Cj4gCj4gSGkgUm9iaW4sCj4gCj4gQW0gMDMuMTIuMjUgdW0gMTc6MjEgc2No
cmllYiBSb2JpbiBNdXJwaHk6Cj4+IFsgSnVzdCBub3RpY2VkIHRoaXMuLi4gXQo+PiAKPj4gT24g
MjAyNS0wOC0yOCA1OjQzIHBtLCBDaHJpc3RpYW4gSGV3aXR0IHdyb3RlOgo+Pj4gRnJvbTogQWxl
eCBCZWUgPGtuYWVyemNoZUBnbWFpbC5jb20+Cj4+PiAKPj4+IEFkZCB0aGUgcmVxdWlyZWQgbm9k
ZXMgdG8gZW5hYmxlIFNQRElGIGF1ZGlvIG91dHB1dCBvbgo+Pj4gdGhlIEJlZWxpbmsgQTEgc2V0
LXRvcC1ib3guCj4+IAo+PiBCdXQgdGhlIEExIGRvZXNuJ3QgaGF2ZSBTL1BESUY/IE9ubHkgSERN
SSBwbHVzIGEgMy41bW0gamFjayBjb25uZWN0ZWQgdG8gdGhlIGFuYWxvZyBhdWRpbyBjb2RlYyAo
YW5kIHBvc3NpYmx5IHRoZSBjb21wb3NpdGUgVFYgb3V0KSA6Lwo+PiAKPiBZZWFoLCBzb3JyeSAt
IHRoaXMgcGF0Y2ggd2Fzbid0IHN1cHBvc2VkIHRvIGJlIHN1Ym1pdHRlZCB1cHN0cmVhbS4KCkFw
b2xvZ2llcywgdGhpcyBpcyBteSBlbnRodXNpYXNtIGZvciB0cnlpbmcgdG8gY2xlYXIgb3V0IHRo
ZSBwYXRjaApjb2xsZWN0aW9uIExpYnJlRUxFQyBoYXMgYmVlbiBob2FyZGluZyBieSBzZW5kaW5n
IHRoaW5ncyB1cHN0cmVhbQpvbiBiZWhhbGYgb2YgdGhlIG9yaWdpbmFsIGF1dGhvcnMgKGFuZCBo
b2FyZGVycykuCgpXb3VsZCB5b3UgbGlrZSBtZSB0byBzZW5kIGEgcmV2ZXJ0IHBhdGNoPwoKQ2hy
aXN0aWFuCgo+IFJlZ2FyZHMsCj4gCj4gQWxleAo+IAo+PiBUaGFua3MsCj4+IFJvYmluLgo+PiAK
Pj4+IFNpZ25lZC1vZmYtYnk6IEFsZXggQmVlIDxrbmFlcnpjaGVAZ21haWwuY29tPgo+Pj4gU2ln
bmVkLW9mZi1ieTogQ2hyaXN0aWFuIEhld2l0dCA8Y2hyaXN0aWFuc2hld2l0dEBnbWFpbC5jb20+
Cj4+PiAtLS0KPj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtYTEuZHRz
IHwgMjMgKysrKysrKysrKysrKysrKysrKysrKwo+Pj4gICAxIGZpbGUgY2hhbmdlZCwgMjMgaW5z
ZXJ0aW9ucygrKQo+Pj4gCj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzMjgtYTEuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgt
YTEuZHRzCj4+PiBpbmRleCBmN2M0NTc4ODY1YzUuLmIyNzZhMjliZGQ4NSAxMDA2NDQKPj4+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LWExLmR0cwo+Pj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtYTEuZHRzCj4+PiBAQCAtNTgsNiAr
NTgsMjQgQEAgaXItcmVjZWl2ZXIgewo+Pj4gICAgICAgICAgIGdwaW9zID0gPCZncGlvMiBSS19Q
QTIgR1BJT19BQ1RJVkVfTE9XPjsKPj4+ICAgICAgICAgICBsaW51eCxyYy1tYXAtbmFtZSA9ICJy
Yy1iZWVsaW5rLWdzMSI7Cj4+PiAgICAgICB9Owo+Pj4gKwo+Pj4gKyAgICBzcGRpZl9zb3VuZDog
c3BkaWYtc291bmQgewo+Pj4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJzaW1wbGUtYXVkaW8tY2Fy
ZCI7Cj4+PiArICAgICAgICBzaW1wbGUtYXVkaW8tY2FyZCxuYW1lID0gIlNQRElGIjsKPj4+ICsK
Pj4+ICsgICAgICAgIHNpbXBsZS1hdWRpby1jYXJkLGNwdSB7Cj4+PiArICAgICAgICAgICAgc291
bmQtZGFpID0gPCZzcGRpZj47Cj4+PiArICAgICAgICB9Owo+Pj4gKwo+Pj4gKyAgICAgICAgc2lt
cGxlLWF1ZGlvLWNhcmQsY29kZWMgewo+Pj4gKyAgICAgICAgICAgIHNvdW5kLWRhaSA9IDwmc3Bk
aWZfZGl0PjsKPj4+ICsgICAgICAgIH07Cj4+PiArICAgIH07Cj4+PiArCj4+PiArICAgIHNwZGlm
X2RpdDogc3BkaWYtZGl0IHsKPj4+ICsgICAgICAgIGNvbXBhdGlibGUgPSAibGludXgsc3BkaWYt
ZGl0IjsKPj4+ICsgICAgICAgICNzb3VuZC1kYWktY2VsbHMgPSA8MD47Cj4+PiArICAgIH07Cj4+
PiAgIH07Cj4+PiAgICAgJmFuYWxvZ19zb3VuZCB7Cj4+PiBAQCAtMzI1LDYgKzM0MywxMSBAQCAm
c2RtbWMgewo+Pj4gICAgICAgc3RhdHVzID0gIm9rYXkiOwo+Pj4gICB9Owo+Pj4gICArJnNwZGlm
IHsKPj4+ICsgICAgcGluY3RybC0wID0gPCZzcGRpZm0wX3R4PjsKPj4+ICsgICAgc3RhdHVzID0g
Im9rYXkiOwo+Pj4gK307Cj4+PiArCj4+PiAgICZ0c2FkYyB7Cj4+PiAgICAgICByb2NrY2hpcCxo
dy10c2h1dC1tb2RlID0gPDA+Owo+Pj4gICAgICAgcm9ja2NoaXAsaHctdHNodXQtcG9sYXJpdHkg
PSA8MD47CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
