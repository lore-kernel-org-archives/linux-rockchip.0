Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BD41C282D3
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 09:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crddsP/AKGjp2Y2tr3+u2Hd5wzzRsm+cY2QMRxCPN1I=; b=LhdDDOuh94/G99
	R/ADrPqU5Qitbn3J+9ZKhBhHDo6zswWSasLzf9a6DNgq3+zRa7BN6fkiqTO79hK0oMnTLxph1bsti
	VE88CF5tXlppMxWdtr5Qz0S5KuyPETtwnBydRHiU6NeaaL/D+swkKqWWQhxIE7+ZgBHSbcz98vWR8
	xIHeaEX2Q2Z2Dj5d4ulc3iOxbSxgZW836qiMRnjFBNCrRUGnwfx6Ny9u52rJ2d2yevmNSOtsIKAYR
	v+zujFkrN7g7XcoUMDObMb//PS4rjLfCAPkhvF8370KuJeuaCSUYPLVq3MVbWXfk9qXZzCPScDiFx
	AW4wOE+AFBzOFRk4TJoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpkq7-00000007TmH-1yLl;
	Wed, 05 Mar 2025 09:14:55 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpjZX-00000007IHN-2VRe;
	Wed, 05 Mar 2025 07:53:44 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-54954fa61c8so5306325e87.1;
        Tue, 04 Mar 2025 23:53:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741161221; x=1741766021; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HiTpS6soFncX3ap+JUlkCx1cOPiDwgUNOLW0huS1jJo=;
        b=G7oOLH3zeugRFmagiKpNE5xYgbj6zWgt8ne1KZTM6pSuVQ5EzoxAJ12Y363yRNrpoZ
         Sqrvb3++EM2HYW4d57wp+wWHZuVmqZtlrQKi4P5ZPvroZoGKoRH/KluhqyXOwODjQn3L
         M4NjKNYtETf1O7J31vDvgG6oUQAf+f+6gFBA9y4GKh88kt3RfFNX4jUUVbl2fafXk2uF
         necHLJVVlDGWkYynOnEmVpf5LBLCwDAy7azBGdLDTZbDJMoO7hmNrevac4GCgxLU7HWD
         UPilOwAosOs6J6lUusqAWfs+X0k9wmA+53lHSmeuMAcEOzI7B1NEJlRexzS7PNs2iw1q
         hL8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741161221; x=1741766021;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HiTpS6soFncX3ap+JUlkCx1cOPiDwgUNOLW0huS1jJo=;
        b=KAlortb2tYpo+RSEf0RJ8e5dyVN0dE0+RuL/0hy/qipk5v7QADAmgnpIWC4icDzxOa
         l2Y2N2Zy+Q3PdzDzBL/85AVEGleio4Ca9ts8XMQErpuTK/l2hrZYVeDp4SD2MP4euIl/
         htkC5cMA5uDQqls5UK1YuNClMaz6eZdzLIBIKCcul50P7PYiV6RUU5fM9A1g/e/6TLcx
         pbLLvP9J2t6nj1jtCu7qk8YqtEPC4Y2D6jE2agDDi8Iz45mo2t7cGoFcaUQUn7nc+GhF
         ht+Yduf92xXv8ZlawOfPLWHzQmo/k58lHd+t5ykstNzEOMQCUxZtQyjHdwSs6NukDkv4
         0Uig==
X-Forwarded-Encrypted: i=1; AJvYcCW/WxL+whbTKAj1XONuVydBpeqiHHGWOKCGHTSFFf4nb+S2NXUgQUXbS7qBz51bBMaZCgdlqEghg4HCo/r5/P+C@lists.infradead.org, AJvYcCX+Cc2V0fob4FjQJhQKE0bqRSeYenfotbCMDNj73RDOcLxpHzi2/4sGX7lT05nwtwAokunrnzaNMkns92tG7oQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6qxWvQ2cGuFF3DOm9SVCIMtDWcQJT+dhd1W2688sAtqT5LTDi
	uLUPjNahX0mfxZNseMGacdU6DR7gB0J5Tcp9g7A23QM+zHRj3sRq
