Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8284AC282DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 08:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TS3jYaxpKq6BvZx+HSr95hcSfI1xi4jBYlVgD8Nwgc=; b=mUmWWhULA1/N+O
	OcVgTRe5316hBtNz194w5j3UbvqJqB7CHzcEOdip6HjDksIJwrhDeUH/BDCelnmmeqLQLMNyeb7vD
	fiEG+mBebvCBLvo+WSehDw0PxZ+zH5ERQTjvlGdw0jc+x052WFWWwocmXeyarSVDJTqaWJiF1TxR/
	9pL3TPa78i6uKoRTpBsAn1tZGx2weV2AJRHmeU9ZbrB9SaPvTfqC+sgvuJbV6z+ckVcTEpxIrM5S+
	vvb1eIUl85rEl/CAe49StNdqC/DYrXUe/VGXmlkA1e1/3IrXjD5XCo0VE6GrSnMDLQhpJacnchf/4
	snrXfDfGqmeOcgSog9vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trYtM-00000001yXL-1vlc;
	Mon, 10 Mar 2025 08:53:44 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trYrj-00000001yM7-1lsh;
	Mon, 10 Mar 2025 08:52:04 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5499659e669so2760852e87.3;
        Mon, 10 Mar 2025 01:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741596721; x=1742201521; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KsfdUyH3zrjTycztjPtzayYh5FQ+lsz4U78oE1AJhhQ=;
        b=hFpWUUFlhUBqzU/xLjMJnZII4nrRH+1Ed2t/KU4cZ0ZfL3wSGZCMhJp0mouy8ygKhF
         rGamw3wPuEeqcT5bLGXwDk+hvs+EVSbdNLLojmHwsJuzj2eIiKzkYfQPY55aNsqdzIbU
         4xnesGpZnYfzQHYb1cQf7mJmo1VGpTFElR/F9mvZnyOTZ6wRlKy/Fv2UR5GfByoZpKRB
         yuqPEo8Ig/aZbwoLfDuJiGq1iiXos7+C9KoNXpaSI+WDiuxjLTZCHYIm8A0lHyJ9Jsdl
         D3qLD6WFzVf5nA58adlnhGMs1XFsiBtP1qSEpLRzhRCa1zlKZBlG1Y9qi09z0ulknGxm
         bDnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741596721; x=1742201521;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KsfdUyH3zrjTycztjPtzayYh5FQ+lsz4U78oE1AJhhQ=;
        b=bivriglGU8//5SibqpjPX+pRCq/AxrkCswieIhXG38A60wxkox4LoNgfJaSb7zq/gd
         abC6+wJvcxt2xWo6l+agYjC+48D1fe3VxdkRFyp8ebJkRfNKE6/9oZsRpCjdMXt/L/Et
         5qm85JYd2BSv2NyRZfMJkj4nEZK6D7eX+Yu0W2Lh9cwwctBX4YM+lUdT6bJHQFuUhM0M
         sWGZwAHqDo8P+OdULx/QRHbcSxMCBqLteIAgofScGiUuehgrKekGu8KM8X3KvANcO7A0
         MlpZgpOMYcvY/UFkmMqKjre0vVWm8B8oSLtI2wUGCxm17wOuzpoUKIzQ9v/Yf1DaGBbM
         gP7w==
X-Forwarded-Encrypted: i=1; AJvYcCWpK2V0WM6ZHf92etCE6B3mRcnFCt1t9JqgrWaU+zaqKbCCRrGp+unARlXUhboXBiKkuriKpD3wFkrWEflQhlA5@lists.infradead.org, AJvYcCXFkkobfx3BKavcd4lKBuE8K/5KvGYGGtU3AE8AmIFOOyuirJ9QmH0seDyYOaw49FWjX/a6K3+B2ufbcEmaV5I=@lists.infradead.org
X-Gm-Message-State: AOJu0YwT6Jwe5+dxqEWtKrek+6I/yUeUbU67X+eaf+KoDDfXste3MLs/
	WmZJImh6Qn+/qHfcq0NRYDk7yXnegCkArE+8gCLKKMFIJLagGE3B
