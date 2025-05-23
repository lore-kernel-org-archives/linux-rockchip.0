Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DA89C54ED0
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 May 2025 11:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwQ0qDZTyCyiIiXDzAbUSRLVOu98n2fBlpKlIbJndRQ=; b=JQnzwC0yefxrS0
	yDhGsJl03uJjhFznYK/nOlwoJLZWuglyquJ/b5mowGdP/jsBEqZ/7Ji4vvqpN//1nT/BHxRzlxQLl
	wCHOsKlrpNE8FiXoVDgPd8Z42yknTh4sH8/nmtK+ffq32VPh1uDTncuydAGP+9B8N94/nXV2OR+YK
	qRiqHoQK1hk4/sa2BfZ5TEDnqIb7XvPqytvPeMdxhSnErub+ej4Ro7ngZ6CtoEgJ8iXyS0++ZybMg
	XDnnhcsgta8Lmb8/jv4fMwH5c2YQM5oO6qTt0BWR+ciYIGCPtW4w9qZCCUNAAVRneTIsWRegZ8jc9
	iOrg8fiCXfRH/+wKV/tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIQG1-00000003flJ-3vUD;
	Fri, 23 May 2025 11:08:09 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIQDc-00000003fYj-2PnZ;
	Fri, 23 May 2025 11:05:41 +0000
Received: from pyrite.rasen.tech (fp76f176b6.tkyc001.ap.nuro.jp [118.241.118.182])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E0A916B5;
	Fri, 23 May 2025 13:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1747998316;
	bh=Ye3uQC7xrBPg3aUxgsBw7tGbGkMZh87SKpNk54FKl/g=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=G/y3vF7YOUJLFITEcHDpZCtnC7qocDabh33hZac6L8UjnXI1jLccP/ZETvK3upVRV
	 gQLqvFzXJXlGCU+zTkAwgehOnCQIgfX/xQCO34L6dNj7jlOkXtcvmsV5hEUvzqKmJ5
	 2Cl9zbuhwDoSvmda14WqVX2ZaK3Lcs48tRgAlXng=
MIME-Version: 1.0
In-Reply-To: <m3tt5b7kvc.fsf@t19.piap.pl>
References: <m3tt5b7kvc.fsf@t19.piap.pl>
Subject: Re: [PATCH] media: rkisp1: correct histogram window size
From: Paul Elder <paul.elder@ideasonboard.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Ondrej Jirman <megi@xff.cz>, Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>, Krzysztof =?utf-8?q?Ha=C5=82asa?= <khalasa@piap.pl>
Date: Fri, 23 May 2025 20:05:32 +0900
Message-ID: <174799833258.43941.7457628037394806572@pyrite.rasen.tech>
User-Agent: alot/0.0.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_040540_756773_C6307261 
X-CRM114-Status: GOOD (  17.14  )
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

