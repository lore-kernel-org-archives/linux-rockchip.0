Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33F80C87FDA
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Aug 2025 11:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRDn7DDYsqlK6kHsgnhJQSmUd7lhPZM87cyTqqtV7s8=; b=D92G8bsA9yzUcJ
	XYkUVkepe5JH3qroms/P+zxFg/+fhwmcbxRp0lxuttjRbufpKFRvbpgr2+T9jDAoMbUP9DRAPEeUs
	jOjLPrCJe6U7CQJZgYrYu4l/3KwsrDj+xZ6PQMjFrO4Sy1riVIBlUfMbAz07W9tA6CSHY7/yNGHoC
	MEpzPxymVKmJJRwhG7xJZfydKHYOcYCSMxQ8eYt7aJ+0IycUZIZMIBzwHNzVybPuI60w93SVWsWYL
	HjZ2UoStMBvAONMHOe7sb+EYBo45soAgS6/DWmSYPgldCBtuEeePjLXHNdKD6Zy76YKKoS/QJeTvI
	Buez0biQxExBu75KgNVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujFaD-0000000CZhV-1749;
	Tue, 05 Aug 2025 11:11:53 +0000
Received: from ni.piap.pl ([195.187.100.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujFO6-0000000CYB1-0msy;
	Tue, 05 Aug 2025 10:59:24 +0000
Received: from t19.piap.pl (OSB1819.piap.pl [10.0.9.19])
	by ni.piap.pl (Postfix) with ESMTPS id 31BA4C3EEAC9;
	Tue,  5 Aug 2025 12:58:06 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 ni.piap.pl 31BA4C3EEAC9
From: =?utf-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>
To: Stefan Klug <stefan.klug@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,  Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>,  Heiko Stuebner <heiko@sntech.de>,
  Paul Elder <paul.elder@ideasonboard.com>,  Jacopo Mondi
 <jacopo.mondi@ideasonboard.com>,  Ondrej Jirman <megi@xff.cz>,
  linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: FYI: i.MX8MP ISP (RKISP1) MI registers corruption
In-Reply-To: <m3cy9futcj.fsf@t19.piap.pl> ("Krzysztof =?utf-8?Q?Ha=C5=82as?=
 =?utf-8?Q?a=22's?= message of
	"Fri, 01 Aug 2025 14:19:56 +0200")
References: <m3h5zbxkc6.fsf@t19.piap.pl> <m38qknx939.fsf@t19.piap.pl>
	<175308758352.3134829.9472501038683860006@localhost>
	<m31pq9y98z.fsf@t19.piap.pl>
	<175326599663.2811177.16620980968274114885@localhost>
	<m3h5z2vw12.fsf@t19.piap.pl>
	<175344176070.2811177.10693943493658922992@localhost>
	<m3qzxyug1s.fsf@t19.piap.pl> <m3cy9futcj.fsf@t19.piap.pl>
Date: Tue, 05 Aug 2025 12:57:07 +0200
Message-ID: <m34iumujcs.fsf@t19.piap.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_035922_394219_9FFECC99 
X-CRM114-Status: UNSURE (   5.58  )
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

SGksCgpqdXN0IGluIGNhc2Ugc29tZW9uZSBmaW5kcyBpdCBoZWxwZnVsOgoKU0Vycm9yIEludGVy
cnVwdCBvbiBDUFUzLCBjb2RlIDB4MDAwMDAwMDBiZjAwMDAwMiAtLSBTRXJyb3IKQ1BVOiAzIFVJ
RDogMCBQSUQ6IDQwMDgzIENvbW06IGRldm1lbSBOb3QgdGFpbnRlZCA2LjE1KyBQUkVFTVBUCnBz
dGF0ZTogNjAwMDAwMDAgKG5aQ3YgZGFpZiAtUEFOIC1VQU8gLVRDTyAtRElUIC1TU0JTIEJUWVBF
PS0tKQpLZXJuZWwgcGFuaWMgLSBub3Qgc3luY2luZzogQXN5bmNocm9ub3VzIFNFcnJvciBJbnRl
cnJ1cHQKCldoYXQgZGlkIGkgZG8/IFdyb3RlIDMyLWJpdCB2YWx1ZSB0byBhbiBJU1AgcmVnaXN0
ZXIgKDB4MzJFMjJFMkU0QyA9CmEgaGlzdG9ncmFtLTY0IHJlZ2lzdGVyKSB3aGlsZSByZXBlYXRl
ZGx5IHJlYWRpbmcgb3RoZXIgSVNQCnJlZ2lzdGVycyAoaW4gdXNlcnNwYWNlKS4gVGhlIHZpZGVv
IHN0cmVhbSB3YXMgYWN0aXZlLgoKVGhpcyBJU1AgYXBwYXJlbnRseSBoYXMgaXRzIG93biBwcm9i
bGVtcy4KLS0KS3J6eXN6dG9mICJDaHJpcyIgSGHFgmFzYQoKU2llxIcgQmFkYXdjemEgxYF1a2Fz
aWV3aWN6ClByemVteXPFgm93eSBJbnN0eXR1dCBBdXRvbWF0eWtpIGkgUG9taWFyw7N3IFBJQVAK
QWwuIEplcm96b2xpbXNraWUgMjAyLCAwMi00ODYgV2Fyc3phd2EKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
