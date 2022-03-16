Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53B4EC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Mar 2022 01:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05nEj9vppAe/LXhyzgwGIHBl30sFS4cc3WlUyOQFIAM=; b=0yYUlIYE3dJY2B
	bVFaeZ35r89D7tXOa+5X0UfBfgkAOiY2F036hyup2tY5BP7icqqHVNIjMT8OgkfcscmDuIpNo0yZ3
	gQ1DW/5uukQ5ys17fyWyuOdDduarnqefFGYcpEbXO3y0S7Ev8F8YW2Sf3Sg62OLuJHl0Ek0CJOT82
	bapg9T1D3PHvUcVydaDA202vJEMKX1+VPfQVeMxd8Bb+N5Iiz45Fxh6HIUDQ+fvdp7FXjSHeHESfG
	x89vjenLUgOMjRe+Q5zzxt71UbR6/zZCoiDagpjIbFkSkFqUKY8gXKIi1q18e8FZ4luGM8TqTD9Wu
	5SeMORfJovEd6qrN6lDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUIFY-00B43L-OT; Wed, 16 Mar 2022 01:14:52 +0000
Received: from mail-m121144.qiye.163.com ([115.236.121.144])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUIFL-00B41t-RU; Wed, 16 Mar 2022 01:14:42 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m121144.qiye.163.com (Hmail) with ESMTPA id 20987AC02AF;
 Wed, 16 Mar 2022 09:14:35 +0800 (CST)
Message-ID: <baaf0a2e-72ee-1e6a-a99f-a68e8371d844@rock-chips.com>
Date: Wed, 16 Mar 2022 09:14:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v8 22/24] drm: rockchip: Add VOP2 driver
Content-Language: en-US
To: Daniel Stone <daniel@fooishbar.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-23-s.hauer@pengutronix.de>
 <9ec29d9b-8197-98fb-c612-5c842e4212c4@rock-chips.com>
 <CAPj87rM4StzGMqPfK=j5p0-mY2=ENZnZWx9QDL_jo8SzNTXWTQ@mail.gmail.com>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <CAPj87rM4StzGMqPfK=j5p0-mY2=ENZnZWx9QDL_jo8SzNTXWTQ@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUJOHxpWGR4eGkMZGU
 waQh5CVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktDSUNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NyI6Lio5Nj5RTi41DRhNNBM3
 OhVPCjpVSlVKTU9MSEJISUxOTEtLVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT05ISDcG
