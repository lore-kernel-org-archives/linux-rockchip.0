Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1898C5479D
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jan 2023 20:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+nxFvK17JaLzpWSofqiiPL020QxDFRRERON+nUnJCw=; b=h/TJ2Q8KgXmrJ7
	A+9DihWCZuHkmBZqAzmfRhCfZ5Gk0ksCHBs3PFp7/wTJ/sM5kJUojEePe72kv1RlNmqaYVFeBt4l9
	oaMDjn2pFSXx/6Qi3hzJs0/kKDcHxlYY4vcwP8UOMDK6f+x54ggPAZMPpZrWKSsSRgrlliSf+duhd
	lmnnFMHXWYuVYb59Bjmj9VL6yJEkWhuABJzKWDWdSicRpYXJd6NlitK5aM5NvQL2leOJ5yU/VjeOx
	FJ07R3XyYunfyoFtGLFs+vSNnSd/Pt2k/V9BeUx5JyFTLhndhdcVyw7RCZKWfhH/EASPgYb+QjNfe
	UNuWLfcZK2ImNyWaH0sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEyJV-003m17-B5; Mon, 09 Jan 2023 20:00:09 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEyJO-003lvt-F3
	for linux-rockchip@lists.infradead.org; Mon, 09 Jan 2023 20:00:06 +0000
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net [192.222.136.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8F74A6602D6A;
	Mon,  9 Jan 2023 19:59:54 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673294395;
	bh=H174vEDV+J2zA47hFKfyVx3mBxvDGBXXMB4xDaIl3jc=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=NMyv/Y0pm2WyOn7Fmeh4Zj4ilq/MCz8Fspuaq2lXBA2KeUFn/Jh9rVb0nMT7EPdLv
	 0NmQVDpZlRv1aaCFV+IL3+JmsIf9S+38xEMBD2Jz9t1fkMZsCnu5JVQscghsmGHG4W
	 cx4yr6WkIQ//0nIAFF5JLuLrlGyS2tZ27YlCQqDepMdUjND3FV5J9q1lw3Te2AXvrb
	 HA3SNTaa1v9TLE8cLjQ+oT2HuB/dpqCxFksXtqaZMLPPmvyzhbjnbS34DDCS6TT4IX
	 z8sV67orCNfBhj13An7SoSv/g/n+oNNrfRkA8K66ASXeNecMvQgK923WO10VNGHCMd
	 Qyq4IXJPg9rrw==
Message-ID: <8124d8751180393f8490fa3f754b1b674d7c06db.camel@collabora.com>
Subject: Re: [PATCH v2 3/4] media: rkvdec: Re-enable H.264 error detection
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	kernel@collabora.com, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Mon, 09 Jan 2023 14:59:46 -0500
In-Reply-To: <CAGXv+5GBhZ4U4y_KGrBdvgmy7odcVvH=ZJEMtsfjPvw4tQUV1A@mail.gmail.com>
References: <20221223193807.914935-1-nicolas.dufresne@collabora.com>
	 <20221223193807.914935-4-nicolas.dufresne@collabora.com>
	 <CAGXv+5GBhZ4U4y_KGrBdvgmy7odcVvH=ZJEMtsfjPvw4tQUV1A@mail.gmail.com>
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_120002_744441_3FB372C6 
X-CRM114-Status: GOOD (  23.40  )
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

TGUgbHVuZGkgMjYgZMOpY2VtYnJlIDIwMjIgw6AgMTI6MTcgKzA4MDAsIENoZW4tWXUgVHNhaSBh
IMOpY3JpdMKgOgo+IE9uIFNhdCwgRGVjIDI0LCAyMDIyIGF0IDM6MzkgQU0gTmljb2xhcyBEdWZy
ZXNuZQo+IDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4gCj4gPiBU
aGlzIHJlLWVuYWJsZSBILjI2NCBlcnJvciBkZXRlY3Rpb24sIGJ1dCB1c2luZyB0aGUgb3RoZXIg
ZXJyb3IgbW9kZS4KPiA+IEluIHRoYXQgbW9kZSwgdGhlIGRlY29kZXIgd2lsbCBza2lwIG92ZXIg
dGhlIGVycm9yIG1hY3JvLWJsb2NrIG9yCj4gPiBzbGljZXMgYW5kIGNvbXBsZXRlIHRoZSBkZWNv
ZGluZy4gQXMgYSBzaWRlIGVmZmVjdCwgdGhlIGVycm9yIHN0YXR1cwo+ID4gaXMgbm90IHNldCBp
biB0aGUgaW50ZXJydXB0IHN0YXR1cyByZWdpc3RlciwgYW5kIGluc3RlYWQgZXJyb3JzIGFyZQo+
ID4gZGV0ZWN0ZWQgcGVyIGZvcm1hdC4gVXNpbmcgdGhpcyBtb2RlIHdvcmthcm91bmQgdGhlIGlz
c3VlIHRoYXQgdGhlCj4gPiBIVyBnZXQgc3R1Y2sgaW4gZXJyb3Igc3RhdGUsIGFuZCBhbGxvdyBy
ZXBvcnRpbmcgdGhhdCBzb21lIGNvcnJ1cHRpb24KPiA+IG1heSBiZSBwcmVzZW50IGluIHRoZSBi
dWZmZXIgdG8gdXNlcmxhbmQuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRHVmcmVz
bmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMv
c3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYyB8IDIzICsrKysrKysrKysrKysrKysr
KystLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2
ZGVjLWgyNjQuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYwo+
ID4gaW5kZXggNGZjMTY3YjQyY2YwYy4uZGZlM2UyMzVmMDk5YSAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYwo+ID4gKysrIGIvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMtaDI2NC5jCj4gPiBAQCAtMTE2MiwxNCArMTE2
MiwxNSBAQCBzdGF0aWMgaW50IHJrdmRlY19oMjY0X3J1bihzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4
KQo+ID4gCj4gPiAgICAgICAgIHNjaGVkdWxlX2RlbGF5ZWRfd29yaygmcmt2ZGVjLT53YXRjaGRv
Z193b3JrLCBtc2Vjc190b19qaWZmaWVzKDIwMDApKTsKPiA+IAo+ID4gLSAgICAgICB3cml0ZWwo
MCwgcmt2ZGVjLT5yZWdzICsgUktWREVDX1JFR19TVFJNRF9FUlJfRU4pOwo+ID4gLSAgICAgICB3
cml0ZWwoMCwgcmt2ZGVjLT5yZWdzICsgUktWREVDX1JFR19IMjY0X0VSUl9FKTsKPiA+ICsgICAg
ICAgd3JpdGVsKDB4ZmZmZmZmZmYsIHJrdmRlYy0+cmVncyArIFJLVkRFQ19SRUdfU1RSTURfRVJS
X0VOKTsKPiA+ICsgICAgICAgd3JpdGVsKDB4ZmZmZmZmZmYsIHJrdmRlYy0+cmVncyArIFJLVkRF
Q19SRUdfSDI2NF9FUlJfRSk7Cj4gCj4gVXNlIFJLVkRFQ19IMjY0X0VSUl9FTl9ISUdIQklUUygp
IGhlcmU/IE9ubHkgbG93ZXIgMzAgYml0cyBhcmUgdmFsaWQuCgpJIHdhcyBzaW1wbHkgcmV2ZXJ0
aW5nIGJhY2sgdG8gdGhlIHZhbHVlIGl0IHdhcyBiZWZvcmUsIEkgY2FuIHRyeSB0aGF0IHRvbywg
eW91CmFyZSBsaWtlbHkgcmlnaHQuCgo+IAo+ID4gICAgICAgICB3cml0ZWwoMSwgcmt2ZGVjLT5y
ZWdzICsgUktWREVDX1JFR19QUkVGX0xVTUFfQ0FDSEVfQ09NTUFORCk7Cj4gPiAgICAgICAgIHdy
aXRlbCgxLCBya3ZkZWMtPnJlZ3MgKyBSS1ZERUNfUkVHX1BSRUZfQ0hSX0NBQ0hFX0NPTU1BTkQp
Owo+ID4gCj4gPiAgICAgICAgIC8qIFN0YXJ0IGRlY29kaW5nISAqLwo+ID4gICAgICAgICB3cml0
ZWwoUktWREVDX0lOVEVSUlVQVF9ERUNfRSB8IFJLVkRFQ19DT05GSUdfREVDX0NMS19HQVRFX0Ug
fAo+ID4gLSAgICAgICAgICAgICAgUktWREVDX1RJTUVPVVRfRSB8IFJLVkRFQ19CVUZfRU1QVFlf
RSwKPiA+ICsgICAgICAgICAgICAgIFJLVkRFQ19USU1FT1VUX0UgfCBSS1ZERUNfQlVGX0VNUFRZ
X0UgfAo+ID4gKyAgICAgICAgICAgICAgUktWREVDX0gyNjRPUlZQOV9FUlJfTU9ERSwKPiA+ICAg
ICAgICAgICAgICAgIHJrdmRlYy0+cmVncyArIFJLVkRFQ19SRUdfSU5URVJSVVBUKTsKPiA+IAo+
ID4gICAgICAgICByZXR1cm4gMDsKPiA+IEBAIC0xMTgzLDEwICsxMTg0LDI2IEBAIHN0YXRpYyBp
bnQgcmt2ZGVjX2gyNjRfdHJ5X2N0cmwoc3RydWN0IHJrdmRlY19jdHggKmN0eCwgc3RydWN0IHY0
bDJfY3RybCAqY3RybCkKPiA+ICAgICAgICAgcmV0dXJuIDA7Cj4gPiAgfQo+ID4gCj4gPiArc3Rh
dGljIGludCBya3ZkZWNfaDI2NF9jaGVja19lcnJvcl9pbmZvKHN0cnVjdCBya3ZkZWNfY3R4ICpj
dHgpCj4gPiArewo+ID4gKyAgICAgICBzdHJ1Y3Qgcmt2ZGVjX2RldiAqcmt2ZGVjID0gY3R4LT5k
ZXY7Cj4gPiArICAgICAgIGludCBlcnI7Cj4gCj4gdTMyPwoKV2lsbCBkby4KCj4gCj4gT3RoZXJ3
aXNlLAo+IAo+IFJldmlld2VkLWJ5OiBDaGVuLVl1IFRzYWkgPHdlbnN0QGNocm9taXVtLm9yZz4K
PiAKPiA+ICsKPiA+ICsgICAgICAgZXJyID0gcmVhZGwocmt2ZGVjLT5yZWdzICsgUktWREVDX1JF
R19IMjY0X0VSUklORk9fTlVNKTsKPiA+ICsgICAgICAgaWYgKGVyciAmIFJLVkRFQ19TVFJNRF9E
RUNUX0VSUl9GTEFHKSB7Cj4gPiArICAgICAgICAgICAgICAgcHJfZGVidWcoIkRlY29kZWQgcGlj
dHVyZSBoYXZlICVpLyVpIHNsaWNlcyB3aXRoIGVycm9ycy5cbiIsCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgUktWREVDX0VSUl9QS1RfTlVNKGVyciksIFJLVkRFQ19TTElDRURFQ19OVU0o
ZXJyKSk7Cj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIFZCMl9CVUZfU1RBVEVfRVJST1I7Cj4g
PiArICAgICAgIH0KPiA+ICsKPiA+ICsgICAgICAgcmV0dXJuIFZCMl9CVUZfU1RBVEVfRE9ORTsK
PiA+ICt9Cj4gPiArCj4gPiAgY29uc3Qgc3RydWN0IHJrdmRlY19jb2RlZF9mbXRfb3BzIHJrdmRl
Y19oMjY0X2ZtdF9vcHMgPSB7Cj4gPiAgICAgICAgIC5hZGp1c3RfZm10ID0gcmt2ZGVjX2gyNjRf
YWRqdXN0X2ZtdCwKPiA+ICAgICAgICAgLnN0YXJ0ID0gcmt2ZGVjX2gyNjRfc3RhcnQsCj4gPiAg
ICAgICAgIC5zdG9wID0gcmt2ZGVjX2gyNjRfc3RvcCwKPiA+ICAgICAgICAgLnJ1biA9IHJrdmRl
Y19oMjY0X3J1biwKPiA+ICAgICAgICAgLnRyeV9jdHJsID0gcmt2ZGVjX2gyNjRfdHJ5X2N0cmws
Cj4gPiArICAgICAgIC5jaGVja19lcnJvcl9pbmZvID0gcmt2ZGVjX2gyNjRfY2hlY2tfZXJyb3Jf
aW5mbywKPiA+ICB9Owo+ID4gLS0KPiA+IDIuMzguMQo+ID4gCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
