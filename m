Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73DC7C3ABBC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 08:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WPmoaRw4DRfa/Ht1IwXr0pYsN6xt9ZUnXU7ZUVBWFFU=; b=0dkn+jxvZx1a7M
	+4AqYCArJBxLP+taG0ABayodYOViDipSN7tVkriVYjX8mNFD8kLuFSQGQbGLg4dglzxDWTpdItDLk
	YUSu9vvFlfgs+FmR8aahL6xJOvhiz1EVJpE1Bgau/5OQWBK7rTFrqlD/3xeYUARHI4E0FnwCKdLF3
	OlbuEEpc3hxbtTokn9FejaU6sXmFwPufXLiRHVQbym6bWpdgUsGrc50KPeVoIcQ8ak7UFsDF+qdS+
	wlJ2wn+o3Tj5LfnrhecTzr/83hOj97ZRwsqRJTChNqEn52R7RmX0iaoSWWilav+a2MPwSmnEcn2bp
	6qn4Ss+dnd/pHHgHCQrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDJMV-00000002yCb-2YC0;
	Fri, 09 May 2025 08:45:43 +0000
Received: from ni.piap.pl ([195.187.100.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDIWP-00000002pCd-36Q9;
	Fri, 09 May 2025 07:51:55 +0000
Received: from t19.piap.pl (OSB1819.piap.pl [10.0.9.19])
	by ni.piap.pl (Postfix) with ESMTPS id 28A09C405A46;
	Fri,  9 May 2025 09:51:46 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 ni.piap.pl 28A09C405A46
From: =?utf-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Jacopo
 Mondi <jacopo.mondi@ideasonboard.com>, Paul Elder
 <paul.elder@ideasonboard.com>, Ondrej Jirman <megi@xff.cz>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH] RKISP1: correct histogram window size
Date: Fri, 09 May 2025 09:51:46 +0200
Message-ID: <m3tt5u9q7h.fsf@t19.piap.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_005153_932269_CD998EC0 
X-CRM114-Status: UNSURE (   5.47  )
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
IGhpc3RvZ3JhbSBZIG1vZGUpLgpISVNUX1NURVBTSVpFID0gMyAobG93ZXN0IHBlcm1pdHRlZCk6
Cgppc3BfaGlzdF9oX3NpemU6IDM4MyAoPSAxOTIwIC8gNSAtIDEpCmlzcF9oaXN0X3Zfc2l6ZTog
MjE1ICg9IDEwODAgLyA1IC0gMSkKaGlzdG9ncmFtX21lYXN1cmVtZW50X3Jlc3VsdFsxNl06IDAg
MCAwIDAgIDAgMCAwIDAgIDAgMCAwIDAgIDAgMCAwIDIyOTQwMQoKQXBwYXJlbnRseSB0aGUgaGlz
dG9ncmFtIGlzIG1pc3NpbmcgdGhlIGxhc3QgY29sdW1uICgzLXBpeGVsIHdpZGUsCnRob3VnaCBv
bmx5IHNpbmdsZSBwaXhlbHMgY291bnQpIGFuZCB0aGUgbGFzdCAoc2FtZSBpZGVhKSByb3cKb2Yg
dGhlIGlucHV0IGltYWdlOiAxOTE3ICogMTA3NyAvIDMgLyAzID0gMjI5NDAxCgp3aXRoIHRoZSBw
YXRjaCBhcHBsaWVkOgppc3BfaGlzdF9oX3NpemU6IDM4NCAoPSAxOTIwIC8gNSkKaXNwX2hpc3Rf
dl9zaXplOiAyMTYgKD0gMTA4MCAvIDUpCmhpc3RvZ3JhbV9tZWFzdXJlbWVudF9yZXN1bHRbMTZd
OiAwIDAgMCAwICAwIDAgMCAwICAwIDAgMCAwICAwIDAgMCAyMzA0MDAKCjE5MjAgKiAxMDgwIC8g
MyAvIDMgPSAyMzA0MDAKClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBIYcWCYXNhIDxraGFsYXNh
QHBpYXAucGw+CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9y
a2lzcDEvcmtpc3AxLXBhcmFtcy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9y
a2lzcDEvcmtpc3AxLXBhcmFtcy5jCmluZGV4IGIyOGY0MTQwYzhhMy4uY2E5YjNlNzExZTVmIDEw
MDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEt
cGFyYW1zLmMKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtp
c3AxLXBhcmFtcy5jCkBAIC04MTksOCArODE5LDggQEAgc3RhdGljIHZvaWQgcmtpc3AxX2hzdF9j
b25maWdfdjEwKHN0cnVjdCBya2lzcDFfcGFyYW1zICpwYXJhbXMsCiAJCSAgICAgYXJnLT5tZWFz
X3dpbmRvdy52X29mZnMpOwogCiAJYmxvY2tfaHNpemUgPSBhcmctPm1lYXNfd2luZG93Lmhfc2l6
ZSAvCi0JCSAgICAgIFJLSVNQMV9DSUZfSVNQX0hJU1RfQ09MVU1OX05VTV9WMTAgLSAxOwotCWJs
b2NrX3ZzaXplID0gYXJnLT5tZWFzX3dpbmRvdy52X3NpemUgLyBSS0lTUDFfQ0lGX0lTUF9ISVNU
X1JPV19OVU1fVjEwIC0gMTsKKwkJICAgICAgUktJU1AxX0NJRl9JU1BfSElTVF9DT0xVTU5fTlVN
X1YxMDsKKwlibG9ja192c2l6ZSA9IGFyZy0+bWVhc193aW5kb3cudl9zaXplIC8gUktJU1AxX0NJ
Rl9JU1BfSElTVF9ST1dfTlVNX1YxMDsKIAogCXJraXNwMV93cml0ZShwYXJhbXMtPnJraXNwMSwg
UktJU1AxX0NJRl9JU1BfSElTVF9IX1NJWkVfVjEwLAogCQkgICAgIGJsb2NrX2hzaXplKTsKCi0t
IApLcnp5c3p0b2YgIkNocmlzIiBIYcWCYXNhCgpTaWXEhyBCYWRhd2N6YSDFgXVrYXNpZXdpY3oK
UHJ6ZW15c8WCb3d5IEluc3R5dHV0IEF1dG9tYXR5a2kgaSBQb21pYXLDs3cgUElBUApBbC4gSmVy
b3pvbGltc2tpZSAyMDIsIDAyLTQ4NiBXYXJzemF3YQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
