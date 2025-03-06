Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE1D5C282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 09:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxUZj62UImXOFjc7TAd0XprI1t+SZe8uFzGgI87KC/U=; b=d2LcWFnAgtGw4H
	0keqBrZ7A6CqlbE7rQPoQ/suJR+YY5kqhjYPSJw1qHJ8K9REDm2wzabFGbYEFMbiqBzeTBOerng1c
	nrfrts2biiaOpZHEDax6AcQfj9d+KMjMenRyIZucd6URqHi+GllWrKmThOglbtmM7mod3LjzWVRzj
	sfvMzw+ZD30qEiygZl2vACU/Vl75nybfO2RkzDhXFAmM5e1fBBiIp6pZSf324/+/OsTEzv5q0QIQS
	TGhlfQDaTYsFonCsBBRcAhrn6k2ct6i5VwmzW1QeOLCI+/CSgmhrYlPuDQZAZPRr8y4tsW1HZP2qb
	PfYZ9Evm0dVkhZXYLXqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7ly-0000000AWSw-0mXE;
	Thu, 06 Mar 2025 09:44:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7jo-0000000AWDZ-389p
	for linux-rockchip@bombadil.infradead.org;
	Thu, 06 Mar 2025 09:41:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=x09z6YsQpj9Wau5Fw9rJhce8pF7UaU2RLDWx/2CtjiY=; b=GWyYxXt8l1dY7moAFW5tol12AJ
	IjZ1AOFPCWbjCozcaigxRMFXZVKDjZ7Amhlv/RUHSZ100Z8WgxUBCuLJ+C/tXRCIzB1tDC6kqcrvM
	0cGCUc8DDcXLTyoctMhDfSB0CuNTGyi83WmKsbM3wAOfvoJy7gfDgu4BqSkveAtBHAu84UTOV21MH
	1hLT0bAR1cECR+boTqAxZxhp2Bp6U/IBzE3q/Iex1qGfcW2IFmHQvoYT4O/JOw142O1D4aegDL7eY
	j+trt1Z8oOQPOKlMDpeAnrfvZ2UV3GjIL0w7eNfNZgS23rw9/JVq+bxlBy7KIB1PLpGGTO3tBL2vg
	MKTHHyTw==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7jl-00000000zts-13AI
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 09:41:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 116745C48E2;
	Thu,  6 Mar 2025 09:39:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66D9BC4CEE0;
	Thu,  6 Mar 2025 09:41:48 +0000 (UTC)
Message-ID: <1105cde1-7557-4104-9652-3527f8d9b599@xs4all.nl>
Date: Thu, 6 Mar 2025 10:41:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 0/3] Enable HDMI RX controller on RK3588
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Diederik de Haas <didi.debian@cknow.org>
References: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
 <2906773.tdWV9SEqCh@diego>
Content-Language: en-US, nl
From: Hans Verkuil <hverkuil@xs4all.nl>
Autocrypt: addr=hverkuil@xs4all.nl; keydata=
 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
In-Reply-To: <2906773.tdWV9SEqCh@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_094153_747018_8C94A47F 
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