X-Gm-Gg: ASbGnct6q38pBVyEC75GhpbXE9+NmQJiHTdr03P97hqDl+V7GIh9rh9S45nmoGdO3MU
	L16oEImdKFRfwWDx1cUcetwfm28VFDcZLhX3zDIogh79ePmnqWZNFuyym8Qdbw6OeZCz+RWOAxG
	nwV7qzogXQun8mR34u++auAn6o5Crix+sQUSbdlcD6bOWwuSANwzaD/KdkmS0kgPXN+IHNZGpQd
	ktuJfT5ZvxaabdxCX2t9UX8OgchFeBH5aATw+47uLVGVgtM7Jar8H7viasPRvirAvwFGWL/ii55
	FPJcF1NyjTJzYTs0Vy+tNBNhGXk4oInP6LJLg2mhiJlbKo2PnpUx1hvrG55eGCVd/Jt2ml2iSYN
	0ucRWER4wbVTbSh1p0FTmKyTnUiyqLAFB
X-Google-Smtp-Source: AGHT+IGoSfXFo2jQfX6zwJukiQLZftqM9VYE26ir2v2Z98LPwA2YNZbRZg8LePVsUKETExIau4wjew==
X-Received: by 2002:a05:6512:3190:b0:549:7c64:3bc0 with SMTP id 2adb3069b0e04-5497d35028emr565104e87.29.1741161221096;
        Tue, 04 Mar 2025 23:53:41 -0800 (PST)
Received: from razdolb (static.248.157.217.95.clients.your-server.de. [95.217.157.248])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5495b3f4ebdsm1155605e87.102.2025.03.04.23.53.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 23:53:40 -0800 (PST)
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
Date: Wed, 05 Mar 2025 10:40:31 +0300
In-reply-to: <8b3dac7baed1de9542452547454c53188c384391.camel@ndufresne.ca>
Message-ID: <87y0xj29rz.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_235343_633942_2AB62DB6 
X-CRM114-Status: GOOD (  20.35  )
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