X-Gm-Gg: ASbGncuHuNQ67UlBfYCyFxv/SZI9MZs4zj1bVwUG9P09+f/aIlI19wCTJAMPuw/lJHl
	3ys+PEuW1d/kmTjZS3LLod+6XezuPJDVZnqe1WzIH1GyriHPFyL6YP5tOEMGRC+g6Pa4K17ylvh
	W6VMsj7CP4dYcF/azgKBd5Ma51GIeWCh/1aV7QypUmoOIn7m+WsFEEWvxZIHVkU2ulXosJZjNfj
	Kr3XHlBTBWEGU9OEVBi+QoncEgXQTj77jJzpCZgyi5WRhiXjBhX2l38inF5Pq0w9ej5VaffziKx
	+ybh6tMRPd7XNIKkzjrzO1z/2wzM+u7kVDbsw+PJkIbKATkTDOdB6dO4T0pa5HfcatSC6Mmv6Er
	6y9RHvYWkaIUDjufYA5KNyYYSMUY1nYHR
X-Google-Smtp-Source: AGHT+IFDQsKgJjn1vFKF2s3Fxd3y5bXHQKgGDaupCdFC2qHxM/nNEqPRZZXYMIGlgyqsvYZzWa3pXA==
X-Received: by 2002:a05:6512:3da4:b0:545:f4b:ed58 with SMTP id 2adb3069b0e04-54990e5d442mr4212084e87.18.1741596720469;
        Mon, 10 Mar 2025 01:52:00 -0700 (PDT)
Received: from razdolb (static.248.157.217.95.clients.your-server.de. [95.217.157.248])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498b1bc48dsm1369280e87.187.2025.03.10.01.51.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 01:51:59 -0700 (PDT)
References: <20250303-b4-rkisp-noncoherent-v4-0-e32e843fb6ef@gmail.com>
 <20250303-b4-rkisp-noncoherent-v4-1-e32e843fb6ef@gmail.com>
 <8b3dac7baed1de9542452547454c53188c384391.camel@ndufresne.ca>
User-agent: mu4e 1.10.9; emacs 30.1
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Tomasz Figa
 <tfiga@chromium.org>, Marek Szyprowski <m.szyprowski@samsung.com>, Hans
 Verkuil <hverkuil@xs4all.nl>, Sergey  Senozhatsky
 <senozhatsky@chromium.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Mauro  Carvalho Chehab
 <mchehab+huawei@kernel.org>, stable@vger.kernel.org
Subject: Re: [PATCH v4 1/2] media: videobuf2: Fix dmabuf cache sync/flush in
 dma-contig
Date: Sun, 09 Mar 2025 23:18:50 +0300
In-reply-to: <8b3dac7baed1de9542452547454c53188c384391.camel@ndufresne.ca>
Message-ID: <87wmcxs1xw.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_015203_461991_A9678CC4 
X-CRM114-Status: GOOD (  17.51  )
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