X-HM-Tid: 0a7f904a7e25b039kuuu20987ac02af
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220315_181440_082721_6B5B0C52 
X-CRM114-Status: GOOD (  22.93  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRGFuaWVsOgoKT24gMy8xNS8yMiAyMDo0MywgRGFuaWVsIFN0b25lIHdyb3RlOgo+IEhpIEFu
ZHksCj4KPiBPbiBUdWUsIDE1IE1hciAyMDIyIGF0IDA2OjQ2LCBBbmR5IFlhbiA8YW5keS55YW5A
cm9jay1jaGlwcy5jb20+IHdyb3RlOgo+PiBPbiAzLzExLzIyIDE2OjMzLCBTYXNjaGEgSGF1ZXIg
d3JvdGU6Cj4+PiBUaGUgZHJpdmVyIGlzIHRlc3RlZCB3aXRoIEhETUkgYW5kIE1JUEktRFNJIGRp
c3BsYXkgb24gYSBSSzM1NjgtRVZCCj4+PiBib2FyZC4gT3ZlcmxheSBzdXBwb3J0IGlzIHRlc3Rl
ZCB3aXRoIHRoZSBtb2RldGVzdCB1dGlsaXR5LiBBRkJDIHN1cHBvcnQKPj4+IG9uIHRoZSBjbHVz
dGVyIHdpbmRvd3MgaXMgdGVzdGVkIHdpdGggd2VzdG9uLXNpbXBsZS1kbWFidWYtZWdsIG9uCj4+
PiB3ZXN0b24gdXNpbmcgdGhlICh5ZXQgdG8gYmUgdXBzdHJlYW1lZCkgcGFuZnJvc3QgZHJpdmVy
IHN1cHBvcnQuCj4+IERvIHdlIG5lZWQgc29tZSBtb2RpZmljYXRpb24gdG8gdGVzdCBBRkJDIGJ5
IHdlc3Rvbi1zaW1wbGUtZG1hLWVnbCA/Cj4+Cj4+IEkgaGF2ZSBhIGJ1aWxkcm9vdCBzeXN0ZW0g
d2l0aCB3ZXN0b24tMTAuMC45IGFuZCBtZXNhIDIxLjMuNS4KPj4KPj4gQWZ0ZXIgbGF1bmNoIHdl
c3RvbiwgSSBydW4gd2VzdG9uLXNpbXBsZS1kbWFidWYtZWdsLCBidXQgZnJvbSB0aGUgb3V0cHV0
Cj4+Cj4+IG9mIHN5cy9rZXJuZWwvZGVidWcvZHJpLzAvc3RhdGUsIHRoZSB3ZXN0b24gaXMgc3Rp
bGwgdXNlIFNtYXJ0MC13aW4wLAo+PiB3aGljaCBpcwo+Pgo+PiBhIG5vbi1BRkJDIHdpbmRvdy4K
Pj4KPj4gRG8gaSBuZWVkIHRvIG1vZGlmeSB0aGUgdm9wMiBkcml2ZXIgdG8gc2V0IG9uZSBDbHVz
dGVyIHdpbmRvdyBhcyBwcmltYXJ5Cj4+IHBsYW5lPwo+IEFyZSB5b3UgdXNpbmcgdGhlIG9wZW4t
c291cmNlIFBhbmZyb3N0IGRyaXZlciwgb3IgdGhlIHByb3ByaWV0YXJ5IEFybQo+IERESz8gVGhl
IERESyB3YXMgcHJldmlvdXNseSB1c2luZyBzb21lIG5vbi1zdGFuZGFyZCBtb2RpZmllciB0b2tl
bnMKPiB3aGljaCBoYXZlIHNpbmNlIGJlZW4gY29ycmVjdGVkIHVwc3RyZWFtLgoKCkkgdXNlIG1l
c2EgMjEuMy41IHdpdGggb3Blbi1zb3VyY2UgUGFuZnJvc3QgZHJpdmVyIGVuYWJsZWQuCgpXaGVu
IEkgbW9kaWZ5IFNhc2NoYSdzIHZvcDIgZHJpdmVyLCBzZXQgYSBDbHVzdGVyIHdpbmRvd3MgYXMg
cHJpbWFyeSBwbGFuZSwKClRoZW4gbGF1bmNoIHdlc3RvbizCoCB2b3AyIHJlcG9ydCBQT1NUX0JV
Rl9FTVBUWSBpcnEgZXJyLgoKIEZyb20gdGhlIGxvZyBJIGNhbiBzZWUgbWFueSAicGFuZnJvc3Qg
ZmRlNjAwMDAuZ3B1OiBqcyBmYXVsdCwganM9MCwgCnN0YXR1cz1EQVRBX0lOVkFMSURfRkFVTFQi
IFswXQoKSSBjaGVjayB0aGUgcmVnaXN0ZXIgY29uZmlndXJhdGlvbiBvZiBDbHVzdGVyIHdpbmRv
dywgdGhlcmUgaXMgbm8gCm9idmlvdXMgZXJyb3IuCgpJIGV2ZW50IHJ1biBhIG92bHRlc3RbMV0g
d3JpdHRlbiBieSBteXNlbGYgZmVlZCBhIEFGQkMgUkdCIGRhdGEgdG8gCkNsdXN0ZXIwLsKgIGl0
IGNhbiBkaXNwbGF5IG9rLgoKSXQgc2VlbXMgdGhhdCB0aGUgYmFzaWMgYWZiYyBjb25maWd1cmF0
aW9uIG9mIHZvcDIgaXMgcmlnaHQsIGJ1dCAKc29tZXRoaW5nIGlzIHdyb25nIHdpdGggUGFuZnJv
c3Q/CgpbMF1odHRwczovL3Bhc3RlYmluLmNvbS95ZFprU3oxZgoKWzFdaHR0cHM6Ly9naXRlZS5j
b20vYW5keXNocmsvZHJtL3RyZWUvbWFzdGVyL3Rlc3RzL292bHRlc3QKCj4KPiBZb3UgY2FuIHNl
ZSBmcm9tIHJ1bm5pbmcgYHdlc3Rvbi1kZWJ1ZyBkcm0tYmFja2VuZGAgKGlmIHlvdSBzdGFydAo+
IFdlc3RvbiB3aXRoIGAtLWRlYnVnYCkgdGhlIG91dHB1dCBhcyBpdCB0cmllcyB0byBwdXQgY2xp
ZW50IHN1cmZhY2VzCj4gb24gdG8gb3ZlcmxheSBwbGFuZXMsIGFuZCB3aHkgaXQgY2FuIG9yIGNh
bm5vdC4KPgo+IEZvciBXZXN0b24ncyBvd24gY29tcG9zaXRlZCBvdXRwdXQgKHVzZWQgd2hlbiBp
dCBjYW5ub3QgcGxhY2UgY2xpZW50Cj4gc3VyZmFjZXMgb24gdG8gcGxhbmVzKSwgaXQgd2lsbCBq
dXN0IHVzZSB3aGF0ZXZlciB0aGUgS01TIGRyaXZlcgo+IGRlY2xhcmVzIGFzIHRoZSBwcmltYXJ5
IHBsYW5lLiBXZXN0b24gZG9lcyBub3QgaGF2ZSBhbnkgbG9naWMgdG8gc2F5Cj4gJ29oLCB0aGlz
IHBsYW5lIGlzIEFGQkMgYW5kIEFGQkMgaXMgYmV0dGVyLCBzbyBJIHdpbGwgdXNlIHRoaXMgYXMg
bXkKPiBwcmltYXJ5IHBsYW5lJzogd2UganVzdCBmb2xsb3cgd2hhdCB0aGUga2VybmVsIHRlbGxz
IHVzLgo+Cj4gQ2hlZXJzLAo+IERhbmllbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
