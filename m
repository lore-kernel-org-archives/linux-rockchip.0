Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E160C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 13:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iY7FnSU9+Um9W1HRfdpE7IZyPWGvjWAgxA3RV2ihVOA=; b=E0vjk6bnfUBmm7
	SL9nJl6fkMKGNb4ozbaHfFDzxgfKYTVNl05cVd/hZIp2nTQPBr+gq5rHjpcOBZ6AQ7JrV3tbgQ1Vx
	eyZffxh/vTK+GHGjwCzqA02YVrj46FyijuQGkqd+Q6OexdSaP4VOFKMsAUL53EPee5tncbpGt+86d
	fssbdG+0L7QQ567FIncLDbw2j6m6aM5p3X1kudK73r03+VxKJk4nTSam8cLfYqg191EGTjCHTIlo1
	pMWUjuMslMQjNNYjHOeBEc4pEiPsq94eG5mRTCdWZV13eGKsqAM6lKCHZFF5NKa9dBohU0X7YkPOF
	QyjR4PEFUatwmNGiykxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDNhW-00000003kRU-0OEK;
	Fri, 09 May 2025 13:23:42 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDMqq-00000003ahG-1JXA;
	Fri, 09 May 2025 12:29:17 +0000
Received: from pyrite.rasen.tech (unknown [IPv6:2001:861:3a80:3300:4f2f:8c2c:b3ef:17d4])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id F12A48DB;
	Fri,  9 May 2025 14:28:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1746793738;
	bh=AUaHMoaWFUQ4iEYeil8536kyUZaoosXunY70b+YQh7w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wc13+ol7l9WuIdWoCMeCe+l5jMDGEObMTCn9YtYSmkVqET8X+kyQqwt+cQJT2fOUv
	 tJ8+3bweTC+8n5wvRT+vzN08eW12zIp0QmsKwzyVgzKSya9qy8w913ntmGfCJ0Mzcx
	 gd5KTqvTVa0l23Ypasjl9T8tcQRy466VlsefrJD8=
Date: Fri, 9 May 2025 14:29:06 +0200
From: Paul Elder <paul.elder@ideasonboard.com>
To: Krzysztof =?utf-8?Q?Ha=C5=82asa?= <khalasa@piap.pl>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Ondrej Jirman <megi@xff.cz>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	stefan.klug@ideasonboard.com
Subject: Re: [PATCH] RKISP1: correct histogram window size
Message-ID: <aB31Eg6oRpcHHEsb@pyrite.rasen.tech>
References: <m3tt5u9q7h.fsf@t19.piap.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3tt5u9q7h.fsf@t19.piap.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_052916_487483_19287AF1 
X-CRM114-Status: GOOD (  17.78  )
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