CkhpIE5pY29sYXMsIFRvbWFzeiwKCk9uIDIwMjUtMDMtMDMgYXQgMTA6MjQgLTA1LCBOaWNvbGFz
IER1ZnJlc25lIDxuaWNvbGFzQG5kdWZyZXNuZS5jYT4gd3JvdGU6Cgo+IEhpIE1pa2hhaWwsCj4K
PiBMZSBsdW5kaSAwMyBtYXJzIDIwMjUgw6AgMTQ6NDAgKzAzMDAsIE1pa2hhaWwgUnVkZW5rbyBh
IMOpY3JpdMKgOgo+PiBXaGVuIHN1cHBvcnQgZm9yIFY0TDJfRkxBR19NRU1PUllfTk9OX0NPTlNJ
U1RFTlQgd2FzIHJlbW92ZWQgaW4KPj4gY29tbWl0IDEyOTEzNGU1NDE1ZCAoIm1lZGlhOiBtZWRp
YS92NGwyOiByZW1vdmUKPj4gVjRMMl9GTEFHX01FTU9SWV9OT05fQ09OU0lTVEVOVCBmbGFnIiks
Cj4+IHZiMl9kY19kbWFidWZfb3BzX3tiZWdpbixlbmR9X2NwdV9hY2Nlc3MoKSBmdW5jdGlvbnMg
d2VyZSBtYWRlCj4+IG5vLW9wcy4gTGF0ZXIsIHdoZW4gc3VwcG9ydCBmb3IgVjRMMl9NRU1PUllf
RkxBR19OT05fQ09IRVJFTlQgd2FzCj4+IGludHJvZHVjZWQgaW4gY29tbWl0IGMwYWNmOWNmZWVl
MCAoIm1lZGlhOiB2aWRlb2J1ZjI6IGhhbmRsZQo+PiBWNEwyX01FTU9SWV9GTEFHX05PTl9DT0hF
UkVOVCBmbGFnIiksIHRoZSBhYm92ZSBmdW5jdGlvbnMgcmVtYWluZWQKPj4gbm8tb3BzLCBtYWtp
bmcgY2FjaGUgbWFpbnRlbmFuY2UgZm9yIG5vbi1jb2hlcmVudCBkbWFidWZzIGFsbG9jYXRlZAo+
PiBieQo+PiBkbWEtY29udGlnIGltcG9zc2libGUuCj4+Cj4+IEZpeCB0aGlzIGJ5IHJlaW50cm9k
dWNpbmcgZG1hX3N5bmNfc2d0YWJsZV9mb3Jfe2NwdSxkZXZpY2V9IGFuZAo+PiB7Zmx1c2gsaW52
YWxpZGF0ZX1fa2VybmVsX3ZtYXBfcmFuZ2UgY2FsbHMgdG8KPj4gdmIyX2RjX2RtYWJ1Zl9vcHNf
e2JlZ2luLGVuZH1fY3B1X2FjY2VzcygpIGZ1bmN0aW9ucyBmb3Igbm9uLWNvaGVyZW50Cj4+IGJ1
ZmZlcnMuCj4+Cj4+IEZpeGVzOiBjMGFjZjljZmVlZTAgKCJtZWRpYTogdmlkZW9idWYyOiBoYW5k
bGUKPj4gVjRMMl9NRU1PUllfRkxBR19OT05fQ09IRVJFTlQgZmxhZyIpCj4+IENjOiBzdGFibGVA
dmdlci5rZXJuZWwub3JnCj4+IFNpZ25lZC1vZmYtYnk6IE1pa2hhaWwgUnVkZW5rbyA8bWlrZS5y
dWRlbmtvQGdtYWlsLmNvbT4KPj4gLS0tCj4+IMKgLi4uL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIv
dmlkZW9idWYyLWRtYS1jb250aWcuY8KgIHwgMjIKPj4gKysrKysrKysrKysrKysrKysrKysrKwo+
PiDCoDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+PiBi
L2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jCj4+
IGluZGV4Cj4+IGExM2VjNTY5YzgyZjZkYTJkOTc3MjIyYjk0YWYzMmU3NGM2YzZjODIuLmQ0MTA5
NWZlNWJkMjFmYWY4MTVkNmIwMzVkNwo+PiBiYzg4OGE4NGE5NWQ1IDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+PiAr
KysgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcu
Ywo+PiBAQCAtNDI3LDYgKzQyNywxNyBAQCBzdGF0aWMgaW50Cj4+IMKgdmIyX2RjX2RtYWJ1Zl9v
cHNfYmVnaW5fY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZGJ1ZiwKPj4gwqAJCQkJwqDCoCBl
bnVtIGRtYV9kYXRhX2RpcmVjdGlvbgo+PiBkaXJlY3Rpb24pCj4+IMKgewo+PiArCXN0cnVjdCB2
YjJfZGNfYnVmICpidWYgPSBkYnVmLT5wcml2Owo+PiArCXN0cnVjdCBzZ190YWJsZSAqc2d0ID0g
YnVmLT5kbWFfc2d0Owo+PiArCj4+ICsJaWYgKCFidWYtPm5vbl9jb2hlcmVudF9tZW0pCj4+ICsJ
CXJldHVybiAwOwo+PiArCj4+ICsJaWYgKGJ1Zi0+dmFkZHIpCj4+ICsJCWludmFsaWRhdGVfa2Vy
bmVsX3ZtYXBfcmFuZ2UoYnVmLT52YWRkciwgYnVmLT5zaXplKTsKPgo+IFdoYXQgd291bGQgbWFr
ZSBtZSBhIGxvdCBtb3JlIGNvbmZvcnRhYmxlIHdpdGggdGhpcyBjaGFuZ2UgaXMgaWYgeW91Cj4g
ZW5hYmxlIGtlcm5lbCBtYXBwaW5ncyBmb3Igb25lIHRlc3QuIFRoaXMgd2lsbCBlbnN1cmUgeW91
IGNvdmVyIHRoZQo+IGNhbGwgdG8gImludmFsaWRhdGUiIGluIHlvdXIgdGVzdGluZy4gSSdkIGxp
a2UgdG8ga25vdyBhYm91dCB0aGUKPiBwZXJmb3JtYW5jZSBpbXBhY3QuIFdpdGggdGhpcyBpbXBs
ZW1lbnRhdGlvbiBpdCBzaG91bGQgYmUgaWRlbnRpY2FsIHRvCj4gdGhlIFZCMiBvbmUuCj4KCkkg
aGF2ZSByZS1ydW4gbXkgdGVzdHMgb24gUkszMzk5LCB3aXRoIDEyODB4NzIwIFhSR0IgY2FwdHVy
ZSBidWZmZXJzICgxCnBsYW5lLCAzNjg2NDAwIGJ5dGVzKS4gQ2FwdHVyZSBwcm9jZXNzIHdhcyBw
aW5uZWQgdG8gImJpZyIgY29yZXMgcnVubmluZwphdCBmaXhlZCBmcmVxdWVuY3kgb2YgMS44IEdI
ei4gTGliY2FtZXJhIHdhcyBtb2RpZmllZCB0byByZXF1ZXN0IGJ1ZmZlcnMKd2l0aCBWNEwyX01F
TU9SWV9GTEFHX05PTl9DT0hFUkVOVCBmbGFnLiBETUFfQlVGX0lPQ1RMX1NZTkMgaW9jdGxzIHdl
cmUKdXNlZCBhcyBhcHByb3ByaWF0ZS4gRm9yIGtlcm5lbCBtYXBwaW5nIGVmZmVjdCB0ZXN0LCB2
YjJfcGxhbmVfdmFkZHIKY2FsbCB3YXMgaW5zZXJ0ZWQgaW50byBya2lzcDFfdmIyX2J1Zl9pbml0
LgoKVGhlIHRpbWluZ3MgYXJlIGFzIGZvbGxvd2luZzoKCi0gbWVtY3B5IGNvaGVyZW50IGJ1ZmZl
cjogNzU3MCArLy0gNjMgdXMKLSBtZW1jcHkgbm9uLWNvaGVyZW50IGJ1ZmZlcjogMTEyMCArLy0g
MzQgdXMKCndpdGhvdXQga2VybmVsIG1hcHBpbmc6CgotIGlvY3RsKGZkLCBETUFfQlVGX0lPQ1RM
X1NZTkMsIHtETUFfQlVGX1NZTkNfU1RBUlR8RE1BX0JVRl9TWU5DX1JFQUR9KTogNDI4ICsvLSAx
NSB1cwotIGlvY3RsKGZkLCBETUFfQlVGX0lPQ1RMX1NZTkMsIHtETUFfQlVGX1NZTkNfRU5EfERN
QV9CVUZfU1lOQ19SRUFEfSk6IDQyMiArLy0gMjggdXMKCndpdGgga2VybmVsIG1hcHBpbmc6Cgot
IGlvY3RsKGZkLCBETUFfQlVGX0lPQ1RMX1NZTkMsIHtETUFfQlVGX1NZTkNfU1RBUlR8RE1BX0JV
Rl9TWU5DX1JFQUR9KTogNTI2ICsvLSAxMyB1cwotIGlvY3RsKGZkLCBETUFfQlVGX0lPQ1RMX1NZ
TkMsIHtETUFfQlVGX1NZTkNfRU5EfERNQV9CVUZfU1lOQ19SRUFEfSk6IDUxOSArLy0gMzggdXMK
ClNvLCBldmVuIHdpdGgga2VybmVsIG1hcHBpbmcgZW5hYmxlZCwgc3BlZWR1cCBpcyA3NTcwIC8g
KDExMjAgKyA1MjYgKyA1MTkpID0gMy41LAphbmQgdGhlIHVzZSBvZiBub25jb2hlcmVudCBidWZm
ZXJzIGlzIGp1c3RpZmllZCAtLSBhdCBsZWFzdCBvbiB0aGlzIHBsYXRmb3JtLgoKLS0KQmVzdCBy
ZWdhcmRzLApNaWtoYWlsIFJ1ZGVua28KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
