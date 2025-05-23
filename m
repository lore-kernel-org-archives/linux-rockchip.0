Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E778C3DA6D
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 May 2025 09:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BSgHMHDpJYPGqPPOS9R15l+YYDrccB4Bfn75qp4fJxQ=; b=whT3vK3n37HIxB
	81jmYJlAWxE90tYZbTGtLSz4GAmsgP8j5dIGiry0zfXcGmSkxy7rXGGK1jwQn0WmuUHchNJ1ILimd
	FPdOoj5fKJCH/9u7ojPPgKQBAVVIu6CvtXINWcMVb6NGUrqpXW3ZjT1bYYtpDAvAxxQ8QvdW+9P1c
	zGnzNN89wJrYaIrCctB3+Y4P27XvaGxFCjlQExABhgA/eBIxmX8arO7xSQ2TOFP8lsKLERX6smqDj
	2cfpdrTCh2HqszI0DpQWYuQw76HrWWE7e0LJ+qs53MWH3S1z2Ex/xf9/03Mvd4K/7HGAb5B+BHsGP
	v/9ktxE6BRkapy2vqBKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIOUp-00000003Pp9-3vp8;
	Fri, 23 May 2025 09:15:19 +0000
Received: from [195.187.100.5] (helo=ni.piap.pl)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIOQX-00000003PEW-1JLH;
	Fri, 23 May 2025 09:10:54 +0000
Received: from t19.piap.pl (OSB1819.piap.pl [10.0.9.19])
	by ni.piap.pl (Postfix) with ESMTPS id 0CE57C405A4B;
	Fri, 23 May 2025 11:10:47 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 ni.piap.pl 0CE57C405A4B
From: Krzysztof =?utf-8?Q?Ha=C5=82asa?= <khalasa@piap.pl>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Jacopo
 Mondi <jacopo.mondi@ideasonboard.com>, Paul Elder
 <paul.elder@ideasonboard.com>, Ondrej Jirman <megi@xff.cz>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH] media: rkisp1: correct histogram window size
Date: Fri, 23 May 2025 11:10:47 +0200
Message-ID: <m3tt5b7kvc.fsf@t19.piap.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_021053_512522_6F958A41 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
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