SGkgTmljb2xhcywKCk9uIDIwMjUtMDMtMDMgYXQgMTA6MjQgLTA1LCBOaWNvbGFzIER1ZnJlc25l
IDxuaWNvbGFzQG5kdWZyZXNuZS5jYT4gd3JvdGU6Cgo+IEhpIE1pa2hhaWwsCj4KPiBMZSBsdW5k
aSAwMyBtYXJzIDIwMjUgw6AgMTQ6NDAgKzAzMDAsIE1pa2hhaWwgUnVkZW5rbyBhIMOpY3JpdMKg
Ogo+PiBXaGVuIHN1cHBvcnQgZm9yIFY0TDJfRkxBR19NRU1PUllfTk9OX0NPTlNJU1RFTlQgd2Fz
IHJlbW92ZWQgaW4KPj4gY29tbWl0IDEyOTEzNGU1NDE1ZCAoIm1lZGlhOiBtZWRpYS92NGwyOiBy
ZW1vdmUKPj4gVjRMMl9GTEFHX01FTU9SWV9OT05fQ09OU0lTVEVOVCBmbGFnIiksCj4+IHZiMl9k
Y19kbWFidWZfb3BzX3tiZWdpbixlbmR9X2NwdV9hY2Nlc3MoKSBmdW5jdGlvbnMgd2VyZSBtYWRl
Cj4+IG5vLW9wcy4gTGF0ZXIsIHdoZW4gc3VwcG9ydCBmb3IgVjRMMl9NRU1PUllfRkxBR19OT05f
Q09IRVJFTlQgd2FzCj4+IGludHJvZHVjZWQgaW4gY29tbWl0IGMwYWNmOWNmZWVlMCAoIm1lZGlh
OiB2aWRlb2J1ZjI6IGhhbmRsZQo+PiBWNEwyX01FTU9SWV9GTEFHX05PTl9DT0hFUkVOVCBmbGFn
IiksIHRoZSBhYm92ZSBmdW5jdGlvbnMgcmVtYWluZWQKPj4gbm8tb3BzLCBtYWtpbmcgY2FjaGUg
bWFpbnRlbmFuY2UgZm9yIG5vbi1jb2hlcmVudCBkbWFidWZzIGFsbG9jYXRlZAo+PiBieQo+PiBk
bWEtY29udGlnIGltcG9zc2libGUuCj4+Cj4+IEZpeCB0aGlzIGJ5IHJlaW50cm9kdWNpbmcgZG1h
X3N5bmNfc2d0YWJsZV9mb3Jfe2NwdSxkZXZpY2V9IGFuZAo+PiB7Zmx1c2gsaW52YWxpZGF0ZX1f
a2VybmVsX3ZtYXBfcmFuZ2UgY2FsbHMgdG8KPj4gdmIyX2RjX2RtYWJ1Zl9vcHNfe2JlZ2luLGVu
ZH1fY3B1X2FjY2VzcygpIGZ1bmN0aW9ucyBmb3Igbm9uLWNvaGVyZW50Cj4+IGJ1ZmZlcnMuCj4+
Cj4+IEZpeGVzOiBjMGFjZjljZmVlZTAgKCJtZWRpYTogdmlkZW9idWYyOiBoYW5kbGUKPj4gVjRM
Ml9NRU1PUllfRkxBR19OT05fQ09IRVJFTlQgZmxhZyIpCj4+IENjOiBzdGFibGVAdmdlci5rZXJu
ZWwub3JnCj4+IFNpZ25lZC1vZmYtYnk6IE1pa2hhaWwgUnVkZW5rbyA8bWlrZS5ydWRlbmtvQGdt
YWlsLmNvbT4KPj4gLS0tCj4+IMKgLi4uL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYy
LWRtYS1jb250aWcuY8KgIHwgMjIKPj4gKysrKysrKysrKysrKysrKysrKysrKwo+PiDCoDEgZmls
ZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21l
ZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+PiBiL2RyaXZlcnMv
bWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jCj4+IGluZGV4Cj4+
IGExM2VjNTY5YzgyZjZkYTJkOTc3MjIyYjk0YWYzMmU3NGM2YzZjODIuLmQ0MTA5NWZlNWJkMjFm
YWY4MTVkNmIwMzVkNwo+PiBiYzg4OGE4NGE5NWQ1IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21l
ZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+PiArKysgYi9kcml2
ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+PiBAQCAt
NDI3LDYgKzQyNywxNyBAQCBzdGF0aWMgaW50Cj4+IMKgdmIyX2RjX2RtYWJ1Zl9vcHNfYmVnaW5f
Y3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZGJ1ZiwKPj4gwqAJCQkJwqDCoCBlbnVtIGRtYV9k
YXRhX2RpcmVjdGlvbgo+PiBkaXJlY3Rpb24pCj4+IMKgewo+PiArCXN0cnVjdCB2YjJfZGNfYnVm
ICpidWYgPSBkYnVmLT5wcml2Owo+PiArCXN0cnVjdCBzZ190YWJsZSAqc2d0ID0gYnVmLT5kbWFf
c2d0Owo+PiArCj4+ICsJaWYgKCFidWYtPm5vbl9jb2hlcmVudF9tZW0pCj4+ICsJCXJldHVybiAw
Owo+PiArCj4+ICsJaWYgKGJ1Zi0+dmFkZHIpCj4+ICsJCWludmFsaWRhdGVfa2VybmVsX3ZtYXBf
cmFuZ2UoYnVmLT52YWRkciwgYnVmLT5zaXplKTsKPgo+IFdoYXQgd291bGQgbWFrZSBtZSBhIGxv
dCBtb3JlIGNvbmZvcnRhYmxlIHdpdGggdGhpcyBjaGFuZ2UgaXMgaWYgeW91Cj4gZW5hYmxlIGtl
cm5lbCBtYXBwaW5ncyBmb3Igb25lIHRlc3QuIFRoaXMgd2lsbCBlbnN1cmUgeW91IGNvdmVyIHRo
ZQo+IGNhbGwgdG8gImludmFsaWRhdGUiIGluIHlvdXIgdGVzdGluZy4gSSdkIGxpa2UgdG8ga25v
dyBhYm91dCB0aGUKPiBwZXJmb3JtYW5jZSBpbXBhY3QuIFdpdGggdGhpcyBpbXBsZW1lbnRhdGlv
biBpdCBzaG91bGQgYmUgaWRlbnRpY2FsIHRvCj4gdGhlIFZCMiBvbmUuCgpJJ2xsIGVuYWJsZSBr
ZXJuZWwgbWFwcGluZ3MgYW5kIHJlcnVuIG15IHRlc3RzIGxhdGVyIHRoaXMgd2Vlay4KCj4gV2hh
dCBJIHdhcyB0cnlpbmcgdG8gc2F5IGluIHByZXZpb3VzIGNvbW1lbnRzLCBpcyB0aGF0IG15IGlt
cHJlc3Npb24gaXMKPiB0aGF0IHdlIGNhbiBza2lwIHRoaXMgZm9yIENQVSByZWFkIGFjY2Vzcywg
c2luY2Ugd2UgZG9uJ3QgZ3VhcmFudHkKPiBjb25jdXJyZW50IGFjY2VzcyBhbnl3YXkuIEJvdGgg
YWRkcmVzcyBzcGFjZSBjYW4ga2VlcCB0aGVpciBjYWNoZSBpbgo+IHRoYXQgY2FzZS4gVGhvdWdo
LCBJIHNlZSBSS0lTUCBkb2VzIG5vdCB1c2Uga2VybmVsIG1hcHBpbmcgcGx1cyBJJ20gbm90Cj4g
cmVwb3J0aW5nIGEgYnVnLCBidXQgY2hlY2tpbmcgaWYgd2Ugc2hvdWxkIGxlYXZlIGEgY29tbWVu
dCBmb3IgcG9zc2libGUKPiB1c2VycyBvZiBrZXJuZWwgbWFwcGluZyBpbiB0aGUgZnV0dXJlID8K
CkkgdHJ1c3QgVG9tYXN6IGhlcmUsIEknZCB3YWl0IGZvciBoaXMgY29tbWVudCBvbiB2NC4KCj4+
ICsKPj4gKwlkbWFfc3luY19zZ3RhYmxlX2Zvcl9jcHUoYnVmLT5kZXYsIHNndCwgZGlyZWN0aW9u
KTsKPj4gKwo+PiDCoAlyZXR1cm4gMDsKPj4gwqB9Cj4+Cj4+IEBAIC00MzQsNiArNDQ1LDE3IEBA
IHN0YXRpYyBpbnQKPj4gwqB2YjJfZGNfZG1hYnVmX29wc19lbmRfY3B1X2FjY2VzcyhzdHJ1Y3Qg
ZG1hX2J1ZiAqZGJ1ZiwKPj4gwqAJCQkJIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlv
bikKPj4gwqB7Cj4+ICsJc3RydWN0IHZiMl9kY19idWYgKmJ1ZiA9IGRidWYtPnByaXY7Cj4+ICsJ
c3RydWN0IHNnX3RhYmxlICpzZ3QgPSBidWYtPmRtYV9zZ3Q7Cj4+ICsKPj4gKwlpZiAoIWJ1Zi0+
bm9uX2NvaGVyZW50X21lbSkKPj4gKwkJcmV0dXJuIDA7Cj4+ICsKPj4gKwlpZiAoYnVmLT52YWRk
cikKPj4gKwkJZmx1c2hfa2VybmVsX3ZtYXBfcmFuZ2UoYnVmLT52YWRkciwgYnVmLT5zaXplKTsK
Pj4gKwo+PiArCWRtYV9zeW5jX3NndGFibGVfZm9yX2RldmljZShidWYtPmRldiwgc2d0LCBkaXJl
Y3Rpb24pOwo+PiArCj4+IMKgCXJldHVybiAwOwo+PiDCoH0KPj4KPj4KCgotLQpCZXN0IHJlZ2Fy
ZHMsCk1pa2hhaWwgUnVkZW5rbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
