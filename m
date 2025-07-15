Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A298C83F17
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 07:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2mZ6mg6noirThQDCPrxJsPmb263fETtu5gN67tBYd4=; b=Xwlfj1efobYp/i
	5efiz2z1L01Bjwwlj9TLTfsv4Kvw+nPrlCiMqjSa+HX0PrnG+lSnDnZ9d5J1Dr5eEETX5gjdFKcq3
	MQB1MrPJ3hHIKA6FhUcMWLJn/u++DLpNB5pb2yAhp8TsjykPntkHubJgTQRupVw9E3QRg8r3//sgI
	8UP3kcQHX4Q9HLvgsbgxRGZdOcjWtlbFNaSS4wXfoGfOQAfO9xBs1c4yGtRIr0PxrU9nWb3fqxnNT
	etT7XT+H81GWN1KYZ9GRk8TvTbRGIqG6/iWETIXG1hT6Kn0A4rel3P5s071owumCp3nGT5EK/2e60
	98r4tM+MzBEbpq4ApP9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubZuY-00000004Iqq-47jK;
	Tue, 15 Jul 2025 07:17:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubZuX-00000004IpP-09Rp;
	Tue, 15 Jul 2025 07:17:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=uR07AKA03taQYzX+ZjGzS07Lzyba1XHHLaGn40KNnHo=; b=qZOEzaiWmPfGWbRrPXsJ9vJzT4
	wljB0WDCO0YXn6h+/tmgdcbGXlRe1hMX9zA27p8Gym3SkdnxJKn2QupLQFxCktjGoqZvMcdKU42f+
	BsFB+pDz0IGQRuyxRvqeh6jlXf3x1RqylAGiJLUZnTpJPuYNu9HX/Iscl+O5OMKgr9mujgIBBUWW+
	a4x8f9oPy8vriFLcdu8Nx0YRY55GgS4khKiaE3E8nc7QcsnseALYo5VYeUs0itRPcAEv4Cy0UQxeJ
	/zVtCyUvAkqaMe1BrmAfVRNMpbBZWYlUC0U5ZbxpwoVUz+KXdRQSD3dB9Oj7g1mgeMdPJcyIUS72t
	lSogO6qA==;
