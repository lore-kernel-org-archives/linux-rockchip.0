Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 310D6C02188
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jan 2025 19:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqjjhLfrebMwJ9FLPQ+3jpAl1aOarDGweBOKxNHQvjo=; b=oz2bMzgWwy5sCF
	WOEDu4tjyddtX6V32lu9jenFuRo9m3pM3EmagF8/xQmGitl50Gqz7WoRhx35Ys45+HxfAdpFjtVv9
	hegtD/dNv+Sw9G0Zx5CdvSyoVrP5zZ44GtEMYAByfOk/JHFjQiEiivyy2sBphN6x34SZdKAxGoKi0
	ECc6Zx38QFDvcxbIWCokzXjaYCKKe/rzue0/mrTGl1tj/ez5OJKwMEbc965Q0JS1NWG1krIgvAGNW
	miPvwmRvKhcih6WqbQPoAzJbhDGiF+t1pPFnNlw8JtbCrztskhIcTbnISlxLbCdX62/nAgUnuUC2F
	M0Tu8pqRZZq0t59Sqafw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcUuQ-000000038Dp-1fNS;
	Mon, 27 Jan 2025 19:36:34 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcUt3-0000000388T-1uwl;
	Mon, 27 Jan 2025 19:35:10 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-30613802a59so52799971fa.0;
        Mon, 27 Jan 2025 11:35:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738006507; x=1738611307; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5VUoGCwfVNYXwKgXNKkHD5VpTMGwmKU++/GyIsT0nn8=;
        b=A6KcZjd3O1f0GZ4FySxm1imoHM2onTU6HGPXEpne4qN9o0UavKsePH6lazxQRg4AqG
         xeDx1afJGTBRdp6FMcl9ST7R452h6TxXUX9jYoVCD4R3SGu/e54nHxLhb54d361anYEb
         v7t3Dip+Eu89sCIK9aWLQ0vY4L4hkudEwU9S5Sw0iixHEE9z+EdUyBQsurJqs9cFh8Ac
         XzzLod86hnbneddRuMTHdn9uZA/ERX1hkzqTq06cuzYSXo/eie8UyeNUn2/8JeCb2FLl
         gPxd4D4Z++lj0nwr3+CmytBtJveuzmbNVUmmrCBATgCy+PDU7GW1tmQCpUhwxmIG7PC5
         fgUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738006507; x=1738611307;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5VUoGCwfVNYXwKgXNKkHD5VpTMGwmKU++/GyIsT0nn8=;
        b=Hp5gmWSNw35HT0V8Pj306MplS97KTK8a+SUo1LLlqy8b0/7PyumIscbDsqjztJwPyE
         HdItKbMGnqUDWnzgtnPFFAPVMw1NFqabt0A7VznhM9OaUWSRQhuzMu40zPXl0qq2HFkT
         cM65pVqvb0Tc/ea7KXsKWK1J5KV8j+FX23HG9LHEwscdnEMDvx0zYwWff3jnS9wGAaqx
         Xuz5sGK70TvDwf/QoVUTBVCj9eWUMtnjvLePZJwtC3xkPeAk8seJUezRYOVe4UgwVG1O
         jRuBuo48R1FtdIDUh/JQdSxLW6XJ3OFdY2Y9kgWF5SXvrGBO+Uh1p13uiJbihJTKpR7w
         8p4A==
X-Forwarded-Encrypted: i=1; AJvYcCU26vvj1dcdHOJhiB9BQlQRKNKZ2H2mCQevtdh03SRe7h5XyWz6mxwY+ulIYwQriQFi7ysS5iY8bCDiSGkBYCR0@lists.infradead.org, AJvYcCVYpGOi2szNMyy4NTkOuS3KbCb3cKR80sQ2ZhNYutadpXswU4NrmTFFKDPl1xBbk+MPQrizj6MV8mykO0hiSb0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0jg0/7uJuO5Fk2SZM2WVQ5czq9ba4/GSiv818fgouSdR5nLry
	BdUT6rsJTOi8HlZwH4fVwnlkcdssXa9e9RR8feYAWYjVpTUCpUnq