T24gMDYvMDMvMjAyNSAxMDoyNiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgRG1pdHJ5LAo+
IAo+IEFtIERvbm5lcnN0YWcsIDYuIE3DpHJ6IDIwMjUsIDA4OjI4OjM5IE1FWiBzY2hyaWViIERt
aXRyeSBPc2lwZW5rbzoKPj4gVGhpcyBpcyBhIGZvbGxvdyB1cCB0byB0aGUgdjEzIG9mIEhETUkg
UlggcGF0Y2hlcyBbMV0uIEhhbnMgcXVldWVkIHRoZQo+PiBkcml2ZXIgaW50byB0aGUgbWVkaWEg
dHJlZS4gTm93IHRoZSBEVCBwYXRjaGVzIGFyZSBsZWZ0IHRvIGFwcGx5LCBjb3VsZAo+PiB5b3Ug
cGxlYXNlIHRha2UgY2FyZSBvZiB0aGlzIHNlcmllcyBpZiBpdCdzIGdvb2QgdG8geW91PyBUaGFu
a3MKPj4KPj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1lZGlhLzIwMjUwMzA0
MDg1ODE5LjEwODA2Ny0xLWRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tLwo+IAo+IExpbnV4
LU1lZGlhLCBoYXMgdGhpcyBzdHJhbmdlICJhcHBsaWVkIiByZXBvcnRpbmcgdGhpbmcgZ29pbmcs
IHNvIG5laXRoZXIKPiB0aGUgdGhyZWFkIHJlcG9ydHMgdGhhdCBub3IgZG9lcyBodHRwczovL2dp
dC5saW51eHR2Lm9yZy8gc2hvdyB0aGUgY29tbWl0cwo+IHlldC4KPiAKPiBJZiB5b3Ugc2VlIHRo
ZSBkcml2ZXIgcGF0Y2hlcyBhcHBlYXIgb24gaHR0cHM6Ly9naXQubGludXh0di5vcmcvIGJlZm9y
ZSBJIGRvLAo+IHBsZWFzZSBwaW5nIHRoaXMgdGhyZWFkIDotKQoKUGF0Y2hlcyBhcmUgbWVyZ2Vk
IGhlcmUgZmlyc3Q6CgpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvbGludXgtbWVkaWEv
bWVkaWEtY29tbWl0dGVycwoKVGhhdCdzIHdoZXJlIGFsbCB0aGUgbmV3IGNvZGUgbGFuZHMuCgpX
aXRoIGEgdHdvIGRheSBkZWxheSAoaWYgSSBhbSBub3QgbWlzdGFrZW4pIHRoZXkgd2lsbCBhcnJp
dmUgb24gdGhlCmh0dHBzOi8vZ2l0LmxpbnV4dHYub3JnL21lZGlhLmdpdC8gdHJlZS4KCklmIGl0
IGlzIGluIHRoZSBtZWRpYS1jb21taXR0ZXJzIHRyZWUsIHRoZW4gaXQgaXMgT0sgdG8gdGFrZSBk
dHMgZXRjLgpwYXRjaGVzLgoKUmVnYXJkcywKCglIYW5zCgo+IAo+IAo+IFRoYW5rcyBhIGxvdAo+
IEhlaWtvCj4gCj4gCj4+Cj4+IENoYW5nZWxvZzoKPj4KPj4gdjE0OiAtIFJlLWVuYWJsZWQgTE9B
RF9ERUZBVUxUX0VESUQ9eSBvcHRpb24gaW4gdGhlIGRlZmNvbmZpZyBhbmQKPj4gICAgICAgIGFk
ZGVkIGFjayBmcm9tIEhhbnMgVmVya3VpbCBmb3QgdGhhdCBwYXRjaC4KPj4KPj4gU2ViYXN0aWFu
IFJlaWNoZWwgKDIpOgo+PiAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBFbmFibGUgSERNSSByZWNl
aXZlciBvbiByb2NrLTViCj4+ICAgYXJtNjQ6IGRlZmNvbmZpZzogRW5hYmxlIFN5bm9wc3lzIEhE
TUkgcmVjZWl2ZXIKPj4KPj4gU2hyZWV5YSBQYXRlbCAoMSk6Cj4+ICAgYXJtNjQ6IGR0czogcm9j
a2NoaXA6IEFkZCBkZXZpY2UgdHJlZSBzdXBwb3J0IGZvciBIRE1JIFJYIENvbnRyb2xsZXIKPj4K
Pj4gIC4uLi9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UtcGluY3RybC5kdHNpICAgICB8IDE0ICsr
KysrCj4+ICAuLi4vYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV4dHJhLmR0c2kgfCA1
NyArKysrKysrKysrKysrKysrKysrCj4+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJv
Y2stNWIuZHRzICAgICAgfCAxOCArKysrKysKPj4gIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25m
aWcgICAgICAgICAgICAgICAgICB8ICAyICsKPj4gIDQgZmlsZXMgY2hhbmdlZCwgOTEgaW5zZXJ0
aW9ucygrKQo+Pgo+Pgo+IAo+IAo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