Received: from i53875a5c.versanet.de ([83.135.90.92] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ubZuN-0006t0-D6; Tue, 15 Jul 2025 09:16:59 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Detlev Casanova <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Lukas Bulwahn <lbulwahn@redhat.com>
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lukas Bulwahn <lukas.bulwahn@redhat.com>
Subject: Re: [PATCH] MAINTAINERS: merge sections for ROCKCHIP VIDEO DECODER DRIVER
Date: Tue, 15 Jul 2025 09:16:55 +0200
Message-ID: <3261271.ElGaqSPkdT@diego>
In-Reply-To: <20250715063134.100733-1-lukas.bulwahn@redhat.com>
References: <20250715063134.100733-1-lukas.bulwahn@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_001709_136319_55BB3855 
X-CRM114-Status: GOOD (  18.06  )
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

QW0gRGllbnN0YWcsIDE1LiBKdWxpIDIwMjUsIDA4OjMxOjM0IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTHVrYXMgQnVsd2FobjoKPiBGcm9tOiBMdWthcyBCdWx3YWhuIDxs
dWthcy5idWx3YWhuQHJlZGhhdC5jb20+Cj4gCj4gQ29tbWl0IGQ5NjhlNTBiNWMyNiAoIm1lZGlh
OiBya3ZkZWM6IFVuc3RhZ2UgdGhlIGRyaXZlciIpIG1vdmVzIHRoZSBkcml2ZXIKPiBmcm9tIHN0
YWdpbmcvbWVkaWEvIHRvIG1lZGlhL3BsYXRmb3JtL3JvY2tjaGlwLyBhbmQgYWRkcyBhIG5ldyBz
ZWN0aW9uCj4gUk9DS0NISVAgUktWREVDIFZJREVPIERFQ09ERVIgRFJJVkVSIGluIE1BSU5UQUlO
RVJTLiBJdCBzZWVtcyB0aGF0IGl0IHdhcwo+IG92ZXJsb29rZWQgdGhhdCB0aGUgc2VjdGlvbiBS
T0NLQ0hJUCBWSURFTyBERUNPREVSIERSSVZFUiBpbiBNQUlOVEFJTkVSUwo+IGFscmVhZHkgZXhp
c3RlZCwgcmVmZXJyaW5nIHRvIHRoZSBzYW1lIGZpbGVzIGJlZm9yZSB0aGUgZHJpdmVyIHdhcyBt
b3ZlZAo+IGFzIHRoZSBuZXcgc2VjdGlvbiByZWZlcnMgdG8gYWZ0ZXIgdGhlIGRyaXZlciB3YXMg
bW92ZWQuCj4gCj4gU28sIG1lcmdlIHRoZSBpbmZvcm1hdGlvbiBmcm9tIHRoZSB0d28gc2VjdGlv
bnMgZm9yIFJPQ0tDSElQIChSS1ZERUMpIFZJREVPCj4gREVDT0RFUiBEUklWRVIgaW50byBvbmUu
IFRoaXMgZXNzZW50aWFsbHkgcmVzdWx0cyBpbiBhZGRpbmcgdGhlIG1haW50YWluZXIKPiBvZiB0
aGUgcHJldmlvdXNseSBleGlzdGluZyBzZWN0aW9uIGluIHRoZSBuZXcgc2VjdGlvbiBhbmQgdGhl
biByZW1vdmluZwo+IHRoYXQgcHJldmlvdXNseSBleGlzdGluZyBzZWN0aW9uLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IEx1a2FzIEJ1bHdhaG4gPGx1a2FzLmJ1bHdhaG5AcmVkaGF0LmNvbT4KClJldmll
d2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKPiAtLS0KPiAgTUFJTlRB
SU5FUlMgfCA5ICstLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDgg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMK
PiBpbmRleCA1ZWZjZGI1NTM3ZjUuLmQwNDRlNGY3MWFlNSAxMDA2NDQKPiAtLS0gYS9NQUlOVEFJ
TkVSUwo+ICsrKyBiL01BSU5UQUlORVJTCj4gQEAgLTIxNjczLDYgKzIxNjczLDcgQEAgRjoJZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvCj4gIAo+ICBST0NLQ0hJUCBSS1ZERUMg
VklERU8gREVDT0RFUiBEUklWRVIKPiAgTToJRGV0bGV2IENhc2Fub3ZhIDxkZXRsZXYuY2FzYW5v
dmFAY29sbGFib3JhLmNvbT4KPiArTToJRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEB2YW5ndWFy
ZGlhc3VyLmNvbS5hcj4KPiAgTDoJbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gIEw6CWxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiAgUzoJTWFpbnRhaW5lZAo+IEBAIC0y
MTY5MywxNCArMjE2OTQsNiBAQCBTOglNYWludGFpbmVkCj4gIEY6CURvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9yb2NrY2hpcCxyazM1NzYtc2FpLnlhbWwKPiAgRjoJc291
bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX3NhaS4qCj4gIAo+IC1ST0NLQ0hJUCBWSURFTyBERUNP
REVSIERSSVZFUgo+IC1NOglFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQHZhbmd1YXJkaWFzdXIu
Y29tLmFyPgo+IC1MOglsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiAtTDoJbGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IC1TOglNYWludGFpbmVkCj4gLUY6CURvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcCx2ZGVjLnlhbWwKPiAtRjoJ
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy8KPiAtCj4gIFJPQ0tFUiBEUklWRVIKPiAgTToJ
SmlyaSBQaXJrbyA8amlyaUByZXNudWxsaS51cz4KPiAgTDoJbmV0ZGV2QHZnZXIua2VybmVsLm9y
Zwo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