SGkgS3J6eXN6dG9mLAoKVGhhbmtzIGZvciB0aGUgcGF0Y2guCgpUaGUgY29kZSBjaGFuZ2UgbG9v
a3Mgc291bmQsIGJ1dCBJJ20gY29uZnVzZWQgYWJvdXQgdGhlIHJlYXNvbmluZyBiZWhpbmQKaXQu
CgpPbiBGcmksIE1heSAwOSwgMjAyNSBhdCAwOTo1MTo0NkFNICswMjAwLCBLcnp5c3p0b2YgSGHF
gmFzYSB3cm90ZToKPiBXaXRob3V0IHRoZSBwYXRjaCAoaS5NWDhNUCwgYWxsLXdoaXRlIFJHR0It
MTIgZnVsbCBIRCBpbnB1dCBmcm9tCj4gdGhlIHNlbnNvciwgWVVWIE5WMTIgb3V0cHV0IGZyb20g
SVNQLCBmdWxsIHJhbmdlLCBoaXN0b2dyYW0gWSBtb2RlKS4KPiBISVNUX1NURVBTSVpFID0gMyAo
bG93ZXN0IHBlcm1pdHRlZCk6CgpBY2NvcmRpbmcgdG8gdGhlIGRhdGFzaGVldCwgdGhlIGhpc3Rv
Z3JhbSBiaW5zIGFyZSAxNi1iaXQgaW50ZWdlciB3aXRoIGEKNC1iaXQgZnJhY3Rpb25hbCBwYXJ0
LiBUbyBwcmV2ZW50IG92ZXJmbG93aW5nIHRoZSAxNi1iaXQgaW50ZWdlcgpjb3VudGVyLCB0aGUg
c3RlcCBzaXplIHNob3VsZCBiZSAxMC4KCkRvIHlvdSBoYXZlIGFueSBvdGhlciBpbmZvcm1hdGlv
biBvbiB0aGlzPyBJcyBpdCBrbm93biB0aGF0IGl0J3Mgc3RhYmxlCmFuZCBjb25zaXN0ZW50IHRv
IHVzZSBhbGwgMjAgYml0cyBhbnl3YXk/Cgo+IGlzcF9oaXN0X2hfc2l6ZTogMzgzICg9IDE5MjAg
LyA1IC0gMSkKPiBpc3BfaGlzdF92X3NpemU6IDIxNSAoPSAxMDgwIC8gNSAtIDEpCj4gaGlzdG9n
cmFtX21lYXN1cmVtZW50X3Jlc3VsdFsxNl06IDAgMCAwIDAgIDAgMCAwIDAgIDAgMCAwIDAgIDAg
MCAwIDIyOTQwMQo+IAo+IEFwcGFyZW50bHkgdGhlIGhpc3RvZ3JhbSBpcyBtaXNzaW5nIHRoZSBs
YXN0IGNvbHVtbiAoMy1waXhlbCB3aWRlLAo+IHRob3VnaCBvbmx5IHNpbmdsZSBwaXhlbHMgY291
bnQpIGFuZCB0aGUgbGFzdCAoc2FtZSBpZGVhKSByb3cKPiBvZiB0aGUgaW5wdXQgaW1hZ2U6IDE5
MTcgKiAxMDc3IC8gMyAvIDMgPSAyMjk0MDEKCkkgZG9uJ3QgcXVpdGUgdW5kZXJzdGFuZCB0aGlz
LiBXaXRoIGEgc3ViLXdpbmRvdyB3aWR0aCBvZgoxOTIwIC8gNSAtIDEgPSAzODMsIHNob3VsZG4n
dCB0aGUgcmVzdWx0aW5nIHRvdGFsIHdpbmRvdyB3aWR0aCBiZQozODMgKiA1ID0gMTkxNT8gU2Ft
ZSBpZGVhIGZvciB0aGUgaGVpZ2h0LgoKQWxzbyBhY2NvcmRpbmcgdG8gbXkgdW5kZXJzdGFuZGlu
ZywgdGhlIC8gMyBjYWxjdWxhdGlvbiBpcyBjb3JyZWN0LCBidXQKaXQgY29tZXMgZnJvbSB0aGUg
c3RlcCBzaXplIGFuZCBub3QgYWJvdXQgbWlzc2luZyBsYXN0IGNvbHVtbi9yb3cuCldoZXJlIGRv
ZXMgdGhlIG1pc3NpbmcgbGFzdCBjb2x1bW4vcm93IGNvbWUgZnJvbT8KCj4gCj4gd2l0aCB0aGUg
cGF0Y2ggYXBwbGllZDoKPiBpc3BfaGlzdF9oX3NpemU6IDM4NCAoPSAxOTIwIC8gNSkKPiBpc3Bf
aGlzdF92X3NpemU6IDIxNiAoPSAxMDgwIC8gNSkKPiBoaXN0b2dyYW1fbWVhc3VyZW1lbnRfcmVz
dWx0WzE2XTogMCAwIDAgMCAgMCAwIDAgMCAgMCAwIDAgMCAgMCAwIDAgMjMwNDAwCj4gCj4gMTky
MCAqIDEwODAgLyAzIC8gMyA9IDIzMDQwMAoKVGhlIGZpeCBsb29rcyBmaW5lIHRob3VnaC4gQWx0
aG91Z2gsIEknbSB3b25kZXJpbmcgaWYgdGhlcmUncyBhIHJlYXNvbgp3aHkgdGhlcmUgd2FzIGEg
LTEgaW4gdGhlIGZpcnN0IHBsYWNlLiBEb2VzIGFueWJvZHkga25vdz8KCgpUaGFua3MsCgpQYXVs
Cgo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBIYcWCYXNhIDxraGFsYXNhQHBpYXAucGw+Cj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3Jr
aXNwMS1wYXJhbXMuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3Jr
aXNwMS1wYXJhbXMuYwo+IGluZGV4IGIyOGY0MTQwYzhhMy4uY2E5YjNlNzExZTVmIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1wYXJh
bXMuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNw
MS1wYXJhbXMuYwo+IEBAIC04MTksOCArODE5LDggQEAgc3RhdGljIHZvaWQgcmtpc3AxX2hzdF9j
b25maWdfdjEwKHN0cnVjdCBya2lzcDFfcGFyYW1zICpwYXJhbXMsCj4gIAkJICAgICBhcmctPm1l
YXNfd2luZG93LnZfb2Zmcyk7Cj4gIAo+ICAJYmxvY2tfaHNpemUgPSBhcmctPm1lYXNfd2luZG93
Lmhfc2l6ZSAvCj4gLQkJICAgICAgUktJU1AxX0NJRl9JU1BfSElTVF9DT0xVTU5fTlVNX1YxMCAt
IDE7Cj4gLQlibG9ja192c2l6ZSA9IGFyZy0+bWVhc193aW5kb3cudl9zaXplIC8gUktJU1AxX0NJ
Rl9JU1BfSElTVF9ST1dfTlVNX1YxMCAtIDE7Cj4gKwkJICAgICAgUktJU1AxX0NJRl9JU1BfSElT
VF9DT0xVTU5fTlVNX1YxMDsKPiArCWJsb2NrX3ZzaXplID0gYXJnLT5tZWFzX3dpbmRvdy52X3Np
emUgLyBSS0lTUDFfQ0lGX0lTUF9ISVNUX1JPV19OVU1fVjEwOwo+ICAKPiAgCXJraXNwMV93cml0
ZShwYXJhbXMtPnJraXNwMSwgUktJU1AxX0NJRl9JU1BfSElTVF9IX1NJWkVfVjEwLAo+ICAJCSAg
ICAgYmxvY2tfaHNpemUpOwo+IAo+IC0tIAo+IEtyenlzenRvZiAiQ2hyaXMiIEhhxYJhc2EKPiAK
PiBTaWXEhyBCYWRhd2N6YSDFgXVrYXNpZXdpY3oKPiBQcnplbXlzxYJvd3kgSW5zdHl0dXQgQXV0
b21hdHlraSBpIFBvbWlhcsOzdyBQSUFQCj4gQWwuIEplcm96b2xpbXNraWUgMjAyLCAwMi00ODYg
V2Fyc3phd2EKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