SGkgS3J6eXN6dG9mLAoKVGhhbmtzIGZvciB0aGUgbmV3IHZlcnNpb24uCgpNeSBiYWQsIEkgc2hv
dWxkJ3ZlIG1lbnRpb25lZCBpbiB0aGUgcmV2aWV3IG9mIHRoZSBwcmV2aW91cyB2ZXJzaW9uOyBJ
IHRoaW5rCnlvdSBzaG91bGQgaGF2ZSBhIHBhcmFncmFwaCBpbiB0aGUgYmVnaW5uaW5nIGJyaWVm
bHkgZXhwbGFpbmluZyB0aGUgcHJvYmxlbSBpbgplbmdsaXNoLgoKIlRoZSBoaXN0b2dyYW0gd2lu
ZG93IGRpbWVuc2lvbnMgYXJlIHVubmVjZXNzYXJpbHkgZGVjcmVtZW50ZWQuIFRoaXMgY2FuIGJl
CnNlZW4gaW4gdGhlIGZvbGxvd2luZyBleGFtcGxlLCB3aGVyZSB3aGVuIGFsbCBwaXhlbHMgYXJl
IG9mIG1heGltdW0gaW50ZW5zaXR5CnRoZXJlIGFyZSBwaXhlbHMgdGhhdCB3ZSBleHBlY3QgdG8g
YmUgY291bnRlZCBidXQgYXJlIG1pc3NpbmcgZnJvbSB0aGUgaGlnaGVzdApiaW4uIEZpeCB0aGlz
IGJ5IHJlbW92aW5nIHRoZSB1bm5lY2Vzc2FyeSBkZWNyZW1lbnQuIgoKSSB0aGluayB3b3VsZCBi
ZSBnb29kIGVub3VnaC4KClF1b3RpbmcgS3J6eXN6dG9mIEhhxYJhc2EgKDIwMjUtMDUtMjMgMTg6
MTA6NDcpCj4gV2l0aG91dCB0aGUgcGF0Y2ggKGkuTVg4TVAsIGFsbC13aGl0ZSBSR0dCLTEyIGZ1
bGwgSEQgaW5wdXQgZnJvbQo+IHRoZSBzZW5zb3IsIFlVViBOVjEyIG91dHB1dCBmcm9tIElTUCwg
ZnVsbCByYW5nZSwgaGlzdG9ncmFtIFkgbW9kZSkuCj4gSElTVF9TVEVQU0laRSA9IDMgKGxvd2Vz
dCBwZXJtaXR0ZWQpLCBhbGwgd2VpZ2h0cyBhcmUgc2V0IHRvIDE6Cj4gCj4gaXNwX2hpc3RfaF9z
aXplOiAzODMgKD0gMTkyMCAvIDUgLSAxKQo+IGlzcF9oaXN0X3Zfc2l6ZTogMjE1ICg9IDEwODAg
LyA1IC0gMSkKPiBoaXN0b2dyYW1fbWVhc3VyZW1lbnRfcmVzdWx0WzE2XTogMCAwIDAgMCAgMCAw
IDAgMCAgMCAwIDAgMCAgMCAwIDAgMjI5NDAxCj4gCj4gQXBwYXJlbnRseSB0aGUgaGlzdG9ncmFt
IGlzIG1pc3NpbmcgdGhlIGxhc3QgY29sdW1uICgzLXBpeGVsIHdpZGUsCj4gdGhvdWdoIG9ubHkg
c2luZ2xlIHBpeGVscyBjb3VudCkgYW5kIHRoZSBsYXN0IChzYW1lIGlkZWEpIHJvdwo+IG9mIHRo
ZSBpbnB1dCBpbWFnZTogMTkxNyAqIDEwNzcgLyAzIC8gMyA9IDIyOTQwMS4KPiAKPiBFLmcuIHdp
dGhvdXQgdGhlIHBhdGNoLCB0aGUgcGl4ZWxzIGNvdW50ZWQgaW4gbGluZXMgYXJlOgo+IDAsIDMs
IC4uLiAxOTE0ICh3aGljaCBtYWtlcyAxOTE3LzMpLCBhbmQgcGF0Y2hlZDoKPiAwLCAzLCAuLi4g
MTkxNCwgMTkxNyAod2hpY2ggbWFrZXMgMTkyMC8zKS4KPiBUaGUgc2FtZSBpcyB0cnVlIGZvciBy
b3dzLgoKSSBsaWtlIHRoaXMgY2xhcmlmaWNhdGlvbi4KCgpXaXRoIHRoZSBhYm92ZSBwYXJhZ3Jh
cGggYWRkZWQsCgpSZXZpZXdlZC1ieTogUGF1bCBFbGRlciA8cGF1bC5lbGRlckBpZGVhc29uYm9h
cmQuY29tPgoKKEkgc3VwcG9zZSBpZiB5b3UgYXBwcm92ZSBpdCB0aGVuIGl0IGNvdWxkIHNpbXBs
eSBiZSBhZGRlZCB3aGVuIGl0J3MgYXBwbGllZAphbmQgeW91IHdvdWxkbid0IG5lZWQgdG8gc2Vu
ZCBhIG5ldyB2ZXJzaW9uLCBidXQgSSBkb24ndCBoYXZlIHBlcm1pc3Npb25zIGZvcgp0aGF0IHNv
IHVoLi4uKQoKPiAKPiBXaXRoIHRoZSBwYXRjaCBhcHBsaWVkOgo+IGlzcF9oaXN0X2hfc2l6ZTog
Mzg0ICg9IDE5MjAgLyA1KQo+IGlzcF9oaXN0X3Zfc2l6ZTogMjE2ICg9IDEwODAgLyA1KQo+IGhp
c3RvZ3JhbV9tZWFzdXJlbWVudF9yZXN1bHRbMTZdOiAwIDAgMCAwICAwIDAgMCAwICAwIDAgMCAw
ICAwIDAgMCAyMzA0MDAKPiAKPiAxOTIwICogMTA4MCAvIDMgLyAzID0gMjMwNDAwCj4gCj4gU2ln
bmVkLW9mZi1ieTogS3J6eXN6dG9mIEhhxYJhc2EgPGtoYWxhc2FAcGlhcC5wbD4KPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLXBh
cmFtcy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLXBh
cmFtcy5jCj4gaW5kZXggYjI4ZjQxNDBjOGEzLi5jYTliM2U3MTFlNWYgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLXBhcmFtcy5jCj4g
KysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLXBhcmFt
cy5jCj4gQEAgLTgxOSw4ICs4MTksOCBAQCBzdGF0aWMgdm9pZCBya2lzcDFfaHN0X2NvbmZpZ192
MTAoc3RydWN0IHJraXNwMV9wYXJhbXMgKnBhcmFtcywKPiAgICAgICAgICAgICAgICAgICAgICBh
cmctPm1lYXNfd2luZG93LnZfb2Zmcyk7Cj4gIAo+ICAgICAgICAgYmxvY2tfaHNpemUgPSBhcmct
Pm1lYXNfd2luZG93Lmhfc2l6ZSAvCj4gLSAgICAgICAgICAgICAgICAgICAgIFJLSVNQMV9DSUZf
SVNQX0hJU1RfQ09MVU1OX05VTV9WMTAgLSAxOwo+IC0gICAgICAgYmxvY2tfdnNpemUgPSBhcmct
Pm1lYXNfd2luZG93LnZfc2l6ZSAvIFJLSVNQMV9DSUZfSVNQX0hJU1RfUk9XX05VTV9WMTAgLSAx
Owo+ICsgICAgICAgICAgICAgICAgICAgICBSS0lTUDFfQ0lGX0lTUF9ISVNUX0NPTFVNTl9OVU1f
VjEwOwo+ICsgICAgICAgYmxvY2tfdnNpemUgPSBhcmctPm1lYXNfd2luZG93LnZfc2l6ZSAvIFJL
SVNQMV9DSUZfSVNQX0hJU1RfUk9XX05VTV9WMTA7Cj4gIAo+ICAgICAgICAgcmtpc3AxX3dyaXRl
KHBhcmFtcy0+cmtpc3AxLCBSS0lTUDFfQ0lGX0lTUF9ISVNUX0hfU0laRV9WMTAsCj4gICAgICAg
ICAgICAgICAgICAgICAgYmxvY2tfaHNpemUpOwo+IAo+IC0tIAo+IEtyenlzenRvZiAiQ2hyaXMi
IEhhxYJhc2EKPiAKPiBTaWXEhyBCYWRhd2N6YSDFgXVrYXNpZXdpY3oKPiBQcnplbXlzxYJvd3kg
SW5zdHl0dXQgQXV0b21hdHlraSBpIFBvbWlhcsOzdyBQSUFQCj4gQWwuIEplcm96b2xpbXNraWUg
MjAyLCAwMi00ODYgV2Fyc3phd2EKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