X-Gm-Gg: ASbGncuJ66iUzXg88FW3UrdXGQnsvRxvisuffMoip4ILFp4b85UUrfzhF4SO1UQirCg
	KWpb9iZ78wSRBH6p5gLMbtivuio/RHmjSrMi2dAVDDs/7rFCfET5GGJmaIyxowCOtqt5yaTBlmp
	0u2b/cx0nj3GKlJQXweVzCfDbrnCXwBDF5zqCqUMXkgTLQt2Nmwb05p0Ki/TRhZUt/wgNGCBQM+
	ycOqZwnD8StNlEtLYFB9JEpnVOuhnJYaMsK1xfAxnWKtewGHClidIWFtJk/Osb4T2nlsttY61W6
	ebImnuBhwYiJFaV0UMuvsX3PvzfHIZNpUU8edP7RuY9paJ927Xsy9Z17iO89qSwzIvoT
X-Google-Smtp-Source: AGHT+IGYlUkHvv8II3ZmzjPYZOyuE8bYVugVsv3AwxgDWrxCyoTSMTVmYGtMCYbLyZ+vF5rQMN00+g==
X-Received: by 2002:a05:6512:1247:b0:542:98e0:7c67 with SMTP id 2adb3069b0e04-5439c27d401mr15203413e87.51.1738006506652;
        Mon, 27 Jan 2025 11:35:06 -0800 (PST)
Received: from razdolb (static.248.157.217.95.clients.your-server.de. [95.217.157.248])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c8381772sm1375919e87.249.2025.01.27.11.35.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 11:35:05 -0800 (PST)
References: <20250115-b4-rkisp-noncoherent-v2-0-0853e1a24012@gmail.com>
 <20250115-b4-rkisp-noncoherent-v2-1-0853e1a24012@gmail.com>
 <CAAFQd5DFuw9e85X-UhVfonb5C9F0tG6xyn9RUGitKDQXifcUyA@mail.gmail.com>
User-agent: mu4e 1.10.9; emacs 29.4.50
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: Tomasz Figa <tfiga@chromium.org>
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Marek Szyprowski
 <m.szyprowski@samsung.com>, Hans Verkuil <hverkuil@xs4all.nl>, Sergey
 Senozhatsky <senozhatsky@chromium.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Mauro Carvalho Chehab
 <mchehab+huawei@kernel.org>, stable@vger.kernel.org
Subject: Re: [PATCH v2 1/2] media: videobuf2: Fix dmabuf cache sync/flush in
 dma-contig
Date: Mon, 27 Jan 2025 22:25:51 +0300
In-reply-to: <CAAFQd5DFuw9e85X-UhVfonb5C9F0tG6xyn9RUGitKDQXifcUyA@mail.gmail.com>
Message-ID: <87jzag82zd.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_113509_500266_3C14E04E 
X-CRM114-Status: GOOD (  27.05  )
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