V2l0aG91dCB0aGUgcGF0Y2ggKGkuTVg4TVAsIGFsbC13aGl0ZSBSR0dCLTEyIGZ1bGwgSEQgaW5w
dXQgZnJvbQp0aGUgc2Vuc29yLCBZVVYgTlYxMiBvdXRwdXQgZnJvbSBJU1AsIGZ1bGwgcmFuZ2Us
IGhpc3RvZ3JhbSBZIG1vZGUpLgpISVNUX1NURVBTSVpFID0gMyAobG93ZXN0IHBlcm1pdHRlZCks
IGFsbCB3ZWlnaHRzIGFyZSBzZXQgdG8gMToKCmlzcF9oaXN0X2hfc2l6ZTogMzgzICg9IDE5MjAg
LyA1IC0gMSkKaXNwX2hpc3Rfdl9zaXplOiAyMTUgKD0gMTA4MCAvIDUgLSAxKQpoaXN0b2dyYW1f
bWVhc3VyZW1lbnRfcmVzdWx0WzE2XTogMCAwIDAgMCAgMCAwIDAgMCAgMCAwIDAgMCAgMCAwIDAg
MjI5NDAxCgpBcHBhcmVudGx5IHRoZSBoaXN0b2dyYW0gaXMgbWlzc2luZyB0aGUgbGFzdCBjb2x1
bW4gKDMtcGl4ZWwgd2lkZSwKdGhvdWdoIG9ubHkgc2luZ2xlIHBpeGVscyBjb3VudCkgYW5kIHRo
ZSBsYXN0IChzYW1lIGlkZWEpIHJvdwpvZiB0aGUgaW5wdXQgaW1hZ2U6IDE5MTcgKiAxMDc3IC8g
MyAvIDMgPSAyMjk0MDEuCgpFLmcuIHdpdGhvdXQgdGhlIHBhdGNoLCB0aGUgcGl4ZWxzIGNvdW50
ZWQgaW4gbGluZXMgYXJlOgowLCAzLCAuLi4gMTkxNCAod2hpY2ggbWFrZXMgMTkxNy8zKSwgYW5k
IHBhdGNoZWQ6CjAsIDMsIC4uLiAxOTE0LCAxOTE3ICh3aGljaCBtYWtlcyAxOTIwLzMpLgpUaGUg
c2FtZSBpcyB0cnVlIGZvciByb3dzLgoKV2l0aCB0aGUgcGF0Y2ggYXBwbGllZDoKaXNwX2hpc3Rf
aF9zaXplOiAzODQgKD0gMTkyMCAvIDUpCmlzcF9oaXN0X3Zfc2l6ZTogMjE2ICg9IDEwODAgLyA1
KQpoaXN0b2dyYW1fbWVhc3VyZW1lbnRfcmVzdWx0WzE2XTogMCAwIDAgMCAgMCAwIDAgMCAgMCAw
IDAgMCAgMCAwIDAgMjMwNDAwCgoxOTIwICogMTA4MCAvIDMgLyAzID0gMjMwNDAwCgpTaWduZWQt
b2ZmLWJ5OiBLcnp5c3p0b2YgSGHFgmFzYSA8a2hhbGFzYUBwaWFwLnBsPgoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1wYXJhbXMuYyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1wYXJhbXMuYwpp
bmRleCBiMjhmNDE0MGM4YTMuLmNhOWIzZTcxMWU1ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLXBhcmFtcy5jCisrKyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1wYXJhbXMuYwpAQCAtODE5LDgg
KzgxOSw4IEBAIHN0YXRpYyB2b2lkIHJraXNwMV9oc3RfY29uZmlnX3YxMChzdHJ1Y3Qgcmtpc3Ax
X3BhcmFtcyAqcGFyYW1zLAogCQkgICAgIGFyZy0+bWVhc193aW5kb3cudl9vZmZzKTsKIAogCWJs
b2NrX2hzaXplID0gYXJnLT5tZWFzX3dpbmRvdy5oX3NpemUgLwotCQkgICAgICBSS0lTUDFfQ0lG
X0lTUF9ISVNUX0NPTFVNTl9OVU1fVjEwIC0gMTsKLQlibG9ja192c2l6ZSA9IGFyZy0+bWVhc193
aW5kb3cudl9zaXplIC8gUktJU1AxX0NJRl9JU1BfSElTVF9ST1dfTlVNX1YxMCAtIDE7CisJCSAg
ICAgIFJLSVNQMV9DSUZfSVNQX0hJU1RfQ09MVU1OX05VTV9WMTA7CisJYmxvY2tfdnNpemUgPSBh
cmctPm1lYXNfd2luZG93LnZfc2l6ZSAvIFJLSVNQMV9DSUZfSVNQX0hJU1RfUk9XX05VTV9WMTA7
CiAKIAlya2lzcDFfd3JpdGUocGFyYW1zLT5ya2lzcDEsIFJLSVNQMV9DSUZfSVNQX0hJU1RfSF9T
SVpFX1YxMCwKIAkJICAgICBibG9ja19oc2l6ZSk7CgotLSAKS3J6eXN6dG9mICJDaHJpcyIgSGHF
gmFzYQoKU2llxIcgQmFkYXdjemEgxYF1a2FzaWV3aWN6ClByemVteXPFgm93eSBJbnN0eXR1dCBB
dXRvbWF0eWtpIGkgUG9taWFyw7N3IFBJQVAKQWwuIEplcm96b2xpbXNraWUgMjAyLCAwMi00ODYg
V2Fyc3phd2EKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