SGkgVG9tYXN6LAoKYW5kIHRoYW5rcyBmb3IgeW91ciByZXZpZXchCgpPbiAyMDI1LTAxLTI3IGF0
IDIwOjE4ICswOSwgVG9tYXN6IEZpZ2EgPHRmaWdhQGNocm9taXVtLm9yZz4gd3JvdGU6Cgo+IEhp
IE1pa2hhaWwsCj4KPiBPbiBUaHUsIEphbiAxNiwgMjAyNSBhdCAyOjI14oCvQU0gTWlraGFpbCBS
dWRlbmtvIDxtaWtlLnJ1ZGVua29AZ21haWwuY29tPiB3cm90ZToKPj4KPj4gV2hlbiBzdXBwb3J0
IGZvciBWNEwyX0ZMQUdfTUVNT1JZX05PTl9DT05TSVNURU5UIHdhcyByZW1vdmVkIGluCj4+IGNv
bW1pdCAxMjkxMzRlNTQxNWQgKCJtZWRpYTogbWVkaWEvdjRsMjogcmVtb3ZlCj4+IFY0TDJfRkxB
R19NRU1PUllfTk9OX0NPTlNJU1RFTlQgZmxhZyIpLAo+PiB2YjJfZGNfZG1hYnVmX29wc197YmVn
aW4sZW5kfV9jcHVfYWNjZXNzKCkgZnVuY3Rpb25zIHdlcmUgbWFkZQo+PiBuby1vcHMuIExhdGVy
LCB3aGVuIHN1cHBvcnQgZm9yIFY0TDJfTUVNT1JZX0ZMQUdfTk9OX0NPSEVSRU5UIHdhcwo+PiBp
bnRyb2R1Y2VkIGluIGNvbW1pdCBjMGFjZjljZmVlZTAgKCJtZWRpYTogdmlkZW9idWYyOiBoYW5k
bGUKPj4gVjRMMl9NRU1PUllfRkxBR19OT05fQ09IRVJFTlQgZmxhZyIpLCB0aGUgYWJvdmUgZnVu
Y3Rpb25zIHJlbWFpbmVkCj4+IG5vLW9wcywgbWFraW5nIGNhY2hlIG1haW50ZW5hbmNlIGZvciBu
b24tY29oZXJlbnQgZG1hYnVmcyBhbGxvY2F0ZWQgYnkKPj4gZG1hLWNvbnRpZyBpbXBvc3NpYmxl
Lgo+Pgo+PiBGaXggdGhpcyBieSByZWludHJvZHVjaW5nIGRtYV9zeW5jX3NnX2Zvcl97Y3B1LGRl
dmljZX0gY2FsbHMgdG8KPj4gdmIyX2RjX2RtYWJ1Zl9vcHNfe2JlZ2luLGVuZH1fY3B1X2FjY2Vz
cygpIGZ1bmN0aW9ucyBmb3Igbm9uLWNvaGVyZW50Cj4+IGJ1ZmZlcnMuCj4+Cj4+IEZpeGVzOiBj
MGFjZjljZmVlZTAgKCJtZWRpYTogdmlkZW9idWYyOiBoYW5kbGUgVjRMMl9NRU1PUllfRkxBR19O
T05fQ09IRVJFTlQgZmxhZyIpCj4+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4+IFNpZ25l
ZC1vZmYtYnk6IE1pa2hhaWwgUnVkZW5rbyA8bWlrZS5ydWRlbmtvQGdtYWlsLmNvbT4KPj4gLS0t
Cj4+ICBkcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcu
YyB8IDE0ICsrKysrKysrKysrKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygr
KQo+Pgo+Cj4gVGhhbmtzIGEgbG90IGZvciB0aGUgcGF0Y2ghCj4gU29ycnksIGZvciB0aGUgZGVs
YXkuIEVuZGVkIHVwIGJlaW5nIHNpY2sgd2l0aCBzb21lIG5hc3R5IGNvbGQgdGhhdAo+IHRvb2sg
cXVpdGUgYSB3aGlsZSB0byByZWNvdmVyLgo+IFBsZWFzZSB0YWtlIGEgbG9vayBhdCBteSBjb21t
ZW50cyBpbmxpbmUuCj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVv
YnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9i
dWYyL3ZpZGVvYnVmMi1kbWEtY29udGlnLmMKPj4gaW5kZXggYmIwYjdmYTY3YjUzOWFhNzNhZDVj
Y2YzYzNiYzMxOGUyNmY4YTRjYi4uODg5ZDZjMTFlMTVhYjVjZDRiNGMzMTdlODY1ZjFmZWY5MmRm
NGI2NiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVv
YnVmMi1kbWEtY29udGlnLmMKPj4gKysrIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYy
L3ZpZGVvYnVmMi1kbWEtY29udGlnLmMKPj4gQEAgLTQyNyw2ICs0MjcsMTMgQEAgc3RhdGljIGlu
dAo+PiAgdmIyX2RjX2RtYWJ1Zl9vcHNfYmVnaW5fY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAq
ZGJ1ZiwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbnVtIGRtYV9kYXRh
X2RpcmVjdGlvbiBkaXJlY3Rpb24pCj4+ICB7Cj4+ICsgICAgICAgc3RydWN0IHZiMl9kY19idWYg
KmJ1ZiA9IGRidWYtPnByaXY7Cj4+ICsgICAgICAgc3RydWN0IHNnX3RhYmxlICpzZ3QgPSBidWYt
PmRtYV9zZ3Q7Cj4+ICsKPj4gKyAgICAgICBpZiAoIWJ1Zi0+bm9uX2NvaGVyZW50X21lbSB8fCBi
dWYtPnZiLT5za2lwX2NhY2hlX3N5bmNfb25fZmluaXNoKQo+Cj4gc2tpcF9jYWNoZV9zeW5jX29u
X2ZpbmlzaCBzaG91bGRuJ3QgYXBwbHkgdG8gdGhpcyBmdW5jdGlvbiwgYmVjYXVzZQo+IHRoZSBi
dWZmZXIgd2FzIHNoYXJlZCB3aXRoIGFuIGV4dGVybmFsIERNQS1idWYgaW1wb3J0ZXIgYW5kIHdl
IGRvbid0Cj4ga25vdyBpbiB3aGF0IHN0YXRlIGl0IGlzIGF0IHRoaXMgcG9pbnQuCj4KCkFjaywg
d2lsbCBmaXggaW4gdjMuCgo+PiArICAgICAgICAgICAgICAgcmV0dXJuIDA7Cj4+ICsKPgo+IFdl
IHNob3VsZCBhbHNvIHRha2UgY2FyZSBvZiB0aGUga2VybmVsIG1hcHBpbmcgaWYgaXQgZXhpc3Rz
LCBiZWNhdXNlCj4gb24gc29tZSBwbGF0Zm9ybXMgaXQgbWF5IG5vdCBiZSBjb2hlcmVudCB3aXRo
IHRoZSB1c2Vyc3BhY2Ugb25lIC0KPiB1c2luZyBmbHVzaF9rZXJuZWxfdm1hcF9yYW5nZSgpLiBQ
bGVhc2UgY2hlY2sgaG93Cj4gdmIyX2RjX3ByZXBhcmUoKS92YjJfZGNfZmluaXNoKCkgZG8gaXQu
Cj4KClRoYW5rcyBmb3IgdGhlIHBvaW50ZXIsIHdpbGwgZG8gc28gaW4gdjMuCgo+PiArICAgICAg
IGRtYV9zeW5jX3NnX2Zvcl9jcHUoYnVmLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBidWYt
PmRtYV9kaXIpOwo+Cj4gV2UgY2FuIHVzZSB0aGUgZG1hX3N5bmNfc2d0YWJsZV8qKCkgdmFyaWFu
dCBoZXJlIHNvIHdlIGNhbiBqdXN0IHBhc3MKPiB0aGUgZW50aXJlIHNndCB0byBpdC4KPgoKV2ls
bCBkbyBzby4KCj4+ICAgICAgICAgcmV0dXJuIDA7Cj4+ICB9Cj4+Cj4+IEBAIC00MzQsNiArNDQx
LDEzIEBAIHN0YXRpYyBpbnQKPj4gIHZiMl9kY19kbWFidWZfb3BzX2VuZF9jcHVfYWNjZXNzKHN0
cnVjdCBkbWFfYnVmICpkYnVmLAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBl
bnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXJlY3Rpb24pCj4+ICB7Cj4+ICsgICAgICAgc3RydWN0
IHZiMl9kY19idWYgKmJ1ZiA9IGRidWYtPnByaXY7Cj4+ICsgICAgICAgc3RydWN0IHNnX3RhYmxl
ICpzZ3QgPSBidWYtPmRtYV9zZ3Q7Cj4+ICsKPj4gKyAgICAgICBpZiAoIWJ1Zi0+bm9uX2NvaGVy
ZW50X21lbSB8fCBidWYtPnZiLT5za2lwX2NhY2hlX3N5bmNfb25fcHJlcGFyZSkKPj4gKyAgICAg
ICAgICAgICAgIHJldHVybiAwOwo+PiArCj4+ICsgICAgICAgZG1hX3N5bmNfc2dfZm9yX2Rldmlj
ZShidWYtPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMsIGJ1Zi0+ZG1hX2Rpcik7Cj4+ICAgICAg
ICAgcmV0dXJuIDA7Cj4KPiBPdmVyYWxsIHRoZSBzYW1lIGNvbW1lbnRzIGhlcmUgYXMgZm9yCj4g
dmIyX2RjX2RtYWJ1Zl9vcHNfYmVnaW5fY3B1X2FjY2VzcygpICsvLSBmbHVzaCB3b3VsZCBjaGFu
Z2UgdG8KPiBpbnZhbGlkYXRlLgoKQWNrLgoKPiBCZXN0IHJlZ2FyZHMsCj4gVG9tYXN6CgoKLS0K
QmVzdCByZWdhcmRzLApNaWtoYWlsIFJ1ZGVua28KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
